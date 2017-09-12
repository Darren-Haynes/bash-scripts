#!/bin/sh

# get UUID of plugged in usb drive. Note fails if more than 1 USB drive is plugged in
UUID=$(lsblk -f | tail -1 | grep -oE "([^ ]+)\s+$" | grep -oE "\b.+\b")
echo "UUID = $UUID"

# Directory where usb drive is mounted
DIR='/dev/usb/'

# create directory where usb is mounted if it doesn't exist
if [ ! -d "$DIR" ]; then
  sudo mkdir /dev/usb/
fi

# mount
sudo mount -U "$UUID" "$DIR"
