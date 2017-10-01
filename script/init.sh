#!/usr/bin/env bash

cp .env.dev.sample .env.dev

docker-compose build

docker-compose run --rm web rails new . --force --database=mysql --skip-bundle

cp -f template/database.yml config/database.yml

docker-compose run --rm rails bundle exec spring binstub --all
