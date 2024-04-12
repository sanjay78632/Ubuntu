echo "1. How would you display the hidden files?"
echo "2. How to delete files with directory?"
echo "3. How would a user do interactive copying of files?"
echo "4. How would a user do interactive deletion of files?"
echo "5. Explain 2 functionality of \"mv\" command with examples?"

echo "Enter your choice:"
read ch
case $ch in
    1) ls -a;;
    2) rm -r abc;;
    3) cp -i abc.txt pqr.txt;;
    4) rm -i abc.txt;;
    5) echo "1. Rename the file"
       echo "2. Move the group of files to a different directory"
       echo "Enter your choice:"
       read c
       case $c in
           1) mv abc.txt pqr.txt;;
           2) mv pqr.txt /home/sanjay/Desktop;;
           *) echo "Invalid Option";;
       esac;;
    *) echo "Invalid Option";;
esac

