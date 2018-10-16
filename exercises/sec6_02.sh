#! /bin/bash

DATE=$(date +%F)

read -p "Enter a file extention " VAR 
read -p "Enter a prefix to the filenames " PRE

for i in $VAR
do 
    ls *$i 
    if $PRE |...|
    then
        mv *$i $PRE*$i
    else
        mv *$i ${DATE}*$i 
    fi?
done

