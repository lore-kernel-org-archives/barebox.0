Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tvlv2-0001wT-6D
 for barebox@lists.infradead.org; Thu, 17 Jan 2013 09:37:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 17 Jan 2013 10:37:44 +0100
Message-Id: <1358415464-4657-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1358415464-4657-1-git-send-email-s.hauer@pengutronix.de>
References: <1358415464-4657-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] ARM Ka-Ro Tx25: Switch to new environment
To: barebox@lists.infradead.org

Also update config for supporting external NAND boot.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/karo-tx25/env/bin/init_board     |    6 ---
 arch/arm/boards/karo-tx25/env/boot/nand-ubi      |   10 +++++
 arch/arm/boards/karo-tx25/env/config             |   48 ----------------------
 arch/arm/boards/karo-tx25/env/init/config-board  |    7 ++++
 arch/arm/boards/karo-tx25/env/init/mtdparts-nand |   11 +++++
 arch/arm/configs/tx25stk5_defconfig              |   42 ++++++++++++++-----
 arch/arm/mach-imx/Kconfig                        |    1 +
 7 files changed, 61 insertions(+), 64 deletions(-)
 delete mode 100644 arch/arm/boards/karo-tx25/env/bin/init_board
 create mode 100644 arch/arm/boards/karo-tx25/env/boot/nand-ubi
 delete mode 100644 arch/arm/boards/karo-tx25/env/config
 create mode 100644 arch/arm/boards/karo-tx25/env/init/config-board
 create mode 100644 arch/arm/boards/karo-tx25/env/init/mtdparts-nand

diff --git a/arch/arm/boards/karo-tx25/env/bin/init_board b/arch/arm/boards/karo-tx25/env/bin/init_board
deleted file mode 100644
index 1f35c96..0000000
--- a/arch/arm/boards/karo-tx25/env/bin/init_board
+++ /dev/null
@@ -1,6 +0,0 @@
-
-if [ -e /dev/fb0 -a -e /env/splash.bmp ]; then
-	splash /env/splash.bmp
-	fb0.enable=1
-fi
-
diff --git a/arch/arm/boards/karo-tx25/env/boot/nand-ubi b/arch/arm/boards/karo-tx25/env/boot/nand-ubi
new file mode 100644
index 0000000..67b0cb4
--- /dev/null
+++ b/arch/arm/boards/karo-tx25/env/boot/nand-ubi
@@ -0,0 +1,10 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	boot-menu-add-entry "$0" "nand (UBI)"
+	exit
+fi
+
+global.bootm.image="/dev/nand0.kernel.bb"
+#global.bootm.oftree="/env/oftree"
+global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=nand0.root rootfstype=ubifs"
diff --git a/arch/arm/boards/karo-tx25/env/config b/arch/arm/boards/karo-tx25/env/config
deleted file mode 100644
index 4ccf082..0000000
--- a/arch/arm/boards/karo-tx25/env/config
+++ /dev/null
@@ -1,48 +0,0 @@
-
-global.hostname=tx25
-baseboard=tx28stk5
-user=
-
-# use 'dhcp' to do dhcp in barebox and in kernel
-# use 'none' if you want to skip kernel ip autoconfiguration
-ip=dhcp
-
-# or set your networking parameters here
-#eth0.ipaddr=a.b.c.d
-#eth0.ethaddr=de:ad:be:ef:00:00
-#eth0.netmask=a.b.c.d
-#eth0.serverip=a.b.c.d
-#eth0.gateway=a.b.c.d
-
-# can be either 'nfs' or 'tftp'
-kernel_loc=tftp
-# can be either 'net' or 'initrd'
-rootfs_loc=net
-
-# can be either 'jffs2' or 'ubifs'
-rootfs_type=ubifs
-rootfsimage=root-${global.hostname}.$rootfs_type
-
-kernelimage=zImage-${global.hostname}
-#kernelimage=uImage-${global.hostname}
-#kernelimage=Image-${global.hostname}
-#kernelimage=Image-${global.hostname}.lzo
-
-if [ -n $user ]; then
-	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/${global.hostname}"
-	rootfsimage="$user"-"$rootfsimage"
-else
-	nfsroot="$eth0.serverip:/path/to/nfs/root"
-fi
-
-autoboot_timeout=3
-
-bootargs="console=ttymxc0,115200 tx25_base=$baseboard"
-
-nand_parts="512k(barebox)ro,512k(bareboxenv),4M(kernel),-(root)"
-nand_device=mxc_nand
-rootfs_mtdblock_nand=3
-
-PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
-
diff --git a/arch/arm/boards/karo-tx25/env/init/config-board b/arch/arm/boards/karo-tx25/env/init/config-board
new file mode 100644
index 0000000..943b002
--- /dev/null
+++ b/arch/arm/boards/karo-tx25/env/init/config-board
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+# board defaults, do not change in running system. Change /env/config
+# instead
+
+global.hostname=tx25
+global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/karo-tx25/env/init/mtdparts-nand b/arch/arm/boards/karo-tx25/env/init/mtdparts-nand
new file mode 100644
index 0000000..4fffefc
--- /dev/null
+++ b/arch/arm/boards/karo-tx25/env/init/mtdparts-nand
@@ -0,0 +1,11 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "NAND partitions"
+	exit
+fi
+
+mtdparts="512k(nand0.barebox)ro,512k(nand0.bareboxenv),4M(nand0.kernel),-(nand0.root)"
+kernelname="mxc_nand"
+
+mtdparts-add -b -d nand0 -k ${kernelname} -p ${mtdparts}
diff --git a/arch/arm/configs/tx25stk5_defconfig b/arch/arm/configs/tx25stk5_defconfig
index 8ec5178..365a940 100644
--- a/arch/arm/configs/tx25stk5_defconfig
+++ b/arch/arm/configs/tx25stk5_defconfig
@@ -1,58 +1,71 @@
 CONFIG_ARCH_IMX=y
