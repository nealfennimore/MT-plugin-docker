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

After booting up your square-one docker, use the `dev/docker/start.sh` in order to start everything up.

You should now be able to access [plugins.tribe](https://plugins.tribe).