挂载
gaizai
	将光盘/U盘/分区/网络存储设备装到某个linux目录
	jiang guangpan/Upan/fewnqu/wangluo cunchu shenbei zhuangdao mouge Linux mulu
	通过访问这个目录来操作设备上的文档
	tongguo fangwen zhege mulu lai caozuo shebei shang de wendang

mkdir -p /mnt/cdrom
#创建被挂载的目录
#chuangjian bei guazai de mulu

#####临时生效
#####linshi shengxiao
mount /dev/cdrom /mnt/cdrom
#挂载光盘到指定目录
#guazai guangpan dao zhiding mulu

ls /mnt/cdrom

df -hT
#-T     显示文件系统类型
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
#卸载两个目录都OK

####永久生效
####yongjiu shengxiao
#修改 /etc/fstab
#xiugai /etc/fstab

UUID=42616e7f-6bdd-40fd-8c0f-a76d3bd9e935 /ext4    defaults1 1
#参考格式
#cankao geshi
#UUID=42616e7f-6bdd-40fd-8c0f-a76d3bd9e935 ye keyi zheyang /dev/cdrom
#/	挂载点(目标文件夹)
#/	guazai dian (mubiao wenjianjia)
#ext4	文件系统类型
#ext4	wenjian xitong leixing

blkid
#查看UUID
#chakan UUID

mount /dev/vda1 /
#临时并立即生效
#lishi bing liji shengxiao

#mount -a
#检查是否成功
#jiancha shifou chenggong 









