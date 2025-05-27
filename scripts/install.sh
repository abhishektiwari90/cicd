#!/bin/bash
set -e

echo "Running install.sh script..."

# Ensure Node.js is installed
if ! command -v npm &> /dev/null
then
    echo "npm not found, installing Node.js..."
    curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
    sudo apt install -y nodejs
fi

cd /home/ubuntu/tiwari
npm install
