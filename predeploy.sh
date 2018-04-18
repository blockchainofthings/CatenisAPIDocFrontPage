#!/bin/bash

echo "Generating bundle (tar) file to deploy..."

# Create deploy directory if it does not yet exist
if [ ! -d deploy ]
  then
    mkdir deploy
fi

if [ -f deploy/CatenisAPIDoc.tar.gz ]
  # Save previous bundle file by changing its name (add time stamp to it)
  then
    t=`stat -t %C%y-%m-%d -f %Sm deploy/CatenisAPIDoc.tar.gz`
    mv deploy/CatenisAPIDoc.tar.gz "deploy/CatenisAPIDoc.$t.tar.gz"
fi

# Generate the bundle file itself
tar -czHf deploy/CatenisAPIDoc.tar.gz --exclude '.*' --exclude 'deploy' --exclude '*.sh' --exclude '*.md' *
