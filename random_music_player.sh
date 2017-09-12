#!/bin/bash

# Get list of all .mp3 files recursively in Music directory randomly
# then play them with mplayer

OIFS="$IFS"
IFS=$'\n'
for file in `find $HOME/Music -type f -name "*.mp3" | shuf`
do
     mplayer $file
done
IFS="$OIFS"
