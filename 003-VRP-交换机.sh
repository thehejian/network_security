#交换机
    #什么是交换机
        #交换机    switch
        #用来集中多条网路线路的一种设备
        #大量计算机通过网线连接掉交换机，有交换机付总为其中任意两个计算机提供独享线路进行通信
#软件     eHSP    华为交换机    
    #非网管型交换机
        #傻瓜交换机
        #即插即用，无需（不支持）对设备进行配置
        #使用简单、加个便宜（数百元）
    #网管型交换机
        #智能交换机
        #实现网段划分、流量控制等
        #支持对设备进行高级配置，价格更贵（数千元）
        #厂商（华为）（华三H3C）（思科CISIO）
    
#交换机组网    
    #eNSP模拟器
        #eNSP网络仿真平台介绍
        #安装eNSP平台
        #认识eNSP操作界面
    #交换组网示例
        #网络拓扑介绍
        #绘制拓扑
        #交换组网的配置实现

#建立配置连接
    #软件连接：超级终端、putty、SecureCRT等
    #硬件连接
        #计算机 COM（九针串口）/USB口 ——》 Console线 ——》 交换机Console口

#命令行视图
    #华为VRP网络操作系统
    #Versatile Routing Platform，通用路由平台
    #也用在交换机、防火墙等各种产品上

#<Huawei>                            用户视图        查看运行状态或其他参数         <Huawei>system-view
#[Huawei]                            系统视图        配置设备的系统参数             [Huawei]interface GigabitEthernet 0/0/1 
#[Huawei-GigabitEthernet 0/1/1]      接口视图        配置接口参数                   [Huawei-interface GigabitEthernet 0/0/1]   0/0/1 0槽位/0号网卡/第一个网络接口
#[Huawei-ospf-1]                     协议视图        配置XX协议

<Huawei>display version
#查看VRP版本
#VRP是华为公司具有完全自主知识产权的网络操作系统，可以运行在多种硬件平台之上。例如路由器、交换机等
<Huawei>sysname switch
#物理设备名称
<Huawei>system-view
[Huawei]user-interface console 0
[Huawei-ui-console]set authentication password simple 123
#明文密码
[Huawei-ui-console]set authentication password cipher 123
#加密，不显示明文密码
[Huawei-ui-console]quit
<Huawei>system-view
<Huawei>undo terminal monitor
#所有的调试/日志/告警信息在本终端都不显示；就可以恢复干净清爽的工作界面了

<Huawei>system-view
[Huawei]user-interface console 0
[Huawei-ui-console]idle-timeout 1440
#退出时间1440min（24h）

[Huawei-ui-console]quit
<Huawei>reset saved-configuration
<Huawei>reboot

<Huawei>system-view
[Huawei]interface GigabitEthernet 0/0/1
[Huawei-GigabitEthernet0/0/1]shutdown
#关闭端口   0/0/1 0槽位/0号网卡/第一个网络接口











