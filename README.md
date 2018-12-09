# Setup

Run these commands in repo:

```sh
cp .env.sample .env
cp docker-compose.override.yml.sample docker-compose.override.yml
```

Update `PLUGINS_DIR` in _.env_ file to correspond to your local plugins location.

Comment out any unused plugins in _docker-compose.override.yml_.

Then `docker-compose up` to start. Go to [http://127.0.0.1:8080](http://127.0.0.1:8080) to view.