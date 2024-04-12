#!/bin/bash

# Prompt user for the filename
read -p "Enter the filename: " filename

# Check if file exists
if [ ! -f "$filename" ]; then
    echo "File '$filename' not found."
    exit 1
fi

# Remove spaces from the file content using sed
sed -i 's/ //g' "$filename"

echo "Spaces removed from $filename"
