Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
 (helo=metis.ext.pengutronix.de)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y4Bux-0006Tz-Mr
 for barebox@lists.infradead.org; Thu, 25 Dec 2014 17:09:48 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Thu, 25 Dec 2014 18:09:04 +0100
Message-Id: <1419527345-9301-7-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1419527345-9301-1-git-send-email-jlu@pengutronix.de>
References: <1419527345-9301-1-git-send-email-jlu@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 7/8] ARM: imx233-olinuxino: update defaultenv
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/boards/imx233-olinuxino/Makefile          |  1 +
 .../defaultenv-imx233-olinuxino/boot/sd            |  6 ++++
 .../defaultenv-imx233-olinuxino/init/automount-sd  |  4 +++
 .../network/eth0-discover                          |  6 ++++
 .../defaultenv-imx233-olinuxino/nv/boot.default    |  1 +
 .../defaultenv-imx233-olinuxino/nv/hostname        |  1 +
 .../nv/linux.bootargs.base                         |  1 +
 arch/arm/boards/imx233-olinuxino/env/bin/boot      | 32 -----------------
 arch/arm/boards/imx233-olinuxino/env/bin/init      | 15 --------
 arch/arm/boards/imx233-olinuxino/env/config        | 40 ----------------------
 .../imx233-olinuxino/env/network/eth0-discover     |  6 ----
 11 files changed, 20 insertions(+), 93 deletions(-)
 create mode 100644 arch/arm/boards/imx233-olinuxino/defaultenv-imx233-olinuxino/boot/sd
 create mode 100644 arch/arm/boards/imx233-olinuxino/defaultenv-imx233-olinuxino/init/automount-sd
 create mode 100644 arch/arm/boards/imx233-olinuxino/defaultenv-imx233-olinuxino/network/eth0-discover
 create mode 100644 arch/arm/boards/imx233-olinuxino/defaultenv-imx233-olinuxino/nv/boot.default
 create mode 100644 arch/arm/boards/imx233-olinuxino/defaultenv-imx233-olinuxino/nv/hostname
 create mode 100644 arch/arm/boards/imx233-olinuxino/defaultenv-imx233-olinuxino/nv/linux.bootargs.base
 delete mode 100644 arch/arm/boards/imx233-olinuxino/env/bin/boot
 delete mode 100644 arch/arm/boards/imx233-olinuxino/env/bin/init
 delete mode 100644 arch/arm/boards/imx233-olinuxino/env/config
 delete mode 100644 arch/arm/boards/imx233-olinuxino/env/network/eth0-discover

diff --git a/arch/arm/boards/imx233-olinuxino/Makefile b/arch/arm/boards/imx233-olinuxino/Makefile
index 644f7e5..987b343 100644
--- a/arch/arm/boards/imx233-olinuxino/Makefile
+++ b/arch/arm/boards/imx233-olinuxino/Makefile
@@ -1,2 +1,3 @@
 obj-y = imx23-olinuxino.o
 lwl-y += lowlevel.o
