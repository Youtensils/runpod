#!/bin/sh
# bash <(wget -qO- https://raw.githubusercontent.com/Youtensils/runpod/refs/heads/main/scripts/instance/base_install.sh)


BASEDIR=/workspace/runpod-slim/ComfyUI/

#install aria2 for faster downloads
apt-get update 
apt-get install -y aria2 
apt-get install -y screen 

mkdir -p $BASEDIR/YT/
cd $BASEDIR/YT/
git clone https://github.com/Youtensils/runpod.git

