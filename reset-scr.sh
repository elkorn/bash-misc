#!/bin/bash
xrandr --output LVDS-0 --off;
xrandr --output LVDS-0 --auto;
xrandr --output VGA-0 --off;
xrandr --output VGA-0 --auto --right-of LVDS-0;
