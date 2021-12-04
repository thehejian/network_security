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
#A类 1~127.主.主.主     ——》子网掩码     255.0.0.0       一般是大型网络     10.0.0.1~10.255.255.254           后面三位私有地址 2^0*2^8*2^8*2^8
#B类 128~191.网.主.主   ——》子网掩码     255.255.0.0     一般中型           172.16.0.1~172.31.255.254         后两位私有地址   2^0*2^4*2^8*2^8
#C类 192~223.网.网.主   ——》子网掩码     255.255.255.0   小型               192.168.0.1~192.168.255.254       后一位私有地址   2^0*2^0*2^8*2^8

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

1.116.26.230/8          等同于与    1.116.26.230          255.0.0.0         A类     网络位 8位
192.168.1.12/24         等同于      192.168.1.12          255.255.255.0     B类     网络位 24位       

  












