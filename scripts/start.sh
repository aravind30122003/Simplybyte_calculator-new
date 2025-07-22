#!/bin/bash
cd /home/ec2-user/Simplybyte_calculator-new
nohup node server.js > output.log 2>&1 &
