FROM dm848/jolie-builder:v1.7.0 as JolieBuilder

# move to smaller image with consul service support through containerpilot
FROM dm848/consul-service:v1.3.0
RUN apk --update add openjdk8-jre

COPY --from=JolieBuilder /release_tools/release/jolie_installer.jar .
ENV JOLIE_HOME /usr/lib/jolie
RUN java \
    -jar jolie_installer.jar \
    -jh /usr/lib/jolie \
    -jl /usr/bin && \
    rm jolie_installer.jar && \
    # verify jolie
    jolie --version