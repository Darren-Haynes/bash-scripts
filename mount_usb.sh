#!/bin/sh

# get UUID of plugged in usb drive. Note fails if more than 1 USB drive is plugged in
UUID=$(lsblk -f | grep sdb | grep -oE '\b[a-zA-Z0-9-]{6,}\b')

# Directory where usb drive is mounted
DIR='/dev/usb/'

# create directory where usb is mounted if it doesn't exist
if [ ! -d "$DIR" ]; then
  sudo mkdir /dev/usb/
fi

# mount
sudo mount -U "$UUID" "$DIR"
