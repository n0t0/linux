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
    
    # if statements
    
    if [ $(( $num % 2)) -eq 0 ] ; then
        echo "Your number is divisable by 2"
        elif [ $(( $num % 3)) -eq 0 ]; then
        echo "Your number is divisable by 3"
        elif [ $(( $num % 5)) -eq 0 ]; then
        echo "Your number is divisable by 5"
    else
        echo "Your number is not disiable by 2,3,5"
    fi
    
    # for loop
    
    for i in {2,3,5,11,12,20,200,400}
    do
        if [ $(( $num % $i )) -eq 0 ]; then
            echo "The number is divisable by $i!"
        fi
    done
}

divide num

