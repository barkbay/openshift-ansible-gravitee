FROM graviteeio/am-webui:1.6.2

RUN /bin/sed -i -e 's/listen 443/listen 8443/g' /etc/nginx/conf.d/default.conf && \
    /bin/sed -i -e 's/listen 80 default_server/listen 8080 default_server/g' /etc/nginx/conf.d/default.conf && \
    /bin/sed -i -e 's/listen 80/listen 8080/g' /etc/nginx/nginx.conf && \
    sed -i -e '/user  nginx;/d' /etc/nginx/nginx.conf && \
    chmod g+w /var/www/html/constants.json

COPY var /var
COPY usr /usr

EXPOSE 8080 8443
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
