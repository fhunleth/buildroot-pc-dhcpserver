#!/bin/sh

TARGETDIR=$1
BOARDDIR=board/dhcpserver

# Copy the rootfs additions
cp -a $BOARDDIR/rootfs-additions/* $TARGETDIR/

