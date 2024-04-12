
# Count ordinary files
ordinary_files=0
# Count directories
directories=0
for file in *; do
	if [ -f "$file" ]; then
		((ordinary_files++))
	elif [ -d "$file" ]; then
		((directories++))
	else 
		echo " $file is not a directory or ordinary"
	fi
done

echo "Number of ordinary files: $ordinary_files"
echo "Number of directories: $directories"

