Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P5a1d-0006jc-6H
	for barebox@lists.infradead.org; Tue, 12 Oct 2010 08:15:58 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 12 Oct 2010 10:13:44 +0200
Message-Id: <1286871224-19770-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20101011135329.GA7412@game.jcrosoft.org>
References: <20101011135329.GA7412@game.jcrosoft.org>
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
Subject: [PATCH] nhk8815: use defaultenv
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/nhk8815/env/bin/_update            |   36 ----------------
 arch/arm/boards/nhk8815/env/bin/boot               |   38 -----------------
 arch/arm/boards/nhk8815/env/bin/init               |   28 ------------
 .../boards/nhk8815/env/bin/update_barebox_xmodem   |   19 --------
 arch/arm/boards/nhk8815/env/bin/update_kernel      |    8 ----
 arch/arm/boards/nhk8815/env/bin/update_root        |    8 ----
 arch/arm/boards/nhk8815/env/config                 |   44 +++++++++++++------
 arch/arm/configs/nhk8815_defconfig                 |    5 +-
 8 files changed, 33 insertions(+), 153 deletions(-)
 delete mode 100644 arch/arm/boards/nhk8815/env/bin/_update
 delete mode 100644 arch/arm/boards/nhk8815/env/bin/boot
 delete mode 100644 arch/arm/boards/nhk8815/env/bin/init
 delete mode 100644 arch/arm/boards/nhk8815/env/bin/update_barebox_xmodem
 delete mode 100644 arch/arm/boards/nhk8815/env/bin/update_kernel
 delete mode 100644 arch/arm/boards/nhk8815/env/bin/update_root

diff --git a/arch/arm/boards/nhk8815/env/bin/_update b/arch/arm/boards/nhk8815/env/bin/_update
deleted file mode 100644
index fb7cbe8..0000000
--- a/arch/arm/boards/nhk8815/env/bin/_update
+++ /dev/null
@@ -1,36 +0,0 @@
-#!/bin/sh
-
-if [ -z "$part" -o -z "$image" ]; then
-	echo "define \$part and \$image"
-	exit 1
-fi
-
-if [ \! -e "$part" ]; then
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
diff --git a/arch/arm/boards/nhk8815/env/bin/boot b/arch/arm/boards/nhk8815/env/bin/boot
deleted file mode 100644
index fd8d957..0000000
--- a/arch/arm/boards/nhk8815/env/bin/boot
+++ /dev/null
@@ -1,38 +0,0 @@
-#!/bin/sh
-
-. /env/config
-
-if [ x$1 = xflash ]; then
-	root=flash
-	kernel=flash
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
-if [ x$root = xflash ]; then
-	bootargs="$bootargs root=$rootpart rootfstype=jffs2"
-else
-	bootargs="$bootargs root=/dev/nfs nfsroot=192.168.23.111:$nfsroot"
-fi
-
-bootargs="$bootargs"
-
-if [ $kernel = net ]; then
-	if [ x$ip = xdhcp ]; then
-		dhcp
-	fi
-	tftp $uimage uImage
-	bootm uImage
-else
-	bootm /dev/nor0.kernel
-fi
-
diff --git a/arch/arm/boards/nhk8815/env/bin/init b/arch/arm/boards/nhk8815/env/bin/init
deleted file mode 100644
index 5b45a70..0000000
--- a/arch/arm/boards/nhk8815/env/bin/init
+++ /dev/null
@@ -1,28 +0,0 @@
-#!/bin/sh
-
-PATH=/env/bin
-export PATH
-
-. /env/config
-
-if [ -e /dev/nand0 ]; then
-	addpart /dev/nand0 $nand_parts
-
-	# Uh, oh, hush first expands wildcards and then starts executing
-	# commands. What a bug!
-	source /env/bin/hush_hack
-fi
-
-echo
-echo -n "Hit any key to stop autoboot: "
-timeout -a $autoboot_timeout
-if [ $? != 0 ]; then
-	echo
-	echo "type update_kernel [<imagename>] to update kernel into flash"
-	echo "type udate_root [<imagename>] to update rootfs into flash"
-	echo "type update_barebox_xmodem nor to update barebox into flash"
-	echo
-	exit
-fi
-
-boot
diff --git a/arch/arm/boards/nhk8815/env/bin/update_barebox_xmodem b/arch/arm/boards/nhk8815/env/bin/update_barebox_xmodem
deleted file mode 100644
index 40f4ad3..0000000
--- a/arch/arm/boards/nhk8815/env/bin/update_barebox_xmodem
+++ /dev/null
@@ -1,19 +0,0 @@
-#!/bin/sh
-
-. /env/config
-
-part=/dev/nand0.barebox
-
-loadb -f barebox.bin -c
-
-unprotect $part
-echo
-echo "erasing partition $part"
-erase $part
-
-echo
-echo "flashing barebox.bin to $part"
-echo
-cp barebox.bin $part
-crc32 -f barebox.bin
-crc32 -f $part
diff --git a/arch/arm/boards/nhk8815/env/bin/update_kernel b/arch/arm/boards/nhk8815/env/bin/update_kernel
deleted file mode 100644
index db0f4c2..0000000
--- a/arch/arm/boards/nhk8815/env/bin/update_kernel
+++ /dev/null
@@ -1,8 +0,0 @@
-#!/bin/sh
-
-. /env/config
-
-image=$uimage
-part=/dev/nand0.kernel
-
-. /env/bin/_update $1
diff --git a/arch/arm/boards/nhk8815/env/bin/update_root b/arch/arm/boards/nhk8815/env/bin/update_root
deleted file mode 100644
index 9530e84..0000000
--- a/arch/arm/boards/nhk8815/env/bin/update_root
+++ /dev/null
@@ -1,8 +0,0 @@
-#!/bin/sh
-
-. /env/config
-
-image=$jffs2
-part=/dev/nand0.rootfs
-
-. /env/bin/_update $1
diff --git a/arch/arm/boards/nhk8815/env/config b/arch/arm/boards/nhk8815/env/config
index 7e7fc45..e657a76 100644
--- a/arch/arm/boards/nhk8815/env/config
+++ b/arch/arm/boards/nhk8815/env/config
@@ -1,16 +1,33 @@
 #!/bin/sh
 
