#!/bin/bash

# Check if the folder exists
if [ -d ".github" ]; then
    mv .github ../

    echo "Folder moved successfully!"
else
    echo "Folder not found!"
fi
