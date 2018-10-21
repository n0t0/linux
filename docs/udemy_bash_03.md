### Functions 

```
function function-name() {
    # code goes here
}
```

```
function-name() {
    # code goes here
}

```
```
#! /bin/bash
hello() {
    echo "Hello!"
}
hello
```
### Function Call on Other Functions

```
#! /bin/bash
function hello() {
    echo "Hello"
    now
}

function now() {
    echo "It's $(date +%r)"
}
hello
```
### Positional Parameters 

```
#! /bin/bash

function hello() {
    echo "hello $1"
}
hello Jason
```

### Scope

- VAR defined inside function is available only after function is called
- local LOCAL_VAR=1 --> only inside functions

### Exit Status (Return Codes)

- return <RETURN_CODE>

```
function backup_file() {
    if [ -f $1 ]
    then 
        BACK="/tmp/$(basename ${1}).$(date +%F).$$"
        echo "Backing up $1 to ${BACK}"
        cp $1 $BACK
    fi
}
backup_file /etc/hosts
if [ $? -eq 0 ]
then 
    echo "Backup succedded!"
fi
```