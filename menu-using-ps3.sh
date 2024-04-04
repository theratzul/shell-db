#!/bin/bash
PS3="Your choice: "

select ITEM in "Add User" "Quit"
do
    read -p "Enter the username: " username
    output="$(grep -w $username /etc/passwd)"
    if [[ $REPLY -eq 1 ]]
    then
    echo "The username exist"
    else
    echo "User doesn't exist"
    fi

done
