Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OVjCO-0003oH-DM
	for barebox@lists.infradead.org; Mon, 05 Jul 2010 10:46:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Jul 2010 12:46:46 +0200
Message-Id: <1278326807-31431-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1278326807-31431-1-git-send-email-s.hauer@pengutronix.de>
References: <1278326807-31431-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] omap nand: cleanup
To: barebox@lists.infradead.org
Cc: Nishanth Menon <x0nishan@ti.com>

- Move oob layout to driver
- make hwecc support nonoptional but selectable by the board.
- let the boards decide which buswidth / ecc type to use. They know
  better than the user which gets confused by too many kconfig options.
- Let the boards explicitly register the nand device.

I tried to seperate this further, but failed because of too many dependencies
in the code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/include/mach/gpmc_nand.h |   45 +-----------
 board/omap/Kconfig                          |   69 ------------------
 board/omap/Makefile                         |    2 +-
 board/omap/board-beagle.c                   |    2 +
 board/omap/devices-gpmc-nand.c              |   63 ++++-------------
 drivers/nand/Kconfig                        |    8 --
 drivers/nand/nand_omap_gpmc.c               |  103 ++++++++++++++++++++++----
 7 files changed, 104 insertions(+), 188 deletions(-)

diff --git a/arch/arm/mach-omap/include/mach/gpmc_nand.h b/arch/arm/mach-omap/include/mach/gpmc_nand.h
index c6c51d5..e23faab 100644
--- a/arch/arm/mach-omap/include/mach/gpmc_nand.h
+++ b/arch/arm/mach-omap/include/mach/gpmc_nand.h
@@ -68,54 +68,11 @@ struct gpmc_nand_platform_data {
 #define NAND_WAITPOL_HIGH       (1 << 0)
 #define NAND_WAITPOL_MASK       (1 << 0)
 
-#ifdef CONFIG_NAND_OMAP_GPMC_HWECC
 /** plat_options: hw ecc enabled */
 #define NAND_HWECC_ENABLE       (1 << 1)
-#endif
 /** plat_options: hw ecc disabled */
-#define NAND_HWECC_DISABLE      (0 << 1)
 #define NAND_HWECC_MASK         (1 << 1)
 
-/* Typical BOOTROM oob layouts-requires hwecc **/
-#ifdef CONFIG_NAND_OMAP_GPMC_HWECC
-/** Large Page x8 NAND device Layout */
-#define GPMC_NAND_ECC_LP_x8_LAYOUT {\
-	.eccbytes = 12,\
-	.eccpos = {1, 2, 3, 4, 5, 6, 7, 8,\
-		9, 10, 11, 12},\
-	.oobfree = {\
-		{.offset = 60,\
-		 .length = 2 } } \
-}
-
-/** Large Page x16 NAND device Layout */
-#define GPMC_NAND_ECC_LP_x16_LAYOUT {\
-	.eccbytes = 12,\
-	.eccpos = {2, 3, 4, 5, 6, 7, 8, 9,\
-		10, 11, 12, 13},\
-	.oobfree = {\
-		{.offset = 60,\
-		 .length = 2 } } \
-}
-
-/** Small Page x8 NAND device Layout */
-#define GPMC_NAND_ECC_SP_x8_LAYOUT {\
-	.eccbytes = 3,\
-	.eccpos = {1, 2, 3},\
-	.oobfree = {\
-		{.offset = 14,\
-		 .length = 2 } } \
-}
-
-/** Small Page x16 NAND device Layout */
-#define GPMC_NAND_ECC_SP_x16_LAYOUT {\
-	.eccbytes = 3,\
-	.eccpos = {2, 3, 4},\
-	.oobfree = {\
-		{.offset = 14,\
-		 .length = 2 } } \
-}
-
-#endif				/* CONFIG_NAND_OMAP_GPMC_HWECC */
+int gpmc_generic_nand_devices_init(int cs, int width, int hwecc);
 
 #endif				/* __ASM_OMAP_NAND_GPMC_H */
diff --git a/board/omap/Kconfig b/board/omap/Kconfig
index 361bed4..d612064 100644
--- a/board/omap/Kconfig
+++ b/board/omap/Kconfig
@@ -90,73 +90,4 @@ config MACH_OMAP_ADVANCED_MUX
 config HAS_OMAP_NAND
 	bool
 
