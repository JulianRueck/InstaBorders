#! /bin/bash

CURRENT=${PWD##*/}Borders
mkdir ~/Desktop/$CURRENT

for image in *.jpg *.JPG; do
    echo "Adding border to $image"
    ## makes squares
    convert -auto-orient -strip $image -resize 1000x1000 -background white -gravity center -extent 1050x1050 ~/Desktop/$CURRENT/"$image"

done

