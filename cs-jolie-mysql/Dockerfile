FROM dm848/cs-jolie:v1
WORKDIR /mysql-install

ARG MYSQL_DRIVER_VERSION=8.0.11
RUN wget "https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-${MYSQL_DRIVER_VERSION}.tar.gz" && \
    tar -xzf "mysql-connector-java-${MYSQL_DRIVER_VERSION}.tar.gz" \
        --strip-components=1 \
        --no-same-owner "mysql-connector-java-${MYSQL_DRIVER_VERSION}/mysql-connector-java-${MYSQL_DRIVER_VERSION}.jar" && \
    mv "mysql-connector-java-${MYSQL_DRIVER_VERSION}.jar" "/usr/lib/jolie/lib/jdbc-mysql.jar"

RUN test -f "/usr/lib/jolie/lib/jdbc-mysql.jar"