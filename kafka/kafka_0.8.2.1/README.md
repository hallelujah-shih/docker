# kafka cluster in docker
```
kafka集群: kafka1:9092, kafka2:9092, kafka3:9092
zk集群: zookeeper1:2181, zookeeper2:2181, zookeeper3:2181
```
## 创建基本docker镜像
```
> docker build -t shih/kafka:0.8.2.1 . -f Dockerfile
```

## 启动kafka集群
```
> docker-compose run kafka_cli
```

## 创建topic
```
> bin/kafka-topics.sh --create --zookeeper zookeeper1:2181 --replication-factor 3 --partitions 3 --topic test
```

## 查看topic详情
```
> bin/kafka-topics.sh --describe --topic test --zookeeper zookeeper1:2181
```

## 关闭整个集群
```
> docker-compose stop
```
