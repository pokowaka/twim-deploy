#!/bin/bash
CURR_DIR=$PWD
SCRIPT_DIR=$(dirname "$0")
cd $SCRIPT_DIR

mkdir -p certs
cp /etc/letsencrypt/live/home.mubunti.com/fullchain.pem certs/
cp /etc/letsencrypt/live/home.mubunti.com/privkey.pem certs/
docker build . -f Dockerfile.envoy -t envoy:twim
cd $CURR_DIR