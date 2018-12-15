# consul-nginx
consul (containerpilot) + consul-template + nginx + curl

This repo does not contain the default NGINX site example. You must supply your own before starting NGINX.

To start nginx: `nginx -g "daemon off;"`

example Dockerfile where consul-template is used to auto-generate the upstreams and server location
```docker
FROM dm848/cs-nginx:v1

# COPY ContainerPilot configuration
COPY containerpilot.json5 /etc/containerpilot.json5
ENV CONTAINERPILOT=/etc/containerpilot.json5

WORKDIR /router
RUN mkdir /router/templates
COPY templates/server.conf.ctmpl /router/templates
COPY config.hcl /router
COPY start-nginx.sh /router

# expose http port. Port 80 is already exposed
CMD ["/bin/containerpilot"]
```