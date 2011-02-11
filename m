Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.26.mail-out.ovh.net ([46.105.43.121] helo=26.mail-out.ovh.net)
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Pnyie-0002oJ-B3
	for barebox@lists.infradead.org; Fri, 11 Feb 2011 19:31:54 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 11 Feb 2011 20:22:04 +0100
Message-Id: <1297452124-22242-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH] at91sam263ek: switch to default env
To: barebox@lists.infradead.org
Cc: Patrice Vilchez <patrice.vilchez@atmel.com>, Nicolas Ferre <nicolas.ferre@atmel.com>

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
Cc: Patrice Vilchez <patrice.vilchez@atmel.com>
---
 arch/arm/boards/at91sam9263ek/env/bin/_update      |   36 --------------
 arch/arm/boards/at91sam9263ek/env/bin/boot         |   47 ------------------
 arch/arm/boards/at91sam9263ek/env/bin/hush_hack    |    1 -
 arch/arm/boards/at91sam9263ek/env/bin/init         |   38 ---------------
 .../at91sam9263ek/env/bin/update_barebox_xmodem    |   26 ----------
 .../arm/boards/at91sam9263ek/env/bin/update_kernel |   15 ------
 arch/arm/boards/at91sam9263ek/env/bin/update_root  |   16 ------
 arch/arm/boards/at91sam9263ek/env/config           |   51 ++++++++++++-------
 arch/arm/configs/at91sam9263ek_defconfig           |    3 +-
 9 files changed, 34 insertions(+), 199 deletions(-)
 delete mode 100644 arch/arm/boards/at91sam9263ek/env/bin/_update
 delete mode 100644 arch/arm/boards/at91sam9263ek/env/bin/boot
 delete mode 100644 arch/arm/boards/at91sam9263ek/env/bin/hush_hack
 delete mode 100644 arch/arm/boards/at91sam9263ek/env/bin/init
 delete mode 100644 arch/arm/boards/at91sam9263ek/env/bin/update_barebox_xmodem
 delete mode 100644 arch/arm/boards/at91sam9263ek/env/bin/update_kernel
 delete mode 100644 arch/arm/boards/at91sam9263ek/env/bin/update_root

diff --git a/arch/arm/boards/at91sam9263ek/env/bin/_update b/arch/arm/boards/at91sam9263ek/env/bin/_update
deleted file mode 100644
index 014bce3..0000000
--- a/arch/arm/boards/at91sam9263ek/env/bin/_update
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
diff --git a/arch/arm/boards/at91sam9263ek/env/bin/boot b/arch/arm/boards/at91sam9263ek/env/bin/boot
deleted file mode 100644
index 533dea7..0000000
--- a/arch/arm/boards/at91sam9263ek/env/bin/boot
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
-bootargs="$bootargs mtdparts=physmap-flash.0:$nor_parts"
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
diff --git a/arch/arm/boards/at91sam9263ek/env/bin/hush_hack b/arch/arm/boards/at91sam9263ek/env/bin/hush_hack
deleted file mode 100644
index 5fffa92..0000000
--- a/arch/arm/boards/at91sam9263ek/env/bin/hush_hack
+++ /dev/null
@@ -1 +0,0 @@
-nand -a /dev/nand0.*
diff --git a/arch/arm/boards/at91sam9263ek/env/bin/init b/arch/arm/boards/at91sam9263ek/env/bin/init
deleted file mode 100644
index eaa298d..0000000
--- a/arch/arm/boards/at91sam9263ek/env/bin/init
+++ /dev/null
@@ -1,38 +0,0 @@
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
-	echo "type update_kernel nor [<imagename>] to update kernel into flash"
-	echo "type update_root nor [<imagename>] to update rootfs into flash"
-	echo "type update_barebox_xmodem nor to update barebox into flash"
-	echo
-	exit
-fi
-
-boot
diff --git a/arch/arm/boards/at91sam9263ek/env/bin/update_barebox_xmodem b/arch/arm/boards/at91sam9263ek/env/bin/update_barebox_xmodem
deleted file mode 100644
index 39818b5..0000000
--- a/arch/arm/boards/at91sam9263ek/env/bin/update_barebox_xmodem
+++ /dev/null
@@ -1,26 +0,0 @@
-#!/bin/sh
-
-. /env/config
-
-if [ x$1 = xnand ]; then
-	part=/dev/nand0.barebox
-elif [ x$1 = xnor ]; then
-	part=/dev/nor0.barebox
-else
-	echo "usage: $0 nor|nand"
-	exit 1
-fi
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
diff --git a/arch/arm/boards/at91sam9263ek/env/bin/update_kernel b/arch/arm/boards/at91sam9263ek/env/bin/update_kernel
deleted file mode 100644
index 05c822d..0000000
--- a/arch/arm/boards/at91sam9263ek/env/bin/update_kernel
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
diff --git a/arch/arm/boards/at91sam9263ek/env/bin/update_root b/arch/arm/boards/at91sam9263ek/env/bin/update_root
deleted file mode 100644
index a751372..0000000
--- a/arch/arm/boards/at91sam9263ek/env/bin/update_root
+++ /dev/null
@@ -1,16 +0,0 @@
-#!/bin/sh
-
-. /env/config
-
-image=$jffs2
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
diff --git a/arch/arm/boards/at91sam9263ek/env/config b/arch/arm/boards/at91sam9263ek/env/config
index 4b322ad..49c4339 100644
--- a/arch/arm/boards/at91sam9263ek/env/config
+++ b/arch/arm/boards/at91sam9263ek/env/config
@@ -1,28 +1,41 @@
 #!/bin/sh
 
-# can be either 'net', 'nor' or 'nand''
-kernel=net
-root=net
-
-uimage=uImage
-jffs2=root.jffs2
-
-autoboot_timeout=3
-
-nfsroot=""
-bootargs="console=ttyS0,115200"
-
-nor_parts="256k(barebox)ro,64k(bareboxenv),1536k(kernel),-(root)"
-rootpart_nor="/dev/mtdblock3"
-
-#nand_parts="256k(barebox)ro,64k(bareboxenv),1536k(kernel),-(root)"
-#rootpart_nand="/dev/mtdblock7"
-
 # use 'dhcp' to do dhcp in barebox and in kernel
+# use 'none' if you want to skip kernel ip autoconfiguration
 ip=dhcp
 
 # or set your networking parameters here
 #eth0.ipaddr=a.b.c.d
 #eth0.netmask=a.b.c.d
 #eth0.gateway=a.b.c.d
-#eth0.serverip=192.168.23.1
+#eth0.serverip=a.b.c.d
+
+# can be either 'net' , 'nor' or 'nand'
+kernel_loc=net
+# can be either 'net', 'nor', 'nand' or 'initrd'
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
+
+nand_parts="256k(barebox)ro,64k(bareboxenv),1536k(kernel),-(root)"
+rootfs_mtdblock_nand=3
+
+autoboot_timeout=3
+
+bootargs="console=ttyS0,115200"
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
+
diff --git a/arch/arm/configs/at91sam9263ek_defconfig b/arch/arm/configs/at91sam9263ek_defconfig
index c92999f..3e7752a 100644
--- a/arch/arm/configs/at91sam9263ek_defconfig
+++ b/arch/arm/configs/at91sam9263ek_defconfig
@@ -3,9 +3,11 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PROMPT="9263-EK:"
 CONFIG_LONGHELP=y
 CONFIG_GLOB=y
+CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/at91sam9263ek/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
@@ -15,7 +17,6 @@ CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_CRC=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_BOOTM_ZLIB=y
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
