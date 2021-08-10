---
title: Windows
weight: 4
---

# 在Windows上安装Lomorage服务程序

（**最近更新：2021/08/09**）

## <span>1.</span> 点击下面的链接安装Lomorage服务程序。

<p align="center">
<a href="https://github.com/lomorage/LomoAgentWin/releases/download/2021_08_09.20_47_04.0.14e7541/lomoagent.msi"><b>点击下载 ==></b></a>
<a href="https://github.com/lomorage/LomoAgentWin/releases/download/2021_08_09.20_47_04.0.14e7541/lomoagent.msi" title="Install Lomorage for Windows" class="badge windows">Windows</a>
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

## 9. 有问题，扫码加微信哦！
<div align="center">
<p class="screenshoot">
  <img width="80%" src="/img/installation/lomorage_wechat_qr.jpg">
</p>
</div>

**如果您用苹果手机拍摄使用的HEVC/HEIF格式，请下载HEVC/HEIF扩展插件，参考https://blog.csdn.net/weixin_43168190/article/details/117698977**