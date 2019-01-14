# Getting Started

## Prerequisites

You'll first need to generate certs for `plugins.tribe` in your square-one repo. Go to `dev/docker/global` within square-one and then type in:
```sh
. cert.sh plugins.tribe
```

## Initial setup

In this repo, go to `dev/docker` and copy the `.env.sample` to `.env`.

```sh
cp .env.sample .env
```

Update the .env `PLUGINS_DIR` variable with the directory your plugins are located locally.


Now copy over the `docker-compose.override.yml.sample` and edit to whichever plugins you have locally.

```sh
cp docker-compose.override.yml.sample docker-compose.override.yml
```

After booting up your square-one docker, use the `dev/docker/start.sh` in order to start everything up.

You should now be able to access [plugins.tribe](https://plugins.tribe).

You can start on the [development](development.md) instructions.