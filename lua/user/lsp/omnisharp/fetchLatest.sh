#!/bin/bash

# https://docs.github.com/en/rest/releases/releases?apiVersion=2022-11-28#list-releases

./fetchOmnisharpReleases.sh
latestVersion=$( ./listVersions.sh | head -n 1 )
downloadName="omnisharp-linux-x64.tar.gz"
download=$(./getDownload.sh $latestVersion $downloadName)


#### GET LATEST VERSION OF OMNISHARP ####
DEST_DIRECTORY=$(dirname $0)/output
OMNISHARP_URL=$(echo $download | jq -r '.browser_download_url')
FILE_NAME=$(basename $OMNISHARP_URL)
DEST_PATH=$DEST_DIRECTORY/$FILE_NAME
wget -O $DEST_PATH $OMNISHARP_URL

# DEST_PATH=./omnisharp/omnisharp-linux-x64.tar.gz
# DEST_DIRECTORY=./omnisharp
mkdir -p $DEST_DIRECTORY/omnisharp-linux-x64
tar xvf $DEST_PATH -C $DEST_DIRECTORY/omnisharp-linux-x64

