#!/bin/bash
echo "===> Running BeforeInstall..."
# Stop any existing Node app
pkill -f server.js || true

# Clean previous deployment
sudo rm -rf /home/ec2-user/simplybyte_calculator-new/*
