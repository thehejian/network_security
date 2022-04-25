wendang guishu
shuzhu		user
shuzu		group
qitayonghu	other

fangwen quanxian
duqu		read
xieru		write
kezhixing	excute

d		wenjian jia
-		putong wenjian

chown hejian 040-wenjian.sh
#genggai suoyou zhe

chown :hejian_gp 040-wenjian.sh
#xiugai wenjian zuming

chown hejian:hejian_gp 040-wenjian.sh
#tongshi xiugai wenjian zu he wenjian ming	

chmod u+w 040-wenjian.sh
#zengjia xie quanxian

chmod u-w 040-wenjian.sh
#jianshao xie quanxian

chmod o+x 040-wenjian.sh
#qita zhixing quanxian

chmod ugo-w 040-wenjian.sh
#quanbu quxiao xie quanxian

chmod o=r-- 040-wenjian.sh
#chongxin fen quanxian
