#!/bin/bash
# ${1,,} positional argument (ignore upper andlower cases when compare the 2 values)
if [ ${1,,} = bogdan ]; then
    echo "Hello"
elif [ ${1,,} = help ]; then
    echo "Hello2"
else
    echo "Hello3"  
fi  