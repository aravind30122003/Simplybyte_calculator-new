#!/bin/bash
echo "===> Running AfterInstall..."

cd /home/ec2-user/simplybyte_calculator-new

# Install Node.js if missing
if ! command -v npm &> /dev/null
then
  echo "npm not found. Installing Node.js..."
  curl -sL https://rpm.nodesource.com/setup_16.x | sudo bash -
  sudo yum install -y nodejs
fi

# Install dependencies if package.json exists
if [ -f package.json ]; then
  echo "Installing NPM dependencies..."
  npm install
else
  echo "package.json not found — skipping npm install."
fi

# Fix ownership/permissions
sudo chown -R ec2-user:ec2-user /home/ec2-user/simplybyte_calculator-new
sudo chmod -R 755 /home/ec2-user/simplybyte_calculator-new
