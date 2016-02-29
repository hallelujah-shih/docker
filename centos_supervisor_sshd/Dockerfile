from centos
maintainer sh19871122@gmail.com

run yum -y install epel-release && yum -y update && yum -y install python-pip net-tools openssh-server
run pip install supervisor
run mkdir -p /etc/supervisor/conf.d
run mkdir -p /root/.ssh && chmod 700 /root/.ssh -R

copy supervisord.conf /etc/supervisor/supervisord.conf
copy authorized_keys /root/.ssh/authorized_keys
copy sshd_config /etc/ssh/sshd_config

run ssh-keygen -A
run chmod 400 /root/.ssh/authorized_keys

expose 22

cmd ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]
