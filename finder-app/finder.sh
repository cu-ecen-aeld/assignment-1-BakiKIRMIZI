#!/bin/bash

# Check if both arguments are provided
if [ $# -ne 2 ]; then
    echo "Error: Both directory and search string are required"
    exit 1
fi

# Assign arguments to variables for better readability
filesdir=$1
searchstr=$2

# Check if filesdir is a directory
if [ ! -d "$filesdir" ]; then
    echo "Error: $filesdir is not a directory"
    exit 1
fi

# Find the number of files and the number of matching lines
num_files=$(find $filesdir -type f | wc -l)
num_matches=$(grep -r $searchstr $filesdir | wc -l)

# Print the results
echo "The number of files are $num_files and the number of matching lines are $num_matches"
