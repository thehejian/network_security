luyouqi
路由器
fuze butong wangluo zhijian zhuanfa shuju
负责不同网络之间转发数据
	目标路径复杂，路由器决定最佳路径
	mubiao lujing fuza,luyouqi jueding zuijia lujing
        也可以直接主机充当网关
        yekeyi zhilian zhuji chongdang wangguan
网络核心最核心设备
wangluo hulian zui hexin shebei
工作原理
gongzuo yuanli 
维护一份路由表
weihu yifen luyoubiao
	要访问的网络应从哪一个接口发送
        yaofangwen de wangluo ying cong nayige jiekou fasong
	到达相应路由器或主机的地址
        daoda xiayige luyouqi(zhuji) de dizhi
如何工作
ruhe gongzuo
	检查数据表的目标IP地址
        jiancha shujubao de mubiao IP dizhi
	路由表查询到达目标的线路，并选择最佳线路
        luyoubiao chaxun daoda mubiao de xianlu,bing xuanze zuijia xianlu
        安装最佳线路转发数据包
        anzhao zuijia xianlu zhuanfa shujubao
主机的网关地址就是连接路由器的接口IP
zhuji de wangguan dizhi jiushi lianjie luyouqi de jiekou IP
<Huawei>system-view
[Huawei]sysname R1
[R1]interface GigabitEthernet 0/0/0
#[R1-GigabitEthernet0/0/0]ip address 192.168.1.254 24
#sike buzhichi shangmian de caozuo
[R1-GigabitEthernet0/0/0]ipaddress192.168.1.254 255.255.255.0
