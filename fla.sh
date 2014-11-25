#!/bin/bash
set -e
IFS=$'\n'

play () {
	for CARD in $(ls | shuf); do
		echo "$CARD"
		read
		echo "Answer:"
		cat "$CARD"
		echo "Got it? [Y/n]"
		read ANS
		if [ "$ANS" != "n" ] && [ "$ANS" != "N" ]
		then
			mv "$CARD" ".$CARD"
		fi
	done
}

learn () {
	shift
	for F in $@; do
		mv "$F" ".$F"
	done
}

forget () {
	shift
	for F in $@; do
		mv "$F" "${F:1}"
	done
}

helptxt () {
	CMD=`basename $0`
	echo "Usage:"
	echo "  $CMD"
	echo "  $CMD learn  <file...>"
	echo "  $CMD forget <file...>"
}

case "$1" in
	"")	play;;
	learn)	learn "$@";;
	forget)	forget "$@";;
	*)	helptxt;;
esac

