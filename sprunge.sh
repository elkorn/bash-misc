#!/bin/bash

sprunge() { curl -F 'sprunge=<-' http://sprunge.us < "${1:-/dev/stdin}"; }
# usage: sprunge FILE # or some_command | sprunge
