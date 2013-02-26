Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1UAHMA-00086E-29
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 10:01:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Feb 2013 11:01:42 +0100
Message-Id: <1361872903-2575-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM i.MX pcm043: Switch to new environment
To: barebox@lists.infradead.org

- switch to new environment
- make barebox partitions 512K big
- update defconfig for new env:
  - enable menu support
  - miitool support
  - clk commands
  - oftree support
  - let/dirname/readlink commands
  - enable external nand boot support

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pcm043/env/boot/nand-ubi      |   10 +++++
 arch/arm/boards/pcm043/env/config             |   53 -------------------------
 arch/arm/boards/pcm043/env/init/config-board  |    7 ++++
 arch/arm/boards/pcm043/env/init/mtdparts-nand |   11 +++++
 arch/arm/boards/pcm043/env/init/mtdparts-nor  |   11 +++++
 arch/arm/boards/pcm043/pcm043.c               |    8 ++--
 arch/arm/configs/pcm043_defconfig             |   34 ++++++++++++----
 arch/arm/mach-imx/Kconfig                     |    1 +
 8 files changed, 71 insertions(+), 64 deletions(-)
 create mode 100644 arch/arm/boards/pcm043/env/boot/nand-ubi
 delete mode 100644 arch/arm/boards/pcm043/env/config
 create mode 100644 arch/arm/boards/pcm043/env/init/config-board
 create mode 100644 arch/arm/boards/pcm043/env/init/mtdparts-nand
 create mode 100644 arch/arm/boards/pcm043/env/init/mtdparts-nor

