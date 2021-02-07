---
title: 简介
type: docs
---

# 简介

## 1. 为什么不用云服务?

我们认为数字资产的管理需要保存在本地，在本地做好备份，而云端的存储只是本地存储的一个补充，现有的云存储成本过高，国内的云存储厂商相继[停止运营](https://www.ifanr.com/app/654706):

 - 115 网盘：2016 年 3 月 4 日下线「我聊」中的「文件发送」功能，后续一直在调整。
 - 新浪微盘：2016 年 6 月 30 日开始关闭免费个人用户的存储服务。
 - 华为网盘：2016 年 6 月 30 日开始关闭。
 - 迅雷 / 金山快盘：停止快盘个人用户的存储服务，数据保留到 2016 年 6 月 30 日。
 - 360 云盘：2016 年 11 月起停止个人云盘服务，2017 年 2 月 1 日起关闭所有云盘账号并清空数据。
 - UC 云盘：2016 年 4 月 15 日开始终止网盘的存储服务，停止上传服务 / 离线资源存至网盘功能 / 视频转码服务。

 国内外的照片存储服务也相继关停:

 - [网易相册突然关停清空数据 网友照片丢失愤怒投诉：还我回忆](https://new.qq.com/omn/20190601/20190601A0N2RQ.html)
 - [Dropbox关闭备份照片应用 尝试吸引新用户失败](http://www.fromgeek.com/news/33101.html)
 - [佳能关闭Irista平台](https://camerajabber.com/canon-irista-closing-date-january-2020/)
 - [佳能公司将正式停止irista服务](https://chinese.aljazeera.net/technology/2019/11/20/free-cloud-storage-services-involve-risk-data-loss)
 
 云存储的运营成本之高，Flickr母公司SmugMug在[公开信](https://www.ifanr.com/1293604)中提到Flicker一直都在亏损，希望用户能够接受价格上涨。

 云存储的优势是使用方便，无需购买硬件，有专人来负责维护，7x24小时服务都可以用，也无需担心电费。但科技在进步，SBC单板计算机变得越来越便宜，性能越来越强大，能耗也越来越低，存储空间也越来越便宜，容量越来越大，软件也越来越智能，人们也开始更多的关心隐私了，是时候可以在自己家里运行“私有云服务”了。

## 2. NAS怎么样?

[NAS](https://baike.baidu.com/item/NAS/3465615)是一种通用的存储，您可以通过网络存储任何资料，包括照片和视频。尽管NAS试图将其操作界面做的更加简单，但其面向专业的特性导致很难将其简化。看看操作易用性最好的群晖NAS的[说明书](https://global.download.synology.com/download/Document/Software/UserGuide/Firmware/DSM/3.1/chs/Syno_UsersGuide_NAServer_chs.pdf)，您就知道，NAS对于照片视频的存储管理备份是杀鸡用牛刀，[简单的NAS不简单](https://sspai.com/post/55785)。

## 3. 其他选择呢?

也有将NAS功能简化，侧重做照片视频垂直领域的，这块国外市场的产品选择多点，国内的猫盘也算吧。

  - [猫盘](http://www.maopan.io/)
  - [ibi](https://www.amazon.com/ibi-Organize-Privately-Smartphones-Accounts/dp/B07Y9CH817/ref=cm_cr_arp_d_product_top?ie=UTF8)
  - [Monument](https://www.amazon.com/Monument-Photo-Management-Device-Automatically/dp/B01M8I40A6/ref=sr_1_3?dchild=1&keywords=ibi&qid=1588828193&sr=8-3)
  - [Kwilt3](https://www.amazon.com/Kwilt3-Personal-External-Storage-Wireless/dp/B07KQHVMJX/ref=psdc_13436301_t3_B01M8I40A6?th=1)

## 4. 为什么要做Lomorage?

我们对现有的解决方案不满意。

1. 云端存储应该作为本地备份的补充，本地需要至少一个主备和从备。
   - 我们当前支持本地冗余备份。
   - 我们机会支持远程备份（比如使用你父母家里的Lomorage存储，来远程备份）和专业的云端存储备份，比如[backblaze](https://www.backblaze.com/)。

2. 安装简单，易于使用，自动升级，零成本维护。
   - 只需要几分钟就能在树莓派上安装定制的系统镜像。
   - 支持Windows和MacOS系统。
   - 系统自动升级。

3. 软件很重要，备份管理这些珍贵的照片视频，需要非常稳定可靠的系统。
   - 我们开发者自己就是用户。
   - 我们产品的发布是按质量，而不是按时间。

4. 系统必须开放，不要对用户做任何形式的绑定，即便后续停止开发，不要给用户太多的迁移成本，用户的硬件也不至于变成电子垃圾。
   - 媒体文件按原始格式，原始尺寸存储在您的磁盘上，不丢失任何信息。
   - 无需格式化硬盘，任何闲置硬盘即插即用，支持所有常见的文件系统。
   - 媒体文件按照"YYYY/MM/DD"的日期文件格式存储在您的磁盘上，您可以很方便的将其导入到其他的系统中。
   - 如果使用树莓派，即便您不用Lomorage，它还是一个单板计算机，您可以用它做其他的[用途](https://projects.raspberrypi.org/zh-CN/projects)。

5. 除了照片的备份和管理之外，和家人一起分享美好回忆。
   - 有多少次你打开手机翻看老照片？
   - 家里堆了很多相框，找不到地方摆放？
   - 闲置在家的数码相框不想用，上传太麻烦，空间有限制？
   - 想拥有一个大的画屏放客厅，显示日期时间，艺术作品和照片？想在卧室或者书房有个小数码相框摆在桌上？无需上传，突破空间限制，WiFi连接Lomorage存储。
   - 重新利用任何空闲的屏幕，连接树莓派，搭建数码相框，通过手机来定制要显示的内容。
   - 远程将照片或视频推送到数码相框，和爷爷奶奶一起分享小孩的成长历程。

6. 独立系统并能互联互通。
   - 您可以在自己家里安装一套Lomorage系统，同时也能在父母家安装一套，两个相互独立，但也能够互相通信，互相共享存储，加密备份。