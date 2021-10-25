---
title: Ubuntu
weight: 3
---

You can either use the docker installation, or install using APT

# Docker installation

Please refer to [lomo-docker](https://github.com/lomorage/lomo-docker) for installation with docker image. You can either use the arm image "lomorage/raspberrypi-lomorage:latest" or amd64 image "lomorage/amd64-lomorage:latest" based on the host architecture.

# APT installation

**Currently we only support x86/AMD64 Ubuntu 18.04.5 LTS (Bionic Beaver) and Ubuntu 20.04.1 LTS (Focal Fossa).**

## 1. Add lomoware source

```bash
sudo apt install -y ca-certificates python-certifi python3-certifi
sudo update-ca-certificates --fresh
wget -qO - https://lomoware.lomorage.com/debian/gpg.key | sudo apt-key add -
```

If you are using Bionic:

```bash
echo "deb [arch=amd64] https://lomoware.lomorage.com/debian/bionic bionic main" | sudo tee /etc/apt/sources.list.d/lomoware.list
```

If you are using Focal:

```bash
echo "deb [arch=amd64] https://lomoware.lomorage.com/debian/focal focal main" | sudo tee /etc/apt/sources.list.d/lomoware.list
```

then run:

```bash
sudo apt update
```

## 2. Install Lomorage

You need at least lomo-vips, lomo-base-lite and lomo-backend installed.

- lomo-backend: mandatory, Lomorage service backend

- lomo-web: optional, Lomorage web application

- lomo-base-lite: optional, hard drive mount tool, rsync, jq etc

- lomo-vips: mandatory, lomorage vips clone. (A fast image processing library with low memory needs), used by lomo-backend

```bash
sudo apt install lomo-base-lite lomo-vips lomo-backend lomo-web -y
```

Make sure the user can sudo without password, if not, execute the following command to add it:

```bash
echo "$USER ALL=(ALL:ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/$USER
```

### 3. Configuration parameter customization

User can use environment variable to control configuration parameter as below. Above example is using `/etc/profile` file as default. You can change based on your own setup.

Note after you set environment variable, please make sure it takes effect when you start or restart lomod

#### 3.1 Change mount directory

You may need to specify the mount directory if the USB drive is not mounted in "/media" directory. 

For example if you are using PCManFM, then the mount directory will be "/media/pi". To specify the mount directory to be "/media/pi", add environment variable `LOMOD_MOUNT_DIR=/media/pi` in `/etc/profile`, such as 

```
echo "export LOMOD_MOUNT_DIR=/media/pi" >> /etc/profile
```

**this parameter should be the directory mount, not the sub-directory**

**Make sure the user has the r/w permission for above mount directory, this parameter should be the parent directory mounted, for example if it's mounted as "/media/pi/disk0", then you should use "/media/pi/".**

#### 3.2 HTTP Listen Port

Lomod listens on port 8000 by default. If it is conflict and you want to specify own listen port, you can add environment variable `LOMOD_PORT_HTTP` in `/etc/profile`. For example, 

```
echo "export LOMOD_PORT_HTTP=8888" >> /etc/profile
```

## 4. Run

Restart Lomorage service:

```bash
# restart lomo-backend
sudo systemctl restart lomod

# restart lomo-web
sudo systemctl restart lomow

# restart lomo-frame
sudo service supervisor restart
```
