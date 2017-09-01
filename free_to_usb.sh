#!/bin/sh

# Mount usb if not already mounted and copy all contents of
# $fromdir directory to usb drive. Then unmount usb

/bin/bash /home/darren/.bash_scripts/mount_usb.sh

fromdir='/home/darren/Downloads/free/*'
usbdir='/dev/usb/'

sudo rsync -r --ignore-existing --progress $fromdir $usbdir | lolcat

/bin/bash /home/darren/.bash_scripts/unmount_usb.sh

check_unmount=$(ls /dev/usb/)
echo "Device directory contents = $check_unmount"
