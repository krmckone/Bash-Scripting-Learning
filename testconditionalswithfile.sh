#!/bin/bash
# Author: Kaleb Robert McKone
# Date: 3-21-2018
# Example of using conditionals with files

if [ $# != 1 ]
then
    echo "Provide a single file as a command line argument."
    exit
fi

echo
echo "Providing information about $1."
echo

if [ -d $1 ]
then
    echo "$1 is a directory."
else
    echo "$1 is not a directory."
fi

if [ -r $1 ]
then
    echo "$1 is readable."
else
    echo "$1 is not readable."
fi

if [ -s $1 ]
then
    echo "$1 has content."
else
    echo "$1 is empty."
fi

if [ -w $1 ]
then 
    echo "$1 is writeable."
else
    echo "$1 is not writeable."
fi

if [ -x $1 ]
then
    echo "$1 is executable."
else
    echo "$1 is not executable."
fi

echo    
