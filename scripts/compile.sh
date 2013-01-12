#!/bin/sh

# simple script to compile existing translations into the game
# assumes that wesnoth is installed in $HOME width version suffix

WESNOTH="-dev"

LANG="pt"

filelist="${filelist} `ls -d ../wes*`"

for i in $filelist
	do
		local domain="`basename $i`"

		msgfmt --statistics -c $i/$LANG.po -o $HOME/Games/wesnoth$WESNOTH/translations/$LANG/LC_MESSAGES/$domain.mo
done
