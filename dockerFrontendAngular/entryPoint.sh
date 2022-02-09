#!/bin/sh
set -xe
: "${BACKEND_API_URL?Need an backend api url}"
: "${BACKEND_API_PORT?Need an backend api port}"

sed -i "s/\$BACKEND_API_URL/$BACKEND_API_URL/g" /usr/share/nginx/html/main*.js
sed -i "s/\$BACKEND_API_PORT/$BACKEND_API_PORT/g" /usr/share/nginx/html/main*.js

exec "$@"