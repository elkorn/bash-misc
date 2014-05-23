#!/bin/bash
# Send files to a host through ssh.
if [ -z "$1" ] 
    then
        echo 'Error: Provide a valid source path.'
fi

if [ -z "$2" ]
    then
        echo 'Error: Provide a valid destination path.'
fi

rsync -avs --delete -i -h -e ssh "$1" "$2"
