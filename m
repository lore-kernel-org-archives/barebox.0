Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SUYI7-0002AO-VQ
 for barebox@lists.infradead.org; Wed, 16 May 2012 07:05:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 16 May 2012 09:04:56 +0200
Message-Id: <1337151896-5888-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1337151896-5888-1-git-send-email-s.hauer@pengutronix.de>
References: <1337151896-5888-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] ARM pcm038: Switch to new environment
To: barebox@lists.infradead.org

This switches the pcm038 board to the new environment template and
does the necessary defaultconfig adjustments. Additionally it disables
UBI support as the pcm038 image is getting bigger and bigger and UBI
seems to be the most unused big (in size) feature.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pcm038/env/config             |   52 -------------------------
 arch/arm/boards/pcm038/env/init/bootargs-base |    8 ++++
 arch/arm/boards/pcm038/env/init/hostname      |    8 ++++
 arch/arm/boards/pcm038/env/init/mtdparts-nand |   11 ++++++
 arch/arm/boards/pcm038/env/init/mtdparts-nor  |   11 ++++++
 arch/arm/configs/pcm038_defconfig             |   14 +++----
 arch/arm/mach-imx/Kconfig                     |    1 +
 7 files changed, 46 insertions(+), 59 deletions(-)
 delete mode 100644 arch/arm/boards/pcm038/env/config
 create mode 100644 arch/arm/boards/pcm038/env/init/bootargs-base
 create mode 100644 arch/arm/boards/pcm038/env/init/hostname
 create mode 100644 arch/arm/boards/pcm038/env/init/mtdparts-nand
 create mode 100644 arch/arm/boards/pcm038/env/init/mtdparts-nor

diff --git a/arch/arm/boards/pcm038/env/config b/arch/arm/boards/pcm038/env/config
deleted file mode 100644
index 32be5ec..0000000
--- a/arch/arm/boards/pcm038/env/config
+++ /dev/null
@@ -1,52 +0,0 @@
-#!/bin/sh
-
-hostname=pcm038
-eth0.serverip=
-user=
-
-# use 'dhcp' to do dhcp in barebox and in kernel
-# use 'none' if you want to skip kernel ip autoconfiguration
-ip=dhcp
-
-# or set your networking parameters here
-#eth0.ipaddr=a.b.c.d
-#eth0.netmask=a.b.c.d
-#eth0.gateway=a.b.c.d
-#eth0.serverip=a.b.c.d
-
-# can be either 'nfs', 'tftp', 'nor' or 'nand'
-kernel_loc=tftp
-# can be either 'net', 'nor', 'nand' or 'initrd'
-rootfs_loc=net
-
-# can be either 'jffs2' or 'ubifs'
-rootfs_type=ubifs
-rootfsimage=root-$hostname.$rootfs_type
-
-kernelimage=zImage-$hostname
-#kernelimage=uImage-$hostname
-#kernelimage=Image-$hostname
-#kernelimage=Image-$hostname.lzo
-
-if [ -n $user ]; then
-	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/$hostname"
-	rootfsimage="$user"-"$rootfsimage"
-else
-	nfsroot="$eth0.serverip:/path/to/nfs/root"
-fi
-
-autoboot_timeout=3
-
-bootargs="console=ttymxc0,115200"
-
-nor_parts="512k(barebox)ro,128k(bareboxenv),2M(kernel),-(root)"
-rootfs_mtdblock_nor=3
-
-nand_parts="512k(barebox)ro,128k(bareboxenv),2M(kernel),-(root)"
-rootfs_mtdblock_nand=7
-nand_device="mxc_nand"
-
-# set a fancy prompt (if support is compiled in)
-PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
-
diff --git a/arch/arm/boards/pcm038/env/init/bootargs-base b/arch/arm/boards/pcm038/env/init/bootargs-base
new file mode 100644
index 0000000..d869754
--- /dev/null
+++ b/arch/arm/boards/pcm038/env/init/bootargs-base
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "Base bootargs"
+	exit
+fi
+
+global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/pcm038/env/init/hostname b/arch/arm/boards/pcm038/env/init/hostname
new file mode 100644
index 0000000..09c2f08
--- /dev/null
+++ b/arch/arm/boards/pcm038/env/init/hostname
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "hostname"
+	exit
+fi
+
+global.hostname=pcm038
diff --git a/arch/arm/boards/pcm038/env/init/mtdparts-nand b/arch/arm/boards/pcm038/env/init/mtdparts-nand
new file mode 100644
index 0000000..84220b7
--- /dev/null
+++ b/arch/arm/boards/pcm038/env/init/mtdparts-nand
@@ -0,0 +1,11 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "NAND partitions"
+	exit
+fi
+
+mtdparts="512k(nand0.barebox)ro,128k(nand0.bareboxenv),4M(nand0.kernel),-(nand0.root)"
+kernelname="mxc_nand"
+
+mtdparts-add -b -d nand0 -k ${kernelname} -p ${mtdparts}
diff --git a/arch/arm/boards/pcm038/env/init/mtdparts-nor b/arch/arm/boards/pcm038/env/init/mtdparts-nor
new file mode 100644
index 0000000..c2c4065
--- /dev/null
+++ b/arch/arm/boards/pcm038/env/init/mtdparts-nor
@@ -0,0 +1,11 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "NOR partitions"
+	exit
+fi
+
+mtdparts="512k(nor0.barebox)ro,128k(nor0.bareboxenv),4M(nor0.kernel),-(nor0.root)"
+kernelname="physmap-flash.0"
+
+mtdparts-add -d nor0 -k ${kernelname} -p ${mtdparts}
diff --git a/arch/arm/configs/pcm038_defconfig b/arch/arm/configs/pcm038_defconfig
index 4cb83e5..5ce4f7a 100644
--- a/arch/arm/configs/pcm038_defconfig
+++ b/arch/arm/configs/pcm038_defconfig
@@ -12,21 +12,22 @@ CONFIG_MALLOC_SIZE=0x1000000
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_LONGHELP=y
-CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
 CONFIG_PARTITION=y
 CONFIG_PARTITION_DISK=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/pcm038/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
 CONFIG_CMD_TIME=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_MEMINFO=y
@@ -54,9 +55,8 @@ CONFIG_CMD_UNCOMPRESS=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_PING=y
-CONFIG_NET_TFTP=y
-CONFIG_NET_TFTP_PUSH=y
 CONFIG_NET_NETCONSOLE=y
+CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 CONFIG_NET_USB=y
 CONFIG_NET_USB_ASIX=y
@@ -67,13 +67,13 @@ CONFIG_NAND=y
 # CONFIG_NAND_ECC_SOFT is not set
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
 CONFIG_NAND_IMX=y
-CONFIG_UBI=y
 CONFIG_USB=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_ULPI=y
 CONFIG_VIDEO=y
 CONFIG_DRIVER_VIDEO_IMX=y
 CONFIG_IMXFB_DRIVER_VIDEO_IMX_OVERLAY=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
 CONFIG_ZLIB=y
 CONFIG_LZO_DECOMPRESS=y
-CONFIG_MFD_MC13XXX=y
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index b402677..7905027 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -290,6 +290,7 @@ config MACH_PCM038
 	select SPI
 	select DRIVER_SPI_IMX
 	select MFD_MC13XXX
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	help
 	  Say Y here if you are using Phytec's phyCORE-i.MX27 (pcm038) equipped
 	  with a Freescale i.MX27 Processor
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
