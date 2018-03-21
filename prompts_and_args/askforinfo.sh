#!/bin/bash
# Author: Kaleb Robert McKone
# Date: 3-20-2018
# Example of asking the user for pieces of information

if [ $1 ]; then
    echo $1
    echo "Thank you for providing an opening greeting."
    echo
fi
if [ $2 ]; then
    echo $2
    echo "The second greeting was not necessary, but thank you anyway."
    echo
fi

echo "Please provide some information at the prompts."
echo
read -p "Please enter your day of birth: " dob
read -p "Please enter your first name: " firstname
read -p "Please enter your last name: " lastname
echo
echo "Your name is $firstname $lastname and you were born on $dob"
