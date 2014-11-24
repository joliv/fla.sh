#!/bin/bash

set -e

IFS=$'\n'

play ()
{
	for CARD in $(ls | shuf); do
		echo "Prompt:"
		echo "$CARD"
		read
		echo "Answer:"
		cat "$CARD"
		echo "Did you get it? [Y/n]"
		read ANS
		if [ "$ANS" != "n" ] && [ "$ANS" != "N" ]
		then
			mv "$CARD" ".$CARD"
		fi
	done
}

learn ()
{
	shift
	for F in $@; do
		mv "$F" ".$F"
	done
}

forget ()
{
	shift
	for F in $@; do
		mv "$F" "${F:1}"
	done
}

helptxt ()
{
	echo "Help text [TODO]"
}

case "$1" in
	"")	play;;
	learn)	learn "$@";;
	forget)	forget "$@";;
	*)	helptxt;;
esac

