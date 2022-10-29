#!/bin/bash
mkdir -p certs
cp /etc/letsencrypt/live/home.mubunti.com/fullchain.pem certs/
cp /etc/letsencrypt/live/home.mubunti.com/privkey.pem certs/

docker build . -f Dockerfile.envoy -t envoy:twim
docker run --rm    --name envoy -p 80:80 -p 443:443 envoy:twim
