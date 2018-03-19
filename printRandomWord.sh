#!/bin/bash
# Author: Kaleb Robert McKone
# Date: 3-19-2018
# Basic script that prints out a random word from the default stored dictionary
# Providing an integer as an agrument returns a word of that length

echo
echo 'We are going to print a random word from /usr/share/dict/words.'
echo

if [ $1 ]; then # If user provides a word count for the random word

    echo "Choosing a random word of length $1."
    echo
    egrep ^.{$1}$ /usr/share/dict/words > wordsWith"$1"letters
    number_of_words=$(wc -w < wordsWith"$1"letters)
    random_number_in_range=$(shuf -i 1-${number_of_words} -n 1)
    word_with_number=$(sed -n "${random_number_in_range}p" wordsWith"$1"letters)

    echo "The random word is $word_with_number."
    echo

    rm wordsWith"$1"letters
    exit

fi

#Otherwise, just grab a random word of any length

random_line_number=$RANDOM
random_word=$(sed -n "${random_line_number}p" /usr/share/dict/words)

echo "The random word is $random_word."
echo
