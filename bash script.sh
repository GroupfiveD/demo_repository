#!/bin/bash
# Author: Koh Karlson
# Email: kohkarlson@gmail.com

# This script creates a file, adds the file to the staging area, commits the file to the local repository, then pushes the file to the remote repository

# Save the current directory
original_dir=$(pwd)

# Prompt the user to enter directory name
echo "Enter directory"
read -r dir

# Checks if directory exists
if [ -e "$dir" ]; then
    echo "Directory exists. Entering directory..."
    sleep 1
    cd "$dir" || {
        echo "Failed to enter directory"
        exit 1
    }
else
    echo "Directory does not exist. Creating/entering directory..."
    mkdir "$dir"
    cd "$dir" || {
        echo "Failed to enter directory"
        exit 1
    }
fi

# Rest of the code (within the specified directory)

# Prompt the user to initialize git
echo "Press the Enter key to initialize git"
read -r

# Initialize git repository
git init

# Prompt the user to enter the file name
echo "Enter your file name"
read -r file

# Create a new file
touch "$file"
echo "New file '$file' created"

sleep 1

# Add the file to the staging area
echo "Adding $file to the staging area..."
git add "$file"

sleep 1

# Commit the file to the local repository
echo "Committing the file..."
echo "Enter your commit message"
read -r message

git commit -m "$message"

echo "$file committed"

# Prompt the user to enter the remote URL and alias name
echo "Enter your remote URL"
read -r url
echo "Enter your alias name"
read -r alias

# Check if the remote URL is provided
if [ -n "$url" ]; then
    # Prompt the user to enter the branch name
    echo "Enter your branch name"
    read -r branch

    # Check if the branch name is provided
    if [ -n "$branch" ]; then
        # Add remote repository and push the file to the remote branch
        git remote add "$alias" "$url"
        git push "$alias" "$branch"
        echo "$file has been pushed to $url"
    else
        echo "Branch not found"
        exit 1
    fi
else
    echo "URL not found"
    exit 1
fi

# Revert back to the original directory
cd "$original_dir" || {
    echo "Failed to return to the original directory"
    exit 1
}
