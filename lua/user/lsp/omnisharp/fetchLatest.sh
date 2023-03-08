#!/bin/bash

# https://docs.github.com/en/rest/releases/releases?apiVersion=2022-11-28#list-releases


#### GET LATEST VERSION OF OMNISHARP ####
DEST_DIRECTORY=$(dirname $0)
OMNISHARP_URL=$(curl -s https://api.github.com/repos/omnisharp/omnisharp-roslyn/releases | \
    grep browser_download_url | \
    awk '{print $2}' | \
    cut -d '"' -f 2 | \
    grep '/omnisharp-linux-x64.tar.gz' | \
    head -n 1)
FILE_NAME=$(basename $OMNISHARP_URL)
DEST_PATH=$DEST_DIRECTORY/$FILE_NAME
wget -O $DEST_PATH $OMNISHARP_URL

# DEST_PATH=./omnisharp/omnisharp-linux-x64.tar.gz
# DEST_DIRECTORY=./omnisharp
mkdir -p $DEST_DIRECTORY/omnisharp-linux-x64
tar xvf $DEST_PATH -C $DEST_DIRECTORY/omnisharp-linux-x64
