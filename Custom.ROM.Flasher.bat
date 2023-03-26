@ECHO OFF 

ECHO ***This file will flash a custom ROM on your device, when provided with the custom ROM's zip file, the custom recovery required, and an optional Google Applications (GApps) file. Be in fastboot/ the bootloader of your device in order to flash this script.

PAUSE

ECHO ***As always, when attempting to flash custom ROMs, ensure that you know what you are doing - most likely, you will not need this script and instead will be doing the commands on your own.

PAUSE

ECHO ******After this next line, the flashing process will be initiated. Proceed at your own risk.

PAUSE

fastboot erase system
fastboot erase boot
fastboot erase cache
fastboot erase userdata
fastboot -w

ECHO Please put your custom recovery file that is named "recovery.img" in the location of where this script is located. A recovery file will be flashed onto the device.

PAUSE

fastboot flash recovery recovery.img
fastboot reboot recovery

ECHO The device will now boot into recovery mode. In order to complete the flashing of your ROM, please enable ADB sideloading.

PAUSE 

adb sideload rom.zip

ECHO The script has completed! You may now exit out of the command prompt, and use your device.

PAUSE