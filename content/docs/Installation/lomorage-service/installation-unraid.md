---
title: Unraid
weight: 6
---

# Unraid

## 1. Search lomorage from app store

<p align="center">
  <img width="50%" src="/img/installation/unraid1.png">
</p>

Once lomorage is found, you can also click `info` icon to learn more about lomorage support at unraid forum

<p align="center">
  <img width="50%" src="/img/installation/unraid2.png">
</p>

## 2. Click install. You are done!

<p align="center">
  <img width="50%" src="/img/installation/unraid3.png">
</p>

## Unraid template customization
Below is the explanation on template configuration.

- Network: Default value is `host` mode because mobile client uses MDNS to auto-discover server listen address and port. It can be changed to `bridge` mode if user wants to configure these information from mobile client by yourselves.
- ExtraParams: Default value is `99:100`. This parameter need combined together with `User` mount configuration. It is to make sure uploaded photos/videos have right user/group permission, and can be browsed via unraid share feature. 99 is user ID of `nobody`, and 100 is group ID of `nobody`. User can customize it based on his own user configuration.
- PostArgs: Default value is `192.168.1.28 8000 8001`. `192.168.1.28` is unraid IP, `8000` is lomorage API backend listening port, and `8001` is lomorage web portal listening port.
- Config
  * MediaDir: This is uploaded media storage directory. Default value is `/mnt/user/`
  * AppDir: This directory stores configuration file, database file, log files, etc, used by lomorage api server. Default value is `/mnt/user/appdata`
  * User: This mount file is to ensure lomo backend API server uses the same user ID and group ID as host unraid OS. Lomorage will never read the confidential data inside the file
