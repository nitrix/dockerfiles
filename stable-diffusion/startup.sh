#!/bin/bash

apt-get update
apt-get install -y libsm6 libxrender1 libfontconfig1 libgtk2.0-dev

# This is mounted.
cd /mnt/sd

if [ ! -f "stable-diffusion-ui-linux.tar.xz" ]; then
	echo "Downloading stable diffusion"
    wget https://github.com/cmdr2/stable-diffusion-ui/releases/download/v2.16/stable-diffusion-ui-linux.tar.xz
else
	echo "Skipping download of stable diffusion"
fi


if [ ! -f "/mnt/sd/stable-diffusion-ui" ]; then
	echo "Extracting stable diffusion"
	tar xf stable-diffusion-ui-linux.tar.xz
fi

echo "Running stable diffusion"
cd /mnt/sd/stable-diffusion-ui
/mnt/sd/stable-diffusion-ui/start.sh > /dev/null 2>&1