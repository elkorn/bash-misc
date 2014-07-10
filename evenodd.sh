#!/bin/bash
cw=$(expr $(date +%V) % 2)
if [ $cw -eq 0 ]
then echo E
else echo O
fi
