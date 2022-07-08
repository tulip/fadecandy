#!/bin/sh

OUTPUTDIR="../bin-tulip"
mkdir -p $OUTPUTDIR

devices="mk20dx32 mk20dx64 mk20dx128"

for device in $devices; do
    echo "Building for device $device"

    make clean
    make LDSCRIPT=$device.ld all
    cp fc-boot.hex $OUTPUTDIR/fc-boot-$device.hex
    cp fc-boot.bin $OUTPUTDIR/fc-boot-$device.bin
done
