#!/bin/bash

screens_connected=$(xrandr --nograb --current | grep -cw connected)

# choose random wallpapers for 3 screen set up
#horizontal1=$(find "$HOME/Pictures/Desktop_Wallpaper/Laptop_only" -type f -maxdepth 1 | shuf -n 1)
horizontal1=$(find "$HOME/Pictures/Desktop_Wallpaper" -maxdepth 1 -type f | shuf -n 1)
horizontal2=$(find "$HOME/Pictures/Desktop_Wallpaper" -maxdepth 1 -type f | shuf -n 1)
vertical=$(find "$HOME/Pictures/Desktop_Wallpaper/Vertical" -maxdepth 1 -type f | shuf -n 1)
#vertical="$HOME/Pictures/Desktop_Wallpaper/Vertical/hd-horizontal-wallpaper-25.jpg"

if [[ $screens_connected -eq 3 ]]; then
  #feh --bg-scale "$horizontal1" --bg-scale "$horizontal2" --bg-scale "$vertical"
  wal -i "$horizontal2" -t #-n
  #wal -i "$horizontal2" -t -n
else
  feh --bg-scale "$horizontal2"
  wal -i "$horizontal2" -t -n
fi
