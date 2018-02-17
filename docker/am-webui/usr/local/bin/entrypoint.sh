#!/bin/bash

export MGMT_API_URL=${MGMT_API_URL:-http://localhost:8083/management/} # Will be replaced in Deployment

envsubst < /var/www/html/constants.json.template > /var/www/html/constants.json
#setup
echo "Starting NGINX..."
exec "$@"
