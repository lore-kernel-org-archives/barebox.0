Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OO6Hi-00080O-D1
	for barebox@lists.infradead.org; Mon, 14 Jun 2010 09:48:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 14 Jun 2010 11:48:37 +0200
Message-Id: <1276508921-3264-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1276508921-3264-1-git-send-email-s.hauer@pengutronix.de>
References: <1276508921-3264-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 07/11] add a generic default environment
To: barebox@lists.infradead.org

We have several nearly identical default environments in the tree.
Lets merge them to a single environment and use it on many boards.
This defaultenv is arm centric at the moment due to the use of arm
specific boot commands. This can be improved over time.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 defaultenv/bin/_update       |   39 +++++++++++++++
 defaultenv/bin/boot          |  110 ++++++++++++++++++++++++++++++++++++++++++
 defaultenv/bin/hush_hack     |    1 +
 defaultenv/bin/init          |   30 +++++++++++
 defaultenv/bin/update_kernel |   15 ++++++
 defaultenv/bin/update_rootfs |   16 ++++++
 6 files changed, 211 insertions(+), 0 deletions(-)
 create mode 100644 defaultenv/bin/_update
 create mode 100644 defaultenv/bin/boot
 create mode 100644 defaultenv/bin/hush_hack
 create mode 100644 defaultenv/bin/init
 create mode 100644 defaultenv/bin/update_kernel
 create mode 100644 defaultenv/bin/update_rootfs

