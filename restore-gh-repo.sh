#! /bin/sh

# github api reference
# https://developer.github.com/v3/

# Written By: Brian Konzman Significantly simplied by David Murrell for class

# This script in this file will add, commit and push all repositories in the
# sibling directory of the one containing this script that is named work.
# It requires the name of the branch to be restore and a commit message

if [[ $# -ne 2 ]];
	then
	echo "This script requires 2 parameter."
	echo "1. The name of the branch to be restored"
	echo "2. The commit message"
	echo "To execute run from script directory:"
	echo "  ./restore-gh-repo.sh <branch> <commit message>"
else
	branch=$1
	commitmsg=$2
	for f in ../work/*
		do
			cd $f
			git add -A
			git commit -m $commitmsg
			git push origin $branch
			echo "repository: $f"
			echo "branch    : $1"
			echo "commit msg: $2"
			cd ..
		done
fi
