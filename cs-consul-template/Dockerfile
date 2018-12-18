FROM dm848/consul-service:v1

# Consul-template
ARG CONSUL_TEMPLATE_VERSION=0.19.5
ARG CONSUL_TEMPLATE_CHECKSUM="39f4fc2ffaa00e0a7504f531f922d9d39dd29520c03dc0abde46835ebd52c647"
RUN wget "https://releases.hashicorp.com/consul-template/${CONSUL_TEMPLATE_VERSION}/consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64.tgz" \
        -O "/tmp/consul-template.tgz" && \
    echo "${CONSUL_TEMPLATE_CHECKSUM}  /tmp/consul-template.tgz" | sha256sum -c && \
    tar zxvf "/tmp/consul-template.tgz" -C /bin && \
    rm "/tmp/consul-template.tgz"
