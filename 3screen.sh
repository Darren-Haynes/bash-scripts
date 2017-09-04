#!/bin/sh

# Make 2 monitors happen with laptop happen
xrandr --output DVI-D-1-1 --off --output VIRTUAL1 --off --output eDP1 --primary --mode 2880x1620 --pos 6010x900 --rotate normal --output DP1 --off --output eDP-1-2 --off --output DP2 --off --output HDMI2 --off --output HDMI1 --mode 1920x1080 --scale 2x2 --pos 0x0 --rotate left --off --output VGA1 --mode 1920x1080 --scale 2x2 --pos 2160x760 --rotate normal

# Wallpaper gets messed up when running above command, so this fixes it and sets a different background for each monitor
feh --bg-scale ~/Pictures/Desktop_Wallpaper/green-lake-buddha.jpg --bg-scale ~/Pictures/Desktop_Wallpaper/Christ_and_Buddha.jpg --bg-scale ~/Pictures/Desktop_Wallpaper/hd-horizontal-wallpaper-25.jpg
