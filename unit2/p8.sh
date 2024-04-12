#Write a shell script that takes the name of two files as arguments and performs
#the following:
#i. Displays the message :
#“Displaying the contents of file :( first argument)”
#and displays the contents page wise.
#ii.
#Copies the contents of the first argument to second argument.
#iii.
#Finally displays the message: “File copied successfully.”
echo -n "Enter the name of the first file: "
read file1

echo -n "Enter the name of the second file: "
read file2


echo "Displaying the contents of file: $file1"
cat "$file1"

cp "$file1" "$file2"

echo "File copied successfully from $file1 to $file2."

