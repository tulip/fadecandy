#!/bin/sh

OUTPUTDIR="../bin-tulip"
mkdir -p $OUTPUTDIR

make clean
make LDSCRIPT=mk20dx32.ld all
cp fc-boot.hex $OUTPUTDIR/fc-boot-32k.hex
cp fc-boot.bin $OUTPUTDIR/fc-boot-32k.bin

make clean
make LDSCRIPT=mk20dx64.ld all
cp fc-boot.hex $OUTPUTDIR/fc-boot-64k.hex
cp fc-boot.bin $OUTPUTDIR/fc-boot-64k.bin

make clean
make LDSCRIPT=mk20dx128.ld all
cp fc-boot.hex $OUTPUTDIR/fc-boot-128k.hex
cp fc-boot.bin $OUTPUTDIR/fc-boot-128k.bin
