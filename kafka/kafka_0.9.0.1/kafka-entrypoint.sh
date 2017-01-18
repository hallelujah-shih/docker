#!/bin/bash

echo broker_id is $BID

sed -i -e "s/broker.id=0/broker.id=$BID/g" -e "s/zookeeper.connect=localhost:2181/zookeeper.connect=$ZKHOST/g" /opt/kafka/config/server.properties

/opt/kafka/bin/kafka-server-start.sh /opt/kafka/config/server.properties

