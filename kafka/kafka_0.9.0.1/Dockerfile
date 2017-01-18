FROM shih/java8
ARG MIRROR=https://mirrors.tuna.tsinghua.edu.cn/apache/kafka
ARG SCALA_VERSION=2.10
ARG VERSION=0.9.0.1

RUN mkdir -p /tmp/kafka-logs && mkdir -p /opt && \
        wget -q -O - $MIRROR/$VERSION/kafka_$SCALA_VERSION-$VERSION.tgz | tar -xzf - -C /opt && \
        mv /opt/kafka_$SCALA_VERSION-$VERSION /opt/kafka 

EXPOSE 9092

WORKDIR /opt/kafka

VOLUME ["/opt/kafka/config"]

CMD ["/opt/kafka/bin/kafka-server-start.sh", "/opt/kafka/config/server.properties"]

