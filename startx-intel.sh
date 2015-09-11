#!/bin/bash

sudo rm /etc/X11/xorg.conf
sudo systemctl start bumblebeed
startx
