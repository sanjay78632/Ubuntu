echo "1. Create a file and store values in it"
echo "2. Display the contents of a file on the screen"
echo "3. Delete a file"
echo "4. Sort a numeric file"
echo "5. Change the permission"
echo "Enter your choice:"
read ch

case $ch in 
    1) 
        echo "Enter the filename:"
        read filename
        echo "Enter values for the file (Ctrl+D to end):"
        cat > "$filename"
        ;;
    2) 
        echo "Enter the filename to display its contents:"
        read filename
        if [ -f "$filename" ]; then
            cat "$filename"
        else
            echo "File not found!"
        fi
        ;;
    3) 
        echo "Enter the filename to delete:"
        read filename
        if [ -f "$filename" ]; then
            rm "$filename"
            echo "File deleted successfully"
        else
            echo "File not found!"
        fi
        ;;
    4) 
        echo "Enter the filename to sort:"
        read filename
        if [ -f "$filename" ]; then
            sort -n "$filename"
        else
            echo "File not found!"
        fi
        ;;
    5) 
        echo "Enter the filename to change permissions:"
        read filename
        if [ -f "$filename" ]; then
            chmod 666 "$filename"
            echo "Permissions changed successfully"
        else
            echo "File not found!"
        fi
        ;;
    *) 
        echo "Invalid Choice"
        ;;
esac

