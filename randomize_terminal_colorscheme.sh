#!/bin/bash

# randomize terminal color scheme
wallpaper=$(ls $HOME/Pictures/Desktop_Wallpaper/ | shuf -n 1)
image="$HOME/Pictures/Desktop_Wallpaper/$wallpaper"
echo "$image"
wal -i "$image" -t
