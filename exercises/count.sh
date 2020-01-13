#! /bin/bash

# ls .
for file in $(ls .)
do
    if [ ${file: -4} == ".txt" ]; then
        echo $file
        number=$(( number + 1 ))
    fi
done

echo "Number of ".txt" files in $PWD = $number"