#!/bin/bash
# use svgo to optimize svg


optimize-svg() {
    local file="$1"
    svgo "$file"
}
