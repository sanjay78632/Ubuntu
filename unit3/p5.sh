
echo "Enter the source folder name:"
read source_folder

if [ -d "$source_folder" ]; then
    echo "Folder '$source_folder' exists."


    echo "Enter destination folder name:"
    read destination_folder


    if [ -d "$destination_folder" ]; then
        echo "Folder '$destination_folder' exists."
        cp -r "$source_folder"/* "$destination_folder"
        echo "Files copied from '$source_folder' to '$destination_folder'."
    else
        mkdir -p "$destination_folder" && cp -r "$source_folder"/* "$destination_folder"
        echo "Destination folder '$destination_folder' created. Files copied."
    fi
else
    echo "Cannot find source folder '$source_folder'."
fi
