@ECHO OFF 

ECHO ***This file will flash a GSI on your device, when provided with the "vbmeta" partition. This script will also erase all user data, so be warned!

PAUSE

ECHO ***Do not attempt this on devices that are running custom ROMs, custom vendors, modified boot partitions, etc. Doing so will likely cause the GSI to be unbootable and your device useless.

PAUSE

fastboot boot fastboot
fastboot -w
fastboot erase product_a
fastboot resize-logical-partition product_a 0x0
fastboot --disable-verity --disable-verification flash vbmeta vbmeta.img
fastboot flash system system.img

ECHO The script has completed! You may now exit out of the command prompt, and use your device.

PAUSE