zip -ry /opt/bootbak.zip /opt/boot
#打zip包
#da zip bao

unzip /opt/bootbak.zip -d ~
#解压zip
#jieya zip

tar -zcPf 001.tar.gz ~/cloud_linux

tar -jcPf 001.tar.bz2 ~/cloud_linux

tar -JcPf /home/hejian/001.tar.xz ~/cloud_linux
#后面的文件夹打包并压缩到前面的文件
#houmian de wenjian jia dabao bing yasuo dao qianmian de wenjian

-c	chuangjian xin de guidang dizhi创建新的归档地址
-P	baoliu bei beifen wendang de juedui lujing(jieya shi buyong zhiding weizhi)保留被备份文件的绝对路径(解压时可以不用指定路径)
-f	zhiding guidang beifen wenjian de lujing ji mingcheng指定归档备份文件的路径及名称
-z	gzip
-j	bzip
-J	xz
-x	jieya解压

mv ~/cloud_linux ~/cloud_linux_bak
#fugai qian beifen yuan wenjian
#备份需要被覆盖的文件
tar -cPf /home/hejian/001.tar.xz
#解压(不用指定文件路径,会自动压缩到-P保存的路径)
#jieya (buyong zhiding wenjian lujing, hui zidong yasuo dao -P baocun de lujing)
