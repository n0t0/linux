#!/bin/bash

case $VAR in 
    start)
        /tmp/sleep-walking-server.sh &
        ;;
    stop)
        kill $(cat /tmp/sleep­walking­server.pid)
        ;;
    *)
        echo "Usage: $0 start|stop" ; exit 1 
        ;;
esac
