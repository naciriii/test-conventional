#!/usr/bin/env bash

valid_names="^(feature|fix|release|hotfix)\/[a-z0-9._-]+$"
branch="$(git rev-parse --abbrev-ref HEAD)"
echo $branch
if [ "$branch" = "develop" ] || [ "$branch" = "master" ];then
    exit 1;
elif [[ ! $branch =~ $valid_names ]]; then
    echo "branches does not match"
exit 1;
else
exit 0;
fi