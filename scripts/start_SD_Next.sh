#!/usr/bin/env bash
export PYTHONUNBUFFERED=1
echo "Starting Stable Diffusion Web UI"
cd /workspace/SD_Next
nohup ./webui.sh --listen --port 3031 --insecure > /workspace/logs/sdnext.log 2>&1 &
echo "SD.Next started"
echo "Log file: /workspace/logs/sdnext.log"
