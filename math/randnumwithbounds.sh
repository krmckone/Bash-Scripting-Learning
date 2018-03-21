#!/bin/bash
# Author: Kaleb Robert McKone
# Date: 3-20-2018
# Practice script that uses $RANDOM and returns a number between $1 and $2

echo "Let's print a number between $1 and $2"
echo

echo "Using var=\$(( expression ))"
randnum=$(( $RANDOM % $2 ))
if [ $randnum \< $1 ]; then
    randnum=$(( $randnum + $1 ))
fi
echo $randnum
echo

echo "Using let var=expression"
let randnum=$RANDOM%$2
if [ $randnum \< $1 ]; then
    let randnum=$randnum+$1
fi
echo $randnum
echo

echo "Using expr expression"
randnum=$(expr $RANDOM % $2)
if [ $randnum \< $1 ]; then
    randnum=$(expr $randnum + $1)
fi
echo $randnum
echo
