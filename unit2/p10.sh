echo "1.Concatenates two strings"
echo "2.Renames a file"
echo "3.Deletes a file."
echo "4.Copy the file to specific location"
read ch
case $ch in
	1)echo "Enter string 1"
	  read a	
	  echo "Enter string 2"
	  read b
	  echo $a$b ;;
	2)echo "Enter file name to rename"
	  read a
	  echo "Enter new name for file"
	  read b
	  mv $a $b;;
	3)echo "Enter the file name to delete"
	  read a
	  rm $a;;
	4)echo "Enter the file name for copy" 
	  read a
	  echo "Enter location where to copy"
	  read b
	  cp $a $b;;
esac
	  
