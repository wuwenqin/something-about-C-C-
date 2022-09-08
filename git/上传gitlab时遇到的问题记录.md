# 问题记录

## 问题1：多人协作时，如何避免冲突？

        git拉取代码在多人开发时需要考虑团队成员修改了同一文件的同一地方的冲突。冲突需要人为解决。

        与gitlab建立连接后，自己本地中也有相应的git项目，此时要上传修改的文件的步骤：(顺序)

```c++
git status  //查看修改的文件
git stash //将当前未提交文件放入暂存区域
git pull  //拉取远程仓库代码，对本地仓库的代码进行更新
git stash pop  //更新本地仓库后，将先前暂存的修改文件弹出，然后查看是否有冲突的地方，进行修改
git add .  或者 git add 文件路径  //添加到仓库中，git add 后面可以跟随多个文件路径，或者加个点全部添加
git commit -m "注释"  //携带注释提交到仓库中  
git push  //推送到远程仓库中
```

## 问题2：commit写的备注想修改怎么办？

分两种情况： commit但未提交，commit已提交。

对于 commit未提交的。

首先，使用 

```git
git log 
```

查看提交的历史记录是否已有当前commit 

确定有则使用 

```git
git commit --amend  //变更最近一次的commit
```

进行修改。

进入修改界面时，输入 "i"字符(代表插入的意思)进行修改。修改完毕后，按 "esc"退出符号，再输入 ":wq"(写入并退出文件操作)，即可完成commit备注修改。

对于commit已提交的（**修改历史提交记录**）。

使用 

```git
git reflog
```

查看commit的记录。

![](D:\总结\图片池\reflog命令.png)

再通过命令：

```git
git rebase -i HEAD~数字记录(1-~)
```

进入编辑界面。

需要修改的那个将 pick 改成 edit。





## 问题3：想要合并分支，如何操作

首先，切换到你的主支上，比如我的主支是main，分支是master。

```git
git checkout main  //切换分支
// git pull  //拉取最新代码，避免冲突，前提本地没有新增数据文件，有则需要git stash 再上传
git merge master --allow-unrelated-histories  //合并分支，确保没有新增文件 ,--allow-unrelated-histories这一行是为了解决fatal: refusing to merge unrelated histories

//执行完git merge后，本地主支已经合并分支了，这时通过git push上传到远程仓库即可
git push



```
