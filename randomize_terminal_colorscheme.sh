#!/bin/bash

# randomize terminal color scheme
terminal_color_scheme=$(sort --random-sort $HOME/.Xcolorschemes/favorites.txt | head -n 1)
dir=$HOME/.Xcolorschemes/
xrdb -merge $dir$terminal_color_scheme
