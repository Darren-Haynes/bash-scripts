#!/bin/bash

# set font size for xresources (URxvt) and termite
sed -i 's/font = NotoMono 14/font = NotoMono 12/' "$HOME/dotfiles/Xresources"
sed -i 's/URxvt.font: xft:monospace:size=14/URxvt.font: xft:monospace:size=12/' "$HOME/dotfiles/Xresources"

feh --bg-scale ~/Pictures/Desktop_Wallpaper/Christ_and_Buddha.jpg
wal -i "$HOME/Pictures/Desktop_Wallpaper/Christ_and_Buddha.jpg" -t -n
