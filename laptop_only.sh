#!/bin/bash

# set font size for xresources (URxvt) and termite
#sed -i 's/font = NotoMono 14/font = NotoMono 12/' "$HOME/dotfiles/Xresources"
#sed -i 's/URxvt.font: xft:monospace:size=14/URxvt.font: xft:monospace:size=12/' "$HOME/dotfiles/Xresources"
xrandr --output eDP1 --primary --mode 2880x1620 --pos 0x0 --output HDMI1 --off --output VGA1 --off
sh /home/darren/.bash_scripts/randomize_terminal_colorscheme.sh
#wal -i "$HOME/Pictures/Desktop_Wallpaper/stone-arch.jpg" -t -n
#feh --bg-scale ~/Pictures/Desktop_Wallpaper/milky-way.jpg
#xrdb -merge ~/.Xcolorschemes/base16-spacemacs-256.xrdb
