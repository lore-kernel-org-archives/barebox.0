Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NWqEL-0006Pj-D6
	for barebox@lists.infradead.org; Mon, 18 Jan 2010 11:57:17 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 18 Jan 2010 12:56:30 +0100
Message-Id: <1263815791-10839-8-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1263815791-10839-7-git-send-email-mkl@pengutronix.de>
References: <1263815791-10839-1-git-send-email-mkl@pengutronix.de>
	<1263815791-10839-2-git-send-email-mkl@pengutronix.de>
	<1263815791-10839-3-git-send-email-mkl@pengutronix.de>
	<1263815791-10839-4-git-send-email-mkl@pengutronix.de>
	<1263815791-10839-5-git-send-email-mkl@pengutronix.de>
	<1263815791-10839-6-git-send-email-mkl@pengutronix.de>
	<1263815791-10839-7-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 7/8] i.MX35 3stack: update environemnt to support jffs and
	ubi/ubifs
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

ubifs from nand is default

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 board/freescale-mx35-3-stack/env/bin/_update       |    5 ++-
 board/freescale-mx35-3-stack/env/bin/boot          |   50 ++++++++++++--------
 board/freescale-mx35-3-stack/env/bin/init          |   15 +++---
 board/freescale-mx35-3-stack/env/bin/update_kernel |    2 +-
 board/freescale-mx35-3-stack/env/bin/update_root   |   16 ------
 board/freescale-mx35-3-stack/env/bin/update_rootfs |   20 ++++++++
 board/freescale-mx35-3-stack/env/config            |   41 +++++++++-------
 7 files changed, 87 insertions(+), 62 deletions(-)
 delete mode 100644 board/freescale-mx35-3-stack/env/bin/update_root
 create mode 100644 board/freescale-mx35-3-stack/env/bin/update_rootfs

diff --git a/board/freescale-mx35-3-stack/env/bin/_update b/board/freescale-mx35-3-stack/env/bin/_update
index fb7cbe8..4f0839f 100644
--- a/board/freescale-mx35-3-stack/env/bin/_update
+++ b/board/freescale-mx35-3-stack/env/bin/_update
@@ -20,7 +20,7 @@ fi
 
 ping $eth0.serverip
 if [ $? -ne 0 ] ; then
-	echo "update aborted"
+	echo "Server did not reply! Update aborted."
 	exit 1
 fi
 
@@ -28,9 +28,12 @@ unprotect $part
 
 echo
 echo "erasing partition $part"
+echo
 erase $part
 
 echo
 echo "flashing $image to $part"
 echo
 tftp $image $part
+
+protect $part
diff --git a/board/freescale-mx35-3-stack/env/bin/boot b/board/freescale-mx35-3-stack/env/bin/boot
index dfb59aa..fb2fe61 100644
--- a/board/freescale-mx35-3-stack/env/bin/boot
+++ b/board/freescale-mx35-3-stack/env/bin/boot
@@ -3,43 +3,53 @@
 . /env/config
 
 if [ x$1 = xnand ]; then
-	root=nand
-	kernel=nand
+	rootfs_loc=nand
+	kernel_loc=nand
+elif [ x$1 = xnor ]; then
+	rootfs_loc=nor
+	kernel_loc=nor
+elif [ x$1 = xnet ]; then
+	rootfs_loc=net
+	kernel_loc=net
 fi
 
-if [ x$1 = xnet ]; then
-	root=net
-	kernel=net
-fi
-
-if [ x$1 = xnor ]; then
-	root=nor
-	kernel=nor
-fi
 
 if [ x$ip = xdhcp ]; then
 	bootargs="$bootargs ip=dhcp"
-else
+elif [ x$ip != xno ]; then
 	bootargs="$bootargs ip=$eth0.ipaddr:$eth0.serverip:$eth0.gateway:$eth0.netmask:::"
 fi
 
-if [ x$root = xnand ]; then
-	bootargs="$bootargs root=$rootpart_nand rootfstype=jffs2"
-elif [ x$root = xnor ]; then
-	bootargs="$bootargs root=$rootpart_nor rootfstype=jffs2"
+
+if [ $rootfs_loc != net ]; then
+	if [ x$rootfs_loc = xnand ]; then
+		rootfs_mtdblock=$rootfs_mtdblock_nand
+	else
+		rootfs_mtdblock=$rootfs_mtdblock_nor
+	fi
+
+
+	if [ $rootfs_type = ubifs ]; then
+		bootargs="$bootargs root=ubi0:root ubi.mtd=$rootfs_mtdblock"
+	else
+		bootargs="$bootargs root=/dev/mtdblock$rootfs_mtdblock"
+	fi
+
+	bootargs="$bootargs rootfstype=$rootfs_type"
 else
 	bootargs="$bootargs root=/dev/nfs nfsroot=$eth0.serverip:$nfsroot,v3,tcp"
 fi
 
-bootargs="$bootargs mtdparts=physmap-flash.0:$nor_parts;imx_nand:$nand_parts"
 
-if [ $kernel = net ]; then
+bootargs="$bootargs mtdparts=\"physmap-flash.0:$nor_parts;mxc_nand:$nand_parts\""
+
+if [ $kernel_loc = net ]; then
 	if [ x$ip = xdhcp ]; then
 		dhcp
 	fi
-	tftp $uimage uImage || exit 1
+	tftp $kernel uImage || exit 1
 	bootm uImage
-elif [ $kernel = nor ]; then
+elif [ $kernel_loc = nor ]; then
 	bootm /dev/nor0.kernel
 else
 	bootm /dev/nand0.kernel.bb
