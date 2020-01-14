#! /bin/bash

mkdir -p /tmp/found-files

# for myfile in *;
# do
#     if [ -f "$myfile" ]; then
#         echo "$myfile"
#         #grep -ni "grep" "$myfile"
#         check=$(grep -ni "grep" "$myfile")
#         if [ -z "$check" ]; then
#             echo "EMPTY"
#         else
#             echo -e "FOUND! \n$check"
#             cp "$myfile" /tmp/found-files
#             echo "*****" >> /tmp/found-files/"$myfile"
#             echo " " >> /tmp/found-files/"$myfile"
#         fi
#     else
#         echo "$file is not a file! "
#         echo " "
#     fi
#     printf '=%.0s' {1..40}
#     echo " "
# done

### Recursive search

for i in f=$(find . -type d);
do
    
    if [ $i != "/tmp/found-files"]; then
        
        echo "====== FOLDER: $i ======"
        
        for myfile in $i/* ;
        do
            if [ -f "$myfile" ]; then
                echo "File inside is: $myfile"
                check=$(grep -ni "grep" "$myfile")
                if [ -z "$check" ]; then
                    echo "EMPTY"
                else
                    echo -e "FOUND! \n$check"
                    
                    name_f=$(basename $myfile)
                    
                    cp "$myfile" /tmp/found-files/"$name_f"
                    echo " " >> /tmp/found-files/"$name_f"
                    echo "*****" >> /tmp/found-files/"$name_f"
                    echo "$check " >> /tmp/found-files/"$name_f"
                fi
            fi
        done
    fi
done