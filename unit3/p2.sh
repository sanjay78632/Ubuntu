echo "Enter the name of the directory (or press Enter for HOME directory):"
read -r directory

directory="${directory:-$HOME}"

if [ -d "$directory" ]; then
    echo "Contents of directory: $directory"
    ls -l "$directory"
else
    echo "Error: Directory '$directory' does not exist."
fi

