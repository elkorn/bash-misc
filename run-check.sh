#!/bin/bash
function check_normal() {
    if [ $(ps aux | grep $2 | wc -l) -gt 3 ]
    then
        echo "$1: already running as $2"
        exit 1
    fi
}

function check_capital() {
    check_normal "$1" "${2^}"
}

if [ -n "$1" ]
then
    if [ -n "$2" ]
    then
        check_normal "$1" "$2"
        check_capital "$1" "$2"
    else
        check_normal "$1" "$1"
        check_capital "$1" "$1"
    fi

    "$1" &
else
    echo "Provide a process name. Correct usage: run-check {processName} [{processAlias}]"
fi
