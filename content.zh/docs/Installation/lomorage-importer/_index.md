---
weight: 13
bookFlatSection: true
title: "导入工具"
---

# 最近更新: 08/09/2021
- 可配置导入线程数

  
# 什么是Lomorage 导入工具


Lomorage 导入工具是把照片和视频批量导入到Lomorage 服务器的桌面程序。

它可以将Google Photo 下载下来的 ZIP 文件直接导入Lomorage 服务器，方便快捷。

也支持把本地现有的文件导入到Lomorage，选择某个目录或者批量选择文件

目前该工具支持 **Windows and MacOS**.

# 下载

可以去Github [Lomo-importer@github](https://github.com/lomorage/lomo-importer-release) 下载最新的可执行程序。

## 或者点击下面的链接直接下载
- MacOS [LomoImporter.app2021-08-09_17-41-59_mac.zip](https://github.com/lomorage/lomo-importer-release/releases/download/2021-08-09_17-41-59/LomoImporter.app2021-08-09_17-41-59_mac.zip)

- Windows [lomoimpt2021-08-09_17-50-57_win.zip](https://github.com/lomorage/lomo-importer-release/releases/download/2021-08-09_17-50-57/lomoimpt2021-08-09_17-50-57_win.zip)


# 快速使用视频

<iframe width="560" height="315" src="https://www.youtube.com/embed/6dsxfmWZkoI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


# 例子: 如何批量导入某个文件夹（目录）里的所有图片和视频文件
1. 按如下界面登录Lomorage 服务器

<div align="center">
  
  <p class="screenshoot" />
  <img width="80%" src="/img/installation/lomorage-importer/login.jpg">
  
</div>

2. 点击 按钮 **“1.Select Folder..."**, 选择你需要导入的目录，程序会自动遍历该目录下的文件夹，并显示在界面上
3. 等分析完毕， 点击按钮 **“2.Start Import"**，如下图所示：

<div align="center">
  
  <p class="screenshoot" />
  <img width="80%" src="/img/installation/lomorage-importer/start.jpg">
  
</div>

# 例子: 如何批量导入Google Photo的 ZIP 文件

1. 第一步是去 takeout.google.com 把所有的照片下载下来，不需要解压

2. 按如下界面登录Lomorage 服务器

<div align="center">
  
  <p class="screenshoot" />
  <img width="80%" src="/img/installation/lomorage-importer/login.jpg">
  
</div>

3. 点击 按钮 **“1.Add Files..."**, 选择你需要导入的ZIP 文件，等分析完成后， 点击按钮 **“2.Start Import"**，如下图所示：

<div align="center">
  
  <p class="screenshoot" />
  <img width="80%" src="/img/installation/lomorage-importer/start_zip.jpg">
  
</div>

有任何问题，请与我们联系：support at lomorage dot com


# 以往更新: 07/26/2021
- 提高了导入速度
- 支持Lomo 动态图片格式
- 修复内存泄漏
- 修复退出时弹框问题

## 以往更新：07/14/2021 
- 支持导入目录：直接选择某个目录，程序会遍历该目录下所有的文件