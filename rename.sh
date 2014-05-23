#!/bin/bash

# Changes jpg and png filenames
count=1
for img in *.jpg *.png
do
    new=image-$count.${img##.*}
    mv "$img" "$new" 2> /dev/null
    if [ $? -eq 0 ];
    then
        echo "Changing name from $img to $new..."
        let count++
    fi
done
