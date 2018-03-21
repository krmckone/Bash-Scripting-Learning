#!/bin/bash
# Author: Kaleb Robert McKone
# Date: 3-20-2018
# Rearranging output from ls -l using awk

echo "rearranging output from ls -l"
echo
ls -l > lsoutput.txt
cat lsoutput.txt | awk '{print "Filename: " $9 " | File size: " $5 " | Owner: " $3}'
echo
