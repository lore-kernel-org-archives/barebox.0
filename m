Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f49.google.com ([74.125.83.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RsKfc-00076W-2i
 for barebox@lists.infradead.org; Tue, 31 Jan 2012 20:51:17 +0000
Received: by eeke50 with SMTP id e50so151799eek.36
 for <barebox@lists.infradead.org>; Tue, 31 Jan 2012 12:51:13 -0800 (PST)
From: Marek Belisko <marek.belisko@open-nandra.com>
Date: Tue, 31 Jan 2012 21:51:07 +0100
Message-Id: <1328043068-9577-1-git-send-email-marek.belisko@open-nandra.com>
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
Subject: [PATCH 1/2] omap: Remove OMAP_GPMC prompt and usage.
To: barebox@lists.infradead.org
Cc: Marek Belisko <marek.belisko@open-nandra.com>

Build for omap platform by default.

Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
---
 arch/arm/boards/beagle/board.c          |    4 ++--
 arch/arm/boards/omap343xdsp/board.c     |    2 --
 arch/arm/boards/omap3evm/board.c        |    3 +--
 arch/arm/boards/phycard-a-l1/pca-a-l1.c |    3 ---
 arch/arm/configs/panda_xload_defconfig  |    1 -
 arch/arm/configs/phycard_a_l1_defconfig |    1 -
 arch/arm/mach-omap/Kconfig              |   10 ----------
 arch/arm/mach-omap/Makefile             |    3 +--
 drivers/mtd/nand/Kconfig                |    1 -
 9 files changed, 4 insertions(+), 24 deletions(-)

diff --git a/arch/arm/boards/beagle/board.c b/arch/arm/boards/beagle/board.c
index faeaf8e..caeb578 100644
--- a/arch/arm/boards/beagle/board.c
+++ b/arch/arm/boards/beagle/board.c
@@ -302,10 +302,10 @@ static int beagle_devices_init(void)
 		add_usb_ehci_device(-1, OMAP_EHCI_BASE,
 				    OMAP_EHCI_BASE + 0x10, &ehci_pdata);
 #endif /* CONFIG_USB_EHCI_OMAP */
-#ifdef CONFIG_OMAP_GPMC
+
 	/* WP is made high and WAIT1 active Low */
 	gpmc_generic_init(0x10);
-#endif
+
 	gpmc_generic_nand_devices_init(0, 16, OMAP_ECC_HAMMING_CODE_HW_ROMCODE);
 
 	add_generic_device("omap-hsmmc", -1, NULL, OMAP_MMC1_BASE, SZ_4K,
diff --git a/arch/arm/boards/omap343xdsp/board.c b/arch/arm/boards/omap343xdsp/board.c
index 4ad6f13..4cf6f31 100644
--- a/arch/arm/boards/omap343xdsp/board.c
+++ b/arch/arm/boards/omap343xdsp/board.c
@@ -641,10 +641,8 @@ mem_initcall(sdp3430_mem_init);
 
 static int sdp3430_devices_init(void)
 {
-#ifdef CONFIG_OMAP_GPMC
 	/* WP is made high and WAIT1 active Low */
 	gpmc_generic_init(0x10);
-#endif
 
 	return 0;
 }
diff --git a/arch/arm/boards/omap3evm/board.c b/arch/arm/boards/omap3evm/board.c
index fdd5227..ffcb6a6 100644
--- a/arch/arm/boards/omap3evm/board.c
+++ b/arch/arm/boards/omap3evm/board.c
@@ -253,12 +253,11 @@ mem_initcall(omap3evm_mem_init);
 
 static int omap3evm_init_devices(void)
 {
-#ifdef CONFIG_OMAP_GPMC
 	/*
 	 * WP is made high and WAIT1 active Low
 	 */
 	gpmc_generic_init(0x10);
-#endif
+
 #ifdef CONFIG_MCI_OMAP_HSMMC
 	add_generic_device("omap-hsmmc", -1, NULL, OMAP_MMC1_BASE, SZ_4K,
 				IORESOURCE_MEM, NULL);
diff --git a/arch/arm/boards/phycard-a-l1/pca-a-l1.c b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
index f7d3185..7a1196e 100644
--- a/arch/arm/boards/phycard-a-l1/pca-a-l1.c
+++ b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
@@ -288,13 +288,10 @@ static void pcaal1_setup_net_chip(void)
 
 static int pcaal1_mem_init(void)
 {
-
-#ifdef CONFIG_OMAP_GPMC
 	/*
 	 * WP is made high and WAIT1 active Low
 	 */
 	gpmc_generic_init(0x10);
-#endif
 
 	arm_add_mem_device("ram0", OMAP_SDRC_CS0, get_sdr_cs_size(SDRC_CS0_OSET));
 
diff --git a/arch/arm/configs/panda_xload_defconfig b/arch/arm/configs/panda_xload_defconfig
index f8f0ae9..bdfbeb9 100644
--- a/arch/arm/configs/panda_xload_defconfig
+++ b/arch/arm/configs/panda_xload_defconfig
@@ -1,6 +1,5 @@
 CONFIG_ARCH_OMAP=y
 CONFIG_ARCH_OMAP4=y
-# CONFIG_OMAP_GPMC is not set
 CONFIG_OMAP_BUILD_IFT=y
 CONFIG_AEABI=y
 # CONFIG_CMD_ARM_CPUINFO is not set
diff --git a/arch/arm/configs/phycard_a_l1_defconfig b/arch/arm/configs/phycard_a_l1_defconfig
index 95dffbb..9ccf43d 100644
--- a/arch/arm/configs/phycard_a_l1_defconfig
+++ b/arch/arm/configs/phycard_a_l1_defconfig
@@ -11,7 +11,6 @@ CONFIG_OMAP_CLOCK_ALL=y
 CONFIG_OMAP_CLOCK_SOURCE_S32K=y
 CONFIG_OMAP3_CLOCK_CONFIG=y
 CONFIG_OMAP3_COPY_CLOCK_SRAM=n
-CONFIG_OMAP_GPMC=y
 CONFIG_MACH_PCAAL1=y
 CONFIG_HAS_OMAP_NAND=y
 CONFIG_AEABI=y
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 50f53dd..11b9661 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -77,16 +77,6 @@ config OMAP3_CLOCK_CONFIG
 	help
 	  Say Y here if you like to have OMAP3 Clock configuration done.
 
-config OMAP_GPMC
-	prompt "Support for GPMC configuration"
-	bool
-	depends on  (ARCH_OMAP2 || ARCH_OMAP3 || ARCH_OMAP4)
-	default y
-	help
-	  Enable this if you use Texas Instrument's General purpose Memory
-	  Controller(GPMC). GPMC allows you to configure devices such as NOR,
-	  NAND, OneNAND etc.
-
 config OMAP_BUILD_IFT
 	prompt "build ift binary"
 	bool
diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index 87078ae..26d3f7d 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -24,7 +24,6 @@ obj-$(CONFIG_OMAP_CLOCK_SOURCE_S32K) += s32k_clksource.o
 obj-$(CONFIG_ARCH_OMAP3) += omap3_core.o omap3_generic.o auxcr.o
 obj-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
 obj-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock.o
-obj-$(CONFIG_OMAP_GPMC) += gpmc.o devices-gpmc-nand.o
 obj-$(CONFIG_SHELL_NONE) += xload.o
 obj-$(CONFIG_I2C_TWL6030) += omap4_twl6030_mmc.o
-obj-y += gpio.o
+obj-y += gpio.o gpmc.o devices-gpmc-nand.o
diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index 926a64b..d846ce0 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -55,7 +55,6 @@ config NAND_IMX
 
 config NAND_OMAP_GPMC
 	tristate "NAND Flash Support for GPMC based OMAP platforms"
-	depends on OMAP_GPMC
 	help
 	 Support for NAND flash using GPMC. GPMC is a common memory
 	 interface found on Texas Instrument's OMAP platforms
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
