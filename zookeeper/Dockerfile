FROM shih/java8

ARG MIRROR=http://mirrors.tuna.tsinghua.edu.cn/apache/zookeeper/
ARG VERSION=3.4.8

RUN mkdir -p /opt && \
        wget -q -O - $MIRROR/zookeeper-$VERSION/zookeeper-$VERSION.tar.gz | tar -xzf - -C /opt && \
        mv /opt/zookeeper-$VERSION /opt/zookeeper && \
        cp /opt/zookeeper/conf/zoo_sample.cfg /opt/zookeeper/conf/zoo.cfg && \
        mkdir -p /tmp/zookeeper

EXPOSE 2181 2888 3888

WORKDIR /opt/zookeeper

VOLUME ["/opt/zookeeper/conf", "/tmp/zookeeper"]

ENTRYPOINT ["/opt/zookeeper/bin/zkServer.sh"]

CMD ["start-foreground"]
