#!/bin/bash

# TODO use getopts
function check_normal() {
    if [ $(pgrep "$1" | wc -l) -gt 0 ]
    then
        echo "$2: already running as $1"
    fi
}

function check_capital() {
    check_normal "$2" "${1^}"
}

if [ -n "$1" ]
then
    if [ -n "$2" ]
    then
        check_normal "$2" "$1"
        check_capital "$2" "$1"
    else
        check_normal "$2" "$2"
        check_capital "$2" "$2"
    fi
    echo "Running $2"
    $($2 &)
else
    echo "Provide a process name. Correct usage: run-check [{processAlias}] {processName} {processArgs}"
fi
