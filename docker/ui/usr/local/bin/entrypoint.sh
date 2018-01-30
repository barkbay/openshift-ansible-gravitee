#!/bin/bash

export MGMT_API_URL=${MGMT_API_URL:-http://localhost:8083/management/} # Will be replaced in Deployment
export PORTAL_TITLE=${PORTAL_TITLE:-API Portal}
export MANAGEMENT_TITLE=${MANAGEMENT_TITLE:-API Management}
export TITLE_FR=${TITLE_FR:-MON PORTAIL API}
export TITLE_EN=${TITLE_EN:-MY API PORTAL}


envsubst < /var/www/html/constants.json.template > /var/www/html/constants.json
envsubst < /var/www/html/portal/i18n/fr.json.template > /var/www/html/portal/i18n/fr.json
envsubst < /var/www/html/portal/i18n/en.json.template > /var/www/html/portal/i18n/en.json

#setup
echo "Starting NGINX..."
exec "$@"
