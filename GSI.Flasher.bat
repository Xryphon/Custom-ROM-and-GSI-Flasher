@ECHO OFF 

ECHO ***This is an experimental BAT script that may not work on various devices. You have been warned. The developer assumes no responsibilty for damage caused, warranties lost, phones broken, nor devices render useless by this script.

PAUSE 

ECHO ***This file will flash a GSI on your device, when provided with the "vbmeta" partition. This script will also erase all user data, so be warned!

PAUSE

ECHO ***Do not attempt this on devices that are running custom ROMs, custom vendors, modified boot partitions, etc. Doing so will likely cause the GSI to be unbootable and your device useless.

PAUSE

ECHO ***The script will first boot your device into fastbootd mode for access to all partitions.

PAUSE

fastboot boot fastboot
fastboot -w
fastboot erase product_a
fastboot resize-logical-partition product_a 0x0
fastboot --disable-verity --disable-verification flash vbmeta vbmeta.img
fastboot flash system system.img

ECHO The script has completed! You may now exit out of the command prompt, and use your device.

PAUSE