#!/bin/bash
echo "===> Running AfterInstall..."
cd /home/ec2-user/simplybyte_calculator-new || exit 1

# Just list files for debug
ls -la

# Do not run npm install for now
echo "AfterInstall completed successfully."
