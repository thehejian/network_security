文档归属
wendang guishu
属主
shuzhu		user
属组
shuzu		group
其他用户
qitayonghu	other

访问权限
fangwen quanxian
读取
duqu		read
写入
xieru
可执行		write
kezhixing	excute

d		wenjian jia文件夹
-		putong wenjian普通文件

chown hejian 040-wenjian.sh
#genggai suoyou zhe
#更改所有者

chown :hejian_gp 040-wenjian.sh
#xiugai wenjian zuming
#修改文件组名

chown hejian:hejian_gp 040-wenjian.sh
#tongshi xiugai wenjian zu he wenjian ming	
#同时修改组名和用户名

chmod u+w 040-wenjian.sh
#zengjia xie quanxian
#增加写权限

chmod u-w 040-wenjian.sh
#jianshao xie quanxian
#减少写权限

chmod o+x 040-wenjian.sh
#qita zhixing quanxian
#其他用户加执行权限

chmod ugo-w 040-wenjian.sh
#quanbu quxiao xie quanxian
#全部取消写权限

chmod o=r-- 040-wenjian.sh
#chongxin fen quanxian
#重新分权限