-
-menuconfig MACH_OMAP_GPMC_NAND
-	tristate "Enable NAND device support for GPMC"
-	depends on HAS_OMAP_NAND
-	default n
-	help
-	  Say Y here if you would like to have NAND device support
-
-if MACH_OMAP_GPMC_NAND
-# Single definition used to club all generic definitions together
-config MACH_OMAP_GPMC_GENERICNAND
-	bool
-
-choice
-	prompt "Select NAND Device"
-
-config MACH_OMAP_GPMC_GENERICNAND_LP_X8
-	tristate "Enable 8 bit Large page nand"
-	depends on MACH_OMAP_GPMC_NAND
-	select MACH_OMAP_GPMC_GENERICNAND
-	help
-	  Say Y here if you would support for 8 bit NAND
-	  with large page
-	  NOTE: The timing parameter are the most relaxed
-	  If you need optimized timing, selec appropriate
-	  supported NAND flash
-
-config MACH_OMAP_GPMC_GENERICNAND_LP_X16
-	tristate "Enable 16 bit Large page nand"
-	depends on MACH_OMAP_GPMC_NAND
-	select MACH_OMAP_GPMC_GENERICNAND
-	help
-	  Say Y here if you would support for 16 bit NAND
-	  with large page
-	  NOTE: The timing parameter are the most relaxed
-	  If you need optimized timing, selec appropriate
-	  supported NAND flash
-
-config MACH_OMAP_GPMC_GENERICNAND_SP_X8
-	tristate "Enable 8 bit Small page nand"
-	depends on MACH_OMAP_GPMC_NAND
-	select MACH_OMAP_GPMC_GENERICNAND
-	help
-	  Say Y here if you would support for 8 bit NAND
-	  with small page
-	  NOTE: The timing parameter are the most relaxed
-	  If you need optimized timing, selec appropriate
-	  supported NAND flash
-
-config MACH_OMAP_GPMC_GENERICNAND_SP_X16
-	tristate "Enable 16 bit Small page nand"
-	depends on MACH_OMAP_GPMC_NAND
-	select MACH_OMAP_GPMC_GENERICNAND
-	help
-	  Say Y here if you would support for 16 bit NAND
-	  with small page
-	  NOTE: The timing parameter are the most relaxed
-	  If you need optimized timing, selec appropriate
-	  supported NAND flash
-endchoice
-
-config MACH_OMAP_CS
-	hex "NAND CS"
-	depends on MACH_OMAP_GPMC_NAND
-	default 0x0
-	help
-	  Provide the Chip select of the NAND flash
-endif
-
 endmenu
diff --git a/board/omap/Makefile b/board/omap/Makefile
index b4bb3e1..1e74e24 100644
--- a/board/omap/Makefile
+++ b/board/omap/Makefile
@@ -24,5 +24,5 @@ obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += platform.o
 obj-$(CONFIG_MACH_OMAP343xSDP) += board-sdp343x.o
 obj-$(CONFIG_MACH_BEAGLE) += board-beagle.o
 obj-$(CONFIG_MACH_OMAP3EVM) += board-omap3evm.o
-obj-$(CONFIG_MACH_OMAP_GPMC_GENERICNAND) += devices-gpmc-nand.o
+obj-y += devices-gpmc-nand.o
 
diff --git a/board/omap/board-beagle.c b/board/omap/board-beagle.c
index 866d832..93092cc 100644
--- a/board/omap/board-beagle.c
+++ b/board/omap/board-beagle.c
@@ -259,10 +259,12 @@ static int beagle_devices_init(void)
        ret = register_device(&sdram_dev);
        if (ret)
                goto failed;
+
 #ifdef CONFIG_GPMC
 	/* WP is made high and WAIT1 active Low */
 	gpmc_generic_init(0x10);
 #endif
+       gpmc_generic_nand_devices_init(0, 16, 1);
        armlinux_add_dram(&sdram_dev);
 failed:
        return ret;
diff --git a/board/omap/devices-gpmc-nand.c b/board/omap/devices-gpmc-nand.c
index bbcceaf..e8b34ca 100644
--- a/board/omap/devices-gpmc-nand.c
+++ b/board/omap/devices-gpmc-nand.c
@@ -37,47 +37,14 @@
 #include <mach/gpmc.h>
 #include <mach/gpmc_nand.h>
 
-#ifdef CONFIG_MACH_OMAP_GPMC_GENERICNAND
-
 #define GPMC_CONF1_VALx8	0x00000800
 #define GPMC_CONF1_VALx16	0x00001800
 /* Set up the generic params */
