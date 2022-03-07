# MISP HAProxy High Availability Middleware
## Purpose
To create a middleware between MISP and Redis: MISP can't understand which Redis node in a cluster is the master. This middleware does

## Usage
Docker-compose:
```
version: "3.3"
  services:
    haproxy:
      image: ghcr.io/trifork-security/misp_haproxy_redis:latest
      environment:
        - REDIS_MASTER_NAME=redis-master
        - REDIS_MASTER_PORT=6379
        - REDIS_SLAVE_NAME=redis-slave
        - REDIS_SLAVE_PORT=6379
      deploy:
        mode: global
```