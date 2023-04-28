#!/bin/bash

version=$1
true='true'
false='false'

if [ ! -z "${version}" ]
then
    # validate verison number
    availableVersions=$(./listVersions.sh)
    isValidVersion=$false
    for v in $availableVersions
    do
        if [ $v = $version ]
        then
            isValidVersion=$true
            break
        fi
    done

    if [ $isValidVersion = $true ]
    then
        # valid version
        jq -r ". | map(select(.name  == \"${version}\")) | .[0]" \
            ./output/releases.json
    else
        # invalid version
        echo version $version is invalid
    fi
else
    echo Please supply a version number: ex: 'v1.0.0'
fi

