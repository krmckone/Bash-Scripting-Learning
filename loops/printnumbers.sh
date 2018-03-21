#!/bin/bash
# Author: Kaleb Robert McKone
# Date: 3-21-2018
# Print a list of numbers and say whether they are even or odd.

echo
echo "Printing numbers 1-10 and whether they are even or odd."
echo

for number in {0..10}
do
    if (( $number % 2 == 0 )) 
    then
        echo "$number is even"
    else
        echo "$number is odd"
    fi
    echo
done

echo "Done"
