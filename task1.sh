#!/bin/bash

read -p "enter a username: " username

if id "$username" &>/dev/null;
then
	echo "user $username already exists"
fi

read -s -p "enter password for $username: " password
echo
read -s -p "confirm password for $username: " confirm_password
echo

if ["password" != "confirm_password"];
then
	echo "passwords dont match"
fi

sudo useradd -m -s /bin/bash "$username"

echo "$username:$password" | sudo chpasswd

echo "user $username created successfully"

