# Git命令

## 1. git init

初始化本地仓库

## 2. git pull

拉取目标远程仓库

## 3. git stash

将修改文件放入暂存区

**git stash list**，查看暂存记录列表

**git stash save** 标记存储记录

**git stash pop** 弹出暂存的文件到工作区

**git stash apply stash@{index}**  重新应用某个暂存记录。使用apply命令，只是尝试应用储藏的记录，在stash中的记录仍然存在(stash类似一个栈的数据结构)

**git stash drop stash@{index}** 移除某个存储记录

## 4.git checkout 分支名称

切换到分支

## 5. git reflog

查看历史提交记录(包括当前提交了但还未push的记录)

## 6.git reset --mixed HEAD^

撤销先前提交和add的操作，返回到上一个版本记录(最好和git reflog搭配使用，通过reflog可以看到提交的记录)

--mixed  不删除工作空间改动代码，撤销commit，并且撤销git add

--soft 不删除工作空间改动代码，撤销commit，不撤销git add .

--hard 删除工作空间改动代码，撤销commit，撤销git add . 注意完成这个操作后，就恢复到了上一次的commit状态。

p.s:如果是单纯想修改注释，只需

```c++
git commit --amend
```

## 7. git clone  远程仓库地址

克隆远程仓库。后面更新可通过git pull实现

## 8.git remote

```git
git remote add origin 远程仓库地址
git push -u origin master
# git remote show 远程仓库地址   //显示某个远程仓库信息
# git remote rm name //删除远程仓库
```
