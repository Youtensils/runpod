#!/bin/bash

#!/usr/bin/env bash
set -euo pipefail

# Usage:
# ./rsync_download.sh <host> <user> <remote_path> <local_path> [ssh_port]

if [[ $# -lt 4 ]]; then
  echo "Usage: $0 <host> <remote_path> <local_path> [ssh_port]"
  exit 1
fi

HOST="$1"
USER="$2"
REMOTE_PATH="$3"
LOCAL_PATH="$4"
SSH_PORT="${5:-22}"

rsync -avz --progress \
  -e "ssh -p ${SSH_PORT}" \
  "root@${HOST}:${REMOTE_PATH%/}/" \
  "${LOCAL_PATH%/}/"

