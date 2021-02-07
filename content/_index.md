---
title: Introduction
type: docs
---

# Introduction

## 1. Why not just use cloud?

We believe the digital assets should be taken care by ourselves, store locally, backup locally, that is the primary, and cloud backup is the tertiary backup, a good complementary, the price of existing cloud storage is too high, and some of the companies(Shoebox, Canon Irista) doing the business gradually shutdown the services, this is a money losing business, it’s not the efficient way to manage huge amount of assets centralized (flicker CEO’s [open letter](https://www.theverge.com/2019/12/19/21030795/flickr-pro-smugmug-don-macaskill-open-letter) sent last year confirmed this), they have to either make it more expensive, or make you the product. Cloud service is convenient for the user, people don’t need to buy expensive hardware, don’t need to be the professionals to maintain that, don’t need to worry about the energy fee to keep it run 24x7, but things are changing, single board computers are getting cheaper, more powerful and more energy efficient, storage are getting cheaper with larger capacity, software are getting more intelligent, people are having more and more concerns about the privacy, it’s now viable to host the Photo service, your private cloud, at your own place.

## 2. How about NAS?

If you haven't heard of NAS before, then NAS probably won't be your best option. [NAS](https://en.wikipedia.org/wiki/Network-attached_storage) is a general storage that can store everything, it also comes with application that can backup and management your photos and videos. Even though some NAS tried to make it easy to use, and make the operating system looks like Windows, but still it's too complicate for non-technical users when they tried to understand what is. Take a look at the [user guide](https://global.download.synology.com/download/Document/Software/UserGuide/Firmware/DSM/3.1/enu/Syno_UsersGuide_NAServer_enu.pdf) it's just way too much for a photo back and management.

## 3. Any other similar solutions?

Yes, there are other products which focuses on the vertical market, let user hosts the Photo service locally but simplify the setup and use.

  - [ibi - The Smart Photo Manager](https://www.amazon.com/ibi-Organize-Privately-Smartphones-Accounts/dp/B07Y9CH817/ref=cm_cr_arp_d_product_top?ie=UTF8) with 1TB storage (**$119.99**)
  - [Monument Photo Management Device](https://www.amazon.com/Monument-Photo-Management-Device-Automatically/dp/B01M8I40A6/ref=sr_1_3?dchild=1&keywords=ibi&qid=1588828193&sr=8-3) NO hard drive (**$169.94**)
  - [Kwilt3 Personal Cloud Storage Device](https://www.amazon.com/Kwilt3-Personal-External-Storage-Wireless/dp/B07KQHVMJX/ref=psdc_13436301_t3_B01M8I40A6?th=1) NO hard drive (**$99**)
  - [CatDrive Your Private Shared Memory](http://www.halos.co/catdrive/)(**out-of-service**)

## 4. Why Lomorage?

Simple, we are not satisfied with existing solutions.

1. Cloud can be the tertiary complementary backup, not the primary, nor the secondary.
   - We currently support redundancy backup locally
   - We plan to support remote backup (like backup to your parents' Lomorage setup) and cloud backup like [backblaze](https://www.backblaze.com/).

2. Easy to setup, easy to use, easy to upgrade, zero maintenance.
   - It only takes a few minutes to install the prebuild OS image on Raspberry Pi.
   - We support backup to Windows and MacOS as well with one single application.
   - software upgrade automatically.
   - System migrate automatically to guarantee compatibility.

3. Software matters, it need to be solid to take care of those invaluable assets.
   - We are the user, we eat our own dog food.
   - We release by quality not by date.

4. It should be open, avoid any kind of lock down, the user should easily migrate to other systems, and should not get a electronic waste if the product is out of service.
   - Media files are stored as it's on your disk, original format, original resolution, exactly the same.
   - You don't need format your hard drive to use it,  and it supports all popular file systems.
   - Media files are organized in folders by "YYYY/MM/DD" structure on disk, you can easily import them to other systems/tools.
   - The setup use Raspberry Pi, even if you don't use Lomorage, it's still a single board computer you can use in [tons of projects](https://projects.raspberrypi.org/en).

5. More than backup and management, enjoy the memories with your families.
   - How many times you open photo APP and take a look the old photos?
   - Have dozens of photo frames but hard to find enough space for them?
   - Have idle digital photo frame which requires copy/paste files, limited in storage?
   - Think about having a large screen digital signage in your living room which shows weather, news, digital arts and selected photos, and several other smaller digital photo frames in your bedroom or study room which shows your personal photos and videos. No more copy/paste, break the storage limit and use WiFi to retrieve photos from Lomorage.
   - Reuse any idle screens to build digital frames with wireless connection using Raspberry Pi, customize the content on your Phone.
   - share your kids photo to their grandparents' digital frame.

6. Stay connected while independent.
   - You can have Lomorage setup at your home, and your parents or your friends can have their own setup. They are operating independently, but can talk to each other when necessary, and they can as backup for each other.

## 5. What is the cost?

Lomorage is more cost efficient and more flexible compared with existing solutions, the software cost you nothing, and even get the hardware setup using Raspberry Pi 4 is cheaper compared with existing solutions.  If you use the Windows or Mac application, it's $0. There are some advanced features currently missing but are planned, and the basic backup feature is solid and stable for almost 2 years, no hidden fees, no lock down, no privacy concern, why not give it a try?

# Features

## Privacy Matters

Lomorage is a private photo cloud service which runs on your private network, which gives you the convenience of cloud-based photo backup service, but without the concern of leaking privacy. We are not, and will never collect ANY user privacy data.

You can also set up multiple Lomorage services in your private network, for different family members, which are completely isolated with each other.

<!--
You can also use either [DES]() to encrypt your photos, or use any [encrypted file system]() supported by the operating system.-->

## Cross-Platform

There is no OS limitation for running the Lomorage service, you can backup your photos on MAC, Windows and Raspberry Pi, and we will add other OS support upon user's request. We have iOS, Android and Web clients.

## Easy Setup

We are not building another NAS system, so if you want to backup and manage your photos, but get scared by the complicated setup process of NAS, just forget about the jargons and take easy. Lomorage setup is guaranteed to be within minutes. Check [here](/installation) for the installation guide.

## Keep Original Size

The photo and video are stored as the original size on your disk, it will be exactly the same with the one taken on your phone, EXIF meta data (like location, date time) is preserved. Live photo is also supported, and the image and video clips are stored together as a zip file.

## No Lockin

Unlike some cloud-based file storage which split the file into smaller segments, Lomorage will store the photo file as it's on the file system, we are not using any proprietary format.

Unlike some NAS system which requires user to format the disk before using it as backup storage, with Lomorage, you can just plug in a spare disk with [popular file system](/faq/#4-what-file-systems-supported), it just works, you won't be locked to use specific file system, you can just use the file system you normally use, like FAT32/NTFS in Windows, thus you don't need 3rd party software to access the backup file.

## Zero Maintenance

Cloud service hides the complexity of the system since Lomorage is a service deployed at the user's network, we aim to provide the same user experience with the cloud service, to minimize user intervention and maintenance.

  - self upgrade: Lomorage service can upgrade to the newest version when available.

  - auto migration: Migration will be done automatically to make sure nothing breaks after the upgrade.

  - consistency check: consistency check will be scheduled regularly to make sure no abnormal in the system.

<!--  - expandable storage: we provide several [options](https://www.lomorage.com/expand-stroage) to expand the storage which disk is out-of-space.-->

## Flexible Backup Options

Since most people will offload the phone storage, so having those backup once is not enough, Lomorage will provide several backup options:

  - Local redundancy backup: you can backup multiple copies locally, just plugin in more disks and [set up the backup](/faq/#3-how-to-setup-redundancy-backup) on your phone.

  - remote backup: you can backup to other Lomorage services setup by other family members or friends, with encryption. This is on the backlog, and plan to support this year.

<!--  - cloud backup: cloud backup on popular vendors is a good complimentary. This is on the backlog, and plan to support this year.-->

## Share Your Moments

You can share moments with your family members, and create groups to share with multiple members at one time. It won't occupy your disk space so you don't need to worry about the disk usage on your phone.

## Enjoy Your Memories

You can connect monitor with Raspberry Pi and use that as digital photo frame, and you can setup multiple digital photo frames using Raspberry Pi zero w and access your digital assets via WiFi. No need to worries about the storage of digital frame, no need file transfer any more.