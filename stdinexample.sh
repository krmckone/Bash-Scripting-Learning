#!/bin/bash
# Author: Kaleb Robert McKone
# Date: 3-20-2018
# Example reading from standard input file

echo "Example of reading from standard input file"
echo =============================================
echo

cat /dev/stdin | cut -d' ' -f 2,3 | sort
