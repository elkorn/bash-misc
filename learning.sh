#!/bin/bash

echo "===Sorting a file==="
echo "Before"
$(echo cat ./install-node.sh)
echo "After"
$(echo sort ./install-node.sh)

echo $(cat ./install-node.sh | uniq)
