#!/bin/sh

UUID=$(lsblk -f | grep sdb | grep -oE '\b[a-zA-Z0-9-]{6,}\b')
DIR='/dev/usb/'
if [ !  -d "$DIR" ]; then
  sudo mkdir /dev/usb/
fi
sudo mount -U "$UUID" "$DIR"
