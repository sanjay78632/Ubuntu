
read -p "Enter the new name for files starting with 'c': " new_name


for file in *; do

    if [[ "$file" == c* ]]; then

        extension="${file##*.}"
        

        new_file="$new_name.$extension"
        

        mv "$file" "$new_file"
        echo "File '$file' renamed to '$new_file'"
    fi
done

