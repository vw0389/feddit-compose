#!/bin/bash
export POSTGRES_HOST=feddit-db
export POSTGRES_PORT=5432
export POSTGRES_DB=feddit
export POSTGRES_USER=feddit
export POSTGRES_PASSWORD=password
export NGINX_PORT=80

docker run  --rm --name feddit-db \
    -e POSTGRES_DB=${POSTGRES_DB} \
    -e POSTGRES_USER=${POSTGRES_USER} \
    -e POSTGRES_PASSWORD=${POSTGRES_PASSWORD} \
    -p 5432:5432 \
    postgis/postgis:14-3.2-alpine