#!/bin/sh

# This scripts checks if my external monitors are connected by querying
# xrandr. If 3 screens are connected (laptop plus 2 external monitors) then
# run my other script that makes the xrandr magic happen to set up the 3 screens.
# Note this script is run automatically from i3wm config file on execution of
# the i3wm.

screens_connected=$(xrandr | grep -cw connected)

if [[ $screens_connected -eq 3 ]]; then
  sh "$HOME/.bash_scripts/3screen.sh"
elif [[ $screens_connected -eq 2 ]]; then
  sh "$HOME/.bash_scripts/2screen.sh"
else
  sh "$HOME/.bash_scripts/laptop_only.sh"
fi

