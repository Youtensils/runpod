#!/bin/sh
# bash <(wget -qO- https://raw.githubusercontent.com/Youtensils/runpod/refs/heads/main/scripts/instance/base_install.sh)


BASEDIR=/workspace/ComfyUI

#install aria2 for faster downloads
apt-get update 
apt-get install -y aria2 
apt-get install -y screen 