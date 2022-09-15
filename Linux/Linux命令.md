# Linux命令

## 1.解压

```Linux
tar -zxvf 压缩包名称
```

## 2.压缩

```Linux
 #语法：tar -czvf - file | openssl des3 -salt -k password -out /path/to/file.tar.gz
```

## 3.查看压缩包中的文件

```linux
tar -ztvf 压缩包名称
```

## 4. 赋予 文件 写的权限

```linux
sudo chmod a+w 文件名
```

## 5.NetworkManager 相关服务

```linux
systemctl restart/stop/start NetworkManager   //  重启/关闭/开启 NetworkManger服务
```

## 6.重启/关闭/开启网络

```linux
service network stop/start/restart 
```

## 7.查看当前网络的状态

```linux
nmcli d
```

## 8.编辑 /查看  文件

```linux
vim/cat  文件路径/文件名
```

## 9.展示当前路径下的文件信息

```linux
ls
```

## 10.启动/关闭 网卡

```linux
ifup/ifdown  网卡路径/网卡名
```
