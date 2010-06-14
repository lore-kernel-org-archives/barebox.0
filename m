Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OO6He-0007zF-JP
	for barebox@lists.infradead.org; Mon, 14 Jun 2010 09:48:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 14 Jun 2010 11:48:39 +0200
Message-Id: <1276508921-3264-10-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/11] pcm043: use generic default env
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/pcm043_defconfig  |    2 +-
 board/pcm043/env/bin/_update       |   36 --------------------
 board/pcm043/env/bin/boot          |   47 --------------------------
 board/pcm043/env/bin/hush_hack     |    1 -
 board/pcm043/env/bin/init          |   37 --------------------
 board/pcm043/env/bin/update_kernel |   15 --------
 board/pcm043/env/bin/update_root   |   16 ---------
 board/pcm043/env/config            |   65 ++++++++++++++++++++++++++----------
 8 files changed, 48 insertions(+), 171 deletions(-)
 delete mode 100644 board/pcm043/env/bin/_update
 delete mode 100644 board/pcm043/env/bin/boot
 delete mode 100644 board/pcm043/env/bin/hush_hack
 delete mode 100644 board/pcm043/env/bin/init
 delete mode 100644 board/pcm043/env/bin/update_kernel
 delete mode 100644 board/pcm043/env/bin/update_root

diff --git a/arch/arm/configs/pcm043_defconfig b/arch/arm/configs/pcm043_defconfig
index 5563356..72a8a42 100644
--- a/arch/arm/configs/pcm043_defconfig
+++ b/arch/arm/configs/pcm043_defconfig
@@ -109,7 +109,7 @@ CONFIG_CONSOLE_ACTIVATE_FIRST=y
 # CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="board/pcm043/env/"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv board/pcm043/env"
 
 #
 # Debugging
diff --git a/board/pcm043/env/bin/_update b/board/pcm043/env/bin/_update
deleted file mode 100644
index 014bce3..0000000
--- a/board/pcm043/env/bin/_update
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
diff --git a/board/pcm043/env/bin/boot b/board/pcm043/env/bin/boot
deleted file mode 100644
index 7bbff2d..0000000
--- a/board/pcm043/env/bin/boot
+++ /dev/null
@@ -1,47 +0,0 @@
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
-if [ x$1 = xnor ]; then
-	root=nor
-	kernel=nor
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
-elif [ x$root = xnor ]; then
-	bootargs="$bootargs root=$rootpart_nor rootfstype=jffs2"
-else
-	bootargs="$bootargs root=/dev/nfs nfsroot=$eth0.serverip:$nfsroot,v3,tcp"
-fi
-
-bootargs="$bootargs mtdparts=physmap-flash.0:$nor_parts;mxc_nand:$nand_parts"
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
diff --git a/board/pcm043/env/bin/hush_hack b/board/pcm043/env/bin/hush_hack
deleted file mode 100644
index 5fffa92..0000000
--- a/board/pcm043/env/bin/hush_hack
+++ /dev/null
@@ -1 +0,0 @@
-nand -a /dev/nand0.*
diff --git a/board/pcm043/env/bin/init b/board/pcm043/env/bin/init
deleted file mode 100644
index 3bfd194..0000000
--- a/board/pcm043/env/bin/init
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
diff --git a/board/pcm043/env/bin/update_kernel b/board/pcm043/env/bin/update_kernel
deleted file mode 100644
index 05c822d..0000000
--- a/board/pcm043/env/bin/update_kernel
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
diff --git a/board/pcm043/env/bin/update_root b/board/pcm043/env/bin/update_root
deleted file mode 100644
index eaf36eb..0000000
--- a/board/pcm043/env/bin/update_root
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
diff --git a/board/pcm043/env/config b/board/pcm043/env/config
index c1ab234..212b6a9 100644
--- a/board/pcm043/env/config
+++ b/board/pcm043/env/config
@@ -1,29 +1,58 @@
 #!/bin/sh
 
-# can be either 'net', 'nor' or 'nand''
-kernel=nor
-root=nor
+machine=pcm043
+eth0.serverip=
+user=
 
-uimage=uImage-pcm043
-jffs2=root-pcm043.jffs2
+# use 'dhcp' to do dhcp in barebox and in kernel
+# use 'none' if you want to skip kernel ip autoconfiguration
+ip=dhcp
+
+# or set your networking parameters here
+#eth0.ipaddr=a.b.c.d
+#eth0.netmask=a.b.c.d
+#eth0.gateway=a.b.c.d
+#eth0.serverip=a.b.c.d
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
 
 autoboot_timeout=3
 
-nfsroot="/path/to/nfs_root"
 bootargs="console=ttymxc0,115200"
 
-nor_parts="256k(barebox)ro,128k(bareboxenv),2048k(kernel),-(root)"
-rootpart_nor="/dev/mtdblock3"
-nand_parts="256k(barebox)ro,128k(bareboxenv),2048k(kernel),-(root)"
-rootpart_nand="/dev/mtdblock3"
+bootargs="$bootargs video=mx3fb:CTP-CLAA070LC0ACW"
 
-# use 'dhcp' to do dhcp in barebox and in kernel
-ip=dhcp
+nor_parts="256k(barebox)ro,128k(bareboxenv),2M(kernel),-(root)"
+rootfs_mtdblock_nor=3
 
-# or set your networking parameters here
-eth0.ipaddr=192.168.3.11
-eth0.netmask=255.255.255.0
-#eth0.gateway=a.b.c.d
-#eth0.serverip=192.168.3.10
-#eth0.ethaddr=aa.bb.cc.dd.ee.ff
+nand_parts="256k(barebox)ro,128k(bareboxenv),2M(kernel),-(root)"
+rootfs_mtdblock_nand=7
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
