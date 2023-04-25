#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Please provide the GitHub owner and repo as arguments."
  exit 1
fi

owner=$1
repo=$2

commits=$(curl -s "https://api.github.com/repos/${owner}/${repo}/commits?per_page=10" | jq -r '.[].sha')

declare -A files_map

for sha in $commits; do
  files=$(curl -s "https://api.github.com/repos/${owner}/${repo}/commits/${sha}" \
    | jq -r '.files[]? | .filename')
  for file in $files; do
    files_map["$file"]=1
  done
done

i=0
for file in "${!files_map[@]}"; do
  echo "$file"
  i=$((i + 1))
  if [ $i -ge 10 ]; then
    break
  fi
done
