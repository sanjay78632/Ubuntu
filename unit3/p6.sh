echo "1.list the home directory"
echo "2.Date"
echo "3.Print working Directory"
echo "4.Users logged in"
echo "Enter your choice"
read ch
case $ch in
	1)ls ~;;
	2)date ;;
	3)pwd;;
	4)who;;
	*)echo "Invalid option"
esac
