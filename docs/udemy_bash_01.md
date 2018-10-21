### Variables 

VARIABLE_NAME="Value"

#### example 1

$ MY_SHELL="bash"
$ echo "I like the $MY_SHELL shell."
$ echo "I am ${MY_SHELL}ing on my keyboard."

#### example 2

$ SERVER_NAME=$(hostname)
$ echo "You are running this script on ${SERVER_NAME}."

### Tests

[ condition-to-test-for ]

#### example 

[ -e /etc/passwd ]

#### File Operators 

-d <file>   True if file is a directory 
-e <file>   True if file exists
-f <file>   True if file exists and is a regular file 
-r <file>   True if file is readable by you
-s <file>   True if file exists and is not empty 
-w <file>   True if file is writable by you
-x <file>   True if file is executable by you
-z <file>   True if string is empty 
-n <file>   True if string is not empty 
STRING1 = STRING2 
            True if the strings are equal 
STRING1 != STRING2
            True if the strings are not equal 

#### Arithmetics Operators 

arg1 -eq arg2
arg1 -ne arg2
arg1 -lt arg2
arg1 -le arg2
arg1 -gt arg2
arg1 -ge arg2

### `if/elif/else` Statement 

if [ condition-is-true ]
then
    cmd N
elif [ condition-is-true ]
    cmd N
else 
    cmd N
fi

### `for loop`

for VARIABLE_NAME in ITEM_1 ITEM_N
do
    command 1
    command 2 
    command N
done 

#### example 1

```
#! /bin/bash
for COLOR in red gree blue
do
    echo "COLOR: $COLOR"
done 
```

#### example 2

```
#! /bin/bash
PICTURES=$(ls *jpg)
DATE=$(date +%F)

for PICTURE in $PICTURES
do
    echo "Renaming ${PICTURE} to ${DATE}-${PICTURE}"
    mv ${PICURE} ${DATE}-${PICTURE}
done
```

### Positional Parameters 

$ script.sh parameter1 parameter2 parameter3

$0 - script.sh
$1 - parameter1
$2 - parameter2
$3 - parameter3 
$@ - all parameters 

```
#! /bin/bash
echo "Executing script: $0"
for USER in $@
do
    echo "Archiving user: $USER"
    # Lock the account 
    passwd -l $USER
    # Create an archive of the home directory.
    tar cf /archives/${USER}.tar.gz /home/${USER}
done
```

### User Input (STDIN)

$ read -p "PROMPT" VARIABLE 

```
#! /bin/bash

read -p "Enter a user name: " USER
echo "Archiving user: $USER"
...
```


