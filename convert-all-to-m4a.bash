#!/bin/bash

# Set the path to the directory containing the files
directory=/path/to/directory

# Loop through each file in the directory
for file in "$PWD"/*
do
    # Check if the file is a regular file (i.e. not a directory)
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        filename_without_ext="${filename%.*}"

        if [ "$filename" = "$(basename "$0")" ]; then
            echo skipping script file
            continue
        fi

        echo running ffmpeg -i "$filename" "$filename_without_ext".m4a
        # Run the program on the file
        # ffmpeg -i "$filename" "$filename_without_ext".m4a
    fi
done
