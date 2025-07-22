#!/bin/bash
echo "===> Starting Node.js application..."
cd /home/ec2-user/simplybyte_calculator-new
nohup node server.js > app.log 2>&1 &
