#! /bin/bash

read -p "Enter a file or a directory " VAR

ls -l $VAR
if [ -d $VAR ]
then
    echo $VAR 'is a directory'
elif [ -f $VAR ]
then
    echo $VAR 'is a reg file'
else 
    echo $VAR 'is other type of file'
fi
