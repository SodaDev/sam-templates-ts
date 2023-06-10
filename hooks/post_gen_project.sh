#!/bin/bash
echo "Elo"
# Check if the folder exists
if [ -d ".github" ]; then
    if [ ! -d "../.github/workflows" ]; then
      echo "Creating folder ../.github/workflows"
      mkdir -p ../.github/workflows
      cp .github/workflows/* ../.github/workflows
    else
      echo "Folder ../.github/workflows already exists"
    fi

    rm -rf .github
    echo "GitHub Workflows moved successfully"
else
  echo "Folder not found!"
fi

if [ ! -d "../Makefile" ]; then
  mv Makefile ../
fi