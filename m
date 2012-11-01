Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTpd3-0007HI-Bf
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 07:55:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  1 Nov 2012 08:55:46 +0100
Message-Id: <1351756548-24640-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1351756548-24640-1-git-send-email-s.hauer@pengutronix.de>
References: <1351756548-24640-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/6] ARM OMAP3 beagle: switch to new environment
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/beagle/env/boot/mmc              |   10 +++++
 arch/arm/boards/beagle/env/init/bootargs-base    |    8 ++++
 arch/arm/boards/beagle/env/init/hostname         |    8 ++++
 arch/arm/boards/beagle/env/network/eth0-discover |    5 +++
 arch/arm/configs/omap3530_beagle_defconfig       |   49 ++++++++++++++++------
 arch/arm/mach-omap/Kconfig                       |    1 +
 6 files changed, 69 insertions(+), 12 deletions(-)
 create mode 100644 arch/arm/boards/beagle/env/boot/mmc
 create mode 100644 arch/arm/boards/beagle/env/init/bootargs-base
 create mode 100644 arch/arm/boards/beagle/env/init/hostname
 create mode 100644 arch/arm/boards/beagle/env/network/eth0-discover

diff --git a/arch/arm/boards/beagle/env/boot/mmc b/arch/arm/boards/beagle/env/boot/mmc
new file mode 100644
index 0000000..58bd557
--- /dev/null
+++ b/arch/arm/boards/beagle/env/boot/mmc
@@ -0,0 +1,10 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	boot-menu-add-entry "$0" "MMC (ext3)"
+	exit
+fi
+
+global.bootm.image="/boot/zImage"
+#global.bootm.oftree="/boot/oftree"
+global.linux.bootargs.dyn.root="root=mmcblk0p2 rootfstype=ext3 rootwait"
diff --git a/arch/arm/boards/beagle/env/init/bootargs-base b/arch/arm/boards/beagle/env/init/bootargs-base
new file mode 100644
index 0000000..442cce3
--- /dev/null
+++ b/arch/arm/boards/beagle/env/init/bootargs-base
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "Base bootargs"
+	exit
+fi
+
+global.linux.bootargs.base="console=ttyO2,115200"
diff --git a/arch/arm/boards/beagle/env/init/hostname b/arch/arm/boards/beagle/env/init/hostname
new file mode 100644
index 0000000..996c2d9
--- /dev/null
+++ b/arch/arm/boards/beagle/env/init/hostname
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "hostname"
+	exit
+fi
+
+global.hostname=panda
diff --git a/arch/arm/boards/beagle/env/network/eth0-discover b/arch/arm/boards/beagle/env/network/eth0-discover
new file mode 100644
index 0000000..77552d3
--- /dev/null
+++ b/arch/arm/boards/beagle/env/network/eth0-discover
@@ -0,0 +1,5 @@
+#!/bin/sh
+
+# Panda has a network adapter on USB
+
+usb
diff --git a/arch/arm/configs/omap3530_beagle_defconfig b/arch/arm/configs/omap3530_beagle_defconfig
index 0d83a4f..1807e04 100644
--- a/arch/arm/configs/omap3530_beagle_defconfig
+++ b/arch/arm/configs/omap3530_beagle_defconfig
@@ -1,44 +1,67 @@
 CONFIG_ARCH_OMAP=y
-# CONFIG_OMAP3_COPY_CLOCK_SRAM is not set
 CONFIG_MACH_BEAGLE=y
-CONFIG_AEABI=y
+CONFIG_THUMB2_BAREBOX=y
+CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
-CONFIG_TEXT_BASE=0x81000000
+CONFIG_PBL_IMAGE=y
+CONFIG_MMU=y
+CONFIG_TEXT_BASE=0x87e00000
+CONFIG_MALLOC_SIZE=0x2000000
+CONFIG_MALLOC_TLSF=y
+CONFIG_KALLSYMS=y
 CONFIG_PROMPT="barebox> "
 CONFIG_LONGHELP=y
-CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_HUSH_GETOPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-# CONFIG_TIMESTAMP is not set
-CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_MENU=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/beagle/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
+CONFIG_CMD_MSLEEP=y
 CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_TIME=y
+CONFIG_CMD_DIRNAME=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_READLINK=y
+CONFIG_CMD_TFTP=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MD5SUM=y
 CONFIG_CMD_FLASH=y
-# CONFIG_CMD_BOOTM is not set
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+# CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_I2C=y
+CONFIG_CMD_MIITOOL=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 CONFIG_NET_USB=y
@@ -58,6 +81,8 @@ CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_OMAP_HSMMC=y
 CONFIG_I2C_TWL4030=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index c4a88ab..3315d1c 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -103,6 +103,7 @@ config MACH_OMAP343xSDP
 config MACH_BEAGLE
 	bool "Texas Instrument's Beagle Board"
 	select HAVE_NOSHELL
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	depends on ARCH_OMAP3
 	  help
 	  Say Y here if you are using Beagle Board
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
