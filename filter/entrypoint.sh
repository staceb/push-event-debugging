#!/bin/sh -eu

ref=$(jq -r '.ref' "$GITHUB_EVENT_PATH")
pattern=$1

case "$ref" in
  "")
    echo "ref does not exist in event"
    exit 1
    ;;
  $pattern)
    echo "$ref matches $pattern"
    exit 0
    ;;
  *)
    echo "$ref does not match $pattern"
    exit 78
esac
