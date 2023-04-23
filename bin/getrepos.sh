#!/usr/bin/env bash

if [ -z "$1" ]; then
  echo "Please provide a GitHub username as the first argument."
  exit 1
fi

username=$1

curl -s "https://api.github.com/users/${username}/repos?sort=updated&direction=desc" | jq '[.[] | {name: .name, url: .html_url}]'

