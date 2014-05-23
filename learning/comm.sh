#!/bin/bash
sort numbered.txt -o numbered.txt
sort numbered2.txt -o numbered2.txt
comm numbered.txt numbered2.txt