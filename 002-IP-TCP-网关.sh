
##########################################################################################################——》IP
#TCP/IP信息
#TCP|IP是最广泛的通信协议集合
    #包括大量的internet应用协议
    #支持跨网络结构，跨操作系统的协议
#主机与主机之间的通信
    #IP地址       IP address
    #子网掩码     subnet mask
    #IP路由       IP route
#什么事IP地址
    #标识一个节点的互联网地址
#地址组成
    #一共32个二进制位；分4组，每组8位；8位的二进制在转换成容易记忆的10进制，最大2^8=256 也就是0-255这256个数字
    #转换为4个十进制数字，以.隔开
    #网络位加主机位

#适用于一般计算机
#A类 1~127.主.主.主     ——》子网掩码     255.0.0.0       一般是大型网络         10.0.0.1~10.255.255.254           后面三位私有地址 2^0*2^8*2^8*2^8
#B类 128~191.网.主.主   ——》子网掩码     255.255.0.0     一般中型              172.16.0.1~172.31.255.254         后两位私有地址   2^0*2^4*2^8*2^8
#C类 192~223.网.网.主   ——》子网掩码     255.255.255.0   小型                  192.168.0.1~192.168.255.254       后一位私有地址   2^0*2^0*2^8*2^8

#公有地址   可以在互联网合法使用      需要像NIC申请付费使用
#私有地址   预留给企业内部使用        无需付费
#回环地址   测试本地TCP|IP            （127.0.0.1~127.255.255.254）   #A类的127开头是回环
#私有IP是规定的

#组播和科研机构
#D类 224~239 组播
#E类 240~254 科研

#家中IP
#222.90.167.84  C类

#子网掩码是区分主机位和网络位； 默认网络位为255，主机位为0 

#1.116.26.230/8          等同于与    1.116.26.230          255.0.0.0         A类     网络位 8位
#192.168.1.12/24         等同于      192.168.1.12          255.255.255.0     B类     网络位 24位    

##########################################################################################################——》默认网关
#默认网关
    #从一个网络连接到另一个网络的“关口”；统一网段交互，可以默认不配
    #通常是一台路由器，或者防火墙/接入服务器的地址
#主机1                            网关路由器                             主机2
#192.168.1.1/24                                                         192.168.2.1/24 
#192.168.1.254（默认网关）                                               192.168.2.254（默认网关）     

##########################################################################################################——》配置IP地址参数
#IP配置方式
    #静态配置（手动配置）（DHCP未启动 ）
        #工作量大
        #容易误配置，地址重复
    #动态配置（DHCP已启动）
        #DHCP
            #DHCP是用来分配IP地址的（启用、不启用）
            #NAT是用来转换IP地址的（NAT、仅主机、桥接）
            #备用地址为169.254.XX.XX（需要关注，DHCP可能出问题了）

#vmware创建虚拟网络
#编辑——虚拟机网络编辑器——添加网络
#ping不通，先关防火墙
    #是否在同一个网络设备
    #防火墙关闭
    #主机的IP配置是否正确（192.1.5.XX）（xx是0~254）

##########################################################################################################——》交换机
#交换机    switch
    #用来集中多条网路线路的一种设备
    #大量计算机通过网线连接掉交换机，有交换机付总为其中任意两个计算机提供独享线路进行通信

#软件     eHSP    华为交换机

##########################################################################################################——》连网截止及设备
#网卡
    #以太网卡
        #多数计算机自带，采用GJ-45制式接口
        #GJ-45接口说明
            #1 TX+ （数据发送正端）     Transmit
            #2 TX- （数据发送负端）
            #3 RX+ （数据接收正端）     Receiver
            #4 未用
            #5 未用
            #6 RX- （数据接收负端）
            #7 未用
            #8 未用        
        #通过双绞线传输数据到网络中（其他主机）
        #通过双绞线从网络中（其他主机）接收发给本机的数据
    #光网卡
        #不常用，采用光纤接口，价格昂贵
        #通过光纤跳线传输数据到网络中（其他主机）
        #通过光纤跳线从网络中（其他主机）接收发给本机的数据        
    #无线网卡
        #通常笔记本自带，台式机需要自行添加
        #常见无限信号类别
            #蓝牙
            #红外线
            #WLAN/WIFI
            #3G/4G/5G
        #通过无限信号传输数据到网络中（其他主机）
        #通过无限信号从网络中（其他主机）接收发给本机的数据        
#网线
    #双绞线
        #目前使用最普遍、性价比最优的一种传输介质
        #8根铜芯线组成，分4对；每对两两绞合组成（降低近端串扰）（4个用，4个备）
        #类型
            #UTP    无屏蔽双绞线  （常用）（便宜）（一般电子干扰不大，够用）
                #5类（cat5）      速度：100Mbps
                #超5类            速度：1000Mbps
            #STP    屏蔽双绞线   （铜线屏蔽）
    #光缆

#交换机
    #什么是交换机
    #非网管型交换机
    #网管型交换机
    
    
    
    