diff --git a/defaultenv/bin/_update b/defaultenv/bin/_update
new file mode 100644
index 0000000..ddd6b84
--- /dev/null
+++ b/defaultenv/bin/_update
@@ -0,0 +1,39 @@
+#!/bin/sh
+
+if [ -z "$part" -o -z "$image" ]; then
+	echo "define \$part and \$image"
+	exit 1
+fi
+
+if [ ! -e "$part" ]; then
+	echo "Partition $part does not exist"
+	exit 1
+fi
+
+if [ $# = 1 ]; then
+	image=$1
+fi
+
+if [ x$ip = xdhcp ]; then
+	dhcp
+fi
+
+ping $eth0.serverip
+if [ $? -ne 0 ] ; then
+	echo "Server did not reply! Update aborted."
+	exit 1
+fi
+
+unprotect $part
+
+echo
+echo "erasing partition $part"
+echo
+erase $part
+
+echo
+echo "flashing $image to $part"
+echo
+tftp $image $part
+
+protect $part
diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
new file mode 100644
index 0000000..8c300a3
--- /dev/null
+++ b/defaultenv/bin/boot
@@ -0,0 +1,110 @@
+#!/bin/sh
+
+. /env/config
+
+if [ x$1 = xnand ]; then
+	rootfs_loc=nand
+	kernel_loc=nand
+elif [ x$1 = xnor ]; then
+	rootfs_loc=nor
+	kernel_loc=nor
+elif [ x$1 = xnet ]; then
+	rootfs_loc=net
+	kernel_loc=net
+fi
+
+
+if [ x$ip = xdhcp ]; then
+	bootargs="$bootargs ip=dhcp"
+elif [ x$ip = xnone ]; then
+	bootargs="ip=none"
+else
+	bootargs="$bootargs ip=$eth0.ipaddr::$eth0.gateway:$eth0.netmask:::"
+fi
+
+
+if [ $rootfs_loc = net ]; then
+	bootargs="$bootargs root=/dev/nfs nfsroot=$nfsroot,v3,tcp noinitrd"
+elif [ $rootfs_loc = initrd ]; then
+	bootargs="$bootargs root=/dev/ram0 rdinit=/sbin/init"
+else
+	if [ x$rootfs_loc = xnand ]; then
+		rootfs_mtdblock=$rootfs_mtdblock_nand
+	else
+		rootfs_mtdblock=$rootfs_mtdblock_nor
+	fi
+
+	if [ $rootfs_type = ubifs ]; then
+		bootargs="$bootargs root=ubi0:root ubi.mtd=$rootfs_mtdblock"
+	else
+		bootargs="$bootargs root=/dev/mtdblock$rootfs_mtdblock"
+	fi
+
+	bootargs="$bootargs rootfstype=$rootfs_type noinitrd"
+fi
+
+if [ -n $nor_parts ]; then
+	mtdparts="${mtdparts}physmap-flash.o:${nor_parts};"
+fi
+
+if [ -n $nand_parts ]; then
+	mtdparts="${mtdparts}$nand_device:${nor_parts};"
+fi
+
+if [ -n $mtdparts ]; then
+	bootargs="${bootargs} mtdparts=\"${mtdparts}\""
+fi
+
+if [ ! -e /dev/ram0.kernelraw ]; then
+	# arm raw kernel images are usually located at sdram start + 0x8000
+	addpart dev/ram0 8M@0x8000(kernelraw)
+fi
+
+if [ ! -e /dev/ram0.kernel ]; then
+	# Here we can safely put the kernel without risking of overwriting it
+	# while extracting
+	addpart dev/ram0 8M(kernel)
+fi
+
+if [ $kernel_loc = net ]; then
+	if [ x$ip = xdhcp ]; then
+		dhcp
+	fi
+	if [ $kernelimage_type = uimage ]; then
+		netload="/dev/ram0.kernel"
+	elif [ $kernelimage_type = zimage ]; then
+		netload="/dev/ram0.kernel"
+	elif [ $kernelimage_type = raw ]; then
+		netload="/dev/ram0.kernelraw"
+	elif [ $kernelimage_type = raw_lzo ]; then
+		netload="/dev/ram0.kernel"
+	else
+		echo "error: missing kernel_image_type"
+		exit 1
+	fi
+	tftp $kernelimage $netload || exit 1
+	kdev="$netload"
+elif [ $kernel_loc = nor ]; then
+	kdev="/dev/nor0.kernel"
+elif [ $kernel_loc = nand ]; then
+	kdev="/dev/nand0.kernel.bb"
+else
+	echo "error: missing kernel_loc"
+	exit 1
+fi
+
+if [ $kernelimage_type = uimage ]; then
+	bootm $kdev
+elif [ $kernelimage_type = zimage ]; then
+	bootz $kdev
+elif [ $kernelimage_type = raw ]; then
+	if [ $kernel_loc != net ]; then
+		ec
+		cp $kdev /dev/ram0.kernelraw
+	fi
+	bootu /dev/ram0.kernelraw
+elif [ $kernelimage_type = raw_lzo ]; then
+	unlzo $kdev /dev/ram0.kernelraw
+	bootu /dev/ram0.kernelraw
+fi
+
diff --git a/defaultenv/bin/hush_hack b/defaultenv/bin/hush_hack
new file mode 100644
index 0000000..5fffa92
--- /dev/null
+++ b/defaultenv/bin/hush_hack
@@ -0,0 +1 @@
+nand -a /dev/nand0.*
diff --git a/defaultenv/bin/init b/defaultenv/bin/init
new file mode 100644
index 0000000..b17fcbc
--- /dev/null
+++ b/defaultenv/bin/init
@@ -0,0 +1,30 @@
+#!/bin/sh
+
+PATH=/env/bin
+export PATH
+
+. /env/config
+if [ -e /dev/nor0 ]; then
+	addpart /dev/nor0 $nor_parts
+fi
+
+if [ -e /dev/nand0 ]; then
+	addpart /dev/nand0 $nand_parts
+
+	# Uh, oh, hush first expands wildcards and then starts executing
+	# commands. What a bug!
+	source /env/bin/hush_hack
+fi
+
+echo
+echo -n "Hit any key to stop autoboot: "
+timeout -a $autoboot_timeout
+if [ $? != 0 ]; then
+	echo
+	echo "type update_kernel nand|nor [<imagename>] to update kernel into flash"
+	echo "type update_rootfs nand|nor [<imagename>] to update rootfs into flash"
+	echo
+	exit
+fi
+
+boot
diff --git a/defaultenv/bin/update_kernel b/defaultenv/bin/update_kernel
new file mode 100644
index 0000000..1d35ed9
--- /dev/null
+++ b/defaultenv/bin/update_kernel
@@ -0,0 +1,15 @@
+#!/bin/sh
+
+. /env/config
+image=$kernelimage
+
+if [ x$1 = xnand ]; then
+	part=/dev/nand0.kernel.bb
+elif [ x$1 = xnor ]; then
+	part=/dev/nor0.kernel
+else
+	echo "usage: $0 nor|nand [imagename]"
+	exit 1
+fi
+
+. /env/bin/_update $2
diff --git a/defaultenv/bin/update_rootfs b/defaultenv/bin/update_rootfs
new file mode 100644
index 0000000..6366315
--- /dev/null
+++ b/defaultenv/bin/update_rootfs
@@ -0,0 +1,16 @@
+#!/bin/sh
+
+. /env/config
+
+image=$rootfsimage
+
+if [ x$1 = xnand ]; then
+	part=/dev/nand0.root.bb
+elif [ x$1 = xnor ]; then
+	part=/dev/nor0.root
+else
+	echo "usage: $0 nor|nand [imagename]"
+	exit 1
+fi
+
+. /env/bin/_update $2
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
