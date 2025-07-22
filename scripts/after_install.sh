#!/bin/bash
echo "===> Running AfterInstall..."
cd /home/ec2-user/simplybyte_calculator-new

# Install Node.js dependencies (if package.json exists)
if [ -f package.json ]; then
  npm install
fi

# Set ownership and permissions
sudo chown -R ec2-user:ec2-user /home/ec2-user/simplybyte_calculator-new
sudo chmod -R 755 /home/ec2-user/simplybyte_calculator-new
