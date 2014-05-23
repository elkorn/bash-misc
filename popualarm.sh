#!/bin/bash
#small and easy script for #! statler 
#by tunafish
#
#parts of the script are taken from jmbarnes' #!-friendly sleep timer
#
#libnotify-bin has to be installed, otherwise notify-send won't work
#
#the script can be run as: popupalarm <minutes> <text>
#eg: popupalarm 3 "Tea ready"
#if you run the script without parameters, it'll ask for message and duration.
#the script doesn't check for errors etc


if [ "$2" = "" ]; then
popupmessage=$(zenity --entry --title="Popup Alarm" --text="Message to display?");
    if [ $? = 1 ]; then 
        exit
    fi
else 
    popupmessage="$2"
fi 


if [ "$1" = "" ]; then
minutes=$(zenity --entry --title="Popup Alarm" --text="How long of a delay (in minutes)?");
    if [ $? = 1 ]; then 
        exit
    fi
else 
    minutes="$1"
fi 

elapsedtime=0
while [ $elapsedtime -lt $minutes ]
do
    sleep 1m
    elapsedtime=$(($elapsedtime+1))
done

notify-send -i gtk-dialog-info -t 400000 -- "Timer" "$popupmessage"

exit