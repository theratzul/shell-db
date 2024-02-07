#!/bin/bash

echo "What is your favorite Linux distro?"

echo "1 - Arch"
echo "2 - CentOS"
echo "3 - Something else ..."

read distro;

case $distroin
    1) echo "Arch is rolling";;
    2) echo "CentOS is rolling";;
    3) echo "Something";;
esac