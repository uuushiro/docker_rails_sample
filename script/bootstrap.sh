#!/usr/bin/env bash

cp .env.dev.sample .env.dev
docker-compose build
docker-compose up -d
