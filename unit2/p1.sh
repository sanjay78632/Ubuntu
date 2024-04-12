#Write a shell script to find number of ordinary files and directory files.
ordinary_files=0
directory_files=0


for file in *; do
    if [ -f "$file" ]; then
        
        ((ordinary_files++))
    elif [ -d "$file" ]; then
       
        ((directory_files++))
    fi
done

# Display the results
echo "Number of ordinary files: $ordinary_files"
echo "Number of directory files: $directory_files"

