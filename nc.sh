#!/bin/bash

rm -f out
mkfifo out
trap "rm -f out" EXIT

cat out | nc -l 1500 > >(
  while read line
  do
    echo $line
    printf "HTTP/1.1 200 OK\nContent-Type:text/html\n\ntest" > out
  done
)
