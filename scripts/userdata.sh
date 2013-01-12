#!/bin/sh

WESNOTH="-dev"

LANG="pt"

filelist="${filelist} `ls -d ../umc`"

for i in $filelist
	do

		tmp="`ls ../umc/$i`"

		domain="`basename $i`"

		lang="`basename $tmp .po`"

		for j in $tmp
			do

			mkdir -p $HOME/.wesnoth$WESNOTH/translations/$domain/$lang/LC_MESSAGES/

			msgfmt --statistics -c ../umc/$domain/$j -o $HOME/.wesnoth$WESNOTH/translations/$domain/$lang/LC_MESSAGES/$lang.mo

		done
done
