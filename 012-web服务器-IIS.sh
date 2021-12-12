#web服务器概述
#B/S架构
#browser/Server架构
  #服务端支持http协议
  #浏览器/客户端：下载按标记规范显示的网页的浏览器程序
  
#如何获取网页资源
#URL网址
  #uniform Resource locator 统一资源定位器
  #资源类别：//服务器地址/目标路径/文件名
  
IIS建站
Internet Informatica Service
  微软提供的web服务产品
  可以通过图形管理web/FTP
  
在win Sever版本上创建
管理服务区——管理——添加角色

桌面版本
https://blog.csdn.net/yuanguozhengjust/article/details/25747729
  控制面板\所有控制面板项\程序和功能——启用或关闭Windows功能——Internet Informatica Service
  功能——目录浏览
  
Hosts配置  
  C:\Windows\System32\drivers\etc
  
域名
1.根域
根（root）域就是“.”它是由Inetnet名字注册授权机构管理，该机构把域名空间各部分的管理责任分配连接到Internet的各个组织
2.顶级域
DNS根域的下一级就是顶级域，是由Inetnet名字授权机构管理。共有3种类型的顶级域
组织域，采用3各字符的代号，表示DNS域中包含的组织的主要功能与活动
  gov 政府部门
  com 商业部门
  edu 教育部门
  org 民间团体组织
  net 网络服务机构
  mil 军事部门
国家或地区域，采用两个字符的国家或地区代号
反向域，这是一个特殊域，名称为in-addr.arpa，用于将IP地址映射到名称

DNS
  控制面板\所有控制面板项\程序和功能——启用或关闭Windows功能
  
正向：（A）从IP到域名
反向：（PTR）（指针）从域名到IP
别名：（CNAME）








  














