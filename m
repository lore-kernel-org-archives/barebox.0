Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SrTrO-0003ow-B0
 for barebox@lists.infradead.org; Wed, 18 Jul 2012 13:00:24 +0000
From: Juergen Kilb <J.Kilb@phytec.de>
Date: Wed, 18 Jul 2012 14:58:47 +0200
Message-Id: <1342616327-2765-4-git-send-email-J.Kilb@phytec.de>
In-Reply-To: <1342616327-2765-1-git-send-email-J.Kilb@phytec.de>
References: <1342616327-2765-1-git-send-email-J.Kilb@phytec.de>
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
Subject: [PATCH] phyCARD-A-L1: Create xload configuration.
To: barebox@lists.infradead.org
Cc: Juergen Kilb <J.Kilb@phytec.de>

This configuration can be used to use barebox as
x-loader replacement.
Also the ECC-Mode is changed from SOFT to BCH8.

Signed-off-by: Juergen Kilb <J.Kilb@phytec.de>
---
 arch/arm/boards/phycard-a-l1/pca-a-l1.c       |   10 ++----
 arch/arm/configs/phycard_a_l1_xload_defconfig |   43 +++++++++++++++++++++++++
 arch/arm/mach-omap/Kconfig                    |    1 +
 3 files changed, 47 insertions(+), 7 deletions(-)
 create mode 100644 arch/arm/configs/phycard_a_l1_xload_defconfig

diff --git a/arch/arm/boards/phycard-a-l1/pca-a-l1.c b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
index 8fae405..a388f63 100644
--- a/arch/arm/boards/phycard-a-l1/pca-a-l1.c
+++ b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
@@ -312,6 +312,7 @@ struct omap_hsmmc_platform_data pcaal1_hsmmc_plat = {
 
 static int pcaal1_init_devices(void)
 {
+	gpmc_generic_nand_devices_init(0, 16, OMAP_ECC_BCH8_CODE_HW, &omap3_nand_cfg);
 #ifdef CONFIG_MCI_OMAP_HSMMC
 	add_generic_device("omap-hsmmc", DEVICE_ID_DYNAMIC, NULL, OMAP_MMC1_BASE, SZ_4K,
 			   IORESOURCE_MEM, &pcaal1_hsmmc_plat);
@@ -332,12 +333,7 @@ device_initcall(pcaal1_init_devices);
 
 static int pcaal1_late_init(void)
 {
-	struct device_d *nand;
-
-	gpmc_generic_nand_devices_init(0, 16, OMAP_ECC_SOFT, &omap3_nand_cfg);
-
-	nand = get_device_by_name("nand0");
-
+#ifdef CONFIG_PARTITION
 	devfs_add_partition("nand0", 0x00000, 0x80000, DEVFS_PARTITION_FIXED, "x-loader");
 	dev_add_bb_dev("self_raw", "x_loader0");
 
@@ -346,7 +342,7 @@ static int pcaal1_late_init(void)
 
 	devfs_add_partition("nand0", 0x260000, 0x20000, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
-
+#endif
 	return 0;
 }
 late_initcall(pcaal1_late_init);
diff --git a/arch/arm/configs/phycard_a_l1_xload_defconfig b/arch/arm/configs/phycard_a_l1_xload_defconfig
new file mode 100644
index 0000000..30253cb
--- /dev/null
+++ b/arch/arm/configs/phycard_a_l1_xload_defconfig
@@ -0,0 +1,43 @@
+CONFIG_ARCH_OMAP=y
+CONFIG_OMAP_BUILD_IFT=y
+CONFIG_MACH_PCAAL1=y
+CONFIG_AEABI=y
+CONFIG_THUMB2_BAREBOX=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+# CONFIG_ARM_EXCEPTIONS is not set
+CONFIG_ENVIRONMENT_VARIABLES=y
+CONFIG_TEXT_BASE=0x40200000
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x0000f000
+CONFIG_BAREBOX_MAX_BARE_INIT_SIZE=0x0000f000
+CONFIG_MEMORY_LAYOUT_FIXED=y
+CONFIG_STACK_BASE=0x4020F000
+CONFIG_STACK_SIZE=0xc00
+CONFIG_MALLOC_BASE=0x84000000
+CONFIG_MALLOC_SIZE=0x1000000
+CONFIG_MALLOC_DUMMY=y
+CONFIG_PROMPT="X-load pca-a-l1>"
+CONFIG_CBSIZE=128
+CONFIG_SHELL_NONE=y
+# CONFIG_ERRNO_MESSAGES is not set
+# CONFIG_TIMESTAMP is not set
+# CONFIG_CONSOLE_FULL is not set
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
+# CONFIG_NAND_BBT is not set
+CONFIG_NAND_OMAP_GPMC=y
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+# CONFIG_MCI_WRITE is not set
+CONFIG_MCI_OMAP_HSMMC=y
+# CONFIG_FS_RAMFS is not set
+# CONFIG_FS_DEVFS is not set
+CONFIG_FS_FAT=y
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 386c484..d735284 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -151,6 +151,7 @@ config MACH_PCM049
 config MACH_PCAAL1
 	bool "Phytec phyCARD-A-L1"
 	select OMAP_CLOCK_ALL
+	select HAVE_NOSHELL
 	depends on ARCH_OMAP3
 	  help
 	  Say Y here if you are using a phyCARD-A-L1 PCA-A-L1
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
