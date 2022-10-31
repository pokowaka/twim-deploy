#!/bin/bash
CURR_DIR=$PWD
SCRIPT_DIR=$(dirname "$0")
cd $SCRIPT_DIR

# git secret reveal (Should have been run..)
cp secrets/env-docker-prod backend/
source secrets/env-docker-prod
docker-compose --build --remove-orphans