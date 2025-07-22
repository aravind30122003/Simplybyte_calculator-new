#!/bin/bash
echo "===> Stopping Node.js application..."
pkill -f server.js || true
