#! /bin/bash


####
# Create .env file
####

echo "Set environment variables values in .env file"
echo "Example: "
echo ""
cat .env_example

echo ""
read -p "DATE: " date_string ; echo DATE=$date_string >> .env
read -p "DB_NAME: " database ; echo DB_NAME=$database >> .env
read -p "DB_HOST: " hostname ; echo DB_HOST=$hostname >> .env
read -p "DB_USER: " username ; echo DB_USER=$username >> .env
read -p "DB_USER_PASSWORD: " user_pass ; echo DB_USER_PASSWORD=$user_pass >> .env
read -p "MYSQL_ROOT_PASSWORD: " mysql_pass ; echo MYSQL_ROOT_PASSWORD=$mysql_pass >> .env

####
# Run docker-compose up
####

#docker-compose up -d

