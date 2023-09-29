#!/bin/bash
# Create assets optimizer

# use pngquant to optimize png
# Then transform png to webp

# use svgo to optimize svg

# use fonttools to optimize fonts
# transform font to woff2

read_file() {
    local file="$1"
    local indent="$2"
    file_name=$(basename "$file")
    echo -e "$indent" "$file_name"
}
