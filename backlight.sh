#!/bin/bash

sudo echo $1 > /sys/class/backlight/acpi_video0/brightness
sudo echo $1 > /sys/class/backlight/intel_backlight/brightness
