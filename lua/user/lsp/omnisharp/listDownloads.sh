#!/bin/bash

versionNumber=$1

if [ ! -z "${versionNumber}" ]
then
    version=$(./getVersion.sh $versionNumber)
    echo $version | jq -r '. | .assets | .[].name' | sort
else
    echo Please supply a version number: ex: 'v1.0.0'
fi

