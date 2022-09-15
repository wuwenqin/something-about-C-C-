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



## 11. 关机和重启

```linux
//几分钟后关机
shutdown -h 分钟    

//立刻关机
shutdown -h now
poweroff 

//几分钟后重启
shutdown -r 分钟

//立刻重启
reboot 
shutdown -r now
```



## 12.目录切换

```linux
cd /        切换到根目录
cd /usr        切换到根目录下的usr目录
cd ../        切换到上一级目录 或者  cd ..
cd ~        切换到home目录
cd -        切换到上次访问的目录
```



## 13.目录查看 ls

```linux
ls                查看当前目录下的所有目录和文件
ls -a            查看当前目录下的所有目录和文件（包括隐藏的文件）
ls -l 或 ll       列表查看当前目录下的所有目录和文件（列表查看，显示更多信息）
ls /dir            查看指定目录下的所有目录和文件   如：ls /usr
 
```



