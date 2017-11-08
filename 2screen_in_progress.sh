#!/bin/sh

# Make 1 monitor with laptop happen

screens=$(xrandr --nograb --current | grep -w connected)
primary="primary"

while read -r line; do
  xscreen="--output"

  if [[ $line =~ $primary ]]; then
    line_no_primary=${line/$primary/}
    echo Line has primary: "$line_no_primary"
    line_split=($line_no_primary)
    echo "${line_split[0]}"

  else
    echo Line does not have primary "$line"
  fi

  con=$con$line
done <<< "$screens"

#echo "$con"

#xrandr --output eDP1 --primary --mode 2880x1620             --pos 3840x270 --rotate normal \
       #--output VGA1           --mode 1920x1080 --scale 2x2 --pos 0x0 --rotate normal

# set font size for xresources (URxvt) and termite
#sed -i 's/font = NotoMono 12/font = NotoMono 14/' "$HOME/dotfiles/termite_config"
#sed -i 's/URxvt.font: xft:monospace:size=12/URxvt.font: xft:monospace:size=14/' "$HOME/dotfiles/Xresources"

# Wallpaper gets messed up when running above command, so this fixes it and sets a different background for each monitor
#feh --bg-scale ~/Pictures/Desktop_Wallpaper/Laptop_only/green-lake-buddha.jpg --bg-scale ~/Pictures/Desktop_Wallpaper/Christ_and_Buddha.jpg --bg-scale ~/Pictures/Desktop_Wallpaper/Vertical/hd-horizontal-wallpaper-25.jpg

# choose random wallpapers instead of predestined ones as in command above
#sh $HOME/.bash_scripts/random_wallpaper_colorscheme.sh
#wal -i "$HOME/Pictures/Desktop_Wallpaper/Christ_and_Buddha.jpg" -t -n
