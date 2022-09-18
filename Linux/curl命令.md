# curl



## 常见命令



### 请求方式

```go
curl -XPOST URL -d 数据
```

其中, -XPOST 中，POST为请求方式，当然也可以是PUT、DELETE等。



### 添加头部的请求

```go
curl URL -H 首部
```

举例，如发送的数据类型为json，那么需要我们在头部设置 内容类型为 “application/json”。



## 获取请求的首部信息

```go
curl  -I URL
```





## 下载文件

```go
//直接下载到当前文件夹内
curl -O URL

//自定义下载的文件名
curl -o 文件名 url

//限速下载,一般见于脚本并发多次请求，要有一个负载均衡的考虑。或是文件太大，服务器性能不足，不想占用过多带宽
curl --limit-rate 速率(100k等) -o 自定义文件名 URL


```





## 跟随重定向

```go
curl URL -L
```





## 调试时查看问题

```go
curl -v URL
```

注：使用 -v 参数时，会将请求和响应的头部信息显示出来。





## 通过代理访问

```go
curl --proxy 协议://用户名:密码@代理地址:端口 URL
```





## 上传或下载

```go
//下载 
curl -u 用户名:密码 -O ftp://server/egg.avi

//上传
curl -u 用户名:密码 -T 文件 ftp://server
```



























