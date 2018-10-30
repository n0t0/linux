#! /bin/bash

# Exercise 1 
NUM=1

while read LINE
do
    echo "${NUM}: ${LINE}"
done < /tmp/passwd

# Exercise 2
while true
do
    read -p "How many lines of /etc/passwd would you like to see? " HEAD
    echo "Printing the top $HEAD from the head fo /etc/passwd"
    head -${HEAD} /tmp/passwd
    break
done

# Exercise 3

while true
do 
    read -p "1: Show disk space. 2: Show uptime. 3: Show logged users " CHOISE
    case $CHOISE in
        1) 
            df -h
            ;;
        2)
            uptime
            ;;
        3)
            w
            ;;
        q)
            echo "Goodbye!"
            exit 0
            ;;
        *)
            "Invalid option!"
            break
            ;;
    esac
done
