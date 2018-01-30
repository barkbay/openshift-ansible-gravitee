FROM graviteeio/management-api:1.12.5

COPY graviteeio-management-api /opt/graviteeio-management-api

RUN chmod -R g+w /opt/graviteeio-management-api/config
#RUN /bin/sed -i -e 's/listen 443/listen 8443/g' /etc/nginx/conf.d/default.conf && \
#    /bin/sed -i -e 's/listen 80 default_server/listen 8080 default_server/g' /etc/nginx/conf.d/default.conf && \
#   sed -i -e '/user  nginx;/d' /etc/nginx/nginx.conf && \
#   chmod g+w /var/www/html/constants.json
