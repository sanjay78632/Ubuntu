#!/bin/bash

# Ask for file names
read -p "Enter the first file name: " file1
read -p "Enter the second file name: " file2
read -p "Enter the name for the horizontally combined output file: " horizontal_output
read -p "Enter the name for the vertically combined output file: " vertical_output

# Combine files horizontally
paste "$file1" "$file2" > "$horizontal_output"

# Combine files vertically
cat "$file1" "$file2" > "$vertical_output"

echo "Files combined successfully!"

