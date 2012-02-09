Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from comal.ext.ti.com ([198.47.26.152])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvYfh-0006dL-Fc
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 18:24:42 +0000
Received: from dbdp20.itg.ti.com ([172.24.170.38])
 by comal.ext.ti.com (8.13.7/8.13.7) with ESMTP id q19IOc0F030794
 for <barebox@lists.infradead.org>; Thu, 9 Feb 2012 12:24:39 -0600
Received: from DBDE70.ent.ti.com (localhost [127.0.0.1])
 by dbdp20.itg.ti.com (8.13.8/8.13.8) with ESMTP id q19IObgG013603
 for <barebox@lists.infradead.org>; Thu, 9 Feb 2012 23:54:38 +0530 (IST)
From: Sanjeev Premi <premi@ti.com>
Date: Thu, 9 Feb 2012 23:54:28 +0530
Message-ID: <1328811868-1000-1-git-send-email-premi@ti.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC] omap3evm: Set preliminary environment
To: barebox@lists.infradead.org

This is still work-in-progress, but wanted to
share them early for any feedback.

Signed-off-by: Sanjeev Premi <premi@ti.com>
---
 I have made offline edits on these scripts before making
 this patch. There is a possibility of run-time failure.

 You will also observe many TODOs. Hope to get them sorted
 tomorrow - for a patch worthy of applying on the tree.

 arch/arm/boards/omap3evm/env/bin/boot          |   27 ++++++++++
 arch/arm/boards/omap3evm/env/bin/init          |   27 ++++++++++
 arch/arm/boards/omap3evm/env/bin/set-local-env |   66 ++++++++++++++++++++++++
 arch/arm/boards/omap3evm/env/config            |   52 +++++++++++++++++++
 4 files changed, 172 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/omap3evm/env/bin/boot
 create mode 100644 arch/arm/boards/omap3evm/env/bin/init
 create mode 100644 arch/arm/boards/omap3evm/env/bin/set-local-env
 create mode 100644 arch/arm/boards/omap3evm/env/config

