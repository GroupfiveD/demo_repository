#!/bin/bash
#this script is to solve merge conflit
echo "this command is to solve merge conflit"
echo "in other to solve the problem of merge conflit, 
      you have to creat a new branch"
echo "enter new branch nam emake sure that branch name march the name of the branch with conflit"
read branch
git branch $branch
echo "you have just created your new beanch called $branch"
# we then fetch the latest changes from the remote repository
echo"fetching the latestchangies from the remote repository"
echo "enter your alias name" 
read alias
git fetch $alias
#you now switch to the next branch
echo "switching to next branch"
git check out $branch
#we then merge the last changies from the remote repository
git merge $alias $branch
#edit section
echo "in your file edit and make you changies"
git add $file
echo "right your commit"
read commit
git commit $commit
echo "pusing your work"
git push $alias $branch
echo "Thank you."
