#NTFS   新技术文件系统 New Technology File System

#什么是文件系统
    #基本作用
    #定义向磁盘上存文件的方法和数据结构，以及读文档的规则
    #格式化操作就是建新的文件系统
#Windows常见的文件系统
    #FAT32  文件分配表
    #NTFS   新技术文件系统
    #EXT(linux的文件系统)
#NTFS文件系统优势
    #提高磁盘的读写性能
    #可靠性：加密、访问控制
    #磁盘使用率：压缩、配额
    #AD需要NTFS的支持
    
#文件夹NTFS权限
    #完全控制   可执行所有操作
    #修改     可修改、删除
    #读取和执行      可读取并可执行
    #列出文件夹内容
    #读取
    #写入 可创建文件或文件夹
    #特殊权限   调整安全设置的权限（查看安全权限配置的权限）（变更权限）（取得所有权）
#文件的NTFS权限
    #完全控制
    #修改
    #读取和执行
    #读取
    #写入
    #特殊权限
#NTFS权限
    #权限累加，不冲突就累加，冲突的话拒绝最大
    #拒绝权限最大
        #某个用户创建文件——安全中禁用所有继承；只给自己加完全控制权限
        #管理员默认也不能访问，但是管理员可以取得任意管理权限
            #右击文件——属性——安全——高级——所有者——更改——输入administrator
            #有家文件——属性——安全——为administrator添加完全控制权限
    #权限的继承，权限继承需要进入安全——高级——禁用继承
    
#防火墙
    #win+i——设置——搜索
#共享
    #右击文件夹——属性——共享——高级共享——勾选共享文件夹
    #文件管理器输入 \\10.243.232.63\sdc

#共享文件夹
#发布共享文件夹
    #Windows共享概述
        #微软公司推出的网络文件/打印机服务系统
        #基于SMB/CIFS协议实现
        #可以将一台主机的资源发布给其他主机公用
    #防火墙及共享安全控制
    #配置共享文件夹
#访问共享文件夹
    #通过“网络”工具浏览
    #通过UNC路径访问  win+r \\10.243.232.63\sdc
    #通过映射网络驱动器    (类似linux的挂载)
        #win+R CMD
        #net use h: \\10.90.145.104\share\WAOOO用户体验中心\业务相关文件\Demo备份\Axure源文件备份
        #net use i: \\10.185.81.181\html
        #net use j: \\10.243.232.63\sdc
    #访问隐藏共享
#公用文件夹共享
#win+i 搜索 高级共享设置——所有网络——公用文件夹共享——启用共享以便...（通过公共文件夹）
#win+i 搜索 高级共享设置——来宾或公用——网络发现——启用网络发现   （如果访问不了，打开这个配置）

#隐藏共享
#共享时加$可以隐藏共享文件
#打开共享 \\10.243.232.63\sdc$

#查看共享目录
#计算机——管理——系统工具——共享文件夹——共享

#共享权限是NTFS权限和共享权限的组合
    #本地访问跟共享权限是没有关系的


















    
    
    
