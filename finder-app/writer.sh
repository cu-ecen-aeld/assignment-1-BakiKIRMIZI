#!/bin/bash

# Check if both arguments are provided
if [ $# -ne 2 ]; then
    echo "Error: Both file path and write string are required"
    exit 1
fi

# Assign arguments to variables for better readability
writefile=$1
writestr=$2

# Create the directory path if it doesn't exist
mkdir -p $(dirname $writefile)

# Create the file and write the string to it
echo $writestr > $writefile

# Check if the file was created successfully
if [ $? -ne 0 ]; then
    echo "Error: Could not create the file"
    exit 1
fi
