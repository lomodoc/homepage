---
title: Windows
weight: 4
---

# 在Windows上安装Lomorage服务程序

（**最近更新：2021/08/30**）
- 修复 中文目录问题
- 修复 不能禁止自动启动问题
- 改为 64位
- 更新了 lomo web
- 完整的菜单翻译
- 修复 不能设置目录的问题！！！
## <span>1.</span> 点击下面的链接安装Lomorage服务程序。

<p align="center">
<a href="https://github.com/lomorage/LomoAgentWin/releases/download/2021_08_31.21_14_36.0.14e7541/lomoagent.msi"><b>点击下载 ==></b></a>
<a href="https://github.com/lomorage/LomoAgentWin/releases/download/2021_08_31.21_14_36.0.14e7541/lomoagent.msi" title="Install Lomorage for Windows" class="badge windows">Windows</a>
</p>

**如果上面链接无法访问，也可以点击[这里下载](https://aisnote.com/lomoagent.msi)**

## <span>2.</span> 双击"lomoagent.msi"开始安装。如果有Windows Defender提示未知应用，请参考如下步骤允许安装程序运行。

<div align="center">
<p class="screenshoot">
  <img width="50%" src="/img/installation/windows-defender-1.png">
  <img width="50%" src="/img/installation/windows-defender-2.png">
</p>
</div>

## <span>3.</span> 勾选"最终用户许可协议"后，一路完成安装步骤。

<div align="center">
<p class="screenshoot">
  <img width="50%" src="/img/installation/windows-install-1.png">
  <img width="50%" src="/img/installation/windows-install-2.png">
  <img width="50%" src="/img/installation/windows-install-3.png">
</p>
</div>

## <span>4.</span> 双击桌面的LomoAgent图标，启动应用程序，如果有防火墙提示，请允许LomoAgent访问私有网络。

<div align="center">
<p class="screenshoot">
  <img width="50%" src="/img/installation/windows-firewall.png">
</p>
</div>

## <span>5.</span> 程序启动后，**您需要设置数据目录才能正常使用**，数据目录用来存储您的手机上传的照片视频。

<div align="center">
<p class="screenshoot">
  <img width="80%" src="/img/installation/windows-lomo-agent-zh.png">
</p>
</div>


## 6. 可以点击托盘图标右键菜单，选择“导入” 可以打开网页客户端进行导入和浏览您已经备份的照片！

## 7. 重置用户密码
托盘右键菜单，选择 “重置用户密码”，按照界面提示操作。

## 8. 高级设置：
托盘右键菜单 “advances”，打开配置文件，可以配置 网页客户端 端口号。
```json
{
    "autoHideWindow": false,
    "autoStartRedundancyBackup": false,
    "autoStarted": false,
    "enableBackupDir": true,
    "isDebug": false,
    "mountDir": "C:\\Users\\Administrator\\Documents\\lomodata",
    "mountDirBk": "H:\\test-bk",
    "port": 8000,
    "runAsService": false,
    "webport": 8003  // 网页客户端端口号
}
```

您可以在另一台同网络内的机器（比如A机器）上访问该服务器B（安装了Lomorage服务器的机器为B），可以在A机器上的浏览器输入：
http://B机器的ip:端口号。
比如： B 服务器的IP地址是 192.168.0.40,端口号8000。则输入：http://192.168.0.40:8000


## 9. 常见问题
### 9.1 安装之后，启动不了？

请检查一下是不是中文的用户名，如果是，把Lomorage服务器装在一个英文目录名下。【该问题已经修复，还没发布！】

### 9.2 怎么查看服务器版本和系统信息

在windows 系统托盘区，找到Lomorage图标，右键菜单，点击 **关于** 菜单

<div align="center">
<p class="screenshoot">
  <img width="100%" src="/img/installation/windows-faq/right_menu.png">
</p>
</div>

点击 **查看Lomorage服务器系统信息** 会打开浏览器显示Lomorage服务器的系统信息。

### 9.3 服务器启动了，用手机创建账号，显示如下错误，怎么办？

<div align="center">
<p class="screenshoot">
  <img width="80%" src="/img/installation/windows-faq/63e33bf7-9316-4166-ac8b-40f4bdbaf2a1.jpg">
</p>
</div>

**解决方法**：请检查 Windows 机器是不是有多块网卡，把不用的虚拟网卡禁止掉，确保手机和Windows 机器连的是同一个网络：一般IPV4 地址是 192 开头。
然后重新创建账号！

### 9.4 Lomorage服务器的 数据（DB） 文件在哪里：
在windows 系统托盘区，找到Lomorage图标，右键菜单，点击 **其他**--->> 打开Lomod目录.
 var目录下的 **assets.db** 就是 Lomorage服务器的db文件，这个文件很重要，**不能删除**。
 
 ```
默认路径： C:\Users\%username%\AppData\Local\lomoware\var\assets.db
```



### 9.5 怎么迁移数据？比如 原先保存的照片在 c：\lomorage ,现在想移到 d:\lomorage
直接在 Lomorage的设置与控制面板里更改主目录,如下图所示, 程序会提醒您目录改变，迁移过程需要点时间：
（把数据从老目录复制到新目录，并更改数据库文件）

<div align="center">
<p class="screenshoot">
  <img width="100%" src="/img/installation/windows-faq/move_data.png">
</p>
</div>


## 10. 还有问题，扫码加微信哦
<div align="center">
<p class="screenshoot">
  <img width="80%" src="/img/installation/lomorage_wechat_qr.jpg">
</p>
</div>

**如果您用苹果手机拍摄使用的HEVC/HEIF格式，请下载HEVC/HEIF扩展插件，参考https://blog.csdn.net/weixin_43168190/article/details/117698977**
