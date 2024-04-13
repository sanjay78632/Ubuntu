#!/bin/bash

# Prompt the user to enter their username
echo -n "Enter username: "
read username

# Prompt the user to enter a new password
echo -n "Enter new password for $username: "
read -s new_password # `-s` flag hides the input

# Change the password using sudo
echo "$username:$new_password" | sudo chpasswd

echo "Password changed successfully for user $username."

