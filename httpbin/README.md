## 说明
```
是基于centos的使用httpbin和gunicorn的容器
```

## build
```
sudo docker build shihan/centos:httpbin .
```

## 启动
```
sudo docker run -d -p 80:80 shihan/centos:httpbin 
```

## 访问
```
curl http://domain_name/
```
