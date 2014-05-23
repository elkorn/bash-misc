#!/bin/bash

x='["jobs",3]   "Helsinki-Device-Manager-Trunk"'
if [[ "$x" =~ \[\"jobs\".[0-9]+\] ]]; then
    echo $x
fi
