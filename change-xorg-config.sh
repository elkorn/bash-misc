#!/bin/bash

case "$1" in
    default)
        sudo cp /etc/X11/xorg.conf.backup /etc/X11/xorg.conf
       killall X;; 
    nvidia)
        sudo cp /etc/X11/xorg.conf.nvidia /etc/X11/xorg.conf
        killall X;;
esac
