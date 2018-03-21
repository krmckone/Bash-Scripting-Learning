#!/bin/bash
# Author: Kaleb Robert McKone
# Date: 3-21-2018
# Printing out the day of the week.

echo
echo "Printing out the day of the week."
echo

DOW=$( date +%u )

case $DOW in
    1)
    echo "It's Monday."
    ;;
    2)
    echo "It's Tuesday."
    ;;
    3)
    echo "It's Wednesday."
    ;;
    4)
    echo "It's Thursday."
    ;;
    5)
    echo "It's Friday."
    ;;
    6)
    echo "It's Saturday."
    ;;
    7)
    echo "It's Sunday."
    ;;
esac
echo
