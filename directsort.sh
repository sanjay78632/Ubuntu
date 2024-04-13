#!/bin/bash

# Prompt the user to enter the directory path
echo -n "Enter the directory path: "
read directory

# Check if the directory exists
if [ ! -d "$directory" ]; then
    echo "Error: Directory '$directory' does not exist."
    exit 1
fi

# List the sizes of files and directories in the specified directory,
# sort them in reverse numerical order, and display the top 5 files
du -ah "$directory" | sort -rh | head -n 6

