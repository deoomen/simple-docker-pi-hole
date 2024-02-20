#!/usr/bin/sh

docker pull pihole/pihole
docker compose down
docker rm -f pihole
docker compose up -d
