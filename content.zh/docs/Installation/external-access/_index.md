---
weight: 13
bookFlatSection: true
title: "外网访问"
---

# 外网访问设置

外网访问需要一点技术背景来进行手工设置，我们后续的版本会让这个设置更加简单。

外网访问依赖于隧道连接服务来实现内网穿透，现有一些服务提供商提供免费的服务，大多数隧道服务都需要下载客户端，运行在您的设备上，同公网的隧道服务器建立连接，并分配子域名，当通过子域名进行访问时，隧道服务就会将请求转发到您的应用程序。

您可以使用[ngrok](https://ngrok.com)，ngrok是免费的隧道服务，需要注册，使用自定义子域名需要付费，但更加稳定，并没有额外的依赖。

{{< hint info >}}
如果您使用Lomorage的树莓派镜像, 登陆的用户名是"pi"，密码是"raspberry";
如果您使用Lomorage的Armbian镜像, 登陆的用户名是"lomoware"，密码是"lomorage";
{{< /hint >}}

## ngrok

### 1. 注册

[注册](https://dashboard.ngrok.com/signup)ngrok，完成后，会显示"设置和安装"页面.

### 2. 下载

ngrok只有一个二进制文件，您可以下载特定平台的版本。

如果您使用树莓派，您需要在"设置和安装"页面中拷贝Linux(ARM)版本的链接，当前是"https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip", 您可以通过"wget"来下载。

```bash
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip
```

### 3. 安装

解压缩得到二进制可执行文件。在Windows或macOS下，您可以双击解压，如果您使用树莓派，可以使用unzip命令

```bash
unzip ngrok-stable-linux-arm.zip
```

### 4. 连接您的账号

在"设置和安装"页面的第三步会显示"authtoken"，您需要在**命令行窗口**中运行如下命令将"authtoken"添加到配置文件。

```bash
./ngrok authtoken [your-authtoken-show-in-step-3]
```

### 5. 运行ngrok

Lomorage服务默认运行在8000端口，ngrok的免费账号不能自定义子域名，ngrok运行成功后，会自动绑定一个随机子域名，这个子域名在下次ngrok重新启动时会变化。

```bash
./ngrok http 8000
```

<script id="asciicast-265359" src="https://asciinema.org/a/265359.js" async></script>

### 6. 在Lomorage手机应用中配置隧道服务

打开Lomorage手机应用，在配置选项页里找到"外网服务"，设置服务器地址为ngrok输出的url，比如类似"2e30eea5.ngrok.io"，端口号是"443"。