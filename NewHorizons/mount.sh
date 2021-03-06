#!/bin/bash
# Making a permanent mount [~what about the partition(s)?]
# Reference: https://linuxconfig.org/howto-mount-usb-drive-in-linux
cd ~/

fdisk -l; # find the usb block name of your device...
          # In this case, it is: 
	  # /dev/sdb1 


# Create a mount point....
mkdir "/media/usb-drive/" -v; 

# Mount the USB drive:
mount "/dev/sbd1" "/media/usb-drive/"
# Generates error:
# mount: /dev/sdb1 is already mounted or /media/usb-drive busy
#       /dev/sdb1 is already mounted on /lib/live/mount/medium

# Check to make sure that the mount worked with the following command:
mount | grep "/dev/sdb1";

# Access your USB device: Access your files on your usb drive by navigating to the point where everything was mounted:
cd "/media/usb/";
ls;

# Unmount the USB drive:
# umount "/media/usb-drive/";
umount "/lib/live/mount/medium"
# Generates error:
# umount: /lib/live/mount/medium: target is busy
#        (In some cases useful info about processes that
#         use the device is found by lsof(8) or fuser(1).)

# Making the mount permanent...
# Determine the UUID belonging to the USB partition that you wish to mount:
ls -l "/dev/disk/by-uuid/*";

# Create a new /etc/fstab entry:
echo "/dev/disk/by-uuid/1D83-5BFF /media/usb-drive vfat 0 0" >> /etc/fstab

# Congratulatins, your USB drive will now mount automatically after the reboot.
# Note that UUID uniqueness is not guaranteed. It is recommended to use
# partition tags instead.


# Where am I going to mount this bitch?

# USB Block Device Name
mount --help
