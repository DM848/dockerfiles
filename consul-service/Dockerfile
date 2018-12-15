FROM alpine:3.8
WORKDIR /consul-service

# install Consul service discover - containerpilot
# Install ContainerPilot
ENV CONTAINERPILOT_VER 3.8.0
ENV CONTAINERPILOT /etc/containerpilot.json5

RUN export CONTAINERPILOT_CHECKSUM=84642c13683ddae6ccb63386e6160e8cb2439c26 && \
    wget "https://github.com/joyent/containerpilot/releases/download/${CONTAINERPILOT_VER}/containerpilot-${CONTAINERPILOT_VER}.tar.gz" \
        -O /tmp/containerpilot.tar.gz && \
    echo "${CONTAINERPILOT_CHECKSUM}  /tmp/containerpilot.tar.gz" | sha1sum -c && \
    tar zxf /tmp/containerpilot.tar.gz -C /bin && \
    rm /tmp/containerpilot.tar.gz

# common health checking tool
RUN apk add --no-cache curl

# this entrypoint file will add the ip address of the host as consul-node, such that we can
# query the consul server through our node to allow caching, less network load and faster responses.
COPY entrypoint.sh /consul-service
RUN chmod +x /consul-service/entrypoint.sh
ENTRYPOINT ["/consul-service/entrypoint.sh"]