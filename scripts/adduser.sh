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
read -p "Enter a hostname to add user to: " hostname
ssh root@$hostname "useradd ${username} \
                    && passwd $username \
                    && chmod -aG wheel $username"

### Exit from remote host

echo "Exiting $hostname ..."

### Generate a key pair if doesn't exist
# TODO:
# if statement

### Copy ssh public key

echo "Copying public $username key to $hostname ..."
ssh-copy-id ~/.ssh/id_rsa.pub $username@$hostname

### Copy .bash_profile to .bashr

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
#     User $usernam
# """ >> ~/.ssh/config
