#!/bin/sh

# Make 1 monitors with laptop happen
xrandr --output eDP1 --primary --mode 2880x1620             --pos 1920x270 --rotate normal \
       --output HDMI1           --mode 1920x1080 --scale 1x1 --pos 0x0 --rotate normal

# set font size for xresources (URxvt) and termite
sed -i 's/font = NotoMono 12/font = NotoMono 14/' "$HOME/dotfiles/termite_config"
#sed -i 's/URxvt.font: xft:monospace:size=12/URxvt.font: xft:monospace:size=14/' "$HOME/dotfiles/Xresources"

# Wallpaper gets messed up when running above command, so this fixes it and sets a different background for each monitor
#feh --bg-scale ~/Pictures/Desktop_Wallpaper/Laptop_only/green-lake-buddha.jpg --bg-scale ~/Pictures/Desktop_Wallpaper/Christ_and_Buddha.jpg --bg-scale ~/Pictures/Desktop_Wallpaper/Vertical/hd-horizontal-wallpaper-25.jpg

# choose random wallpapers instead of predestined ones as in command above
#sh $HOME/.bash_scripts/random_wallpaper_colorscheme.sh
sh /home/darren/.bash_scripts/randomize_terminal_colorscheme.sh
wal -i "$HOME/Pictures/Desktop_Wallpaper/Christ_and_Buddha.jpg" -t
