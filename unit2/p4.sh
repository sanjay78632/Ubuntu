#Write a shell script that takes a filename from the command line and checks
#whether the file is an executable file or not.
echo "Enter the name of file " 
read a
if [ -x $a ];then
	echo "$a File is Executable"
	cat $a
else
	echo "$a File is not Executable"
fi
