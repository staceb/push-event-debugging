#!/bin/sh -eu

env
jq . "$GITHUB_EVENT_PATH"
