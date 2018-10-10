#! /bin/bash

uptime
if [ $? = "0" ]
then
    echo 'This script will exit with a 0 exit status.'
fi