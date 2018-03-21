#!/bin/bash
# Author: Kaleb Robert McKone
# Date: 3-21-2018
# Dealing with entries in a directory. If the entry is a file, print the size.
# If the entry is a directory, print the number of files in the directory.


if [ $# != 1 ] || [ ! -d $1 ]
then
    echo
    echo "Provide one directory as an argument."
    echo
    exit
fi

echo
echo "Working with entries in $1."

for entry in $1/*
do
    echo
    echo $entry
    if [ -d $entry ]
    then
        echo "Entry is a directory. Counting its items."
        counter=0
        for entry2 in $entry/*
        do
            (( counter++ ))        
        done
        echo $counter
    elif [ -s $entry ]
    then
        echo "Entry is a file. Printing its size."
        ls -lh $entry | awk '{print $5}' 
    fi 
done

echo
echo "Done"
echo
