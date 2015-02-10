Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YL6cG-00082A-MH
 for barebox@lists.infradead.org; Tue, 10 Feb 2015 08:56:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 10 Feb 2015 09:55:57 +0100
Message-Id: <1423558557-2700-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: Phytec phyCORE OMAP4460: Split xload defconfigs
To: Barebox List <barebox@lists.infradead.org>

The configs grew too big to support both NAND and MMC at the
same time, so split them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../phytec-phycore-omap4460-xload-mmc_defconfig    | 27 ++++++++++++++
 .../phytec-phycore-omap4460-xload-nand_defconfig   | 34 ++++++++++++++++++
 .../phytec-phycore-omap4460-xload_defconfig        | 42 ----------------------
 3 files changed, 61 insertions(+), 42 deletions(-)
 create mode 100644 arch/arm/configs/phytec-phycore-omap4460-xload-mmc_defconfig
 create mode 100644 arch/arm/configs/phytec-phycore-omap4460-xload-nand_defconfig
 delete mode 100644 arch/arm/configs/phytec-phycore-omap4460-xload_defconfig

diff --git a/arch/arm/configs/phytec-phycore-omap4460-xload-mmc_defconfig b/arch/arm/configs/phytec-phycore-omap4460-xload-mmc_defconfig
new file mode 100644
index 0000000..4e9e266
--- /dev/null
+++ b/arch/arm/configs/phytec-phycore-omap4460-xload-mmc_defconfig
@@ -0,0 +1,27 @@
+CONFIG_ARCH_OMAP=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0xC000
+CONFIG_OMAP_BUILD_IFT=y
+CONFIG_MACH_PCM049=y
+CONFIG_THUMB2_BAREBOX=y
+# CONFIG_ARM_EXCEPTIONS is not set
+# CONFIG_MEMINFO is not set
+CONFIG_MMU=y
+CONFIG_TEXT_BASE=0x40300000
+CONFIG_MALLOC_SIZE=0x2000000
+CONFIG_MALLOC_DUMMY=y
+CONFIG_PROMPT="barebox> "
+CONFIG_SHELL_NONE=y
+# CONFIG_ERRNO_MESSAGES is not set
+# CONFIG_TIMESTAMP is not set
+CONFIG_CONSOLE_SIMPLE=y
+# CONFIG_DEFAULT_ENVIRONMENT is not set
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
+# CONFIG_SPI is not set
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+# CONFIG_MCI_WRITE is not set
+CONFIG_MCI_OMAP_HSMMC=y
+# CONFIG_FS_RAMFS is not set
+# CONFIG_FS_DEVFS is not set
+CONFIG_FS_FAT=y
diff --git a/arch/arm/configs/phytec-phycore-omap4460-xload-nand_defconfig b/arch/arm/configs/phytec-phycore-omap4460-xload-nand_defconfig
new file mode 100644
index 0000000..14b8288
--- /dev/null
+++ b/arch/arm/configs/phytec-phycore-omap4460-xload-nand_defconfig
@@ -0,0 +1,34 @@
+CONFIG_ARCH_OMAP=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0xC000
+CONFIG_OMAP_BUILD_IFT=y
+CONFIG_MACH_PCM049=y
+CONFIG_THUMB2_BAREBOX=y
+# CONFIG_ARM_EXCEPTIONS is not set
+# CONFIG_MEMINFO is not set
+CONFIG_MMU=y
+CONFIG_TEXT_BASE=0x40300000
+CONFIG_MALLOC_SIZE=0x2000000
+CONFIG_MALLOC_DUMMY=y
+CONFIG_PROMPT="barebox> "
+CONFIG_SHELL_NONE=y
+# CONFIG_ERRNO_MESSAGES is not set
+# CONFIG_TIMESTAMP is not set
+CONFIG_CONSOLE_SIMPLE=y
+CONFIG_PARTITION=y
+# CONFIG_DEFAULT_ENVIRONMENT is not set
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
+# CONFIG_SPI is not set
+CONFIG_MTD=y
+# CONFIG_MTD_WRITE is not set
+# CONFIG_MTD_OOB_DEVICE is not set
+CONFIG_NAND=y
+# CONFIG_NAND_ECC_SOFT is not set
+# CONFIG_NAND_ECC_HW_SYNDROME is not set
+# CONFIG_NAND_ECC_HW_NONE is not set
+# CONFIG_NAND_INFO is not set
+# CONFIG_NAND_BBT is not set
+CONFIG_NAND_OMAP_GPMC=y
+# CONFIG_FS_RAMFS is not set
+# CONFIG_FS_DEVFS is not set
+CONFIG_FS_FAT=y
diff --git a/arch/arm/configs/phytec-phycore-omap4460-xload_defconfig b/arch/arm/configs/phytec-phycore-omap4460-xload_defconfig
deleted file mode 100644
index 6bbc2e4..0000000
--- a/arch/arm/configs/phytec-phycore-omap4460-xload_defconfig
+++ /dev/null
@@ -1,42 +0,0 @@
-CONFIG_ARCH_OMAP=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0xC000
-CONFIG_ARCH_OMAP4=y
-CONFIG_OMAP_BUILD_IFT=y
-CONFIG_MACH_PCM049=y
-CONFIG_THUMB2_BAREBOX=y
-# CONFIG_CMD_ARM_CPUINFO is not set
-# CONFIG_ARM_EXCEPTIONS is not set
-# CONFIG_MEMINFO is not set
-CONFIG_MMU=y
-CONFIG_TEXT_BASE=0x40300000
-CONFIG_MEMORY_LAYOUT_FIXED=y
-CONFIG_STACK_BASE=0x8f000000
-CONFIG_MALLOC_BASE=0x84000000
-CONFIG_MALLOC_SIZE=0x2000000
-CONFIG_MALLOC_DUMMY=y
-CONFIG_PROMPT="barebox> "
-CONFIG_SHELL_NONE=y
-# CONFIG_ERRNO_MESSAGES is not set
-# CONFIG_TIMESTAMP is not set
-CONFIG_CONSOLE_SIMPLE=y
-# CONFIG_DEFAULT_ENVIRONMENT is not set
-CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
-# CONFIG_SPI is not set
-CONFIG_MTD=y
-# CONFIG_MTD_WRITE is not set
-# CONFIG_MTD_OOB_DEVICE is not set
-CONFIG_NAND=y
-# CONFIG_NAND_ECC_SOFT is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
-# CONFIG_NAND_INFO is not set
-# CONFIG_NAND_BBT is not set
-CONFIG_NAND_OMAP_GPMC=y
-CONFIG_MCI=y
-CONFIG_MCI_STARTUP=y
-# CONFIG_MCI_WRITE is not set
-CONFIG_MCI_OMAP_HSMMC=y
-# CONFIG_FS_RAMFS is not set
-# CONFIG_FS_DEVFS is not set
-CONFIG_FS_FAT=y
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
