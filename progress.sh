#!/bin/bash

let b=0

function main(){
  echo "Welcome ... "
  while [ 1 ]
  do
    let columns=$(tput cols)-10
    read -rsn1 x
    echo -n "="
    if [ "$x" = "a" ]
    then 
      let b=$b-1
  elif [ "$x" = s ]
    then
      let b=$b+1
    fi
 
    if [ "$b" -lt "1" ]
    then
      let b=1
    elif [ "$b" -ge "$columns" ]
    then
      let b="$columns"
    fi
 
    echo -ne "\r"
 
    let c=$(tput cols)
    for i in `seq 1 $c`
    do
      echo -ne " "
    done
 
    echo -ne "\r"
 
    for i in `seq 1 $b`
    do
      echo -ne "="
    done
  done
  exit 0
}
 
main      

