#!/usr/bin/env bash

if [ "$TWIT_SOURCE" != "" ] && [ "$TWIT_DESTINATION" != "" ] && [ "$TWIT_PARAMS" != "" ]
then
	DEST_DIRECTORY="$(dirname -- "$TWIT_DESTINATION")"
	mkdir -p -- "$DEST_DIRECTORY"

	echo $TWIT_PARAMS > /params.yml
	twit -n $TWIT_SOURCE $TWIT_DESTINATION -p /params.yml
fi

exec "$@"
