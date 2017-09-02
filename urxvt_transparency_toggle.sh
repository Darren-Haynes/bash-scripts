#!/bin/sh

# Toggle transparency of Urxvt terminal by search and
# replacing the Xresources file in place using sed
xresources_file='/home/darren/dotfiles/Xresources'
trans_true='URxvt.transparent: true'
trans_false='URxvt.transparent: false'

if grep -q "$trans_true" $xresources_file; then
  sed -i "s/$trans_true/$trans_false/" $xresources_file
  xrdb ~/dotfiles/Xresources
else
  sed -i "s/$trans_false/$trans_true/" $xresources_file
  xrdb ~/dotfiles/Xresources
fi
