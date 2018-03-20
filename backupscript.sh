#!/bin/bash
# Kaleb Robert McKone
# A practice backup script
echo 'Starting backup script'
if [ $# != 1 ] 
then
    echo 'Invalid number of arguments. Only takes one'
    exit
fi

