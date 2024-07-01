#!/usr/bin/env bash
set -e

# Clone the git repo of the Stable Diffusion Web UI by Automatic1111
# and set version
git clone https://github.com/vladmandic/automatic.git /SD_Next
cd /SD_Next
git checkout -b dev

# Create and activate venv
python3 -m venv --system-site-packages /venv
source /venv/bin/activate

# Install torch and xformers
pip3 install --no-cache-dir torch==${TORCH_VERSION} torchvision torchaudio --index-url ${INDEX_URL}
pip3 install --no-cache-dir xformers==${XFORMERS_VERSION} --index-url ${INDEX_URL}
pip3 install tensorflow[and-cuda]

# Install SD.Next
pip3 install -r requirements.txt
