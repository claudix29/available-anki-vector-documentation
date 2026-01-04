#!/bin/bash

echo "Its 3am, im tired asf, I asked ai to build this script for me, I'm sorry"
echo "Waiting 5 seconds"

sleep 5

# HTML to Markdown Recursive Converter (works with or without .html extension)
# Usage: ./convert_html_to_md.sh [directory]

# Set the target directory (default to current directory)
TARGET_DIR="${1:-.}"

# Check if pandoc is installed
if ! command -v pandoc &> /dev/null; then
    echo "Error: pandoc is not installed."
    echo "Install it with: sudo apt-get install pandoc (Debian/Ubuntu)"
    echo "or: sudo yum install pandoc (RedHat/CentOS)"
    echo "or: brew install pandoc (macOS)"
    exit 1
fi

# Check if target directory exists
if [ ! -d "$TARGET_DIR" ]; then
    echo "Error: Directory '$TARGET_DIR' does not exist."
    exit 1
fi

echo "Converting HTML files to Markdown in: $TARGET_DIR"
echo "Searching for HTML files (with or without .html extension)..."
echo "================================================"

# Counter for converted files
converted=0
failed=0
skipped=0

# Find all files recursively and check if they're HTML
while IFS= read -r -d '' file; do
    # Check if file is HTML by looking at content (first line or file command)
    if file -b --mime-type "$file" | grep -q "text/html"; then
        is_html=true
    elif head -n 1 "$file" 2>/dev/null | grep -qi "<!doctype html\|<html"; then
        is_html=true
    else
        is_html=false
    fi
    
    if [ "$is_html" = true ]; then
        # Generate output filename
        # If file already ends in .html or .htm, replace it
        if [[ "$file" == *.html ]]; then
            md_file="${file%.html}.md"
        elif [[ "$file" == *.htm ]]; then
            md_file="${file%.htm}.md"
        else
            # Otherwise just add .md
            md_file="${file}.md"
        fi
        
        # Skip if .md already exists
        if [ -f "$md_file" ]; then
            echo "Skipping (already exists): $file"
            ((skipped++))
            continue
        fi
        
        echo "Converting: $file"
        
        # Convert using pandoc
        if pandoc "$file" -f html -t markdown -o "$md_file" 2>/dev/null; then
            echo "  ✓ Created: $md_file"
            ((converted++))
        else
            echo "  ✗ Failed to convert: $file"
            ((failed++))
        fi
    fi
done < <(find "$TARGET_DIR" -type f -print0)

# Print summary
echo ""
echo "================================================"
echo "Conversion complete!"
echo "Successfully converted: $converted files"
echo "Failed: $failed files"
echo "Skipped (already converted): $skipped files"
