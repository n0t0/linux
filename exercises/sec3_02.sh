#! /bin/bash

"""
Enter a file argument
"""

if [ -d $1 ]
then
    echo $1 'is a directory'
    exit 1
elif [ -f $1 ]
then
    echo $1 'is a reg file'
    exit 0
else 
    echo $1 'is other type of file'
    exit 2
fi