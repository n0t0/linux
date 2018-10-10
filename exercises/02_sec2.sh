#! /bin/bash

if [ -d /etc/shadow ]
then
    echo "Shadow passwords are enabled."
elif [ -w /etc/shadow ]
    echo "Can edit the file"
fi