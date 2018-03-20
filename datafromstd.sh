#!/bin/bash
# Author: Kaleb Robert McKone
# Date: 3-20-2018
# Example of taking input from STDIN 

echo "Reading in data from STDIN and printing the third line"
echo

cat /dev/stdin | sed '3q;d'
