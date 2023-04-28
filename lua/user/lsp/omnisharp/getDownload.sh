#!/bin/bash

versionNumber=$1
downloadName=$2
true='true'
false='false'

function isValidVersion() {
    versionNumber=$1
    isValid=$false

    # validate verison number
    availableVersions=$(./listVersions.sh)
    for v in $availableVersions
    do
        if [ $v = $versionNumber ]
        then
            isValid=$true
            break
        fi
    done

    if [ $isValid = $true ]
    then
        # valid versionNumber
        echo $true
    else
        # invalid versionNumber
        echo $false
    fi
}

function isValidDownload() {
    versionNumber=$1
    downloadName=$2
    isValid=$false

    # validate download name
    availableDownloads=$(./listDownloads.sh $versionNumber)
    for d in $availableDownloads
    do
        if [ $d = $downloadName ]
        then
            isValid=$true
            break
        fi
    done

    if [ $isValid = $true ]
    then
        # valid
        echo $true
    else
        # invalid
        echo $false
    fi
}


if [ ! -z "${versionNumber}" ] && [ ! -z "${downloadName}" ]
then
    if [ $(isValidVersion $versionNumber) = "${false}" ]
    then
        echo Please enter a valid version number
        exit 1
    fi

    if [ $(isValidDownload $versionNumber $downloadName) = "${false}" ]
    then
        echo Please enter a valid download name
        exit 1
    fi

    version=$(./getVersion.sh $versionNumber)
    echo $version | jq ". | .assets | map(select(.name == \"${downloadName}\")) | .[0]"
else
    echo Please supply a version number and download name
    echo ex: ./getDownload.sh 'v1.0.0' 'omnisharp-linux-x64.tar.gz'
fi

