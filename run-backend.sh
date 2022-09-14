#!/bin/bash
export POSTGRES_HOST=localhost
export POSTGRES_PORT=5432
export POSTGRES_DB=feddit
export POSTGRES_USER=feddit
export POSTGRES_PASSWORD=password
export NGINX_PORT=80

cd ../feddit-backend
./mvnw spring-boot:run