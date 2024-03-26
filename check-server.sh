#!/bin/bash

red="\e[0;31m"
RED="\e[1;31m"
nc="\e[0m"

declare -a ACTS=(mem load cpu disk)

if [[ $# -lt 1 ]];then
    echo -e "${RED}Usage${nc}: $0 <ACTION>"
    exit 1
fi

if [[ " ${ACTS[@]} " =~ " $1 " ]]; then
  ACT=$1
else
  echo -e "${RED}Error${nc}: Wrong action 'Actions availables: ${ACTS[*]}"
  exit 2
fi


case $ACT in
    load)
        uptime
    ;;
    mem)
        free -m
    ;;
esac
