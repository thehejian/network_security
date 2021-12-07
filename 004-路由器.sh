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

#路由器物理端口配置IP
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

#配置交换机的管理IP，配置在整体，不用每个主机单独去配置
<Huawei>system-view
[Huawei]interface Vlanif 1
#交换机的管理IP是一个虚拟接口,不是物理口
#跟交换机下的主机在同一个网段
[Huawei-Vlanif1]ip address 192.168.1.100 255.255.255.0
[Huawei-Vlanif1]undo shutdown
#重启激活












