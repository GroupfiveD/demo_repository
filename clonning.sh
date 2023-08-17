#!/bin/bash
#this script was designed to clone a repository, and merge files
echo "lets continue by cloning the repository"
echo "paste your remote URL below"
read url
git clone $url
echo "are you ready for merging?"
echo "please enter the name of your repository below"
read repo
git merge $repo
echo "thats all for now!!"