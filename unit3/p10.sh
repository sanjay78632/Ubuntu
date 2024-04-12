

# Prompt the user to enter the date
read -p "Enter the date (YYYY-MM-DD): " input_date

# Extract the day of the week from the input date (1 for Monday, 7 for Sunday)
day_of_week=$(date -d "$input_date" +%u)

# Check if it's a weekend day (Saturday or Sunday) or a weekday
if [ "$((day_of_week % 7))" -eq 6 ] || [ "$((day_of_week % 7))" -eq 0 ]; then
    echo "Weekend"
else
    echo "Weekday"
fi

