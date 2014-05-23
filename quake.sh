#!/bin/sh

if (wmctrl -l | grep 'AllTray';) then
    launch-restore Gnome-terminal gnome-terminal
else
    alltray -x -s -st -k 135 -g  660x400+706+210 -nt --skip-taskbar "gnome-terminal"
fi
