#!/bin/sh

OUTPUTDIR="../bin-tulip"
mkdir -p $OUTPUTDIR

devices="mk20dx32 mk20dx64 mk20dx128"

for device in $devices; do
    echo "Building for device $device"

    make clean
    make LDSCRIPT=fcb-app-$device.ld FCBOOT_IMAGE=$OUTPUTDIR/fc-boot-$device.hex all

    cp fc-firmware.dfu $OUTPUTDIR/fc-firmware-$device.dfu
    cp fc-firmware.hex $OUTPUTDIR/fc-firmware-$device.hex
    cp app-image.hex $OUTPUTDIR/app-image-$device.hex
done
