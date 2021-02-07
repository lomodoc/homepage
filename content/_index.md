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