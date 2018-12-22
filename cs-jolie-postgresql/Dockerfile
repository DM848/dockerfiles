FROM dm848/cs-jolie:v1.1.0

ARG POSTGRESQL_DRIVER_VERSION=42.2.5
RUN wget "https://jdbc.postgresql.org/download/postgresql-${POSTGRESQL_DRIVER_VERSION}.jar" \
    -O "/usr/lib/jolie/lib/jdbc-postgresql.jar"

RUN test -f "/usr/lib/jolie/lib/jdbc-postgresql.jar"