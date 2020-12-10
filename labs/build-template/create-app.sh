#!/bin/sh

#source /usr/local/etc/ocp4.config

oc new-app --template edskii-common/php-mysql-ephemeral \
  -p NAME=quotesapi \
  -p APPLICATION_DOMAIN=quote-edskii.apps.ocp.edskii.net \
  -p SOURCE_REPOSITORY_URL=https://github.com/edskii08/DO288-apps \
  -p CONTEXT_DIR=quotes \
  -p DATABASE_SERVICE_NAME=quotesdb \
  -p DATABASE_USER=user1 \
  -p DATABASE_PASSWORD=mypa55 \
  --name quotes

