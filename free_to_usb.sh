#!/bin/sh

###  Mount usb if not already mounted and copy all contents of
####  $fromdir directory to usb drive. Then unmount usb

# execute script that mounts usb drive
/bin/bash /home/darren/.bash_scripts/mount_usb.sh

fromdir='/home/darren/Downloads/free/*'
usbdir='/dev/usb/'

# rsync all files except if they already exist at destination
sudo rsync -r --ignore-existing --progress $fromdir $usbdir | lolcat

# run script that unmounts usb drive
/bin/bash /home/darren/.bash_scripts/unmount_usb.sh

# establish that unmount occured to safely remove usb drive
check_unmount=$(ls /dev/usb/)
echo "Device directory contents = $check_unmount"
