#Write a shell script that will display welcome message according to time
check=$(date +%H)

if [ "$check" -ge 06 -a "$check" -le 12 ]; then
    echo "Good Morning"
elif [ "$check" -ge 12 -a "$check" -le 17 ]; then
    echo "Good Afternoon"
elif [ "$check" -ge 17 -a "$check" -le 20  ]; then
    echo "Good Evening"
else
	echo "Good Night"
fi

