# zookeeper集群测试
## 准备工作
```
到java目录编译java8的镜像
> docker build -t shih/java8 .
到zookeeper目录编译出基本的zookeeper版本
> docker build -t shih/zookeeper .
```

## 运行
```
docker-compose run --rm zkcli -server zookeeper1
```
## 可能的异常
```
若出现了docker-compose不能运行的情况，需要手动编译镜像zkcli
> docker-compose build zkcli
```

## reference
[five-server-docker](https://github.com/lukeolbrish/examples/tree/master/zookeeper/five-server-docker)
