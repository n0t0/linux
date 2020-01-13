#! /bin/bash

read -p "Enter a number: " num

# if [ $(( $num % 2)) -eq 0 ] ; then
#     echo "You number is divisable by 2"
#     elif [ $(( $num % 3)) -eq 0 ]; then
#     echo "your number is divisable by 3"
#     elif [ $(( $num % 5)) -eq 0 ]; then
#     echo "your number is divisable by 5"
# else
#     echo "Your number is not disiable by 2,3,5"
# fi

divide(){
    if [ $(( $num % 2)) -eq 0 ] ; then
        echo "You number is divisable by 2"
        elif [ $(( $num % 3)) -eq 0 ]; then
        echo "your number is divisable by 3"
        elif [ $(( $num % 5)) -eq 0 ]; then
        echo "your number is divisable by 5"
    else
        echo "Your number is not disiable by 2,3,5"
    fi
}

divide num