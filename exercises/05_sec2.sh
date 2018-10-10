#! /bin/bash

ls -l $@
if [ -d $@ ]
then
    echo $@ 'is a directory'
elif [ -f $@ ]
then
    echo $@ 'is a reg file'
else 
    echo $@ 'is other type of file'
fi