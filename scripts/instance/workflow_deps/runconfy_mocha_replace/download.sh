#!/bin/bash

BASEDIR=/workspace/runpod-slim/ComfyUI/
source $BASEDIR/YT/runpod/scripts/instance/env.sh

echo "Starting ComfyUI Mocha Replace Workflow Dependencies Setup..."

download_from_file models.txt $BASEDIR/models
