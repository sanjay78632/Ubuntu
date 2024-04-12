#Write a shell script to remove the zero sized file from the current directory
for file in $(ls)
do
    if [ -s "$file" ]; then
        echo "$file - Non-empty File"
    else
        echo "$file - Empty file deleted"
        rm "$file"
    fi
done
	
