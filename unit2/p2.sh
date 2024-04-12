#Write a shell script that takes a filename from the command line and checks
#whether the file is an ordinary file or not.
echo "Enter the file name"
read a

if [ -f "$a" ]; then
    echo "$a is an Ordinary File"
    cat "$a"
else
    echo "File is not an ordinary file or does not exist"
fi

