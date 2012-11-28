Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tdegr-0003XO-5w
 for barebox@lists.infradead.org; Wed, 28 Nov 2012 10:16:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 Nov 2012 11:16:22 +0100
Message-Id: <1354097782-22047-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM i.MX53 loco: switch to new default env
To: barebox@lists.infradead.org

Also, update defconfig file for this. Significant changes:

- Compile in Thumb2 mode
- Use pbl lzo compressed image

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx53-loco/env/config     |   47 --------------------
 .../freescale-mx53-loco/env/init/config-board      |    7 +++
 arch/arm/configs/freescale_mx53_loco_defconfig     |   35 +++++++++++----
 arch/arm/mach-imx/Kconfig                          |    1 +
 4 files changed, 35 insertions(+), 55 deletions(-)
 delete mode 100644 arch/arm/boards/freescale-mx53-loco/env/config
 create mode 100644 arch/arm/boards/freescale-mx53-loco/env/init/config-board

diff --git a/arch/arm/boards/freescale-mx53-loco/env/config b/arch/arm/boards/freescale-mx53-loco/env/config
deleted file mode 100644
index 2ab1268..0000000
--- a/arch/arm/boards/freescale-mx53-loco/env/config
+++ /dev/null
@@ -1,47 +0,0 @@
-#!/bin/sh
-
-global.hostname=loco
-eth0.serverip=
-user=
-
-# use 'dhcp' to do dhcp in barebox and in kernel
-# use 'none' if you want to skip kernel ip autoconfiguration
-ip=dhcp
-global.dhcp.vendor_id=barebox-mx53-loco
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
-bootargs="console=ttymxc0,115200"
-
-disk_parts="256k(barebox)ro,128k(bareboxenv),4M(kernel),-(root)"
-
-# set a fancy prompt (if support is compiled in)
-PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
diff --git a/arch/arm/boards/freescale-mx53-loco/env/init/config-board b/arch/arm/boards/freescale-mx53-loco/env/init/config-board
new file mode 100644
index 0000000..a6cf69d
--- /dev/null
+++ b/arch/arm/boards/freescale-mx53-loco/env/init/config-board
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+# board defaults, do not change in running system. Change /env/config
+# instead
+
+global.hostname=loco
+global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/configs/freescale_mx53_loco_defconfig b/arch/arm/configs/freescale_mx53_loco_defconfig
index b50b050..b61f0cf 100644
--- a/arch/arm/configs/freescale_mx53_loco_defconfig
+++ b/arch/arm/configs/freescale_mx53_loco_defconfig
@@ -2,43 +2,57 @@ CONFIG_ARCH_IMX=y
 CONFIG_ARCH_IMX53=y
 CONFIG_IMX_IIM=y
 CONFIG_IMX_IIM_FUSE_BLOW=y
-CONFIG_AEABI=y
+CONFIG_THUMB2_BAREBOX=y
+CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
+CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
 CONFIG_TEXT_BASE=0x7ff00000
 CONFIG_MALLOC_SIZE=0x2000000
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_LONGHELP=y
-CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_MENU=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/freescale-mx53-loco/env/"
+CONFIG_RESET_SOURCE=y
 CONFIG_DEBUG_INFO=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
+CONFIG_CMD_MSLEEP=y
 CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
 CONFIG_CMD_TIME=y
+CONFIG_CMD_DIRNAME=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_READLINK=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_FILETYPE=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_IOMEM=y
-CONFIG_CMD_FLASH=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MD5SUM=y
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
+CONFIG_CMD_BAREBOX_UPDATE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_MAGICVAR=y
@@ -46,18 +60,19 @@ CONFIG_CMD_MAGICVAR_HELP=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_I2C=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_CLK=y
+CONFIG_CMD_WD=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_SMSC_PHY=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 # CONFIG_SPI is not set
 CONFIG_I2C=y
 CONFIG_I2C_IMX=y
+CONFIG_DISK_ATA=y
 CONFIG_USB=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_STORAGE=y
@@ -65,6 +80,10 @@ CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_IMX_ESDHC=y
 CONFIG_I2C_MC34708=y
+CONFIG_WATCHDOG=y
+CONFIG_WATCHDOG_IMX=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 3f4b452..548b107 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -446,6 +446,7 @@ choice
 	prompt "i.MX53 Board Type"
 
 config MACH_FREESCALE_MX53_LOCO
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	bool "Freescale i.MX53 LOCO"
 
 config MACH_FREESCALE_MX53_SMD
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
