/* Copyright 2023-2024 Rirusha
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, version 3
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 * SPDX-License-Identifier: GPL-3.0-only
 */


using Cassette.Client;

[GtkTemplate (ui = "/com/github/Rirusha/Cassette/ui/stations_view.ui")]
public class Cassette.StationsView : BaseView {

    [GtkChild]
    unowned HeaderedScrolledWindow scrolled_window;
    [GtkChild]
    unowned Gtk.FlowBox dashboard_flow_box;
    [GtkChild]
    unowned Gtk.Stack stack;
    [GtkChild]
    unowned Gtk.FlowBox genre_flow_box;
    [GtkChild]
    unowned Gtk.FlowBox mood_flow_box;
    [GtkChild]
    unowned Gtk.FlowBox activity_flow_box;
    [GtkChild]
    unowned Gtk.FlowBox epoch_flow_box;
    [GtkChild]
    unowned Gtk.FlowBox other_flow_box;
    [GtkChild]
    unowned Gtk.SearchEntry search_entry;
    [GtkChild]
    unowned Gtk.FlowBox search_flow_box;

    public override bool can_refresh {
        get {
            return true;
        }
    }

    YaMAPI.Rotor.Dashboard? dashboard = null;
    Gee.ArrayList<YaMAPI.Rotor.Station>? stations_list = null;

    construct {
        search_entry.search_changed.connect (search_entry_search_changed_async);

        search_flow_box.set_filter_func ((item) => {
            var action_card = (ActionCardStation) item.child;

            if (search_entry.text.down () in action_card.station_info.name.down ()) {
                return true;
            }

            return false;
        });

        search_entry.changed.connect (() => {
            scrolled_window.reveal_header = search_entry.text == "";
        });
    }

    async void search_entry_search_changed_async () {
        search_flow_box.invalidate_filter ();

        stack.visible_child_name = search_entry.text == "" ? "default" : "search";
    }

    void clear_all_boxes () {
        clear_flow_box (genre_flow_box);
        clear_flow_box (mood_flow_box);
        clear_flow_box (activity_flow_box);
        clear_flow_box (epoch_flow_box);
        clear_flow_box (other_flow_box);
        clear_flow_box (search_flow_box);
        clear_flow_box (dashboard_flow_box);
    }

    async void set_values_async () {
        clear_all_boxes ();

        foreach (var station in dashboard.stations) {
            dashboard_flow_box.append (new ActionCardStation (station.station));

            Idle.add (set_values_async.callback);
            yield;
        }

        foreach (var station in stations_list) {
            Gtk.FlowBox target_flow_box;

            switch (station.station.id.type_) {
                case "micro-genre":
                case "genre":
                    target_flow_box = genre_flow_box;
                    break;
                case "mood":
                    target_flow_box = mood_flow_box;
                    break;
                case "activity":
                    target_flow_box = activity_flow_box;
                    break;
                case "epoch":
                    target_flow_box = epoch_flow_box;
                    break;
                default:
                    target_flow_box = other_flow_box;
                    break;
            }

            var action_card = new ActionCardStation.shrinked (station.station);

            target_flow_box.append (action_card);

            Idle.add (set_values_async.callback);
            yield;

            search_flow_box.append (new ActionCardStation.shrinked (station.station));

            Idle.add (set_values_async.callback);
            yield;
        }

        show_ready ();
    }

    public async override int try_load_from_web () {
        dashboard = null;
        stations_list = null;

        threader.add (() => {
            dashboard = yam_talker.client.rotor_stations_dashboard ();
            stations_list = yam_talker.client.rotor_stations_list ();

            Idle.add (try_load_from_web.callback);
        });

        yield;

        if (dashboard != null && stations_list != null) {
            yield set_values_async ();

            return -1;
        }

        return 0;
    }

    public async override bool try_load_from_cache () {
        return false;
    }
}
