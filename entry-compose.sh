#!/bin/bash

cd ../feddit-backend
docker build . -t feddit-backend

cd ../feddit-frontend
docker build . -t feddit-nginx

cd ../feddit-compose
docker-compose up