Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OO6He-00080D-JM
	for barebox@lists.infradead.org; Mon, 14 Jun 2010 09:48:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 14 Jun 2010 11:48:41 +0200
Message-Id: <1276508921-3264-12-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/11] pca100: use generic default env
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/pca100_defconfig          |    2 +-
 board/phycard-i.MX27/env/bin/_update       |   36 -----------------
 board/phycard-i.MX27/env/bin/boot          |   40 -------------------
 board/phycard-i.MX27/env/bin/hush_hack     |    1 -
 board/phycard-i.MX27/env/bin/init          |   37 ------------------
 board/phycard-i.MX27/env/bin/update_kernel |   15 -------
 board/phycard-i.MX27/env/bin/update_root   |   16 --------
 board/phycard-i.MX27/env/config            |   57 +++++++++++++++++++++-------
 8 files changed, 44 insertions(+), 160 deletions(-)
 delete mode 100644 board/phycard-i.MX27/env/bin/_update
 delete mode 100644 board/phycard-i.MX27/env/bin/boot
 delete mode 100644 board/phycard-i.MX27/env/bin/hush_hack
 delete mode 100644 board/phycard-i.MX27/env/bin/init
 delete mode 100644 board/phycard-i.MX27/env/bin/update_kernel
 delete mode 100644 board/phycard-i.MX27/env/bin/update_root

diff --git a/arch/arm/configs/pca100_defconfig b/arch/arm/configs/pca100_defconfig
index f0a9512..52a5d93 100644
--- a/arch/arm/configs/pca100_defconfig
+++ b/arch/arm/configs/pca100_defconfig
@@ -110,7 +110,7 @@ CONFIG_CONSOLE_ACTIVATE_FIRST=y
 # CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="board/phycard-i.MX27/env/"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv board/phycard-i.MX27/env"
 
 #
 # Debugging
