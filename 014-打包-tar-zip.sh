zip -ry /opt/root.zip /root
#把root文件夹 打包成root.zip

unzip /opt/root.zip -d /opt/
#指定解压到opt下

tar -zcPf wenjian.tar.gz /opt
tar -jcPf wenjian.bz2 /opt
tar -JcPf wenjian.tar.xz /opt
#-c 创建新的归档备份
#-z 调用gzip
#-j 调用bzip2
#-J 调用xz
#-P 保留备份文件的绝对路径
#-f 指定归档备份文件的路径和名称


tar -xfP wenjian.tar.gz
#打包时带路径了

tar -xf wenjian.tar.gz -C /root/
#-C 指定路径





