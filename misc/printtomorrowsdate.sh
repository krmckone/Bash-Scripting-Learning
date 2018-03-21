#!/bin/bash
# Author: Kaleb Robert McKone
# Date: 3-20-2018
# Example script that prints tomorrow's date

echo
echo "Here's today's date"
echo
date
echo
echo "Now let's print tomorrow's date"
echo

date | awk '{print $1 " " $2 " " (( $3 + 1 )) " " $4 " " $5 " " $6 " " $7}'
echo
