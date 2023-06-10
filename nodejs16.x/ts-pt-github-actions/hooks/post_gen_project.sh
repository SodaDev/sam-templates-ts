#!/bin/bash
echo "Running post_gen_project.sh"

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

if [ ! -f "../Makefile" ]; then
    echo "Creating Makefile"
    mv Makefile ../
else
    echo "Makefile already exists"
fi

if [ ! -f "../template.yaml" ]; then
    echo "Creating rootTemplate.yaml"
    mv rootTemplate.yaml ../template.yaml
else
    echo "rootTemplate.yaml already exists"
fi

if [ ! -f "../.gitignore" ]; then
    echo "Creating root .gitIgnore"
    mv rootGitIgnore ../.gitignore
fi