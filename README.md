# Simple Docker Pi-hole

This is exactly this offical project (https://github.com/pi-hole/docker-pi-hole) just "compresed" to single `docker-compose.yaml` file with few improvements (in my opinion) ;)

Feel free to use!

## What changed?

- move environments variables to `.env` and `.env.local` files,
- move cron file to root dir,
- add `update.sh` script for easily update your Pi-hole.

## Quick Start

Dowload or clone repo, go to root dir, create and fill `.env.local` file and just run `docker compose` command.

```sh
cd /path/to/simple-docker-pi-hole
docker compose up -d
```

To enable several automatic operations, like flush logs and update ad sources, add this file to your crontab.

```sh
crontab docker-pi-hole.cron
```

## Upgrading

Simply run the script. It will download the new version, delete old containers and build the new one.

```sh
cd /path/to/pihole-enhanced
./update.sh
```
