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

# TRY AGAIN TO MAKE AUTO RELOADING OF TERMINALS TO MAKE TRANSPARENCY - WHEN
# TIME PRESENTS ITSELF


#WID=$(xdotool search --class Termite)
#lines=$(echo "$WID" | wc -l)
#echo "No of line: $lines"
#trimmed=$((lines - (lines * 2) + 1))
#echo "TRIMMED: $trimmed"
#termite_WIDs=$(echo $WID | head -17)
#echo "HEAD ARGUMENT: $termite_WIDs"

#for termite in $WID; do
  #echo "I AM WID: $WID"
  #echo "termite window: $termite"
  #xdotool windowactivate "$termite"
  #sleep 0.1
  #xdotool key Control_L+Shift_L+r
  #echo "key press occured"
  #sleep 0.1
#done

