#!/bin/bash

if [[ $1 == "help" ]]
then
	echo "Script to copy and push existing configuration to github"
	exit 0
fi

git pull
bash snapshot.sh
git add *
git commit -m "$(date +%d.%m.%Y)"
git push
