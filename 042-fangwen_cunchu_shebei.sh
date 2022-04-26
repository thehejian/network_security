gaizai
	jiang guangpan/Upan/fewnqu/wangluo cunchu shenbei zhuangdao mouge Linux mulu
	tongguo fangwen zhege mulu lai caozuo shebei shang de wendang

mkdir -p /mnt/cdrom
#chuangjian bei guazai de mulu

#####linshi shengxiao
mount /dev/cdrom /mnt/cdrom
#guazai guangpan dao zhiding mulu

ls /mnt/cdrom

df -hT
#-T	xianshi wenjian xitong leixing

[root@hejian_alicloud ~]# df -h
Filesystem      Size  Used Avail Use% Mounted on
devtmpfs        909M     0  909M   0% /dev
tmpfs           919M     0  919M   0% /dev/shm
tmpfs           919M  540K  919M   1% /run
tmpfs           919M     0  919M   0% /sys/fs/cgroup
/dev/vda1        40G  3.9G   34G  11% /
tmpfs           184M     0  184M   0% /run/user/0
[root@hejian_alicloud ~]# df -hT
Filesystem     Type      Size  Used Avail Use% Mounted on
devtmpfs       devtmpfs  909M     0  909M   0% /dev
tmpfs          tmpfs     919M     0  919M   0% /dev/shm
tmpfs          tmpfs     919M  540K  919M   1% /run
tmpfs          tmpfs     919M     0  919M   0% /sys/fs/cgroup
/dev/vda1      ext4       40G  3.9G   34G  11% /
tmpfs          tmpfs     184M     0  184M   0% /run/user/0

mount /dev/cdrom
#mount /mnt/cdrom
#xiezai liangge mulu dou OK

####yongjiu shengxiao
#xiugai /etc/fstab

UUID=42616e7f-6bdd-40fd-8c0f-a76d3bd9e935 /ext4    defaults1 1
#cankao geshi
#UUID=42616e7f-6bdd-40fd-8c0f-a76d3bd9e935 ye keyi zheyang /dev/cdrom
#/	guazai dian (mubiao wenjianjia)
#ext4	wenjian xitong leixing

blkid
#chakan UUID

mount /dev/vda1 /
#lishi bing liji shengxiao

#mount -a
#jiancha shifou chenggong 









