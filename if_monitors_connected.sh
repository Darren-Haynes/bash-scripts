#!/bin/sh

screens_connected=$(xrandr | grep -cw connected)

if [[ $screens_connected -eq 3 ]]; then
  sh /home/darren/.bash_scripts/3screen.sh
fi
