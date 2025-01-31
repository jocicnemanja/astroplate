#!/bin/bash

# Ensure you are in the correct directory
cd "." || exit

# Counter for the new filenames
counter=1

# Loop through all JPG files in sorted order
for file in $(ls -1 *.jpg | sort); do
  # Rename the file to the counter number with a .jpg extension
  mv "$file" "$counter.jpg"
  echo "Renamed $file to $counter.jpg"
  ((counter++))
done

echo "Renaming completed."
