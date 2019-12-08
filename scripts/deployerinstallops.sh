#!/bin/bash

# check for deployer.phar
if [ ! -f /usr/local/bin/dep ]; then
    echo "Downloading deployer.phar to /tmp"
    wget http://deployer.org/releases/v3.3.0/deployer.phar --directory-prefix=/tmp
    echo "Moving /tmp/deployer.phar to /usr/local/bin/dep"
    sudo mv /tmp/deployer.phar /usr/local/bin/dep
    sudo chmod +x /usr/local/bin/dep
else
    echo -e "Checking for deployer.phar ... \xE2\x9C\x93"
fi

# read owner (use username) from whoami and set default group
OWNER="$(whoami)"
GROUP="apache"

# fetch apache group from config file
if [ -f /etc/httpd/conf/httpd.conf ]; then
    GROUP="$(cat /etc/httpd/conf/httpd.conf | grep '^Group' | awk '{ print $2 }')"
fi

# read the project directory (with example/default)
read -e -p "LOCAL project directory: " -i "`pwd`" PROJECT_DIRECTORY

# default a deployment directory name from the project directory
DEPLOYMENT_DIRECTORY="/opt/deployments/${PROJECT_DIRECTORY##*/}"
read -e -p "LOCAL deployment directory: " -i $DEPLOYMENT_DIRECTORY DEPLOYMENT_DIRECTORY

# make the deployment directory and change ownership
sudo mkdir -p $DEPLOYMENT_DIRECTORY && sudo chown -R $OWNER:$GROUP $DEPLOYMENT_DIRECTORY

# fetch the git repository and branch
GIT_REPOSITORY="$(git remote -v | grep origin | grep fetch | awk '{ print $2; }')"
read -e -p "Enter the GIT repository for the project: " -i "$GIT_REPOSITORY" GIT_REPOSITORY
read -e -p "What branch shall we checkout from git? " -i "develop" GIT_BRANCH

# make the project directory if it doesn't exist
if [ ! -d $PROJECT_DIRECTORY ]; then
    echo "Creating $PROJECT_DIRECTORY"
    sudo mkdir -p $PROJECT_DIRECTORY && sudo chown -R $OWNER:$GROUP $PROJECT_DIRECTORY
    echo "Cloning repository into $PROJECT_DIRECTORY"
    git clone -b$GIT_BRANCH $GIT_REPOSITORY $PROJECT_DIRECTORY
fi

# clone the git repo or checkout the correct branch into the deployment directory
if [ -d $DEPLOYMENT_DIRECTORY/.git ]; then
    echo "Checking out $GIT_BRANCH in $DEPLOYMENT_DIRECTORY"
    cd $DEPLOYMENT_DIRECTORY
    git fetch
    git checkout $GIT_BRANCH
else
    echo "Cloning $GIT_REPOSITORY into $DEPLOYMENT_DIRECTORY"
    git clone -b$GIT_BRANCH $GIT_REPOSITORY $DEPLOYMENT_DIRECTORY
fi

# copy parameters.yml file to deploy directory
if [ -f $PROJECT_DIRECTORY/app/config/parameters.yml ]; then
    echo "Copying parameters.yml from project root to deployment directory"
    cp "$PROJECT_DIRECTORY/app/config/parameters.yml" "$DEPLOYMENT_DIRECTORY/app/config/parameters.yml"
else
    echo "$PROJECT_DIRECTORY/app/config/parameters.yml does not exist; cannot copy to $DEPLOYMENT_DIRECTORY/app/config/parameters.yml"
fi

echo "Done!"
