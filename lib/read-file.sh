#!/bin/bash
. lib/optimize-svg.sh
. lib/optimize-png.sh

read_file() {
    local file="$1"
    local indent="$2"
    local file_name=$(basename "$file")
    echo -e "$indent" "$file_name"
    if file -b --mime "$file" | grep -q "image/svg+xml"; then
        optimize-svg "$file"
    elif file -b --mime "$file" | grep -q "image/png"; then
        optimize-png "$file" 
    else 
        echo "error"
    fi

}