#!/bin/bash
# Author: Kaleb Robert McKone
# Date: 3-21-2018
# Example of using some conditionals


if [ ! $1 ] || [ ! $1 ]
then
    echo "Provide two input numbers as arguments to compare."
    exit
fi

echo "Comparing $1 and $2"
echo

if [ $1 -lt $2 ]
then
    echo "$2 is larger than $1."
    echo
else
    echo "$1 is larger than $2."
    echo
fi
