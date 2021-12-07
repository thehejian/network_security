#路由器组网
        #路由器应用
                #什么是路由器
                        #负责在不同网络之间转发数据的设备
                        #当到达目标的路径很复杂时，由路由器决定最佳路径
                        #路由器也为直连网络的主机充当“网关”角色
                        #路由器是实现网络互连的最核心设备
                #路由器工作原理简述
                        #每台路由器维护一份路由表记录如下内容
                                #要访问XX网络应从哪一个接口转发
                                #一级可到达的下一个路由器（或主机）的地址
                        #路由器如何工作
                                #检查数据包的目标IP地址
                                #在路由表中查找到达目标的线路，并选择最佳线路
                                #按照最佳路线转发数据包
                #路由器组网示例
        #路由器基本配置
                #配置设备名、接口地址
                #查看路由表
                #保存路由器配置

#直连路由配置
#路由一般接交换机
#交换机一般接主机               

##########——》路由器物理端口配置IP
#路由器的管理地址就是借口的IP地址
<Huawei>system-view
[Huawei]sysname R1
[R1]interface GigabitEthernet 0/0/0
[R1-GigabitEthernet0/0/0]ip address 192.168.1.254 255.255.255.0
#[R1-GigabitEthernet0/0/0]ip address 192.168.1.254/24
#配的路由的网关
#配置路由接口IP地址
[R1-GigabitEthernet0/0/0]quit
[R1]quit
<R1>display ip routing-table
#路由表

##########——》交换机虚拟IP Vlanif1 配置
#配置交换机的管理IP，配置在整体，不用每个主机单独去配置
<Huawei>system-view
[Huawei]interface Vlanif 1
#交换机的管理IP是一个虚拟接口,不是物理口
#跟交换机下的主机在同一个网段
[Huawei-Vlanif1]ip address 192.168.1.100 255.255.255.0
[Huawei-Vlanif1]undo shutdown
#重启激活

#远程管理，AAA身份认证
        #认证 Authentication
        #授权 Authorization
        #审计 Accounting
<Huawei>system-view
[Huawei]user-interface vty 0 4
#进入远程登录配置视图
[Huawei-ui-vty0-4]authentication-mode aaa
#启用AAA认证

#####################################################################################——》远程连接路由器
#管理路由器  路由器物理的端口IP
#管理交换机  设置的虚拟端口VLAN的IP
#######################################——》路由器配置
#在路由器自身上面配置，远程也可以修改吧？
<Huawei>system-view
[Huawei]user-interface vty 0 4
#0 4 定义同时远程管理的终端数量5个（vty0、vty1、vty2、vty3、vty4）
#vty0 4 就是说把这五个界面一起配置了
[Huawei-ui-vty0-4]user privilege level 3
#权限级别     管理所有命令
[Huawei-ui-vty0-4]authentication-mode aaa
#启用AAA认证
[Huawei-ui-vty0-4]aaa
#进入aaa认证视图
[Huawei-aaa]local-user ntd password cipher 123
#用户名ntd 密码123
[Huawei-aaa]local-user ntd service-type telnet
#设置telnet协议

#######################################——》路由器远程登录
#需要支持telnet的客户端软件
        #第三方软件，如SecureCRT、Putty、Xshell
        #路由器/交换机自带的telnet命令
#远程登录(从交换机上登录路由器)
<Huawei>telnet 192.168.1.254
#Username:ntd
#Password:123(密文)
<Huawei>system-view
[Huawei]sysname R1
[R1]

#####################################################################################——》远程连接交换机
#######################################——》交换机配置
#自身上操作，console线连接出来？
<Huawei>system-view
[Huawei]user-interface vty 0 4
#0 4 定义同时远程管理的终端数量5个（vty0、vty1、vty2、vty3、vty4）
#vty0 4 就是说把这五个界面一起配置了
[Huawei-ui-vty0-4]user privilege level 3
#权限级别     管理所有命令
[Huawei-ui-vty0-4]authentication-mode aaa
#启用AAA认证
[Huawei-ui-vty0-4]aaa
#进入aaa认证视图
[Huawei-aaa]local-user tedu password cipher 456
#用户名tedu 密码456
[Huawei-aaa]local-user ntd service-type telnet
#设置telnet协议

#######################################——》交换机的Vlanif1虚拟网卡配置
#在交换机自身上配置
#配置交换机的管理IP，配置在整体，不用每个主机单独去配置
<Huawei>system-view
[Huawei]interface Vlanif 1
#交换机的管理IP是一个虚拟接口,不是物理口
#跟交换机下的主机在同一个网段
[Huawei-Vlanif1]ip address 192.168.1.100 255.255.255.0
[Huawei-Vlanif1]undo shutdown
#重启激活

#######################################——》交换机远程登录
#其他设备，路由器（R1）、主机或者其他交换机（同网段）
<R1>telnet 192.168.1.100
#通过R1路由器远程登录交换机
#Username:tedu
#Password:456(密文)
<Huawei>system-view
#从交换机的用户视图进入系统视图
#用户视图，可以是任意设备远程登录<Huawei>
#系统视图，已经远程登录到此交换机[Huawei]
[Huawei]sysname S1
[S1]











