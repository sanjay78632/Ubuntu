echo "1. Calendar of the current month and year."
echo "2. Display “Good Morning/Good Afternoon/Good Evening” according to the current login time."
echo "3. User name, Users home directory."
echo "4. Terminal name, Terminal type."
echo "5. Machine name."
echo "6. No. of users who are currently logged in, List of users who are currently"

read ch

case $ch in
    1)
        cal;;
    2)
        check=$(date +%H)
        if [ "$check" -ge 06 -a "$check" -le 12 ]; then
            echo "Good Morning"
        elif [ "$check" -ge 12 -a "$check" -le 17 ]; then
            echo "Good Afternoon"
        else
            echo "Good Evening"
        fi;;
    3)
        echo "User name: $(whoami)"
        echo "User's home directory: $HOME";;
    4)
        echo "Terminal name: $(tty)"
        echo "Terminal type: $TERM";;
    5)
        echo "Machine name: $(uname -n)";;
    6)
        echo "List of users currently logged in:"
        who;;
    *)
        echo "Invalid choice";;
esac

