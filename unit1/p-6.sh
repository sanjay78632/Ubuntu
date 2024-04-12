#Write shell script that accept filename and displays last modification time if file
#exists, otherwise display appropriate message.
echo -n "Enter the filename: "
read filename

if [ -e "$filename" ]; then
    last_modified=$(stat -c "%y" "$filename")
    echo "Last modification time of $filename: $last_modified"
else
    echo "File '$filename' does not exist."
fi

