FROM docker.elastic.co/elasticsearch/elasticsearch:5.4.3

# Openshift run containers with random UID
USER 0

ENV xpack.security.enabled=false \
    xpack.monitoring.enabled=false \
    cluster.name=elasticsearch

RUN chmod g+rwx /usr/share/elasticsearch && \
    chmod -R g+w /usr/share/elasticsearch && \
    chgrp -R 0 /usr/share/elasticsearch
