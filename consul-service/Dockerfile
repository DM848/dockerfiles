FROM alpine:3.8
WORKDIR /consul-service

# common health checking tool
RUN apk add --no-cache curl

# Consul-template
ARG CONSUL_TEMPLATE_VERSION=0.19.5
ARG CONSUL_TEMPLATE_CHECKSUM="39f4fc2ffaa00e0a7504f531f922d9d39dd29520c03dc0abde46835ebd52c647"
RUN wget "https://releases.hashicorp.com/consul-template/${CONSUL_TEMPLATE_VERSION}/consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64.tgz" \
        -O "/tmp/consul-template.tgz" && \
    echo "${CONSUL_TEMPLATE_CHECKSUM}  /tmp/consul-template.tgz" | sha256sum -c && \
    tar zxvf "/tmp/consul-template.tgz" -C /bin && \
    rm "/tmp/consul-template.tgz"

# this entrypoint file will add the ip address of the host as consul-node, such that we can
# query the consul server through our node to allow caching, less network load and faster responses.
COPY entrypoint.sh /consul-service
RUN chmod +x /consul-service/entrypoint.sh
ENTRYPOINT ["/consul-service/entrypoint.sh"]
