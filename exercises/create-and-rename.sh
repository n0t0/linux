#! /bin/bash


number=0
for item in ./*.txt
do
    
    
    number=$(( number +1 ))
done

echo "The number of .txt files is: $number"

choice=""
while [ "$choice" != "t" -a "$choice" != "j" ];
do
    echo "To rename .jpg file pres `j`."
    echo "To rename .txt file pres `t`."
    echo "You typed $choice!"
done
