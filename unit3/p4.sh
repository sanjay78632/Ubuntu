# Prompt the user to enter the filenames
read -p "Enter the first filename: " file1
read -p "Enter the second filename: " file2

# Check if both files exist
if [ ! -e "$file1" ]; then
    echo "Error: $file1 does not exist"
    exit 1
fi

if [ ! -e "$file2" ]; then
    echo "Error: $file2 does not exist"
    exit 1
fi

# Check if the contents of the two files are the same
if cmp -s "$file1" "$file2"; then
    echo "Files have the same contents. Deleting $file2."
    rm "$file2"
else
    echo "Files have different contents."
fi

