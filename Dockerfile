ARG NODE_VERSION
ARG PHP_VERSION
ARG WORDPRESS_VERSION

FROM wordpress:${WORDPRESS_VERSION}-php${PHP_VERSION}-apache

WORKDIR /var/www/html

ENV NVM_DIR /usr/local/nvm
ENV NODE_VERSION 8.9.4

RUN mkdir -p $NVM_DIR
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash \
    && . $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && nvm use default \
    && npm install