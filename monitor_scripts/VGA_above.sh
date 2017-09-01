#!/bin/sh
# extend non-HiDPI external display on DP* above HiDPI internal display eDP*
# see also https://wiki.archlinux.org/index.php/HiDPI

EXT=VGA1
INT=eDP1

ext_w=2560
ext_h=2048
int_w=2880
off_w=`echo $(( ($int_w-$ext_w)/2 )) | sed 's/^-//'`

ext2_w=3840
ext2_h=2160

xrandr --output "${INT}" --auto --pos ${off_w}x${ext_h} --scale 1x1  --output "${EXT}" --auto --scale 2x2 --pos 0x0 --output HDMI1 --auto --scale 2x2 --pos 0x0

# Wallpaper gets messed up when running above command, so this fixes it and sets a different background for the monitor
feh --bg-scale ~/Pictures/Desktop_Wallpaper/green-lake-buddha.jpg --bg-scale ~/Pictures/Desktop_Wallpaper/Christ_and_Buddha.jpg
