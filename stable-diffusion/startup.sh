#!/bin/bash

# This is mounted.
cd /mnt/sd

if [ ! -f "stable-diffusion-ui-linux.tar.xz" ]; then
	echo "Downloading stable diffusion"
    wget https://github.com/cmdr2/stable-diffusion-ui/releases/download/v2.5.15/stable-diffusion-ui-linux.zip
else
	echo "Skipping download of stable diffusion"
fi


if [ ! -f "/mnt/sd/stable-diffusion-ui" ]; then
	echo "Extracting stable diffusion"
	unzip stable-diffusion-ui-linux.zip
fi

echo "Running stable diffusion"
cd /mnt/sd/stable-diffusion-ui

bash -c '/mnt/sd/stable-diffusion-ui/start.sh | grep -v "prompt:"'