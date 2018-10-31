### While Loops 

```
while [ CONDITION_IS_TRUE ]
do
    # Commands change the condition
    command 1
    command 2
    command N
done
```

```
while true
do
    command N
    sleep 1
done 
```

```
INDEX=1
while [ $INDEX -lt 6 ]
do 
    echo "Creating Project-${INDEX}"
    mkdir /usr/local/project-${INDEX}
    ((INDEX++))
done
```

```
while [ "$CORRECT" != "y" ]
do
    read -p "Enter your name: " NAME
    read -p "Is ${NAME} correct? " CORRECT 
done
```

```
while ping -c 1 app1 >/dev/null
do
    echo "app1 still up..."
    sleep 5
done

echo "app1 down, continuing. "
```

#### Part 2 

```
grep xfs /etc/fstab | while read LINE
do
    echo "xfs: ${LINE}"
done
```

```
FS_NUM=1
grep xfs /etc/fstab | whileread FS MP REST
do
    echo "${FS_NUM}: file system: ${FS}"
    echo "${FS_NUM}: mount point: ${MP}"
    ((FS_NUM++))
done
```

```
while true
do
    read -p "1: Show disk usage. 2: Show uptime. " CHOISE
    case "$CHOISE" in
        1) 
            df -h
            ;;
        2) uptime
            ;;
        *)
            break
            ;;
    esac
done
```