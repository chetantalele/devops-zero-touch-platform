#!/bin/bash
set -e

: "${APP_NAME:?APP_NAME not set}"
: "${IMAGE_URI:?IMAGE_URI not set}"
: "${DOMAIN_NAME:?DOMAIN_NAME not set}"

find k8s -type f -name "*.yaml" -exec sed -i \
  -e "s|__APP_NAME__|$APP_NAME|g" \
  -e "s|__IMAGE_URI__|$IMAGE_URI|g" \
  -e "s|__DOMAIN_NAME__|$DOMAIN_NAME|g" {} \;
