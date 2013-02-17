#!/bin/sh

WESNOTH="-dev"

filelist="${filelist} `ls -d ../umc/wes*`"

for i in $filelist
	do

		domain="`basename $i`"

		tmp="`ls ../umc/$domain`"

		for j in $tmp
			do

			lang="`basename $j .po`"

			mkdir -p $HOME/.wesnoth$WESNOTH/translations/$domain/$lang/LC_MESSAGES/

			msgfmt --statistics -c ../umc/$domain/$j -o $HOME/.wesnoth$WESNOTH/translations/$domain/$lang/LC_MESSAGES/$domain.mo

		done
done
