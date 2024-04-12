#Write a shell script to display the name of all the executable file from the current
#directory.
for file in *
do
    if [ -x "$file" ]; then
        echo "$file"
    fi
done

