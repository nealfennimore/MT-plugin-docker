# Setup

Run these commands in repo:

```sh
cp .env.sample .env
cp docker-compose.override.yml.sample docker-compose.override.yml

# Use WORDPRESS_VIRTUAL_HOST in env to set in hosts
echo "127.0.0.1 wordpress.local" >> /etc/hosts
```

Update `PLUGINS_DIR` in _.env_ file to correspond to your local plugins location.

Comment out any unused plugins in _docker-compose.override.yml_.

Then `docker-compose up` to start. Go to [http://wordpress.local](http://wordpress.local) to view.

### Scripts

### Bootstrapping

Run `. scripts/npm-bootstrap` in order bootstrap plugins together in lerna. 

### Development

Run `. scripts/npm-dev` to start webpack dev mode on all plugins (except for common).

