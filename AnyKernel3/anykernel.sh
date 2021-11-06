# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# Begin properties
properties() { '
kernel.string=PolarKernel by YumeMichi @ xda-developers
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=dipper
device.name2=equuleus
device.name3=ursa
device.name4=polaris
device.name5=beryllium
device.name6=perseus
supported.versions=
supported.patchlevels=
'; } # End properties

# Shell variables
block=boot;
is_slot_device=auto;
ramdisk_compression=auto;

## AnyKernel methods (DO NOT CHANGE)
# Import patching functions/variables - see for reference
. tools/ak3-core.sh;

## AnyKernel file attributes
# set permissions/ownership for included ramdisk files
set_perm_recursive 0 0 755 644 $ramdisk/*;
set_perm_recursive 0 0 750 750 $ramdisk/init* $ramdisk/sbin;

## AnyKernel install
ui_print " " "Decompressing boot image..."
dump_boot;

# Begin ramdisk changes

# End ramdisk changes

ui_print " " "Installing new boot image..."
write_boot;

## End install
ui_print " " "Done!"
$bb umount /system
