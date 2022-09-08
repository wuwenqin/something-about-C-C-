# 与github建立连接的过程

1. 最主要的，要先下载git(这里，可以在CSDN上找一篇安装的git文章实现，或者git官网的学习文档中查阅https://git-scm.com/book/zh/v2)

安装后，在github设置密钥ssh keys(这个密钥，是通过在git Bash命令行界面上实现的) 

2. 在要上传的文件夹(项目)中通过cmd命令进入，输入
   
   ```c++
   git init
   ```
   
   进行git库的初始化。（可以看到有一个.git文件夹，它是Git用来跟踪和管理版本库的。）

3. 输入

```git
git status 
git add .
```

分别查看信息，git status 则是查看当前文件夹中的状态(新增的文件等)。

git add . 则是将文件全部添加到仓库中。

4. 输入 
   
   ```git
   git commit -m "备注"
   ```
   
   将项目携带"备注"提交到仓库中。

5. 在Github上创建一个空的仓库

(通过点击个人头像处的 new repository来创建)

6. 本地仓库与github上的仓库进行关联。

```c++
git remote add origin "远程github仓库的git地址"
```

7. 关联后，将本地仓库的项目推送（push）到github仓库中

```c++
git push -u origin 分支/master    //如果想创建新的分支，直接输入即可，无需在github上创建
```

p.s:  因为远程仓库刚创建，是空的，需要加上 -u 参数。当仓库中有内容，则

```c++
git push origin 分支/master
```

即可。



补充：

若遇到如下问题。

```git
error: RPC failed; curl 28 OpenSSL SSL_read: Connection was reset, errno 10054
fatal: expected flush after ref listingfatal: unable to access 'https://github.com/wuwenqin/something-about-C-C-.git/': OpenSSL SSL_read: Connection was reset, errno 10054


```

需要使用命令:

```git
git config --global http.sslVerify "false"
```

作用：针对所有远程服务器全局执行，使git忽略[ssl](https://so.csdn.net/so/search?q=ssl&spm=1001.2101.3001.7020)证书错误（把忽略证书错误的设置限定在特定的仓库）
