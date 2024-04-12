#Write a shell script that accepts 2 filenames and checks if both exists; if both exist
#then append the content of the second file into the first file.
echo  "Enter the first file name"
read f1

echo  "Enter the second file name"
read f2

if [ -s "$f1" -a -s "$f2" ]; then
    cat "$f2" >> "$f1"
    echo "Contents of $f2 appended to $f1"
else
    echo "Cannot append. Make sure both files exist and are non-empty."
fi

