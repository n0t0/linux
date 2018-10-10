#! /bin/bash

VAR=/etc/shadow

cat $VAR

if [ $? = "0" ]
then 
    echo "Command succeded"
else
    echo "Command failed"
    exit 1 
fi
exit 0