#!/usr/bin/env bash

cp .env.dev.sample .env.dev
docker-compose build
docker-compose run --rm spring rails db:create
docker-compose run --rm spring rails db:migrate
docker-compose up -d
