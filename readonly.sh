#!/bin/bash
var=31
readonly var
var=50
echo "var => $var"

hello (){
    echo "Hello World"
}

hello (){
    echo "Hello World new"
}

readonly -f hello