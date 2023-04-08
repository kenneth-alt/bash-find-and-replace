#!/bin/bash

# Check if all three arguments are provided
if [ $# -ne 3 ]; then
  echo "Error: this script takes 3 arguments, the filename, old_word and new_word"
  exit 1
fi

# Assign arguments to variables
file_name=$1
old_word=$2
new_word=$3

# Use sed to replace old_word with new_word in the file
sed -i "s/${old_word}/${new_word}/g" "${file_name}"
