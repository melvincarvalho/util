#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Please provide the GitHub owner and repo as arguments."
  exit 1
fi

owner=$1
repo=$2

commits=$(curl -s "https://api.github.com/repos/${owner}/${repo}/commits" | jq -r '.[0:10] | .[].sha')

for sha in $commits; do
  echo "Commit: $sha"
  echo "Files:"
  curl -s "https://api.github.com/repos/${owner}/${repo}/commits/${sha}" \
    | jq -r '.files[] | .filename'
  echo
done
