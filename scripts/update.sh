#!/bin/sh

WESNOTH="-dev"

LANG="pt"

filelist="${filelist} `ls -d ../wes*`"

for i in $filelist
	do
		domain="`basename $i`"

		msgmerge -U --strict -q $i/$LANG.po $HOME/Games/wesnoth$WESNOTH/po/$domain/$domain.pot
done
