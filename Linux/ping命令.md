# ping命令



简介：ping ，就是把数据包发送到目标端，然后等待ping返回的数据来判断是否可以抵达目标端、与目标端之间的距离和产生的时间等信息。



## 命令



### ping的五步法

①

```go
ping 127.0.0.1
```

127.0.0.1 是回环地址，是用于检测 自己主机上的基础网络配置是否正常(本机的TCP/IP是否正确安装)。



② 

本机IP地址：一般被设置为127.0.0.1



③ 

```go
ping 内网IP
```

这个内网IP是联网时显示的IP地址。windows端可以通过 cmd命令输入  **ipconfig -all** 查看（Linux则是**ifconfig -all**）。

![ping内网地址](C:\Users\AWU\Desktop\Let's GO\Go学习中的图片池\ping内网地址.png)

在ping内网IP时，如果ping不通，就可能是网线或wifi连接有问题。



④

```go
ping 默认网关
```

这个是检测路由器的。



⑤ 

```go
ping 目标地址
```

到这一步ping不通，就不是主机或网络问题了，可能的原因是：对方下线，防火墙禁止ping的请求，数据包中途被丢弃了。





### 限制ping的次数

```go
ping -c 6 IP地址
```





## ICMP协议 （有的称是 IP协议的一部分）

OSI模型中，属于**网络层**。

ICMP**报头**会使用**8个字节**。

**ping原理**：执行Ping，其实就是在执行ICMP协议下的**echo请求和echo响应**。











## ping请求返回的TTL













