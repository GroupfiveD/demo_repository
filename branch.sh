#!/bin/bash

# Get the name of the new branch from user input
read -p "Enter the name of the new branch: " branch_name

# Check if the branch already exists
if git rev-parse --verify "$branch_name" >/dev/null 2>&1; then
    echo "Branch '$branch_name' already exists!"
    exit 1
fi

# Create and switch to the new branch
git checkout -b "$branch_name"

echo "New branch '$branch_name' created and checked out."
