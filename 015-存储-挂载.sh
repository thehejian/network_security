挂载/卸载
    什么是挂载
    mount挂载设备
        mkdir -p /mnt/cdrom
        mount /dev/cdrom /mnt/cdrom
        df -hT /mnt/cdrom
        #[-T type]
    unmount卸载已挂载设备
        umount /mnt/cdrom
        #卸载源和目的都行
        umount /dev/cdrom
访问光盘/U盘
    挂载设备
    访问设备内文档
    卸载设备
配置开机挂载
    vim /etc/fstab
    #UUID=4b499d76-769a-40a0-93dc-4a31a59add28 /                       ext4    defaults        1 1
    #/dev/cdrom                                /mnt/cdrom              ext4    defaults        1 1
    #类型是通过df -hT 查询
    
    mount -a
    #-a, --all               挂载 fstab 中的所有文件系统
    
    df -hT /mnt/cdrom
    #查看挂载情况和类型
