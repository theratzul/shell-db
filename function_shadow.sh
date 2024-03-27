#!/bin/bash

function test_shadow {
if [ -e /etc/shadow ];
then
    echo "It exists"
else
    echo "File doesn't exits"
fi
}

test_shadow