#!/bin/bash

source ./config.rc

# check the number of parameters
if [[ $# -ne 3 ]];then
    echo -e "${red}Usages${nc}: $0 <Parameter 1> <Parameter 2> <Parameter 3>"
    exit 1
fi