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





## 14.目录修改mv

```linux
mv 当前目录  新目录
mv 目录名称 目录的新位置
```

mv的语法不仅可以对目录进行重命名而且也可以对各种文件，压缩包等进行   重命名的操作



## 15.拷贝

```linux
cp -r 目录名称 目录拷贝的目标位置   -r代表递归
```

cp命令不仅可以拷贝目录还可以拷贝文件，压缩包等，拷贝文件和压缩包时不用写-r递归





## 16.搜索目录或文件

```linux
find 目录 参数 文件名称
```





## 17.文件操作  增删改查

```linux
touch 文件名
rm -rf 文件名
vi/vim 文件名
catch 文件名
```



## 18.权限修改

rwx：r代表可读，w代表可写，x代表该文件是一个可执行文件，如果rwx任意位置变为-则代表不可读或不可写或不可执行文件。

Linux下文件的权限类型一般包括读，写，执行。对应字母为 r、w、x。   **r=4，w=2，x=1** 

每个文件都可以针对三个粒度，设置不同的rwx(读写执行)权限。

分别表示 拥有者 、群组 、其它组( u、 g 、o)的权限详情

```linux
chmod 权限  文件名
//数字权限
chmod 777 文件名   //权限全放开
```



## 19.压缩/打包文件

Windows的压缩文件的扩展名  .**zip/.rar**
linux中的打包文件：**aa.tar**    
linux中的压缩文件：**bb.gz**   
linux中打包并压缩的文件：**.tar.gz**

```linux
tar -zcvf 打包压缩后的文件名 要打包的文件
// c：打包文件 v：显示运行过程 f：指定文件名


```



## 20.解压

```linux
tar [-zxvf] 压缩文件    
x：代表解压
```





## 21.查找命令

grep命令是一种强大的文本搜索工具

find命令在目录结构中搜索文件，并对搜索结果执行指定的操作。 

find 默认搜索当前目录及其子目录，并且不过滤任何结果（也就是返回所有文件），将它们全都显示在屏幕上。



```linux
ps -ef | grep sshd  查找指定ssh服务进程 
ps -ef | grep sshd | grep -v grep 查找指定服务进程，排除gerp身 
ps -ef | grep sshd -c 查找指定进程个数 
```



```linux

find . -name "*.log" -ls  在当前目录查找以.log结尾的文件，并显示详细信息。 
find /root/ -perm 600   查找/root/目录下权限为600的文件 
find . -type f -name "*.log"  查找当目录，以.log结尾的普通文件 
find . -type d | sort   查找当前所有目录并排序 
find . -size +100M  查找当前目录大于100M的文件
 
```



## 22.su sudo 切换用户 (管理员和非管理)

su用于用户之间的切换。但是切换前的用户依然保持登录状态。

**root 向普通或虚拟用户切换不需要密码**，反之普通用户切换到其它任何用户都需要密码验证。

**sudo是为所有想使用root权限的普通用户设计的。**可以让普通用户具有临时使用root权限的权利。只需输入自己账户的密码即可。





## 23.域名映射

文件在  /etc/hosts

通过主机名进行访问时做ip地址解析之用。





## 24.查看/结束进程 

命令为： 

```linux
ps -ef 
经常搭配gref 查找对应的进程

kill pid 或者 kill -9 pid(强制杀死进程)
```



