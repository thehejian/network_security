1、nmap简单扫描

nmap默认发送一个ARP的PING数据包，来探测目标主机1-10000范围内所开放的所有端口

命令语法： 
nmap <target ip address>

其中：target ip address是扫描的目标主机的ip地址

例子:nmap 10.0.0.55

效果如下： 
[root@iZwz99m2cb6tkybu0ywzedZ ~]# nmap 47.112.144.203

Starting Nmap 6.40 ( http://nmap.org ) at 2022-03-26 19:20 CST
Nmap scan report for 47.112.144.203
Host is up (0.0042s latency).
Not shown: 998 filtered ports
PORT     STATE  SERVICE
22/tcp   open   ssh
3389/tcp closed ms-wbt-server

Nmap done: 1 IP address (1 host up) scanned in 10.97 seconds

2、nmap简单扫描，并对结果返回详细的描述输出

命令语法：namp -vv <target ip address>

介绍：-vv参数设置对结果的详细输出

例子：nmap -vv 10.0.0.55

效果如下： 
这里写图片描述
[root@iZwz99m2cb6tkybu0ywzedZ ~]# nmap -vv 47.112.144.203

Starting Nmap 6.40 ( http://nmap.org ) at 2022-03-26 19:20 CST
Initiating Ping Scan at 19:20
Scanning 47.112.144.203 [4 ports]
Completed Ping Scan at 19:20, 0.20s elapsed (1 total hosts)
Initiating Parallel DNS resolution of 1 host. at 19:20
Completed Parallel DNS resolution of 1 host. at 19:20, 0.00s elapsed
Initiating SYN Stealth Scan at 19:20
Scanning 47.112.144.203 [1000 ports]
Discovered open port 22/tcp on 47.112.144.203
Completed SYN Stealth Scan at 19:20, 4.71s elapsed (1000 total ports)
Nmap scan report for 47.112.144.203
Host is up (0.0041s latency).
Scanned at 2022-03-26 19:20:52 CST for 5s
Not shown: 998 filtered ports
PORT     STATE  SERVICE
22/tcp   open   ssh
3389/tcp closed ms-wbt-server

Read data files from: /usr/bin/../share/nmap
Nmap done: 1 IP address (1 host up) scanned in 4.94 seconds
           Raw packets sent: 2005 (88.196KB) | Rcvd: 14 (572B)

3、nmap自定义扫描

命令语法：nmap -p(range) <target IP>

介绍：（range）为要扫描的端口范围，端口大小不能超过65535

例子：扫描目标主机的1-50号端口

nmap -p50-80 10.0.0.55

效果： 
这里写图片描述
Starting Nmap 6.40 ( http://nmap.org ) at 2022-03-26 19:22 CST
Nmap scan report for 47.112.144.203
Host is up (0.0042s latency).
PORT     STATE    SERVICE
22/tcp   open     ssh
443/tcp  filtered https
3389/tcp closed   ms-wbt-server

Nmap done: 1 IP address (1 host up) scanned in 1.46 seconds

4、nmap 指定端口扫描

命令语法：nmap -p(port1,port2,…) <target IP>

介绍：port1,port2…为想要扫描的端口号

例子：扫描目标主机的80，443，801端口

nmap -p80,443,801 10.0.0.55

效果： 
这里写图片描述

5、nmap ping 扫描

nmap可以利用类似windows/linux系统下的ping 方式进行扫描

命令语法： nmap -sP <target ip>

例子：nmap sP 10.1.112.89

效果： 
这里写图片描述
[root@iZwz99m2cb6tkybu0ywzedZ ~]# nmap -sP 47.112.144.203

Starting Nmap 6.40 ( http://nmap.org ) at 2022-03-26 19:23 CST
Nmap scan report for 47.112.144.203
Host is up (0.0042s latency).
Nmap done: 1 IP address (1 host up) scanned in 0.24 seconds

6、nmap 路由跟踪

路由器追踪功能，能够帮助网络管理员了解网络通行情况，同时也是网络管理人员很好的辅助工具，通过路由器追踪可以轻松的查处从我们电脑所在地到目的地之间所经常的网络节点，并可以看到通过各个结点所花费的时间

命令语法： 
nmap –traceroute <target IP>

例子:namp –traceroute 8.8.8.8(geogle dns服务器ip)

效果 
这里写图片描述
[root@iZwz99m2cb6tkybu0ywzedZ ~]# nmap -traceroute 8.8.8.8

Starting Nmap 6.40 ( http://nmap.org ) at 2022-03-26 19:26 CST
Nmap scan report for dns.google (8.8.8.8)
Host is up (0.052s latency).
Not shown: 999 filtered ports
PORT   STATE SERVICE
53/tcp open  domain

TRACEROUTE (using port 53/tcp)
HOP RTT      ADDRESS
1   ... 2
3   2.42 ms  11.95.18.65
4   3.26 ms  116.251.115.154
5   11.83 ms 117.49.37.234
6   3.58 ms  183.2.184.129
7   4.05 ms  58.61.162.165
8   8.05 ms  119.147.222.61
9   ...
10  17.27 ms 202.97.12.41
11  53.86 ms 202.97.61.154
12  52.88 ms 72.14.211.144
13  62.35 ms 108.170.240.225
14  54.24 ms 72.14.232.101
15  52.81 ms dns.google (8.8.8.8)

Nmap done: 1 IP address (1 host up) scanned in 11.47 seconds

7、nmap设置扫描一个网段下的ip

命令语法： 
nmap -sP <network address> </CIDR>

介绍：CIDR为设置的子网掩码（/24,/16,/8等）

例子：nmap -sP 10.1.1.0 /24

效果： 
这里写图片描述
[root@iZwz99m2cb6tkybu0ywzedZ ~]# nmap -sP 10.1.1.0/24

Starting Nmap 6.40 ( http://nmap.org ) at 2022-03-26 19:29 CST
Nmap done: 256 IP addresses (0 hosts up) scanned in 206.14 seconds
[root@iZwz99m2cb6tkybu0ywzedZ ~]# nmap -O 47
Session was closed
Last login: Sat Mar 26 18:42:23 2022 from 123.138.110.165

Welcome to Alibaba Cloud Elastic Compute Service !

8、nmap 操作系统类型的探测

命令语法： 
nmap -0 <target IP>

例子：nmap -O(大写的o) 10.1.112.89

效果： 
这里写图片描述
[root@iZwz99m2cb6tkybu0ywzedZ ~]# nmap -O 47.112.144.203

Starting Nmap 6.40 ( http://nmap.org ) at 2022-03-26 20:11 CST
Nmap scan report for 47.112.144.203
Host is up (0.0042s latency).
Not shown: 998 filtered ports
PORT     STATE  SERVICE
22/tcp   open   ssh
3389/tcp closed ms-wbt-server
Aggressive OS guesses: Linux 2.6.32 - 3.6 (95%), Linux 2.6.32 - 3.9 (95%), Netgear DG834G WAP or Western Digital WD TV media player (94%), Linux 2.6.32 (93%), Crestron XPanel control system (93%), Linux 3.1 (92%), Linux 3.2 (92%), Linux 3.3 (92%), AXIS 210A or 211 Network Camera (Linux 2.6) (92%), Linux 2.6.32 - 2.6.35 (92%)
No exact OS matches for host (test conditions non-ideal).

OS detection performed. Please report any incorrect results at http://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 15.84 seconds

9、nmap万能开关

包含了1-10000端口ping扫描，操作系统扫描，脚本扫描，路由跟踪，服务探测

命令语法： 
nmap -A <target ip>

例子：nmap -A 10.1.112.89

效果： 
这里写图片描述
[root@iZwz99m2cb6tkybu0ywzedZ ~]# nmap -A 47.112.144.203

Starting Nmap 6.40 ( http://nmap.org ) at 2022-03-26 20:18 CST
Nmap scan report for 47.112.144.203
Host is up (0.0041s latency).
Not shown: 998 filtered ports
PORT     STATE  SERVICE       VERSION
22/tcp   open   ssh           OpenSSH 7.4 (protocol 2.0)
| ssh-hostkey: 2048 fa:f4:70:04:31:f1:f2:10:65:0e:fd:2a:3a:6d:41:e6 (RSA)
|_256 04:9c:d5:4b:14:4a:04:01:14:94:de:72:2d:37:87:e9 (ECDSA)
3389/tcp closed ms-wbt-server
Aggressive OS guesses: Linux 2.6.32 - 3.6 (95%), Linux 2.6.32 - 3.9 (95%), Netgear DG834G WAP or Western Digital WD TV media player (94%), Linux 2.6.32 (93%), Crestron XPanel control system (93%), Linux 3.1 (92%), Linux 3.2 (92%), AXIS 210A or 211 Network Camera (Linux 2.6) (92%), Linux 2.6.32 - 2.6.35 (92%), Linux 2.6.32 - 3.2 (92%)
No exact OS matches for host (test conditions non-ideal).
Network Distance: 1 hop

TRACEROUTE (using port 3389/tcp)
HOP RTT     ADDRESS
1   4.51 ms 47.112.144.203

OS and Service detection performed. Please report any incorrect results at http://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 25.79 seconds

10、nmap命令混合式扫描

可以做到类似参数-A所完成的功能，但又能细化我们的需求要求

命令语法： 
nmap -vv -p1-100 -O <target ip>

例子： 
nmap -vv -p1-100 -O 10.1.112.89
