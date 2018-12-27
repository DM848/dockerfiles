FROM dm848/consul-service:v1.3.0

# Install ContainerPilot
ENV CONTAINERPILOT_VER 3.8.0
ENV CONTAINERPILOT /etc/containerpilot.json5

ARG CONTAINERPILOT_CHECKSUM=84642c13683ddae6ccb63386e6160e8cb2439c26
RUN wget "https://github.com/joyent/containerpilot/releases/download/${CONTAINERPILOT_VER}/containerpilot-${CONTAINERPILOT_VER}.tar.gz" \
        -O /tmp/containerpilot.tar.gz && \
    echo "${CONTAINERPILOT_CHECKSUM}  /tmp/containerpilot.tar.gz" | sha1sum -c && \
    tar zxf /tmp/containerpilot.tar.gz -C /bin && \
    rm /tmp/containerpilot.tar.gz

