echo "1. Sort file abc.txt and save the file in xyz.txt"
echo "2. Give an example of: to execute commands together without affecting the result to each other"
echo "3. How to print \"This is a three-line Text message\""
echo "4. Which command displays the version of UNIX?"
echo "5. How to get online help for the cat command?"

echo "Enter your Choice"
read ch
case $ch in
1) sort abc.txt > xyz.txt;;
2) ls -l && ls;;
3) printf "This is a \n three-line \n Text message\n";;
4) uname -a;;
5) man cat;;
*) echo "Invalid choice";;
esac

