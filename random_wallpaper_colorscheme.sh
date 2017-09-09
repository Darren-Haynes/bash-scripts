#!/bin/bash

screens_connected=$(xrandr --nograb --current | grep -cw connected)

# choose random wallpapers for 3 screen set up
#horizontal1=$(find "$HOME/Pictures/Desktop_Wallpaper/Laptop_only" -type f -maxdepth 1 | shuf -n 1)
horizontal2=$(find "$HOME/Pictures/Desktop_Wallpaper" -type f -maxdepth 1 | shuf -n 1)
vertical=$(find "$HOME/Pictures/Desktop_Wallpaper/Vertical" -type f -maxdepth 1 | shuf -n 1)
#vertical="$HOME/Pictures/Desktop_Wallpaper/Vertical/hd-horizontal-wallpaper-25.jpg"

if [[ $screens_connected -eq 3 ]]; then
  feh --bg-scale "$horizontal2" --bg-scale "$horizontal2" --bg-scale "$vertical"
  sleep 0.1
  wal -i "$horizontal2" -t -n
else
  feh --bg-scale "$horizontal2"
  sleep 0.1
  wal -i "$horizontal2" -t -n
fi
