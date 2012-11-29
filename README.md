盘石软件研发团队
================================

这是什么
------------------------
这是我们的一个由twitter-bootstrap编写由markem发布并托管在Github Page上的的小门户页面。

我怎样修改它
------------------------
如果你正在阅读这个文件（废话），说明已经发现我们所有的源代码/文档都在“src"分支里，如果你要对它进行修改，你应该git branch一个自己的分支，然后，修改-发送merge-request（或者手动将自己的代码merge到master分支）。

我怎样把我们组的项目加入到这个主页上（如果项目的代码仓库在GITHUB上）
------------------------

###使用GithubPage(单页文档)

1. 在你的代码仓库的master分支的跟目录下创建一个README.md,确保从github.com上进入你的项目后会马上显示该README.md的内容。
2. 在github.com上操作Admin->Github Pages->Automatic Page Generator
3. 点击Load README.md按钮将README.md的内容加载进来
4. 下一步
5. 选一个主题，然后点PUBLISH
6. [重要]将鼠标放在项目描述上，出现Edit按钮，点击按钮然后在Homepage里输入新生成的Github Pages的访问地址http://pansafe.github.com/项目名称/,然后Save Changes
7. 准备一个500*500左右的透明背景的LOGO（PNG格式），发给 yinzhixiang(at)pansafe.com

###使用markem(多页文档)

1. 参照[markem文档](http://micy.in/markem/)生成并发布GithubPages
2. 进行上一节中的第6,7步

###我的代码仓库是私有的，我这样做不会让别人看到我的代码吧


不会的，GithubPages只公开发布后的文档，别人依然无法访问到你的代码仓库。

我怎样把我们组的项目加入到这个主页上（我不想把代码仓库迁移到GITHUB上）
-------------------------

那就通知任何有权限的人替你建一个空的代码仓库，然后只把文档放进去，接下来的步骤就和上一章一样了。
