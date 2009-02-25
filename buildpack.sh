#!/bin/bash
#
# Title: Packages the ninja pack
# Created By: Tyler "-z-" Mulligan of www.nexuizninjaz.com
#
# Usage: place script in the same folder as your ninja pack root
#

# This Packages this experiment
build_package() {
	find $(pwd) -type f -print | egrep -v '\.git|additions|buildpack\.sh|nn_ninja_pack_|packlist.txt' | sed "s#$(pwd)/##" > packlist.txt
	xargs zip -r nn_ninja_pack_$( date +%m%d%y ).pk3 < packlist.txt
	rm packlist.txt
} # End pack_nst

build_package
