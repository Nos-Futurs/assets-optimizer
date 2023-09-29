#!/bin/bash
# use pngquant to optimize png


optimize-png() {
    local file="$1"
    pngquant "$file" --force "$file"
}
