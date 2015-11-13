FROM frolvlad/alpine-oraclejdk8:slim

ENV SCALA_VERSION=2.12.0-M3 \
    SCALA_HOME=/usr/share/scala/

RUN apk add --update bash && \
    cd /tmp && \
    wget "http://downloads.typesafe.com/scala/${SCALA_VERSION}/scala-${SCALA_VERSION}.tgz" && \
    tar xzf "scala-${SCALA_VERSION}.tgz" && \
    mkdir "${SCALA_HOME}" && \
    rm "/tmp/scala-${SCALA_VERSION}/bin/"*.bat && \
    mv "/tmp/scala-${SCALA_VERSION}/bin" "/tmp/scala-${SCALA_VERSION}/lib" "${SCALA_HOME}" && \
    ln -s "${SCALA_HOME}/bin/"* "/usr/bin/" && \
    rm -rf /tmp/* /var/cache/apk/*
