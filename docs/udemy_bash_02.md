### Exit Status

- exit 0
- exit 1 

$ ls /not/here
$ echo "$?" --> contains the RETURN of the previously executed command 
- output 2 

#### Example 

``` 
HOST="google.com"
ping -c 1 $HOST
if [ "$?" -eq "0" ]
then 
    echo "$HOST reachable."
else
    echo "$HOST unreachable."
fi
```

#### Example 

``` 
HOST="google.com"
ping -c 1 $HOST
RETURN_CODE=$?

if [ "$RETURN_CODE" -ne "0" ]
then 
    echo "$HOST unreachable."
fi
```
