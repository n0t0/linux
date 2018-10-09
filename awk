# pattern and action

awk '/foo/ { print $0 }' file
awk '/foo/ { print }' file
awk '/foo/' file 

# two rules 

awk '/12/ { print $0 }'
    '/21/ { print $0 }' file1 file2

# example 

ls -l | awk '$5 == "Nov" { sum += $4 }
	     END { print sum }'

### Run awk Programs

awk 'program' input-file1 input-file2 --> program consists of pattern and action 
awk -f program-file input-file1 inputfile2 --> for longer awk programs

### Executable awk Programs 

```
#! /bin/awk -f 

# a sample awk program
BEGIN { print "hello, world" }
```
