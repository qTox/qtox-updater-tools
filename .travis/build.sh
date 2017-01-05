#!/bin/bash
#
#    Copyright © 2017 Zetok Zalbavar <zetok@openmailbox.org>
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.

# travis script to build rust bits

# usage:
#   PROJECT="$path" ./$script


# Fail as soon as error appears
set -eu -o pipefail

build_rust_bits() {
    local rusty_bits=(
        qtox-updater-sign
    )

    for project in "${rusty_bits[@]}"
    do
        pushd .
        cd "$project"
        cargo build --verbose
        cargo test --verbose
        # add `cargo doc` once it's needed?
        popd
    done
}
build_rust_bits
