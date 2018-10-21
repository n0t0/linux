```
case "$VAR" in
    pattern_1)
        # Commands go here.
        ;;
    pattern_N)
        # Commands go here.
        ;;
esac
```

```
case "$VAR" in 
    start)
        /usr/bin/sshd
        ;;
    stop)
        kill $(cat /var/run/sshd.pid)
        ;;
    *)
        echo "Usage: $0 start|stop" ; exit 1 
        ;;
esac
```
