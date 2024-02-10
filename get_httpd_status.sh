#!/bin/bash
read -p "Enter your service name: " web
status=$(systemctl status $web | awk 'NR==3 { print $2}')
echo -e "The stats is: \033[92m$status\033"