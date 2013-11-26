Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VlLmR-0000ci-8A
 for barebox@lists.infradead.org; Tue, 26 Nov 2013 16:46:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Nov 2013 17:45:59 +0100
Message-Id: <1385484367-15366-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1385484367-15366-1-git-send-email-s.hauer@pengutronix.de>
References: <1385484367-15366-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 09/17] ARM: am33xx: beaglebone: remove mlo_large_defconfig
To: barebox@lists.infradead.org

As with devicetree support the binary will get too large for the
SRAM drop the configuration. It was mainly meant for debugging purposes
anyway.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/am335x_beaglebone_mlo_defconfig   | 29 ++++++++++++
 .../configs/am335x_beaglebone_mlo_large_defconfig  | 55 ----------------------
 .../configs/am335x_beaglebone_mlo_small_defconfig  | 29 ------------
 3 files changed, 29 insertions(+), 84 deletions(-)
 create mode 100644 arch/arm/configs/am335x_beaglebone_mlo_defconfig
 delete mode 100644 arch/arm/configs/am335x_beaglebone_mlo_large_defconfig
 delete mode 100644 arch/arm/configs/am335x_beaglebone_mlo_small_defconfig

diff --git a/arch/arm/configs/am335x_beaglebone_mlo_defconfig b/arch/arm/configs/am335x_beaglebone_mlo_defconfig
new file mode 100644
index 0000000..ea29c24
--- /dev/null
+++ b/arch/arm/configs/am335x_beaglebone_mlo_defconfig
@@ -0,0 +1,29 @@
+CONFIG_ARCH_OMAP=y
+CONFIG_ARCH_AM33XX=y
+# CONFIG_OMAP_GPMC is not set
+CONFIG_OMAP_BUILD_IFT=y
+CONFIG_THUMB2_BAREBOX=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+# CONFIG_BANNER is not set
+# CONFIG_MEMINFO is not set
+CONFIG_ENVIRONMENT_VARIABLES=y
+CONFIG_MMU=y
+CONFIG_TEXT_BASE=0x402F0400
+CONFIG_STACK_SIZE=0x1600
+CONFIG_MALLOC_SIZE=0x1000000
+CONFIG_MALLOC_TLSF=y
+CONFIG_PROMPT="MLO>"
+CONFIG_SHELL_NONE=y
+# CONFIG_ERRNO_MESSAGES is not set
+# CONFIG_TIMESTAMP is not set
+# CONFIG_DEFAULT_ENVIRONMENT is not set
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
+# CONFIG_SPI is not set
+CONFIG_MCI=y
+# CONFIG_MCI_WRITE is not set
+CONFIG_MCI_OMAP_HSMMC=y
+# CONFIG_FS_RAMFS is not set
+# CONFIG_FS_DEVFS is not set
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/configs/am335x_beaglebone_mlo_large_defconfig b/arch/arm/configs/am335x_beaglebone_mlo_large_defconfig
deleted file mode 100644
index d90f581..0000000
--- a/arch/arm/configs/am335x_beaglebone_mlo_large_defconfig
+++ /dev/null
@@ -1,55 +0,0 @@
-CONFIG_ARCH_OMAP=y
-CONFIG_ARCH_AM33XX=y
-# CONFIG_OMAP_GPMC is not set
-CONFIG_OMAP_BUILD_IFT=y
-CONFIG_THUMB2_BAREBOX=y
-# CONFIG_CMD_ARM_CPUINFO is not set
-CONFIG_MMU=y
-CONFIG_TEXT_BASE=0x402F0400
-CONFIG_MEMORY_LAYOUT_FIXED=y
-CONFIG_STACK_BASE=0x4030B800
-CONFIG_STACK_SIZE=0x1600
-CONFIG_MALLOC_BASE=0x8F000000
-CONFIG_MALLOC_SIZE=0x1000000
-CONFIG_PROMPT="barebox> "
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-# CONFIG_TIMESTAMP is not set
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/beaglebone/env"
-CONFIG_BAREBOXENV_TARGET=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-# CONFIG_CMD_UMOUNT is not set
-# CONFIG_CMD_CLEAR is not set
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_TIMEOUT=y
-# CONFIG_CMD_VERSION is not set
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
-# CONFIG_SPI is not set
-CONFIG_MCI=y
-CONFIG_MCI_STARTUP=y
-# CONFIG_MCI_INFO is not set
-# CONFIG_MCI_WRITE is not set
-CONFIG_MCI_OMAP_HSMMC=y
-CONFIG_FS_FAT=y
-CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/configs/am335x_beaglebone_mlo_small_defconfig b/arch/arm/configs/am335x_beaglebone_mlo_small_defconfig
deleted file mode 100644
index ea29c24..0000000
--- a/arch/arm/configs/am335x_beaglebone_mlo_small_defconfig
+++ /dev/null
@@ -1,29 +0,0 @@
-CONFIG_ARCH_OMAP=y
-CONFIG_ARCH_AM33XX=y
-# CONFIG_OMAP_GPMC is not set
-CONFIG_OMAP_BUILD_IFT=y
-CONFIG_THUMB2_BAREBOX=y
-# CONFIG_CMD_ARM_CPUINFO is not set
-# CONFIG_BANNER is not set
-# CONFIG_MEMINFO is not set
-CONFIG_ENVIRONMENT_VARIABLES=y
-CONFIG_MMU=y
-CONFIG_TEXT_BASE=0x402F0400
-CONFIG_STACK_SIZE=0x1600
-CONFIG_MALLOC_SIZE=0x1000000
-CONFIG_MALLOC_TLSF=y
-CONFIG_PROMPT="MLO>"
-CONFIG_SHELL_NONE=y
-# CONFIG_ERRNO_MESSAGES is not set
-# CONFIG_TIMESTAMP is not set
-# CONFIG_DEFAULT_ENVIRONMENT is not set
-CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
-# CONFIG_SPI is not set
-CONFIG_MCI=y
-# CONFIG_MCI_WRITE is not set
-CONFIG_MCI_OMAP_HSMMC=y
-# CONFIG_FS_RAMFS is not set
-# CONFIG_FS_DEVFS is not set
-CONFIG_FS_FAT=y
-CONFIG_FS_FAT_LFN=y
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
