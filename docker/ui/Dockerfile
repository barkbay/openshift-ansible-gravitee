FROM graviteeio/management-ui:1.12.5

RUN /bin/sed -i -e 's/listen 443/listen 8443/g' /etc/nginx/conf.d/default.conf && \
    /bin/sed -i -e 's/listen 80 default_server/listen 8080 default_server/g' /etc/nginx/conf.d/default.conf && \
    sed -i -e '/user  nginx;/d' /etc/nginx/nginx.conf && \
    /bin/sed -i -e 's/\/\/www.google-analytics.com\///g' /var/www/html/index.html && \
    touch /var/www/html/analytics.js && \
    chmod g+w /var/www/html/constants.json && \
    chmod g+w /var/www/html/portal/i18n/*.json

COPY var /var
COPY usr /usr
