zip -ry /opt/bootbak.zip /opt/boot
#da zip bao

unzip /opt/bootbak.zip -d ~
#jieya zip

tar -zcPf 001.tar.gz ~/cloud_linux

tar -jcPf 001.tar.bz2 ~/cloud_linux

tar -JcPf /home/hejian/001.tar.xz ~/cloud_linux
#houmian de wenjian jia dabao bing yasuo dao qianmian de wenjian

-c	chuangjian xin de guidang dizhi
-P	baoliu bei beifen wendang de juedui lujing(jieya shi buyong zhiding weizhi)
-f	zhiding guidang beifen wenjian de lujing ji mingcheng
-z	gzip
-j	bzip
-J	xz
-x	jieya

mv ~/cloud_linux ~/cloud_linux_bak
#fugai qian beifen yuan wenjian
tar -cPf /home/hejian/001.tar.xz
#jieya (buyong zhiding wenjian lujing, hui zidong yasuo dao -P baocun de lujing)
