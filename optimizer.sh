#!/bin/bash
# Load the test function
. "lib/read-folder.sh"



# Check if a folder path is provided as an argument
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <folder_path>"
    exit 1
fi

# Get the folder path from the first command-line argument
folder_path="$1"
# Check if the folder exists
if [ -d "$folder_path" ]; then
    # Loop through each file in the folder
    read_folder "$folder_path"
else
    echo "Error: Folder not found: $folder_path"
fi

# Create assets optimizer 

# use pngquant to optimize png 
# Then transform png to webp 

# use svgo to optimize svg

# use fonttools to optimize fonts 
# transform font to woff2