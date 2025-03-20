#!/bin/bash

# Directory where files will be organized
TARGET_DIR="./pro"

# Check if the target directory exists
if [ ! -d "$TARGET_DIR" ]; then
    echo "Error: Target directory $TARGET_DIR does not exist."
    exit 1
fi

# Create subfolders if they don't exist
mkdir -p "$TARGET_DIR/txt" "$TARGET_DIR/jpg" "$TARGET_DIR/pdf"

# Move .txt files to the txt folder
for file in *.txt; do
    if [ -f "$file" ]; then
        mv "$file" "$TARGET_DIR/txt/"
        echo "Moved $file to $TARGET_DIR/txt/"
    fi
done

# Move .jpg files to the jpg folder
for file in *.jpg; do
    if [ -f "$file" ]; then
        mv "$file" "$TARGET_DIR/jpg/"
        echo "Moved $file to $TARGET_DIR/jpg/"
    fi
done

# Move .pdf files to the pdf folder
for file in *.pdf; do
    if [ -f "$file" ]; then
        mv "$file" "$TARGET_DIR/pdf/"
        echo "Moved $file to $TARGET_DIR/pdf/"
    fi
done

echo "Files have been organized."
exit 0