diff --git a/arch/arm/boards/omap3evm/env/bin/boot b/arch/arm/boards/omap3evm/env/bin/boot
new file mode 100644
index 0000000..58e950a
--- /dev/null
+++ b/arch/arm/boards/omap3evm/env/bin/boot
@@ -0,0 +1,27 @@
+#!/bin/sh
+
+if [ "$boot_method" = "disk" ]; then
+	#
+	# Mount the partition containing kernel image
+	#
+	mkdir /boot
+
+	echo mount /dev/$kernel_part fat /boot
+	mount /dev/$kernel_part fat /boot
+#
+#	TODO: This (and similar variations of the check) cause exceptions
+#	      Keep commented for now.
+#	if [ "$?" != "0" ]; then
+# 		echo ":: Couldn't mount the MMC/SD card"
+# 		exit 1
+# 	fi
+
+	bootm -c -v /boot/uImage
+else
+	#
+	# TODO: Boot from tftp + nfs
+	#
+fi
+
+echo ":: Unable to boot. Check environment variables."
+echo "::"
diff --git a/arch/arm/boards/omap3evm/env/bin/init b/arch/arm/boards/omap3evm/env/bin/init
new file mode 100644
index 0000000..3bded32
--- /dev/null
+++ b/arch/arm/boards/omap3evm/env/bin/init
@@ -0,0 +1,27 @@
+#!/bin/sh
+
+export PATH=/env/bin
+
+#
+# Source generic configuration
+#
+. /env/config
+
+#
+# Populate environment based on config params
+#
+. /env/bin/set-local-env
+
+echo ""
+echo -n ":: Press any key to stop autoboot: "
+timeout -a $autoboot_timeout
+if [ $? != 0 ]; then
+	exit
+fi
+
+echo ""
+
+#
+# Proceed to boot
+#
+. /env/bin/boot
diff --git a/arch/arm/boards/omap3evm/env/bin/set-local-env b/arch/arm/boards/omap3evm/env/bin/set-local-env
new file mode 100644
index 0000000..b92f037
--- /dev/null
+++ b/arch/arm/boards/omap3evm/env/bin/set-local-env
@@ -0,0 +1,66 @@
+#!/bin/sh
+
+#
+# Set the IP address
+# TODO: Update for DHCP when booting via tftp
+#
+if [ "$ip_method" = "static" ]; then
+	eth0.ipaddr=$evm_ipaddr
+	eth0.gateway=$evm_gateway
+	eth0.netmask=$evm_netmask
+fi
+
+#
+# Select the location of kernel and root filesystem based on boot method
+#
+echo "::"
+
+if [ -n "$boot_method" ]; then
+	echo " : No boot method specified. Using 'disk'..."
+	boot_method=disk
+fi
+
+if [ "$boot_method" = "disk"  ]; then
+	echo ":: Booting from 'disk' ..."
+	rootfs_loc=disk
+	kernel_loc=disk
+
+	# Location of kernel image (for Barebox)
+	kernel_part=disk0.0
+
+	# Location of root filesystem (for Linux)
+	rootfs_part=mmcblk0p2
+elif [ "$boot_method" = "net"  ]; then
+	echo ":: Booting from 'net' ..."
+	rootfs_loc=net
+	kernel_loc=net
+
+	nfsroot="$nfs_server:$nfs_path"
+else
+	echo ":: Unknown boot method - $boot_method"
+	exit 1
+fi
+
+echo "::"
+
+#
+# Bootargs: Append root filesystem info
+#
+if [ "$rootfs_loc" = "disk" ]; then
+	bootargs="$bootargs noinitrd root=/dev/$rootfs_part rw rootfstype=$rootfs_type"
+elif [ "$rootfs_loc" = "net" ]; then
+	bootargs="$bootargs noinitrd root=/dev/nfs nfsroot=$nfsroot,tcp"
+elif [ "$rootfs_loc" = "initrd" ]; then
+	bootargs="$bootargs root=/dev/ram0 rdinit=/sbin/init"
+fi
+
+#
+# Bootargs: Append network info
+#
+if [ "$ip_method" = "dhcp" ]; then
+	bootargs="$bootargs ip=dhcp"
+elif [ "$ip_method" = "static" ]; then
+	bootargs="$bootargs ip=$eth0.ipaddr::$eth0.gateway:$eth0.netmask:::"
+else
+	bootargs="$bootargs ip=none"
+fi
diff --git a/arch/arm/boards/omap3evm/env/config b/arch/arm/boards/omap3evm/env/config
new file mode 100644
index 0000000..3525e40
--- /dev/null
+++ b/arch/arm/boards/omap3evm/env/config
@@ -0,0 +1,52 @@
+#!/bin/sh
+
+#
+# Timeout for automatic boot
+#
+autoboot_timeout=2
+
+#
+# Basic bootargs
+#
+bootargs="console=tty02,115200n8 mem=256M earlyprintk=serial,ttyO2,115200"
+#
+# Set fancy prompt (if CONFIG_HUSH_FANCY_PROMPT was selected)
+#
+PS1="\e[1;32m[\w] \e[1;31m #\e[0m "
+
+#
+# Boot method
+# Use one of: tftp / nand / disk
+#
+boot_method=disk
+
+#
+# Format of root filesystem
+# Use one of: ext2/ ext3 (depends on the medium)
+#
+rootfs_type=ext3
+
+#
+# Method for getting the IP address
+# Use one of: none / static / dhcp
+#
+ip_method=dhcp
+
+#
+# IP address of the NFS server
+# (Used only if the filesystem is mounted over NFS)
+#
+nfs_server=192.168.1.1
+
+#
+# Path (on NFS server) to be mounted
+#
+nfs_path=/home/user/nfs-export
+
+#
+# Static IP configuration
+# (Used only if static IP is used)
+#
+evm_ipaddr=192.168.1.10
+evm_gateway=192.168.1.10
+evm_netmask=192.168.1.10
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
