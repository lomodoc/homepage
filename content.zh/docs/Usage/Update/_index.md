---
title: 手工升级Lomoarge后台系统
weight: 11
---

# 手工升级Lomoarge后台系统

如果您碰到您的Lomorage后台系统不能自动升级，请尝试下面手工升级的方法

## 1. 确认您使用了正确的Lomoware源

使用ssh 工具登录您的树莓派或者liux系统。
您可以google或者百度 **如何使用ssh**

比如：您的树莓派系统的IP地址是： 192.168.1.162，可以在Windows的终端输入：

```bash
ssh pi@192.168.1.162
pi@192.168.1.162's password:
```

**默认密码是 raspberry**

连接成功后，输入：

```bash
cat /etc/apt/sources.list.d/lomoware.list
```

显示结果如下：

```bash
deb [trusted=yes] https://lomoware.lomorage.com/debian/bookworm bookworm main
```

**如果中间的网址不是 lomoware.lomorage.com 那请按如下方法更改**, 否则跳到**步骤2直接开始升级**

在ssh 终端输入：

```bash
sudo nano  /etc/apt/sources.list.d/lomoware.list
```

按下面的图中更改，

<div align="center">
<p class="screenshoot">
  <img width="100%" src="/img/installation/update/change_source.png">
</p>
</div>

> 然后按 **ctrl + X**

> 接着按 **Y**  保存您的更改

## 2. 在 ssh 终端输入以下命令开始升级

```bash
sudo apt update && sudo apt install lomo-backend
```

## 3. 在手机端 设置 页面 查看您的服务器信息，确保升级成功

如果有问题，请加微信或者发email到 lomorage@gmail.com.

扫码加微信哦
<div align="center">
<p class="screenshoot">
  <img width="80%" src="/img/installation/lomorage_wechat_qr.jpg">
</p>
</div>