#!/bin/bash

BASEDIR=/workspace/runpod-slim/ComfyUI/
source $BASEDIR/YT/runpod/scripts/instance/env.sh

echo "Install all loras"
download_from_file models.txt $BASEDIR/models
