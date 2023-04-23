#!/usr/bin/env bash

if [ -z "$1" ]; then
  echo "Please provide a GitHub username as the first argument."
  exit 1
fi

username=$1

2>/dev/null curl "https://api.github.com/users/${username}/events" \
  | jq -r '[.[] | select(.type == "PushEvent") | .repo] | unique_by(.id) | .[0:10] | .[].url'
