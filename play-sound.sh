#!/bin/env bash

digits_only=$(acpi -i | head -1 | awk '{print $4}' | grep -o '[0-9]*')
if [ "$digits_only" -lt 20 ]; then
   paplay /home/darren/Music/Sound_Bites/Electronic_Chime-KevanGC-495939803.wav
   paplay /home/darren/Music/Sound_Bites/Electronic_Chime-KevanGC-495939803.wav
fi
