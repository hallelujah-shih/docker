# 说明
```
此用于创建多于1个可执行程序的模板
```

## 基础
```
根据centos来编写的（7.2）
```

### 安装软件
```
supervisor,ssh
```

### 修改
```
authorized_key: 向这个文件中添加自己的公钥
id_rsa_docker: 这是自己的私钥，测试使用，可以删除
sshd_config: 可以根据自己的需要修改sshd的配置
supervisord.conf：可以根据自己的程序需求更改supervisor的配置，
                  若添加了一些新的服务也需要相应调整Dockerfile
```