diff --git a/arch/arm/boards/pcm043/env/boot/nand-ubi b/arch/arm/boards/pcm043/env/boot/nand-ubi
new file mode 100644
index 0000000..67b0cb4
--- /dev/null
+++ b/arch/arm/boards/pcm043/env/boot/nand-ubi
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
diff --git a/arch/arm/boards/pcm043/env/config b/arch/arm/boards/pcm043/env/config
deleted file mode 100644
index 4913053..0000000
--- a/arch/arm/boards/pcm043/env/config
+++ /dev/null
@@ -1,53 +0,0 @@
-#!/bin/sh
-
-global.hostname=pcm043
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
-bootargs="$bootargs video=mx3fb:CTP-CLAA070LC0ACW"
-
-nor_parts="256k(barebox)ro,128k(bareboxenv),2M(kernel),-(root)"
-rootfs_mtdblock_nor=3
-
-nand_parts="256k(barebox)ro,128k(bareboxenv),2M(kernel),-(root)"
-rootfs_mtdblock_nand=7
-
-# set a fancy prompt (if support is compiled in)
-PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
-
diff --git a/arch/arm/boards/pcm043/env/init/config-board b/arch/arm/boards/pcm043/env/init/config-board
new file mode 100644
index 0000000..545fdff
--- /dev/null
+++ b/arch/arm/boards/pcm043/env/init/config-board
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+# board defaults, do not change in running system. Change /env/config
+# instead
+
+global.hostname=pcm043
+global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/pcm043/env/init/mtdparts-nand b/arch/arm/boards/pcm043/env/init/mtdparts-nand
new file mode 100644
index 0000000..8a41f62
--- /dev/null
+++ b/arch/arm/boards/pcm043/env/init/mtdparts-nand
@@ -0,0 +1,11 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "NAND partitions"
+	exit
+fi
+
+mtdparts="512k(nand0.barebox),256k(nand0.bareboxenv),4M(nand0.kernel),-(nand0.root)"
+kernelname="mxc_nand"
+
+mtdparts-add -b -d nand0 -k ${kernelname} -p ${mtdparts}
diff --git a/arch/arm/boards/pcm043/env/init/mtdparts-nor b/arch/arm/boards/pcm043/env/init/mtdparts-nor
new file mode 100644
index 0000000..f787f28
--- /dev/null
+++ b/arch/arm/boards/pcm043/env/init/mtdparts-nor
@@ -0,0 +1,11 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "NOR partitions"
+	exit
+fi
+
+mtdparts="512k(nor0.barebox),128k(nor0.bareboxenv),4M(nor0.kernel),-(nor0.root)"
+kernelname="physmap-flash.0"
+
+mtdparts-add -d nor0 -k ${kernelname} -p ${mtdparts}
diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
index 95da8f0..563a98a 100644
--- a/arch/arm/boards/pcm043/pcm043.c
+++ b/arch/arm/boards/pcm043/pcm043.c
@@ -140,15 +140,15 @@ static int imx35_devices_init(void)
 	if ((reg & 0xc00) == 0x800) {   /* reset mode: external boot */
 		switch ( (reg >> 25) & 0x3) {
 		case 0x01:              /* NAND is the source */
-			devfs_add_partition("nand0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self_raw");
+			devfs_add_partition("nand0", 0x00000, SZ_512K, DEVFS_PARTITION_FIXED, "self_raw");
 			dev_add_bb_dev("self_raw", "self0");
-			devfs_add_partition("nand0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env_raw");
+			devfs_add_partition("nand0", SZ_512K, SZ_256K, DEVFS_PARTITION_FIXED, "env_raw");
 			dev_add_bb_dev("env_raw", "env0");
 			break;
 
 		case 0x00:              /* NOR is the source */
-			devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self0"); /* ourself */
-			devfs_add_partition("nor0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");  /* environment */
+			devfs_add_partition("nor0", 0x00000, SZ_512K, DEVFS_PARTITION_FIXED, "self0"); /* ourself */
+			devfs_add_partition("nor0", SZ_512K, SZ_128K, DEVFS_PARTITION_FIXED, "env0");  /* environment */
 			protect_file("/dev/env0", 1);
 			break;
 		}
diff --git a/arch/arm/configs/pcm043_defconfig b/arch/arm/configs/pcm043_defconfig
index 7c62193..5447777 100644
--- a/arch/arm/configs/pcm043_defconfig
+++ b/arch/arm/configs/pcm043_defconfig
@@ -1,9 +1,9 @@
 CONFIG_ARCH_IMX=y
 CONFIG_CACHE_L2X0=y
 CONFIG_ARCH_IMX_EXTERNAL_BOOT=y
+CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND=y
 CONFIG_ARCH_IMX35=y
 CONFIG_MACH_PCM043=y
-CONFIG_IMX_CLKO=y
 CONFIG_IMX_IIM=y
 CONFIG_IMX_IIM_FUSE_BLOW=y
 CONFIG_AEABI=y
@@ -15,24 +15,37 @@ CONFIG_MALLOC_SIZE=0x1000000
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_LONGHELP=y
-CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
 CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_PARTITION_DISK=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/pcm043/env"
+CONFIG_RESET_SOURCE=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
+CONFIG_CMD_MSLEEP=y
 CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
+CONFIG_CMD_LET=y
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
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MD5SUM=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_BOOTM_VERBOSE=y
@@ -40,22 +53,26 @@ CONFIG_CMD_BOOTM_INITRD=y
 CONFIG_CMD_BOOTM_OFTREE=y
 CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
-# CONFIG_CMD_BOOTZ is not set
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_OFTREE_PROBE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OF_NODE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_CLK=y
+CONFIG_CMD_WD=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 # CONFIG_SPI is not set
@@ -65,5 +82,8 @@ CONFIG_MTD=y
 CONFIG_NAND=y
 CONFIG_NAND_IMX=y
 CONFIG_UBI=y
+CONFIG_WATCHDOG=y
+CONFIG_WATCHDOG_IMX=y
+CONFIG_FS_TFTP=y
 CONFIG_ZLIB=y
 CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 4115d35..2678ab9 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -362,6 +362,7 @@ config MACH_FREESCALE_MX35_3STACK
 config MACH_PCM043
 	bool "phyCORE-i.MX35"
 	select ARCH_HAS_L2X0
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	help
 	  Say Y here if you are using Phytec's phyCORE-i.MX35 (pcm043) equipped
 	  with a Freescale i.MX35 Processor
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
