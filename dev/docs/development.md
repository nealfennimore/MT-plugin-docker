# Development

## Bootstrapping

We have to first bootstrap every plugin to work together. This can be done by running from the root dir:
```sh
. dev/scripts/npm-bootstrap
```

We're now ready to start block editor development.

## Block Editor Development

The block editor scripts can be run all at once, by using the npm dev script. This run through every plugin in the `wp-content/plugins` directory that has a package.json with a `dev` script. From this repo's root directory run:
```
. dev/scripts/npm-dev
```