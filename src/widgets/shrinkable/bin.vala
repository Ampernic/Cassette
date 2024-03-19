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


/*
 * Connection for ``Cassette.ApplicationWindow`` resize
 * for different shrink edge width
 */
public abstract class Cassette.ShrinkableBin : Adw.Bin {

    /**
     * Size changed.
     *
     * @param width     new width of window
     * @param height    new height of window
     */
    public signal void resized (int width, int height);

    /**
     * Width value, that triggers ``is-shrinked`` changes
     */
    public int shrink_edge_width { get; set; default = -1; }

    /**
     * Is widget should shrinked or not
     */
    public bool is_shrinked { get; private set; default = false; }

    bool first_resize = true;

    construct {
        map.connect (on_map);
    }

    void on_map () {
        var window = (ApplicationWindow) get_root ();
        window.resized.connect (on_resized);

        map.disconnect (on_map);
    }

    void on_resized (int width, int height) {
        if (shrink_edge_width != -1) {
            if (width >= shrink_edge_width) {
                if (is_shrinked | first_resize) {
                    is_shrinked = false;
                }
            } else {
                if (!is_shrinked | first_resize) {
                    is_shrinked = true;
                }
            }

            first_resize = false;
        }

        resized (width, height);
    }
}
