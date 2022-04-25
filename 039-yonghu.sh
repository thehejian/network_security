yonghu leixing
chaoji yonghu	0
xitong yonghu	1-999
putong yonghu	1000-60000

putong yonghu de zhuyao shuxing
denglu ming\mima\jia mulu(/home/yonghuming)

useradd hejian
id hejian
passwd hejian
echo "123456" | passwd --stdin hejian
ls /home/hejian

usermod -d /home/student
#genghuan jia mulu dizhi

usermod -l hejian hejian001
#genggai denglu ming

userdel hejian
#shanchu yonghu
#yonghu xuyao chuyu duichu zhuangtai

groupadd hejian_gp
gpasswd -a hejian hejian_gp
#jiaru dao zu
gpasswd -d hejian hejian_gp
#shanchu chu zu
groupdel hejian_gp
#shanchu zu
groupadd -g 666 hejian
#shezhi zu ID wei 666