diff --git a/board/phycard-i.MX27/env/bin/_update b/board/phycard-i.MX27/env/bin/_update
deleted file mode 100644
index 014bce3..0000000
--- a/board/phycard-i.MX27/env/bin/_update
+++ /dev/null
@@ -1,36 +0,0 @@
-#!/bin/sh
-
-if [ -z "$part" -o -z "$image" ]; then
-	echo "define \$part and \$image"
-	exit 1
-fi
-
-if [ ! -e "$part" ]; then
-	echo "Partition $part does not exist"
-	exit 1
-fi
-
-if [ $# = 1 ]; then
-	image=$1
-fi
-
-if [ x$ip = xdhcp ]; then
-	dhcp
-fi
-
-ping $eth0.serverip
-if [ $? -ne 0 ] ; then
-	echo "update aborted"
-	exit 1
-fi
-
-unprotect $part
-
-echo
-echo "erasing partition $part"
-erase $part
-
-echo
-echo "flashing $image to $part"
-echo
-tftp $image $part
diff --git a/board/phycard-i.MX27/env/bin/boot b/board/phycard-i.MX27/env/bin/boot
deleted file mode 100644
index 56a0377..0000000
--- a/board/phycard-i.MX27/env/bin/boot
+++ /dev/null
@@ -1,40 +0,0 @@
-#!/bin/sh
-
-. /env/config
-
-if [ x$1 = xnand ]; then
-	root=nand
-	kernel=nand
-fi
-
-if [ x$1 = xnet ]; then
-	root=net
-	kernel=net
-fi
-
-if [ x$ip = xdhcp ]; then
-	bootargs="$bootargs ip=dhcp"
-else
-	bootargs="$bootargs ip=$eth0.ipaddr:$eth0.serverip:$eth0.gateway:$eth0.netmask:::"
-fi
-
-if [ x$root = xnand ]; then
-	bootargs="$bootargs root=$rootpart_nand rootfstype=jffs2"
-else
-	bootargs="$bootargs root=/dev/nfs nfsroot=$eth0.serverip:$nfsroot,v3,tcp"
-fi
-
-bootargs="$bootargs mtdparts=mxc_nand:$nand_parts"
-
-if [ $kernel = net ]; then
-	if [ x$ip = xdhcp ]; then
-		dhcp
-	fi
-	tftp $uimage uImage || exit 1
-	bootm uImage
-elif [ $kernel = nor ]; then
-	bootm /dev/nor0.kernel
-else
-	bootm /dev/nand0.kernel.bb
-fi
-
diff --git a/board/phycard-i.MX27/env/bin/hush_hack b/board/phycard-i.MX27/env/bin/hush_hack
deleted file mode 100644
index 5fffa92..0000000
--- a/board/phycard-i.MX27/env/bin/hush_hack
+++ /dev/null
@@ -1 +0,0 @@
-nand -a /dev/nand0.*
diff --git a/board/phycard-i.MX27/env/bin/init b/board/phycard-i.MX27/env/bin/init
deleted file mode 100644
index 3bfd194..0000000
--- a/board/phycard-i.MX27/env/bin/init
+++ /dev/null
@@ -1,37 +0,0 @@
-#!/bin/sh
-
-PATH=/env/bin
-export PATH
-
-. /env/config
-if [ -e /dev/nor0 ]; then
-	addpart /dev/nor0 $nor_parts
-fi
-
-if [ -e /dev/nand0 ]; then
-	addpart /dev/nand0 $nand_parts
-
-	# Uh, oh, hush first expands wildcards and then starts executing
-	# commands. What a bug!
-	source /env/bin/hush_hack 
-fi
-
-if [ -z $eth0.ethaddr ]; then
-	while [ -z $eth0.ethaddr ]; do
-		readline "no MAC address set for eth0. please enter the one found on your board: " eth0.ethaddr
-	done
-	echo -a /env/config "eth0.ethaddr=$eth0.ethaddr"
-fi
-
-echo
-echo -n "Hit any key to stop autoboot: "
-timeout -a $autoboot_timeout
-if [ $? != 0 ]; then
-	echo
-	echo "type update_kernel nand|nor [<imagename>] to update kernel into flash"
-	echo "type update_root nand|nor [<imagename>] to update rootfs into flash"
-	echo
-	exit
-fi
-
-boot
diff --git a/board/phycard-i.MX27/env/bin/update_kernel b/board/phycard-i.MX27/env/bin/update_kernel
deleted file mode 100644
index 05c822d..0000000
--- a/board/phycard-i.MX27/env/bin/update_kernel
+++ /dev/null
@@ -1,15 +0,0 @@
-#!/bin/sh
-
-. /env/config
-
-image=$uimage
-if [ x$1 = xnand ]; then
-	part=/dev/nand0.kernel.bb
-elif [ x$1 = xnor ]; then
-	part=/dev/nor0.kernel
-else
-	echo "usage: $0 nor|nand [imagename]"
-	exit 1
-fi
-
-. /env/bin/_update $2
diff --git a/board/phycard-i.MX27/env/bin/update_root b/board/phycard-i.MX27/env/bin/update_root
deleted file mode 100644
index eaf36eb..0000000
--- a/board/phycard-i.MX27/env/bin/update_root
+++ /dev/null
@@ -1,16 +0,0 @@
-#!/bin/sh
-
-. /env/config
-
-image=$uimage
-if [ x$1 = xnand ]; then
-	part=/dev/nand0.root.bb
-elif [ x$1 = xnor ]; then
-	part=/dev/nor0.root
-else
-	echo "usage: $0 nor|nand [imagename]"
-	exit 1
-fi
-
-. /env/bin/_update $2
-
diff --git a/board/phycard-i.MX27/env/config b/board/phycard-i.MX27/env/config
index 6a93580..d0670de 100644
--- a/board/phycard-i.MX27/env/config
+++ b/board/phycard-i.MX27/env/config
@@ -1,21 +1,11 @@
 #!/bin/sh
 
-# can be either 'net', 'nor' or 'nand''
-kernel=net
-root=net
-
-uimage=uImage-pca100
-jffs2=root-pca100.jffs2
-
-autoboot_timeout=3
-
-nfsroot="/tmp/root"
-bootargs="console=ttymxc0,115200"
-
-nand_parts="256k(barebox)ro,128k(bareboxenv),1536k(kernel),-(root)"
-rootpart_nand="/dev/mtdblock3"
+machine=pca100
+eth0.serverip=
+user=
 
 # use 'dhcp' to do dhcp in barebox and in kernel
+# use 'none' if you want to skip kernel ip autoconfiguration
 ip=dhcp
 
 # or set your networking parameters here
@@ -23,3 +13,42 @@ ip=dhcp
 #eth0.netmask=a.b.c.d
 #eth0.gateway=a.b.c.d
 #eth0.serverip=a.b.c.d
+
+# can be either 'net', 'nor' or 'nand'
+kernel_loc=net
+# can be either 'net', 'nor', 'nand' or 'initrd'
+rootfs_loc=net
+
+# can be either 'jffs2' or 'ubifs'
+rootfs_type=ubifs
+rootfsimage=root-$machine.$rootfs_type
+
+# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
+kernelimage_type=zimage
+kernelimage=zImage-$machine
+#kernelimage_type=uimage
+#kernelimage=uImage-$machine
+#kernelimage_type=raw
+#kernelimage=Image-$machine
+#kernelimage_type=raw_lzo
+#kernelimage=Image-$machine.lzo
+
+if [ -n $user ]; then
+	kernelimage="$user"-"$kernelimage"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/$machine"
+	rootfsimage="$user"-"$rootfsimage"
+else
+	nfsroot="$eth0.serverip:/path/to/nfs/root"
+fi
+
+autoboot_timeout=3
+
+bootargs="console=ttymxc0,115200"
+
+nand_parts="256k(barebox)ro,128k(bareboxenv),2M(kernel),-(root)"
+rootfs_mtdblock_nand=7
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
+
+
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
