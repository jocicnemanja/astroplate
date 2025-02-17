#!/bin/bash

# Set the directory where you want to create the markdown files
target_directory="."

# Create the target directory if it doesn't exist
mkdir -p "$target_directory"

# Loop to create 51 markdown files
for i in $(seq 1 51); do
    # Create the file with the appropriate name
    cat > "post-$i.md" <<EOL
---
title: "Post $i"
meta_title: "Sobna vrata"
description: ""
date: $(date --date="$i days ago" --utc +"%Y-%m-%dT%H:%M:%SZ")
image: "/images/catalog/$i.jpg"
categories: ["Category1", "Category2"]
author: "John Doe"
tags: ["tag$i", "tag"]
draft: false
---

Content of Post $i.
EOL
done

echo "51 posts created in $target_directory"
