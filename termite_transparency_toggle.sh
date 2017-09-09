#!/bin/sh

# Toggle transparency of Termite terminal by search and
# replacing the Xresources file in place using sed
termite_config='/home/darren/dotfiles/termite_config'
trans_true='^background = rgba(0, 0, 0, 0.9)'
trans='background = rgba(0, 0, 0, 0.9)'
comment=';'
non_trans='background      = #'

if grep -q "$trans_true" $termite_config; then
  sed -i "s/$trans_true/$comment$trans/" $termite_config
  sed -i "s/$comment$non_trans/$non_trans/" $termite_config
else
  sed -i "s/$comment$trans/$trans/" $termite_config
  sed -i "s/$non_trans/$comment$non_trans/" $termite_config
fi


