
#########################################################备份 PC
#为批量安装的PC提供GHO备份文件
#wei piliang anzhuang de PC tigong GHO benfen wenjian

（不是PXE 服务器）先安装 一台，导出GHO文件
(bushi PXE fuwuqi)xian zhuang yitai,daochu GHO wenjian
BIOS - Boot - Network boot from Intel E1000e
IP dizhi wei zidong huoqu
minglinghang:\> ghost
huiche
GhostZCast-Multicast
shurumingcheng(fuwu duan mingcheng jiandan yidian)

gen PXE fuwuqi jiedao tongyi wangluo huanjing
PXE fuwuqi piliang zhuangji gongju
qidong ruiteng PXE quan zidong wangke gongju

#########################################################shezhi PXE fuwuqi IP
#Server peizhi
PXE fuwuqi
192.168.88.1
255.255.255.0

#chuangjian yingxiang
fanghuoqiang zuzhi tishi xuanze yunxu
tingzhi - chuangjian yingxiang
xuanze bendi wenjian dizhi
jieshou kehuduan 

#huifu yingxiang
huifu yingxiang
xuanze bendi GHO
leixing xuanze cipan(xinji meiyou fenqu)
jieshou kehuduan
fasong (fasong hou cai anzhuang client)

### client diannao
gen fuwuqi jie tongyi wangluo
BIOS - Boot - Network boot from Intel E1000e
minglinghang:\> ghost
huiche
GhostZCast-Multicast

wancheng hou gai qidong xiang
BIOS - Boot - Hard Driver









