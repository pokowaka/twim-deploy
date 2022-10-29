#!/bin/bash
# git secret reveal
set -x
cp secrets/env-docker-prod backend/
source secrets/env-docker-prod
export SERVER_PORT=8000
export COMPOSE_PROJECT_NAME=twim_guide_backend
docker-compose up --build