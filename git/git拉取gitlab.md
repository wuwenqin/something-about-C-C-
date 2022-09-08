# git拉取gitlab项目

## 1.下载git，安装

[Git - Downloads (git-scm.com)](https://git-scm.com/download)

找对应系统的版本下载，一直点next就行。

## 2.拥有一个gitlab用户

![](D:\总结\图片池\gitlab账户.png)

## 3.在系统内初始化git信息

在git界面中进行初始化。(用户名和邮箱可在gitlab上登陆用户后从个人信息中获取)

```c++
git config --global user.name "用户名"
git config --global user.email "邮箱"
ssh-keygen -t rsa -C "邮箱"
```

![](D:\总结\图片池\git初始化.png)

可通过命令

```c++
git config --list
```

查看配置的信息。

![git查看配置](D:\总结\图片池\git查看配置.png)

## 4.配置gitlab中的SSH

通过自己本地创建的id_rsa.pub密钥可以获取SSH（如果没有修改放置位置，一般创建在用户桌面的.ssh文件夹中）。然后将该信息放到gitlab的SSH上。

![gitlab配置信息](D:\总结\图片池\gitlab配置信息.png)

## 5.初始化git库，拉取库地址

在准备作为git库的位置，使用git init初始化。(在git界面使用cd 进入git库的位置)

获取主库的地址。使用git clone 命令拉取。

## 6.切换分支

切换分支的命令使用 

```c++
git checkout "分支名称"
```

如何查看分支呢？使用如下命令：

```c++
//先进入到主库中
//再通过-a 查看所有分支
git branch -a //查看所有分支
```

## 其他命令

### ① 与远程仓库建立连接

```
git remote add origin git@github.com:XXXX/nothing2.git
```

### ② 把远程分支拉到本地

```c++
git fetch origin dev   //dev 为远程仓库的分支名
```

### ③ 在本地创建分支dev并切换到该分支

```c++
git checkout -b dev(本地分支名称) origin/dev(远程分支名称)
```

### ④ 把某个分支的内容都拉取到本地中

```c++
git pull origin dev(远程分支名称)
```

### ⑤ 添加文件到暂存区

```c++
git add
```

### ⑥ 提交暂存区到本地仓库

```c++
git commit
```

### ⑦ 回退版本

```c++
git reset
```

### ⑧ 比较文件的不同，即暂存区和工作区的差异

```c++
git diff
```

### ⑨ 查看历史提交记录

```c++
git log
```

### ⑩ 以列表形式查看指定文件的历史修改记录

```c++
git blame <file>
```

### 11.上传远程代码并合并

```c++
git push
```

### 12.删除分支

```c++
git branch -d (branchname)
```

### 13.Git标签

```c++
git tag -a "信息"
```

## Git服务器搭建

[Git 服务器搭建 | 菜鸟教程 (runoob.com)](https://www.runoob.com/git/git-server.html)