+bbenv-y += defaultenv-imx233-olinuxino
diff --git a/arch/arm/boards/imx233-olinuxino/defaultenv-imx233-olinuxino/boot/sd b/arch/arm/boards/imx233-olinuxino/defaultenv-imx233-olinuxino/boot/sd
new file mode 100644
index 0000000..3ddfb9d
--- /dev/null
+++ b/arch/arm/boards/imx233-olinuxino/defaultenv-imx233-olinuxino/boot/sd
@@ -0,0 +1,6 @@
+#!/bin/sh
+
+global.bootm.image=/mnt/sd-boot/linuximage
+global.bootm.oftree=/mnt/sd-boot/imx23-olinuxino.dtb
+#global.bootm.initrd=<path to initrd>
+global.linux.bootargs.dyn.root="root=/dev/mmcblk0p3 rootfstype=ext4 rw rootwait"
diff --git a/arch/arm/boards/imx233-olinuxino/defaultenv-imx233-olinuxino/init/automount-sd b/arch/arm/boards/imx233-olinuxino/defaultenv-imx233-olinuxino/init/automount-sd
new file mode 100644
index 0000000..eb34c9b
--- /dev/null
+++ b/arch/arm/boards/imx233-olinuxino/defaultenv-imx233-olinuxino/init/automount-sd
@@ -0,0 +1,4 @@
+#!/bin/sh
+
+mkdir -p /mnt/sd-boot
+automount -d /mnt/sd-boot 'detect mci0 && [ -e /dev/disk0.1 ] && mount /dev/disk0.1 /mnt/sd-boot'
diff --git a/arch/arm/boards/imx233-olinuxino/defaultenv-imx233-olinuxino/network/eth0-discover b/arch/arm/boards/imx233-olinuxino/defaultenv-imx233-olinuxino/network/eth0-discover
new file mode 100644
index 0000000..76494fe
--- /dev/null
+++ b/arch/arm/boards/imx233-olinuxino/defaultenv-imx233-olinuxino/network/eth0-discover
@@ -0,0 +1,6 @@
+#!/bin/sh
+
+#  In OLinuXino board i.MX233 SoC uses LAN9512 (attached to USB) to connect
+#  to an Ethernet LAN.
+
+usb
diff --git a/arch/arm/boards/imx233-olinuxino/defaultenv-imx233-olinuxino/nv/boot.default b/arch/arm/boards/imx233-olinuxino/defaultenv-imx233-olinuxino/nv/boot.default
new file mode 100644
index 0000000..e1476cf
--- /dev/null
+++ b/arch/arm/boards/imx233-olinuxino/defaultenv-imx233-olinuxino/nv/boot.default
@@ -0,0 +1 @@
+sd
diff --git a/arch/arm/boards/imx233-olinuxino/defaultenv-imx233-olinuxino/nv/hostname b/arch/arm/boards/imx233-olinuxino/defaultenv-imx233-olinuxino/nv/hostname
new file mode 100644
index 0000000..e5646ed
--- /dev/null
+++ b/arch/arm/boards/imx233-olinuxino/defaultenv-imx233-olinuxino/nv/hostname
@@ -0,0 +1 @@
+olinuxino
diff --git a/arch/arm/boards/imx233-olinuxino/defaultenv-imx233-olinuxino/nv/linux.bootargs.base b/arch/arm/boards/imx233-olinuxino/defaultenv-imx233-olinuxino/nv/linux.bootargs.base
new file mode 100644
index 0000000..5b56caf
--- /dev/null
+++ b/arch/arm/boards/imx233-olinuxino/defaultenv-imx233-olinuxino/nv/linux.bootargs.base
@@ -0,0 +1 @@
+console=ttyAMA0,115200
diff --git a/arch/arm/boards/imx233-olinuxino/env/bin/boot b/arch/arm/boards/imx233-olinuxino/env/bin/boot
deleted file mode 100644
index 60dd93f..0000000
--- a/arch/arm/boards/imx233-olinuxino/env/bin/boot
+++ /dev/null
@@ -1,32 +0,0 @@
-#!/bin/sh
-
-. /env/config
-
-if [ x$1 = xdisk ]; then
-	rootfs_loc=disk
-	kernel_loc=disk
-elif [ x$1 = xnet ]; then
-	rootfs_loc=net
-	kernel_loc=net
-fi
-
-if [ x$ip = xdhcp ]; then
-	bootargs="$bootargs ip=dhcp"
-elif [ x$ip = xnone ]; then
-	bootargs="$bootargs ip=none"
-else
-	bootargs="$bootargs ip=$eth0.ipaddr::$eth0.gateway:$eth0.netmask:::"
-fi
-
-if [ x$rootfs_loc = xdisk ]; then
-	bootargs="$bootargs noinitrd rootfstype=$rootfs_type root=/dev/$rootfs_part"
-elif [ x$rootfs_loc = xnet ]; then
-	bootargs="$bootargs root=/dev/nfs nfsroot=$nfsroot,v3,tcp noinitrd"
-elif [ x$rootfs_loc = xinitrd ]; then
-	bootargs="$bootargs root=/dev/ram0 rdinit=/sbin/init"
-fi
-
-
-bootm -o $oftree_loc/imx23-olinuxino.dtb /dev/$kernel_part
-
-echo "Booting failed. Correct setup of 'kernel_part'?"
diff --git a/arch/arm/boards/imx233-olinuxino/env/bin/init b/arch/arm/boards/imx233-olinuxino/env/bin/init
deleted file mode 100644
index 3ed68f7..0000000
--- a/arch/arm/boards/imx233-olinuxino/env/bin/init
+++ /dev/null
@@ -1,15 +0,0 @@
-#!/bin/sh
-
-PATH=/env/bin
-export PATH
-
-. /env/config
-
-echo
-echo -n "Hit any key to stop autoboot: "
-timeout -a $autoboot_timeout
-if [ $? != 0 ]; then
-	exit
-fi
-
-boot
diff --git a/arch/arm/boards/imx233-olinuxino/env/config b/arch/arm/boards/imx233-olinuxino/env/config
deleted file mode 100644
index c84014f..0000000
--- a/arch/arm/boards/imx233-olinuxino/env/config
+++ /dev/null
@@ -1,40 +0,0 @@
-#!/bin/sh
-
-# use 'dhcp' to do dhcp in barebox and in kernel
-# use 'none' if you want to skip kernel ip autoconfiguration
-ip=none
-
-# or set your networking parameters here (if a USB network adapter is attached)
-#eth0.ipaddr=a.b.c.d
-#eth0.netmask=a.b.c.d
-#eth0.gateway=a.b.c.d
-#eth0.serverip=a.b.c.d
-
-# can be either 'net' or 'disk'
-kernel_loc=disk
-
-# can be either 'net', or 'disk' or 'initrd'
-rootfs_loc=disk
-
-# can be any regular filesystem like ext2, ext3, reiserfs in case of 'rootfs_loc=disk'
-rootfs_type=ext3
-
-# Where is the rootfs in case of 'rootfs_loc=disk'
-rootfs_part=mmcblk0p4
-
-# Where is the rootfs in case of 'rootfs_loc=net'
-nfsroot=FIXME
-
-# Where to get the kernel image in case of 'kernel_loc=disk'
-kernel_part=disk0.2
-
-# Where to get the device tree image in case of 'kernel_loc=disk'
-oftree_loc=env/oftree
-
-# base kernel parameter
-bootargs="console=ttyAMA0,115200 rw rootwait"
-
-autoboot_timeout=2
-
-# set a fancy prompt (if support is compiled in)
-PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
diff --git a/arch/arm/boards/imx233-olinuxino/env/network/eth0-discover b/arch/arm/boards/imx233-olinuxino/env/network/eth0-discover
deleted file mode 100644
index 76494fe..0000000
--- a/arch/arm/boards/imx233-olinuxino/env/network/eth0-discover
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-
-#  In OLinuXino board i.MX233 SoC uses LAN9512 (attached to USB) to connect
-#  to an Ethernet LAN.
-
-usb
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
