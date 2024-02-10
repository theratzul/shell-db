#!/bin/bash
status=$(systemctl status apache2 | awk 'NR==3 { print $2}')
echo -e "The stats is: \033[92m$status\033"