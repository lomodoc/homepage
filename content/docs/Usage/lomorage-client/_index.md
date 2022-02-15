---
title: Lomorage Command Line Client
weight: 11
---

# Lomorage Command Line Client

Lomorage command line client is a tool to allow user to control backend directly. Its name is `lomoc` and installed under /opt/lomorage/bin. It provides some options to configure the backend.

## Reset user's backup home directory and backup directory

After one user is created through mobile application, people can use `lomoc` command line option to reset home directory and backup directory. Firstly, people need copy specific user's or all users' asset directories to the new directory. For example, if new media directory is `/media/newdisk`, and there are 2 users `alice` and `bob`, the new tree would be like
```
/tmp/usbdisk1/
|-- alice
|   `-- Photos
|       |-- master
|       |   |-- 2003
|       |   |   |-- 01
|       |   |   |   `-- 17
|       |   |   |       `-- 20030117_4.jpg
|       |   |   `-- 11
|       |   |       |-- 01
|       |   |       |   |-- 20031101_2.jpg
|       |   |       |   `-- 20031101_3.jpg
|       |   |       `-- 23
|       |   |           |-- 20031123_1.jpg
|       |   |           |-- 20031123_11.webp
|       |   |           |-- 20031123_12.dng
|       |   |           `-- 20031123_13.heic
|       |   |-- 2004
|       |   |   `-- 01
|       |   |       `-- 21
|       |   |           `-- 20040121_5.jpg
|       |   `-- 2013
|       |       |-- 07
|       |       |   `-- 28
|       |       |       `-- 20130728_7.png
`-- bob
    `-- Photos
        |-- master
        |   `-- 2013
        |       |-- 08
        |       |   `-- 08
        |       |       `-- 20130808_6.mp4
        |       `-- 11
        |           `-- 23
        |               |-- 20131123_10.zip
        |               |-- 20131123_10_image.heic
        |               |-- 20131123_8.zip
        |               |-- 20131123_8_image.jpg
        |               `-- 20131123_9.heic
```

Note: 
 - If `[user name]` is supplied, it only updates the given user's home directory or backup directory; otherwise, it will replace all users' home directory or backup directory to the new given media directory.
 - By default, the client will read data from /opt/lomorage/var/assets.db. If you installed the lomod to different directory, you can use `--db` option to supply new DB file location
```
$ /opt/lomorage/bin/lomoc reset home-dir -h
NAME:
   lomoc reset home-dir - reset users' home directory in DB, and input dir must be media dir. If username is not specified, it will reset all users' home directory

USAGE:
   lomoc reset home-dir [command options] [new media dir] ([user name])

OPTIONS:
   --db value  db filename with full path (default: "/opt/lomorage/var/assets.db")

$ /opt/lomorage/bin/lomoc reset backup-dir -h
NAME:
   lomoc reset backup-dir - reset users' backup directory in DB, and input dir must be media backup dir. If username is not specified, it will reset all users' backup directory

USAGE:
   lomoc reset backup-dir [command options] [new backup dir] ([user name])

OPTIONS:
   --db value  db filename with full path (default: "/opt/lomorage/var/assets.db")

```