-# can be either 'net' or 'flash'
-kernel=net
-root=net
-
-# use 'dhcp' todo dhcp in uboot and in kernel
+# use 'dhcp' to do dhcp in barebox and in kernel
+# use 'none' if you want to skip kernel ip autoconfiguration
 ip=dhcp
 
-#
-# setup default ethernet address
-#
-#eth0.serverip=192.168.23.108
+# or set your networking parameters here
+#eth0.ipaddr=a.b.c.d
+#eth0.netmask=a.b.c.d
+#eth0.gateway=a.b.c.d
+#eth0.serverip=a.b.c.d
+
+# can be either 'net' or 'nand'
+kernel_loc=net
+# can be either 'net', 'nand' or 'initrd'
+rootfs_loc=net
+
+# can be either 'jffs2' or 'ubifs'
+rootfs_type=ubifs
+rootfsimage=root.$rootfs_type
+
+# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
+#kernelimage_type=zimage
+#kernelimage=zImage
+kernelimage_type=uimage
+kernelimage=uImage
+#kernelimage_type=raw
+#kernelimage=Image
+#kernelimage_type=raw_lzo
+#kernelimage=Image.lzo
 
 # Partition			Size	Start
 # XloaderTOC + X-Loader		256KB	0x00000000
@@ -22,11 +39,10 @@ ip=dhcp
 
 nand_parts="256k(xloader)ro,256k(meminit),2M(barebox),3M(kernel),22M(rootfs),100M(userfs),384k(free),128k(bareboxenv)"
 
-uimage=uImage-nhk15
-
-# use 'dhcp' to do dhcp in uboot and in kernel
-ip=dhcp
-
 autoboot_timeout=3
 
 bootargs="root=/dev/ram0 console=ttyAMA1,115200n8 init=linuxrc"
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
+
diff --git a/arch/arm/configs/nhk8815_defconfig b/arch/arm/configs/nhk8815_defconfig
index e3f4102..b81afe2 100644
--- a/arch/arm/configs/nhk8815_defconfig
+++ b/arch/arm/configs/nhk8815_defconfig
@@ -10,7 +10,8 @@ CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 CONFIG_PASSWD_SUM_SHA1=y
 CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/nhk8815/env"
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv arch/arm/boards/nhk8815/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
@@ -22,8 +23,8 @@ CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
 CONFIG_CMD_PASSWD=y
 CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_CRC=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_BOOTM_ZLIB=y
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
