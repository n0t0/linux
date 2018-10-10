#! /bin/bash

function file_count() {
    if [ -d $1 ]
    then 
        echo "$(basename ${1}):"
        ls $1 | wc -l
    fi
}

file_count /etc
file_count /var
file_count /usr/bin
