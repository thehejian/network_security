#分区
/boot       200MB
#启动分区
swap        4096MB
#交换分区
/           不用填，就是剩下的所有
#根

#关闭防火墙
systemctl stop firewall
systemctl disable firewall

#关闭SELinux机制
setenforce 0

yum -y install httpd mariadb-server mariadb php php-mysql
systemctl restart httpd mariadb
systemctl status httpd mariadb




