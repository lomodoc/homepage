---
weight: 13
bookFlatSection: true
title: "Import Tool"
---

# What is Lomorage Importer
It is most likely user already stored historical photos / videos at multiple places, and hope to consolidate all at one place.

Lomorage provides 3 ways to batch import these existing assets to lomorage server:
1. Native tool - recommended option
2. Web client
3. Command line tool - advanced option

## Import by native tool
Import all assets under specified directory or single file. The tool will analysis asset create time by EXIF tool, and supply while import. It also support to import Google photo takeout ZIP file directly to Lomorage server.

Currently it support **Windows and MacOS**.

### Download

Go to [Lomo-importer@github](https://github.com/lomorage/lomo-importer-release) to download the latest binary.
#### Latest importer for Windows
- [Latest Windows Importer](https://github.com/lomorage/lomo-importer-release/releases/download/2021-08-31_14-11-38/lomoimpt_x642021-08-31_14-11-38_win.zip)
#### Or directly download here:
- MacOS [LomoImporter.app2021-08-31_14-13-34_mac.zip](https://github.com/lomorage/lomo-importer-release/releases/download/2021-08-31_14-13-34/LomoImporter.app2021-08-31_14-13-34_mac.zip)

- Old version for Windows[lomoimpt2021-08-09_17-50-57_win.zip](https://github.com/lomorage/lomo-importer-release/releases/download/2021-08-09_17-50-57/lomoimpt2021-08-09_17-50-57_win.zip)



### Quick intro

<iframe width="560" height="315" src="https://www.youtube.com/embed/6dsxfmWZkoI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


### Eg: how to import one folder
1. Login to Lomorage

<div align="center">
  
  <p class="screenshoot" />
  <img width="80%" src="/img/installation/lomorage-importer/login.jpg">
  
</div>

2. Clieck the button **“1.Select Folder..."**, to select the folder which you want to import.
3. Then click the button **“2.Start Import"**, before import, you can add more files and remove some files.

<div align="center">
  
  <p class="screenshoot" />
  <img width="80%" src="/img/installation/lomorage-importer/start.jpg">
  
</div>


### Eg: How to import Google Photo Takeout ZIP files to lomorage

1. Download your google photo from takeout.google.com

2. Login to Lomorage Server

<div align="center">
  
  <p class="screenshoot" />
  <img width="80%" src="/img/installation/lomorage-importer/login.jpg">
  
</div>

3. Click the button **“1.Add Files..."**, select the ZIP files you want to add, then click the button **“2.Start Import"**. Just follow below picture.

<div align="center">
  
  <p class="screenshoot" />
  <img width="80%" src="/img/installation/lomorage-importer/start_zip.jpg">
  
</div>

## Import by command line
Command line tool is for advanced user when the existing assets are in attached USB or Local/NFS/CIFS mounted disks along with the server running lomorage backend. It can avoid unnecessary back-and-forth network traffic as well as disk operation. During import, the tool will move existing assets to the directories created by lomorage for each user. All import logs are saved under /opt/lomorage/var/log/import_[import directory].log. Below is usage for the tool.
```
$ /opt/lomorage/bin/lomoc import -h
NAME:
   lomoc import - Import all photos from given directory into lomo backend with given username and password

USAGE:
   lomoc import [username] [password] [directory]
```

Example:
```
$ /opt/lomorage/bin/lomoc import alice password /media/STEC_838C-1111/test/video
-m
Login localhost successfully
import photos/videos from /media/STEC_838C-1111/test
please check import log /opt/lomorage/var/log/import_media_STEC_838C-1111_test.log

$ cat /opt/lomorage/var/log/import_media_STEC_838C-1111_test.log
start import /media/STEC_838C-1111/test/img/11_2014_01_21.webp
finish import /media/STEC_838C-1111/test/img/11_2014_01_21.webp
start import /media/STEC_838C-1111/test/img/12_2014_01_21.heic
finish import /media/STEC_838C-1111/test/img/12_2014_01_21.heic
start import /media/STEC_838C-1111/test/img/14_2017_09_13.heic
finish import /media/STEC_838C-1111/test/img/14_2017_09_13.heic
start import /media/STEC_838C-1111/test/img/1_2003_01_17.jpg
finish import /media/STEC_838C-1111/test/img/1_2003_01_17.jpg
start import /media/STEC_838C-1111/test/img/3_2003_11_01.jpg
finish import /media/STEC_838C-1111/test/img/3_2003_11_01.jpg
start import /media/STEC_838C-1111/test/img/4_2003_11_01.jpg
finish import /media/STEC_838C-1111/test/img/4_2003_11_01.jpg
start import /media/STEC_838C-1111/test/img/5_2003_11_23.jpg
finish import /media/STEC_838C-1111/test/img/5_2003_11_23.jpg
start import /media/STEC_838C-1111/test/img/6_2004_01_21.jpg
finish import /media/STEC_838C-1111/test/img/6_2004_01_21.jpg
start import /media/STEC_838C-1111/test/img/7_2004_09_12.webp
finish import /media/STEC_838C-1111/test/img/7_2004_09_12.webp
start import /media/STEC_838C-1111/test/img/8_2008_12_14.dng
finish import /media/STEC_838C-1111/test/img/8_2008_12_14.dng
start import /media/STEC_838C-1111/test/img/9_2013_07_28.png
finish import /media/STEC_838C-1111/test/img/9_2013_07_28.png
start import /media/STEC_838C-1111/test/img/preview.jpg
finish import /media/STEC_838C-1111/test/img/preview.jpg
scan and import finish
```


# Contact us
Any questions, please let us know!

# Update history
## 08/31/2021
- Fix: read heic exif time crash issue
- Support large file direct importing.
## 08/09/2021
- can config importing thread count
- Improve&faster the importing speed
- support lomo live photo zip file
- fix memory leak
- fix error logs popup while exiting
## 07/14/2021
- support add folder directly and the program will list all files under this folder.
