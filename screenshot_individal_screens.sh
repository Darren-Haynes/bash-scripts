#!/bin/sh
sleep 3
xdpyinfo -ext XINERAMA | sed '/^  head #/!d;s///' |
while IFS=' :x@,' read i w h x y; do
        import -window root -crop ${w}x$h+$x+$y head_$i.png
done
