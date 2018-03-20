#!/bin/bash
# Author: Kaleb Robert McKone
# Date: 3-20-2018
# Example script to practice doing some arithmetic on argument 1 and 2
# Argument 1 and 2 are required

echo "Let's do some arithmetic"
echo

echo "Using let"
let a=$1\*$2
echo $a
echo

echo "Using expr"
expr $1 \* $2
echo

echo "Using ((expression))"
a=$(( $1 * $2 ))
echo $a
echo
