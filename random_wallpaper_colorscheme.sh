#!/bin/bash

#screens_connected=$(xrandr --nograb --current | grep -cw connected)

# choose random wallpapers for 3 screen set up
#horizontal1=$(find "$HOME/Pictures/Desktop_Wallpaper/Laptop_only" -type f -maxdepth 1 | shuf -n 1)
#horizontal1=$(find "$HOME/Pictures/Desktop_Wallpaper" -maxdepth 1 -type f | shuf -n 1)
#horizontal2=$(find "$HOME/Pictures/Desktop_Wallpaper" -maxdepth 0 -type f | shuf -n 1)
#vertical=$(find "$HOME/Pictures/Desktop_Wallpaper/Vertical" -maxdepth 1 -type f | shuf -n 1)
#vertical="$HOME/Pictures/Desktop_Wallpaper/Vertical/hd-horizontal-wallpaper-25.jpg"

#if [[ $screens_connected -eq 3 ]]; then
  #wal -i "$horizontal2" -t
  #feh --bg-scale "$horizontal1" --bg-scale "$horizontal2" --bg-scale "$vertical"
#else
  #feh --bg-scale "$horizontal2"
  #wal -i "$horizontal2" -t
#fi

terminal_color_scheme=$(sort --random-sort $HOME/.Xcolorschemes/favorites.txt | head -n 1)
dir=$HOME/.Xcolorschemes/
wal -i "$horizontal2" -t