+CONFIG_ARCH_IMX_EXTERNAL_BOOT=y
+CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND=y
 CONFIG_ARCH_IMX25=y
 CONFIG_MACH_TX25=y
 CONFIG_IMX_IIM=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
+CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
+CONFIG_TEXT_BASE=0x91d00000
 CONFIG_MALLOC_SIZE=0x1000000
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_LONGHELP=y
-CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/karo-tx25/env"
+CONFIG_RESET_SOURCE=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
+CONFIG_CMD_MSLEEP=y
 CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIME=y
+CONFIG_CMD_DIRNAME=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_READLINK=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_FILETYPE=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MD5SUM=y
 CONFIG_CMD_FLASH=y
+CONFIG_CMD_UBIFORMAT=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_BOOTM_VERBOSE=y
 CONFIG_CMD_BOOTM_INITRD=y
 CONFIG_CMD_BOOTM_OFTREE=y
 CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
-# CONFIG_CMD_BOOTZ is not set
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_OFTREE_PROBE=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_SPLASH=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_SPLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_CLK=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 # CONFIG_SPI is not set
@@ -62,5 +75,14 @@ CONFIG_NAND_IMX=y
 CONFIG_UBI=y
 CONFIG_VIDEO=y
 CONFIG_DRIVER_VIDEO_IMX=y
+CONFIG_MCI=y
+CONFIG_MCI_IMX_ESDHC=y
+CONFIG_WATCHDOG=y
+CONFIG_WATCHDOG_IMX=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
 CONFIG_ZLIB=y
 CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index feef9ad..3cb35a0 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -259,6 +259,7 @@ config MACH_FREESCALE_MX25_3STACK
 config MACH_TX25
 	bool "Ka-Ro TX25"
 	select MACH_HAS_LOWLEVEL_INIT
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	help
 	  Say Y here if you are using the Ka-Ro tx25 board
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
