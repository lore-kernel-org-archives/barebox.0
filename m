Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1VlLmZ-0001vL-Ma
 for barebox@lists.infradead.org; Tue, 26 Nov 2013 16:46:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Nov 2013 17:46:07 +0100
Message-Id: <1385484367-15366-18-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 17/17] ARM: OMAP: consolidate am335x mlo defconfigs
To: barebox@lists.infradead.org

The Beaglebone and the AM335x Phytec phyCORE can be compiled
together, so merge the configs into a am335x_mlo_defconfig.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/am335x_beaglebone_mlo_defconfig | 33 ------------------
 arch/arm/configs/am335x_mlo_defconfig            | 44 ++++++++++++++++++++++++
 arch/arm/configs/pcm051_mlo_defconfig            | 37 --------------------
 3 files changed, 44 insertions(+), 70 deletions(-)
 delete mode 100644 arch/arm/configs/am335x_beaglebone_mlo_defconfig
 create mode 100644 arch/arm/configs/am335x_mlo_defconfig
 delete mode 100644 arch/arm/configs/pcm051_mlo_defconfig

diff --git a/arch/arm/configs/am335x_beaglebone_mlo_defconfig b/arch/arm/configs/am335x_beaglebone_mlo_defconfig
deleted file mode 100644
index 905cc6d..0000000
--- a/arch/arm/configs/am335x_beaglebone_mlo_defconfig
+++ /dev/null
@@ -1,33 +0,0 @@
-CONFIG_ARCH_OMAP=y
-# CONFIG_OMAP_GPMC is not set
-CONFIG_OMAP_BUILD_IFT=y
-CONFIG_OMAP_MULTI_BOARDS=y
-CONFIG_MACH_BEAGLEBONE=y
-CONFIG_THUMB2_BAREBOX=y
-# CONFIG_CMD_ARM_CPUINFO is not set
-# CONFIG_BANNER is not set
-# CONFIG_MEMINFO is not set
-CONFIG_ENVIRONMENT_VARIABLES=y
-CONFIG_MMU=y
-CONFIG_TEXT_BASE=0x0
-CONFIG_MALLOC_SIZE=0x0
-CONFIG_MALLOC_TLSF=y
-CONFIG_RELOCATABLE=y
-CONFIG_PROMPT="MLO>"
-CONFIG_SHELL_NONE=y
-# CONFIG_ERRNO_MESSAGES is not set
-# CONFIG_TIMESTAMP is not set
-# CONFIG_DEFAULT_ENVIRONMENT is not set
-CONFIG_OFDEVICE=y
-CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
-# CONFIG_SPI is not set
-CONFIG_MCI=y
-# CONFIG_MCI_WRITE is not set
-CONFIG_MCI_OMAP_HSMMC=y
-CONFIG_PINCTRL=y
-CONFIG_PINCTRL_SINGLE=y
-# CONFIG_FS_RAMFS is not set
-# CONFIG_FS_DEVFS is not set
-CONFIG_FS_FAT=y
-CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/configs/am335x_mlo_defconfig b/arch/arm/configs/am335x_mlo_defconfig
new file mode 100644
index 0000000..19f78d0
--- /dev/null
+++ b/arch/arm/configs/am335x_mlo_defconfig
@@ -0,0 +1,44 @@
+CONFIG_ARCH_OMAP=y
+CONFIG_OMAP_BUILD_IFT=y
+CONFIG_OMAP_MULTI_BOARDS=y
+CONFIG_MACH_BEAGLEBONE=y
+CONFIG_MACH_PCM051=y
+CONFIG_THUMB2_BAREBOX=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+# CONFIG_MEMINFO is not set
+CONFIG_MMU=y
+CONFIG_TEXT_BASE=0x0
+CONFIG_MALLOC_SIZE=0x0
+CONFIG_MALLOC_TLSF=y
+CONFIG_RELOCATABLE=y
+CONFIG_PROMPT="MLO>"
+CONFIG_SHELL_NONE=y
+# CONFIG_ERRNO_MESSAGES is not set
+# CONFIG_TIMESTAMP is not set
+CONFIG_CONSOLE_ACTIVATE_NONE=y
+# CONFIG_DEFAULT_ENVIRONMENT is not set
+CONFIG_OFDEVICE=y
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
+CONFIG_DRIVER_SPI_OMAP3=y
+CONFIG_MTD=y
+# CONFIG_MTD_WRITE is not set
+# CONFIG_MTD_OOB_DEVICE is not set
+CONFIG_MTD_M25P80=y
+CONFIG_NAND=y
+# CONFIG_NAND_ECC_SOFT is not set
+# CONFIG_NAND_ECC_HW_SYNDROME is not set
+# CONFIG_NAND_ECC_HW_NONE is not set
+# CONFIG_NAND_INFO is not set
+# CONFIG_NAND_BBT is not set
+CONFIG_NAND_OMAP_GPMC=y
+CONFIG_MCI=y
+# CONFIG_MCI_WRITE is not set
+CONFIG_MCI_OMAP_HSMMC=y
+CONFIG_PINCTRL=y
+CONFIG_PINCTRL_SINGLE=y
+CONFIG_BUS_OMAP_GPMC=y
+# CONFIG_FS_RAMFS is not set
+# CONFIG_FS_DEVFS is not set
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/configs/pcm051_mlo_defconfig b/arch/arm/configs/pcm051_mlo_defconfig
deleted file mode 100644
index ae5764b..0000000
--- a/arch/arm/configs/pcm051_mlo_defconfig
+++ /dev/null
@@ -1,37 +0,0 @@
-CONFIG_ARCH_OMAP=y
-CONFIG_OMAP_BUILD_IFT=y
-CONFIG_OMAP_MULTI_BOARDS=y
-CONFIG_MACH_PCM051=y
-CONFIG_THUMB2_BAREBOX=y
-# CONFIG_CMD_ARM_CPUINFO is not set
-# CONFIG_MEMINFO is not set
-CONFIG_ENVIRONMENT_VARIABLES=y
-CONFIG_MMU=y
-CONFIG_TEXT_BASE=0x0
-CONFIG_MALLOC_SIZE=0x0
-CONFIG_MALLOC_TLSF=y
-CONFIG_RELOCATABLE=y
-CONFIG_PROMPT="MLO>"
-CONFIG_SHELL_NONE=y
-# CONFIG_ERRNO_MESSAGES is not set
-# CONFIG_TIMESTAMP is not set
-CONFIG_CONSOLE_SIMPLE=y
-# CONFIG_DEFAULT_ENVIRONMENT is not set
-CONFIG_OFDEVICE=y
-CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
-CONFIG_DRIVER_SPI_OMAP3=y
-CONFIG_MTD=y
-CONFIG_MTD_M25P80=y
-CONFIG_NAND=y
-CONFIG_NAND_OMAP_GPMC=y
-CONFIG_MCI=y
-CONFIG_MCI_STARTUP=y
-CONFIG_MCI_OMAP_HSMMC=y
-CONFIG_PINCTRL=y
-CONFIG_PINCTRL_SINGLE=y
-CONFIG_BUS_OMAP_GPMC=y
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
