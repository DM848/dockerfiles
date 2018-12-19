FROM alpine:3.8
WORKDIR /consul-service

# common health checking tool
RUN apk add curl
RUN apk add nano

# this entrypoint file will add the ip address of the host as consul-node, such that we can
# query the consul server through our node to allow caching, less network load and faster responses.
COPY pod-setup-entrypoint.sh .
ENTRYPOINT ["/consul-service/pod-setup-entrypoint.sh"]
