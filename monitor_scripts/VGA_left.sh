#!/bin/sh
# extend non-HiDPI external display on DP* above HiDPI internal display eDP*
# see also https://wiki.archlinux.org/index.php/HiDPI
# you may run into https://bugs.freedesktop.org/show_bug.cgi?id=39949
#                  https://bugs.launchpad.net/ubuntu/+source/xorg-server/+bug/883319

EXT=VGA1
INT=eDP1

ext_w=2560 # twice width of monitor
ext_h=2048 # twice height of monitor
int_w=2880 # actual width of laptop screen
int_h=1620
off_h=`echo $(( ($int_h-$ext_h)/2 )) | sed 's/^-//'`

xrandr --output "${INT}" --auto --pos ${ext_w}x${off_h} --scale 1x1  --output "${EXT}" --auto --scale 2x2 --pos 0x0

