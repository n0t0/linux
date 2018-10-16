#! /bin/bash

PICTURES=$(ls *.jpg)
DATE=$(date +%F)

# ls *.jpg 

for PICTURE in $PICTURES
do
    mv $PICTURE ${DATE}${PICTURE}
done
