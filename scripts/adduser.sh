#! /bin/bash

### This script add user/s to a remote host
### it copies newly created user's public key to a remote host
### it copies newly created user's .bash_profile to a remote host

### Local script to remote host example
# ssh vivek@remotehost 'bash -s' < /path/to/test.sh

### Add user/s
# TODO:
# add multiple users at once
read -p "Type user to add: " username

### SSH to hostname
# TODO:
# root keys must be in place
# hide password?

### Server to add user to
# TODO: hide readpassword
read -p "Enter a hostname to add user to: " hostname
ssh root@$hostname "useradd ${username} \
                    && passwd $username \
                    && usermod -aG wheel $username"


### Add $username to sudoers
# TODO: line below root
# root    ALL=(ALL)       ALL
# $username ALL=(ALL)       ALL


### Exit from remote host

echo "Exiting $hostname ..."

### Generate a key pair if doesn't exist
# TODO:
# if statement

### Copy ssh public key

echo "Copying public $username key to $hostname ..."
ssh-copy-id -i ~/.ssh/id_rsa.pub $username@$hostname

### Copy .bash_profile to .bashr
# TOD0: cp 
# .vimrc
# .gitignore
# .kubectl_aliases
# .docker_aliases

scp ~/.bash_profile $username@$hostname:~/.bashrc

### Lock the user
# usermod -l $username

### Add $hostname to ~/.ssh/config if doesn't exist
# TODO:
# if statement if hostname doesn't exist
# create $hostname alias

# read -p "Enter an alias for $hostname" alias
# echo """
# Host $alias
#     HostName $hostname
#     User $username
# """ >> ~/.ssh/config
