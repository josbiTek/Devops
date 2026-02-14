#!/bin/bash

get_user_input() {

    while true; do
        read -p "Enter your name: " name1
        if [[ "$name1" =~ ^[a-zA-Z]+$ ]]; then
            break
        else
            echo "Invalid character! Try again."
        fi
    done

    while true; do
        read -p "Enter your surname: " name2
        if [[ "$name2" =~ ^[a-zA-Z]+$ ]]; then
            break
        else
            echo "Invalid character! Try again."
        fi
    done
}

# Run function
get_user_input

# Create username/email-style name
username="${name1}${name2}"

email="${username}@devopsclass.com"

# Create user
useradd -m -s /bin/bash "$email"

# Assign sudo rights
usermod -aG sudo "$email"

# Output
echo "First name: $name1"
echo "Surname: $name2"
echo "Email: $email"
