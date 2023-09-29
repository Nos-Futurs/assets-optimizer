#!/bin/bash
source "lib/read-file.sh"

read_folder() {
    local folder_path="$1"
    local indent="$2"
    for item in "$folder_path"/*; do
        # Check if the current item is a file (not a directory)
        if [ -f "$item" ]; then
            # Print the file name or perform any other actions
            read_file "$item" $indent
            # You can add more commands here to process the file
            # For example, read the content of the file: cat "$file"
        elif [ -d "$item" ]; then
            local folder_name=$(basename "$item")
            echo -e "$indent $folder_name"
            read_folder "$item" "$indent \t"
        fi
    done
}
