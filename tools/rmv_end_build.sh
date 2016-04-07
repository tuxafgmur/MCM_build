#!/bin/bash
# Copyright (C) 2016 Tuxafgmur - Dhollmen 
# Removes files after build the rom

WSYSTEMDIR=$1
WOURTDIR=${WSYSTEMDIR%/system}

rm -rf $WOURTDIR/obj/PACKAGING
rm -rf $WOURTDIR/ota_temp
rm -rf $WOURTDIR/*ota*.zip
rm -rf $WOURTDIR/ramdisk-recovery.*
