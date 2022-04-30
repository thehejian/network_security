
#########################################################备份 PC
#为批量安装的PC提供GHO备份文件
#wei piliang anzhuang de PC tigong GHO benfen wenjian

（不是PXE 服务器）先安装 一台，导出GHO文件
(bushi PXE fuwuqi)xian zhuang yitai,daochu GHO wenjian

BIOS - Boot - Network boot from Intel E1000e

IP地址为自动获取
IP dizhi wei zidong huoqu

命令行
minglinghang:\> ghost

回车
huiche
GhostZCast-Multicast

输入名称(服务端名称简单一点)
shurumingcheng(fuwu duan mingcheng jiandan yidian)

跟PXE服务器接到同一网络环境
gen PXE fuwuqi jiedao tongyi wangluo huanjing

PXE服务器批量安装工具
PXE fuwuqi piliang zhuangji gongju

奇东锐腾PXE全自动网克工具
qidong ruiteng PXE quan zidong wangke gongju

#########################################################shezhi PXE fuwuqi IP

#Server配置
#Server peizhi

PXE服务器
PXE fuwuqi
192.168.88.1
255.255.255.0

#创建映像
#chuangjian yingxiang

防火墙阻止提示选择允许
fanghuoqiang zuzhi tishi xuanze yunxu

停止创建映像
tingzhi - chuangjian yingxiang

选择本地文件地址
xuanze bendi wenjian dizhi

接受客户端
jieshou kehuduan 

#恢复映像
#huifu yingxiang

恢复映像
huifu yingxiang

选择本地GHO
xuanze bendi GHO

类型选择磁盘(新机没有分区)
leixing xuanze cipan(xinji meiyou fenqu)

接受客户端
jieshou kehuduan

发送(发送后才安装client)
fasong (fasong hou cai anzhuang client)

##client 电脑
### client diannao

跟服务器接同一网络
gen fuwuqi jie tongyi wangluo
BIOS - Boot - Network boot from Intel E1000e
minglinghang:\> ghost
huiche
GhostZCast-Multicast

完成后改动启动项
wancheng hou gai qidong xiang
BIOS - Boot - Hard Driver









