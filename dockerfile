FROM haproxytech/haproxy-alpine:2.2.21

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
