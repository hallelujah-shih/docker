# docker
docker use example

## use
```
cd ./centos_supervisor_sshd
docker build -t shihan/centos:supervisor .

docker images
docker run -d -p 22:22 shihan/centos:supervisor 
```