-#ifdef CONFIG_MACH_OMAP_GPMC_GENERICNAND_LP_X8
-#define GPMC_NAND_ECC_LAYOUT	GPMC_NAND_ECC_LP_x8_LAYOUT
-#define GPMC_CONF1_VAL		GPMC_CONF1_VALx8
-#define GPMC_NAND_DEV_WIDTH	8
-#endif
-
-#ifdef CONFIG_MACH_OMAP_GPMC_GENERICNAND_LP_X16
-#define GPMC_NAND_ECC_LAYOUT	GPMC_NAND_ECC_LP_x16_LAYOUT
-#define GPMC_CONF1_VAL		GPMC_CONF1_VALx16
-#define GPMC_NAND_DEV_WIDTH	16
-#endif
-
-#ifdef CONFIG_MACH_OMAP_GPMC_GENERICNAND_SP_X8
-#define GPMC_NAND_ECC_LAYOUT	GPMC_NAND_ECC_SP_x8_LAYOUT
-#define GPMC_CONF1_VAL		GPMC_CONF1_VALx8
-#define GPMC_NAND_DEV_WIDTH	8
-#endif
-
-#ifdef CONFIG_MACH_OMAP_GPMC_GENERICNAND_SP_X16
-#define GPMC_NAND_ECC_LAYOUT	GPMC_NAND_ECC_SP_x16_LAYOUT
-#define GPMC_CONF1_VAL		GPMC_CONF1_VALx16
-#define GPMC_NAND_DEV_WIDTH	16
-#endif
-
-#ifdef CONFIG_NAND_OMAP_GPMC_HWECC
-/**
- * The following is the organization of ECC as expected by BootROM.
- * Based on the type of device, this can vary. select the config accordingly
- */
-static struct nand_ecclayout boot_rom_ecc = GPMC_NAND_ECC_LAYOUT;
-#endif
 
 /** GPMC timing for our nand device */
 static struct gpmc_config nand_cfg = {
 	.cfg = {
-		GPMC_CONF1_VAL,	/*CONF1 */
+		0,		/*CONF1 */
 		0x00141400,	/*CONF2 */
 		0x00141400,	/*CONF3 */
 		0x0F010F01,	/*CONF4 */
@@ -97,16 +64,9 @@ static struct gpmc_config nand_cfg = {
 
 /** NAND platform specific settings settings */
 static struct gpmc_nand_platform_data nand_plat = {
-	.cs = CONFIG_MACH_OMAP_CS,
-	.device_width = GPMC_NAND_DEV_WIDTH,
+	.cs = 0,
 	.max_timeout = MSECOND,
 	.wait_mon_pin = 0,
-#ifdef CONFIG_NAND_OMAP_GPMC_HWECC
-	.plat_options = NAND_HWECC_ENABLE,
-	.oob = &boot_rom_ecc,
-#else
-	.plat_options = NAND_HWECC_DISABLE,
-#endif
 	.priv = (void *)&nand_cfg,
 };
 
@@ -123,16 +83,19 @@ static struct device_d gpmc_generic_nand_nand_device = {
  *
  * @return success/fail based on device funtion
  */
-static int gpmc_generic_nand_devices_init(void)
+int gpmc_generic_nand_devices_init(int cs, int width, int hwecc)
 {
+	nand_plat.cs = cs;
+
+	if (width == 16)
+		nand_cfg.cfg[0] = GPMC_CONF1_VALx16;
+	else
+		nand_cfg.cfg[0] = GPMC_CONF1_VALx8;
+
+	nand_plat.device_width = width;
+	nand_plat.plat_options = hwecc ? NAND_HWECC_ENABLE : 0;
+
 	/* Configure GPMC CS before register */
 	gpmc_cs_config(nand_plat.cs, &nand_cfg);
 	return register_device(&gpmc_generic_nand_nand_device);
 }
-
-device_initcall(gpmc_generic_nand_devices_init);
-
-#endif				/* CONFIG_MACH_OMAP_GPMC_GENERICNAND */
-
-/* All specific optimized nand configurations for GPMC NAND comes here */
-
diff --git a/drivers/nand/Kconfig b/drivers/nand/Kconfig
index 031b94d..9acf28d 100644
--- a/drivers/nand/Kconfig
+++ b/drivers/nand/Kconfig
@@ -25,14 +25,6 @@ config NAND_OMAP_GPMC
 	 Support for NAND flash using GPMC. GPMC is a common memory
 	 interface found on Texas Instrument's OMAP platforms
 
-config NAND_OMAP_GPMC_HWECC
-	bool "The Hardware ECC support"
-	depends on NAND && NAND_OMAP_GPMC
-	default n
-	help
-	 The ECC compuatation for the data to be written/read can be either by
-	 software or omap has Hw ecc engine which calculates it.
-
 config NAND_ATMEL
 	bool
 	prompt "Atmel (AT91SAM9xxx) NAND driver"
diff --git a/drivers/nand/nand_omap_gpmc.c b/drivers/nand/nand_omap_gpmc.c
index c6647e5..1363808 100644
--- a/drivers/nand/nand_omap_gpmc.c
+++ b/drivers/nand/nand_omap_gpmc.c
@@ -102,10 +102,57 @@ struct gpmc_nand_info {
 	uint64_t timeout;
 	unsigned inuse:1;
 	unsigned wait_pol:1;
-#ifdef CONFIG_NAND_OMAP_GPMC_HWECC
 	unsigned char ecc_parity_pairs;
 	unsigned int ecc_config;
-#endif
+};
+
+/* Typical BOOTROM oob layouts-requires hwecc **/
+
+/** Large Page x8 NAND device Layout */
+static struct nand_ecclayout ecc_lp_x8 = {
+	.eccbytes = 12,
+	.eccpos = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12},
+	.oobfree = {
+		{
+			.offset = 60,
+			.length = 2,
+		}
+	}
+};
+
+/** Large Page x16 NAND device Layout */
+static struct nand_ecclayout ecc_lp_x16 = {
+	.eccbytes = 12,
+	.eccpos = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13},
+	.oobfree = {
+		{
+			.offset = 60,
+			.length = 2,
+		}
+	}
+};
+
+/** Small Page x8 NAND device Layout */
+static struct nand_ecclayout ecc_sp_x8 = {
+	.eccbytes = 3,
+	.eccpos = {1, 2, 3},
+	.oobfree = {
+		{
+			.offset = 14,
+			.length = 2,
+		}
+	}
+};
+
+/** Small Page x16 NAND device Layout */
+static struct nand_ecclayout ecc_sp_x16 = {
+	.eccbytes = 3,
+	.eccpos = {2, 3, 4},
+	.oobfree = {
+		{
+			.offset = 14,
+			.length = 2 }
+	}
 };
 
 /**
@@ -203,8 +250,6 @@ static void omap_hwcontrol(struct mtd_info *mtd, int cmd, unsigned int ctrl)
 	return;
 }
 
-#ifdef CONFIG_NAND_OMAP_GPMC_HWECC
-
 /**
  * @brief This function will generate true ECC value, which can be used
  * when correcting data read from NAND flash memory core
@@ -345,7 +390,6 @@ static void omap_enable_hwecc(struct mtd_info *mtd, int mode)
 		break;
 	}
 }
-#endif				/* CONFIG_NAND_OMAP_GPMC_HWECC */
 
 /**
  * @brief nand device probe.
@@ -362,6 +406,7 @@ static int gpmc_nand_probe(struct device_d *pdev)
 	struct mtd_info *minfo;
 	unsigned long cs_base;
 	int err;
+	struct nand_ecclayout *layout, *lsp, *llp;
 
 	gpmcnand_dbg("pdev=%x", (unsigned int)pdev);
 	pdata = (struct gpmc_nand_platform_data *)pdev->platform_data;
@@ -453,11 +498,6 @@ static int gpmc_nand_probe(struct device_d *pdev)
 	/* State my controller */
 	nand->controller = &oinfo->controller;
 
-	/* if a different placement scheme is requested */
-	if (pdata->oob)
-		nand->ecc.layout = pdata->oob;
-
-#ifdef CONFIG_NAND_OMAP_GPMC_HWECC
 	if (pdata->plat_options & NAND_HWECC_ENABLE) {
 		/* Program how many columns we expect+
 		 * enable the cs we want and enable the engine
@@ -474,7 +514,6 @@ static int gpmc_nand_probe(struct device_d *pdev)
 		nand->ecc.steps = nand->ecc.layout->eccbytes / nand->ecc.bytes;
 		oinfo->ecc_parity_pairs = 12;
 	} else
-#endif
 		nand->ecc.mode = NAND_ECC_SOFT;
 
 	/* All information is ready.. now lets call setup, if present */
@@ -495,15 +534,47 @@ static int gpmc_nand_probe(struct device_d *pdev)
 	writeb(NAND_CMD_RESET, oinfo->gpmc_command);
 	mdelay(1);
 
-	/* In normal mode, we scan to get just the device
-	 * presence and then to get the device geometry
-	 */
-	if (nand_scan(minfo, 1)) {
-		gpmcnand_err("device scan failed\n");
+	/* first scan to find the device and get the page size */
+	if (nand_scan_ident(minfo, 1)) {
+		err = -ENXIO;
+		goto out_release_mem;
+	}
+
+	switch (pdata->device_width) {
+	case 8:
+		lsp = &ecc_sp_x8;
+		llp = &ecc_lp_x8;
+		break;
+	case 16:
+		lsp = &ecc_sp_x16;
+		llp = &ecc_lp_x16;
+		break;
+	default:
+		err = -EINVAL;
+		goto out_release_mem;
+	}
+
+	switch (minfo->writesize) {
+	case 512:
+		layout = lsp;
+		break;
+	case 2048:
+		layout = llp;
+		break;
+	default:
+		err = -EINVAL;
+		goto out_release_mem;
+	}
+
+	/* second phase scan */
+	if (nand_scan_tail(minfo)) {
 		err = -ENXIO;
 		goto out_release_mem;
 	}
 
+	if (pdata->plat_options & NAND_HWECC_ENABLE)
+		nand->ecc.layout = layout;
+
 	/* We are all set to register with the system now! */
 	err = add_mtd_device(minfo);
 	if (err) {
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
