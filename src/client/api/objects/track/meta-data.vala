/* Copyright 2023-2024 Vladimir Vaskov
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
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 *
 * SPDX-License-Identifier: GPL-3.0-only
 */

namespace Cassette.Client.YaMAPI {
    public class MetaData : YaMObject {

        public string? album { get; set; }
        public int volume { get; set; }
        public int year { get; set; }
        public int number { get; set; }
        public string? genre { get; set; }
        public string? lyricist { get; set; }
        public string? version { get; set; }
        public string? composer { get; set; }


        public MetaData () {
            Object ();
        }
    }
}
