#!/bin/bash

CK='\033[1;4;34m'
CU='033\[1;4;36m'
OK="\e[32m All good\e[0m"
NOK="\e[31m Clean-up is need it\e[0m"

function DiskCheck () {
    echo -e "e[31m=== Start disk verification ===\e[0m"
    df -h
}

function freeCheck () {
    echo -e "e[31m=== Start ram verification ===\e[0m"
    free -m
}

declare -a func="DiskCheck freeCheck Exit" #Array 

PS3="Please select the app to be executed: ";

select sel in ${func[@]};do
  if [[ "$sel" != "Exit" ]];then
    echo -e "\e[34m Your choice is $sel \n\n\e[0m"
  else
    echo -e "\e[31m Your choice is $sel \n\n\e[0m"
  exit;fi
done
exit