diff --git a/board/freescale-mx35-3-stack/env/bin/init b/board/freescale-mx35-3-stack/env/bin/init
index cdf0f6b..c982f22 100644
--- a/board/freescale-mx35-3-stack/env/bin/init
+++ b/board/freescale-mx35-3-stack/env/bin/init
@@ -16,12 +16,13 @@ if [ -e /dev/nand0 ]; then
 	source /env/bin/hush_hack 
 fi
 
-#if [ -z $eth0.ethaddr ]; then
-#	while [ -z $eth0.ethaddr ]; do
-#		readline "no MAC address set for eth0. please enter the one found on your board: " eth0.ethaddr
-#	done
-#	echo -a /env/config "eth0.ethaddr=$eth0.ethaddr"
-#fi
+if [ -z $eth0.ethaddr ]; then
+	while [ -z $eth0.ethaddr ]; do
+		readline "no MAC address set for eth0. please enter the one found on your board: " eth0.ethaddr
+	done
+	echo -a /env/config "eth0.ethaddr=$eth0.ethaddr"
+	saveenv
+fi
 
 echo
 echo -n "Hit any key to stop autoboot: "
@@ -29,7 +30,7 @@ timeout -a $autoboot_timeout
 if [ $? != 0 ]; then
 	echo
 	echo "type update_kernel nand|nor [<imagename>] to update kernel into flash"
-	echo "type update_root nand|nor [<imagename>] to update rootfs into flash"
+	echo "type update_rootfs nand|nor [<imagename>] to update rootfs into flash"
 	echo
 	exit
 fi
diff --git a/board/freescale-mx35-3-stack/env/bin/update_kernel b/board/freescale-mx35-3-stack/env/bin/update_kernel
index 05c822d..63ad11a 100644
--- a/board/freescale-mx35-3-stack/env/bin/update_kernel
+++ b/board/freescale-mx35-3-stack/env/bin/update_kernel
@@ -1,8 +1,8 @@
 #!/bin/sh
 
 . /env/config
+image=$kernel
 
-image=$uimage
 if [ x$1 = xnand ]; then
 	part=/dev/nand0.kernel.bb
 elif [ x$1 = xnor ]; then
diff --git a/board/freescale-mx35-3-stack/env/bin/update_root b/board/freescale-mx35-3-stack/env/bin/update_root
deleted file mode 100644
index eaf36eb..0000000
--- a/board/freescale-mx35-3-stack/env/bin/update_root
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
diff --git a/board/freescale-mx35-3-stack/env/bin/update_rootfs b/board/freescale-mx35-3-stack/env/bin/update_rootfs
new file mode 100644
index 0000000..53dd2ca
--- /dev/null
+++ b/board/freescale-mx35-3-stack/env/bin/update_rootfs
@@ -0,0 +1,20 @@
+#!/bin/sh
+
+. /env/config
+
+if [ $rootfs_type = ubifs ]; then
+	image=${rootfs}.ubi
+else
+	image=${rootfs}.$rootfs_type
+fi
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
diff --git a/board/freescale-mx35-3-stack/env/config b/board/freescale-mx35-3-stack/env/config
index 9fcb3dc..51195f7 100644
--- a/board/freescale-mx35-3-stack/env/config
+++ b/board/freescale-mx35-3-stack/env/config
@@ -1,28 +1,35 @@
 #!/bin/sh
 
+# use 'dhcp' to do dhcp in barebox and in kernel
+# use 'no' if you don't want to pass the ip from barebox to the kernel
+#ip=dhcp
+
+# or set your networking parameters here
+#eth0.ipaddr=a.b.c.d
+#eth0.netmask=a.b.c.d
+#eth0.gateway=a.b.c.d
+#eth0.serverip=a.b.c.d
+
 # can be either 'net', 'nor' or 'nand''
-kernel=net
-root=net
+kernel_loc=nand
+rootfs_loc=nand
 
-uimage=uImage-pcm038
-jffs2=root-pcm038.jffs2
+# can be either 'jffs2', or 'ubifs'
+rootfs_type=ubifs
+
+kernel=uImage-mx35-3-stack
+rootfs=root-mx35-3-stack
+envimage=u-boot-v2-environment-mx35-3-stack
 
 autoboot_timeout=3
 
-nfsroot="/ptx/work/octopus/rsc/svn/oselas/bsp/phytec/phyCORE-i.MX27/OSELAS.BSP-Phytec-phyCORE-i.MX27-trunk/root"
+nfsroot="/path/to/nfs/root"
 bootargs="console=ttymxc0,115200"
 
-nor_parts="256k(barebox)ro,128k(bareboxenv),1536k(kernel),-(root)"
-rootpart_nor="/dev/mtdblock3"
-
-nand_parts="256k(barebox)ro,128k(bareboxenv),1536k(kernel),-(root)"
-rootpart_nand="/dev/mtdblock7"
+bootargs="$bootargs video=mx3fb:CTP-CLAA070LC0ACW"
 
-# use 'dhcp' to do dhcp in barebox and in kernel
-ip=dhcp
+nor_parts="256k(barebox)ro,512k(bareboxenv),2M(kernel),-(root)"
+rootfs_mtdblock_nor=3
 
-# or set your networking parameters here
-#eth0.ipaddr=a.b.c.d
-#eth0.netmask=a.b.c.d
-#eth0.gateway=a.b.c.d
-#eth0.serverip=a.b.c.d
+nand_parts="256k(barebox)ro,512k(bareboxenv),2M(kernel),-(root)"
+rootfs_mtdblock_nand=7
-- 
1.6.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
