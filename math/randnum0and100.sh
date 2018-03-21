#!/bin/bash
# Author: Kaleb Robert McKone
# Date: 3-20-2018
# Practice script that uses $RANDOM and returns a number between 0 and 100

echo "Let's print a number between 0 and 100"
echo

echo "Using var=\$(( expression ))"
randnum=$(( $RANDOM % 100 ))
echo $randnum
echo

echo "Using let var=expression"
let randnum=$RANDOM%100
echo $randnum
echo

echo "Using expr expression"
expr $RANDOM % 100
echo
