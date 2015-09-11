#!/bin/bash

sudo cp /etc/X11/configs/xorg.conf.nvidia /etc/X11/xorg.conf
sudo systemctl stop bumblebeed
startx
