#!/bin/bash

jq -r '. | sort_by(.tag_name) | reverse | .[].name' \
    ./output/releases.json
