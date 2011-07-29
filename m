Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qmjbn-0005Os-63
	for barebox@lists.infradead.org; Fri, 29 Jul 2011 09:44:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 29 Jul 2011 11:43:48 +0200
Message-Id: <1311932630-5687-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311932630-5687-1-git-send-email-s.hauer@pengutronix.de>
References: <1311932630-5687-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/7] ARM boards: move sdram setup before mmu setup
To: barebox@lists.infradead.org

The new MMU setup will need SDRAM base addresses and sizes.
For this reason convert the MMU enabled ARM boards:

- move MMU setup to a postconsole_initcall. This is early but
  still makes sure that we already have the console available
- move sdram registration in this initcall before the MMU setup.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/chumby_falconwing/falconwing.c    |   19 ++++++-----
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |   26 ++++++---------
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |   24 ++++++--------
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |   18 +++++-----
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c |   25 ++++++--------
 arch/arm/boards/freescale-mx51-pdk/board.c        |   26 ++++++---------
 arch/arm/boards/guf-cupid/board.c                 |   16 +++++----
 arch/arm/boards/guf-neso/board.c                  |   25 ++++++--------
 arch/arm/boards/karo-tx25/board.c                 |   34 ++++++++------------
 arch/arm/boards/karo-tx28/tx28.c                  |   19 ++++++-----
 arch/arm/boards/panda/board.c                     |   18 +++++-----
 arch/arm/boards/pcm037/pcm037.c                   |   35 +++++++++-----------
 arch/arm/boards/pcm038/pcm038.c                   |   25 +++++++--------
 arch/arm/boards/pcm043/pcm043.c                   |   18 ++++++----
 arch/arm/boards/pcm049/board.c                    |   20 ++++++------
 arch/arm/boards/phycard-i.MX27/pca100.c           |   23 ++++++-------
 16 files changed, 176 insertions(+), 195 deletions(-)

diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index 7a5f37e..0c9c339 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -274,9 +274,15 @@ static const uint32_t pad_setup[] = {
 	GPMI_RDY3_GPIO | GPIO_IN | PULLUP(1),
 };
 
-#ifdef CONFIG_MMU
 static int falconwing_mmu_init(void)
 {
+	struct device_d *sdram_dev;
+
+	sdram_dev = add_mem_device("ram0", IMX_MEMORY_BASE, 64 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
+
+#ifdef CONFIG_MMU
 	mmu_init();
 
 	arm_create_section(0x40000000, 0x40000000, 64, PMD_SECT_DEF_CACHED);
@@ -285,11 +291,10 @@ static int falconwing_mmu_init(void)
 	setup_dma_coherent(0x10000000);
 
 	mmu_enable();
-
+#endif
 	return 0;
 }
-postcore_initcall(falconwing_mmu_init);
-#endif
+postconsole_initcall(falconwing_mmu_init);
 
 /**
  * Try to register an environment storage on the attached MCI card
@@ -359,14 +364,11 @@ static void falconwing_init_usb(void)
 static int falconwing_devices_init(void)
 {
 	int i, rc;
-	struct device_d *sdram_dev;
 
 	/* initizalize gpios */
 	for (i = 0; i < ARRAY_SIZE(pad_setup); i++)
 		imx_gpio_mode(pad_setup[i]);
 
-	sdram_dev = add_mem_device("ram0", IMX_MEMORY_BASE, 64 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
 	imx_set_ioclk(480000000); /* enable IOCLK to run at the PLL frequency */
 	/* run the SSP unit clock at 100,000 kHz */
 	imx_set_sspclk(0, 100000000, 1);
@@ -375,8 +377,7 @@ static int falconwing_devices_init(void)
 
 	falconwing_init_usb();
 
-	armlinux_add_dram(sdram_dev);
-	armlinux_set_bootparams(dev_get_mem_region(sdram_dev, 0) + 0x100);
+	armlinux_set_bootparams((void *)IMX_MEMORY_BASE + 0x100);
 	armlinux_set_architecture(MACH_TYPE_CHUMBY);
 
 	rc = register_persistant_environment();
diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index b80de4b..5a21636 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -162,9 +162,15 @@ static struct device_d usbotg_dev = {
 	.platform_data = &usb_pdata,
 };
 
-#ifdef CONFIG_MMU
-static void eukrea_cpuimx25_mmu_init(void)
+static int eukrea_cpuimx25_mmu_init(void)
 {
+	struct device_d *sdram_dev;
+
+	sdram_dev = add_mem_device("ram0", IMX_SDRAM_CS0, 64 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
+
+#ifdef CONFIG_MMU
 	mmu_init();
 
 	arm_create_section(0x80000000, 0x80000000, 128, PMD_SECT_DEF_CACHED);
@@ -173,12 +179,10 @@ static void eukrea_cpuimx25_mmu_init(void)
 	setup_dma_coherent(0x10000000);
 
 	mmu_enable();
-}
-#else
-static void eukrea_cpuimx25_mmu_init(void)
-{
-}
 #endif
+	return 0;
+}
+postconsole_initcall(eukrea_cpuimx25_mmu_init);
 
 static struct pad_desc eukrea_cpuimx25_pads[] = {
 	MX25_PAD_FEC_MDC__FEC_MDC,
@@ -236,10 +240,6 @@ static struct pad_desc eukrea_cpuimx25_pads[] = {
 
 static int eukrea_cpuimx25_devices_init(void)
 {
-	struct device_d *sdram_dev;
-
-	eukrea_cpuimx25_mmu_init();
-
 	mxc_iomux_v3_setup_multiple_pads(eukrea_cpuimx25_pads,
 		ARRAY_SIZE(eukrea_cpuimx25_pads));
 
@@ -259,10 +259,6 @@ static int eukrea_cpuimx25_devices_init(void)
 		PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
-	sdram_dev = add_mem_device("ram0", IMX_SDRAM_CS0, 64 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
-
 	/* enable LCD */
 	gpio_direction_output(26, 1);
 	gpio_set_value(26, 1);
diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index fa910b9..aea2d20 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -108,9 +108,15 @@ static struct i2c_board_info i2c_devices[] = {
 	},
 };
 
-#ifdef CONFIG_MMU
-static void eukrea_cpuimx27_mmu_init(void)
+static int eukrea_cpuimx27_mmu_init(void)
 {
+	struct device_d *sdram_dev;
+
+	sdram_dev = add_mem_device("ram0", 0xa0000000, SDRAM0 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
+
+#ifdef CONFIG_MMU
 	mmu_init();
 
 	arm_create_section(0xa0000000, 0xa0000000, 128, PMD_SECT_DEF_CACHED);
@@ -119,12 +125,10 @@ static void eukrea_cpuimx27_mmu_init(void)
 	setup_dma_coherent(0x10000000);
 
 	mmu_enable();
-}
-#else
-static void eukrea_cpuimx27_mmu_init(void)
-{
-}
 #endif
+	return 0;
+}
+postconsole_initcall(eukrea_cpuimx27_mmu_init);
 
 #ifdef CONFIG_DRIVER_VIDEO_IMX
 static struct imx_fb_videomode imxfb_mode = {
@@ -162,7 +166,6 @@ static struct device_d imxfb_dev = {
 
 static int eukrea_cpuimx27_devices_init(void)
 {
-	struct device_d *sdram_dev;
 	char *envdev = "no";
 	int i;
 
@@ -221,8 +224,6 @@ static int eukrea_cpuimx27_devices_init(void)
 #endif
 	};
 
-	eukrea_cpuimx27_mmu_init();
-
 	/* configure 16 bit nor flash on cs0 */
 	CS0U = 0x00008F03;
 	CS0L = 0xA0330D01;
@@ -237,9 +238,6 @@ static int eukrea_cpuimx27_devices_init(void)
 	add_cfi_flash_device(-1, 0xC2000000, 32 * 1024 * 1024, 0);
 #endif
 	imx27_add_nand(&nand_info);
-	sdram_dev = add_mem_device("ram0", 0xa0000000, SDRAM0 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
 
 	PCCR0 |= PCCR0_I2C1_EN;
 	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index d43d3af..d1b9da5 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -131,9 +131,15 @@ static struct device_d usbotg_dev = {
 	.platform_data = &usb_pdata,
 };
 
-#ifdef CONFIG_MMU
 static int eukrea_cpuimx35_mmu_init(void)
 {
+	struct device_d *sdram_dev;
+
+	sdram_dev = add_mem_device("ram0", IMX_SDRAM_CS0, 128 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
+
+#ifdef CONFIG_MMU
 	mmu_init();
 
 	arm_create_section(0x80000000, 0x80000000, 128, PMD_SECT_DEF_CACHED);
@@ -146,15 +152,13 @@ static int eukrea_cpuimx35_mmu_init(void)
 #ifdef CONFIG_CACHE_L2X0
 	l2x0_init((void __iomem *)0x30000000, 0x00030024, 0x00000000);
 #endif
+#endif
 	return 0;
 }
-postcore_initcall(eukrea_cpuimx35_mmu_init);
-#endif
+postconsole_initcall(eukrea_cpuimx35_mmu_init);
 
 static int eukrea_cpuimx35_devices_init(void)
 {
-	struct device_d *sdram_dev;
-
 	imx35_add_nand(&nand_info);
 
 	devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_raw");
@@ -163,10 +167,6 @@ static int eukrea_cpuimx35_devices_init(void)
 	dev_add_bb_dev("env_raw", "env0");
 
 	imx35_add_fec(&fec_info);
-
-	sdram_dev = add_mem_device("ram0", IMX_SDRAM_CS0, 128 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
 	imx35_add_fb(&ipu_fb_data);
 
 	imx35_add_i2c0(NULL);
diff --git a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
index 4d281f4..4980a08 100644
--- a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
+++ b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
@@ -93,9 +93,15 @@ static struct pad_desc eukrea_cpuimx51_pads[] = {
 #define GPIO_LAN8700_RESET	(1 * 32 + 31)
 #define GPIO_LCD_BL		(2 * 32 + 4)
 
-#ifdef CONFIG_MMU
-static void eukrea_cpuimx51_mmu_init(void)
+static int eukrea_cpuimx51_mmu_init(void)
 {
+	struct device_d *sdram_dev;
+
+	sdram_dev = add_mem_device("ram0", 0x90000000, 256 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
+
+#ifdef CONFIG_MMU
 	mmu_init();
 
 	arm_create_section(0x90000000, 0x90000000, 256, PMD_SECT_DEF_CACHED);
@@ -110,22 +116,13 @@ static void eukrea_cpuimx51_mmu_init(void)
 #endif
 
 	mmu_enable();
-}
-#else
-static void eukrea_cpuimx51_mmu_init(void)
-{
-}
 #endif
+	return 0;
+}
+postconsole_initcall(eukrea_cpuimx51_mmu_init);
 
 static int eukrea_cpuimx51_devices_init(void)
 {
-	struct device_d *sdram_dev;
-
-	eukrea_cpuimx51_mmu_init();
-
-	sdram_dev = add_mem_device("ram0", 0x90000000, 256 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
 	imx51_add_fec(&fec_info);
 #ifdef CONFIG_MCI_IMX_ESDHC
 	imx51_add_mmc0(NULL);
diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index c763719..b7e9540 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -73,9 +73,15 @@ static struct pad_desc f3s_pads[] = {
 	IOMUX_PAD(0x60C, 0x21C, 3, 0x0, 0, 0x85), /* FIXME: needed? */
 };
 
-#ifdef CONFIG_MMU
-static void babbage_mmu_init(void)
+static int babbage_mmu_init(void)
 {
+	struct device_d *sdram_dev;
+
+	sdram_dev = add_mem_device("ram0", 0x90000000, 512 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
+
+#ifdef CONFIG_MMU
 	mmu_init();
 
 	arm_create_section(0x90000000, 0x90000000, 512, PMD_SECT_DEF_CACHED);
@@ -84,12 +90,10 @@ static void babbage_mmu_init(void)
 	setup_dma_coherent(0x20000000);
 
 	mmu_enable();
-}
-#else
-static void babbage_mmu_init(void)
-{
-}
 #endif
+	return 0;
+}
+postconsole_initcall(babbage_mmu_init);
 
 //extern int babbage_power_init(void);
 
@@ -229,14 +233,6 @@ static void babbage_power_init(void)
 
 static int f3s_devices_init(void)
 {
-	struct device_d *sdram_dev;
-
-	babbage_mmu_init();
-
-	sdram_dev = add_mem_device("ram0", 0x90000000, 512 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
-
 	imx51_iim_register_fec_ethaddr();
 	imx51_add_fec(&fec_info);
 	imx51_add_mmc0(NULL);
diff --git a/arch/arm/boards/guf-cupid/board.c b/arch/arm/boards/guf-cupid/board.c
index 6906f0a..8ee6376 100644
--- a/arch/arm/boards/guf-cupid/board.c
+++ b/arch/arm/boards/guf-cupid/board.c
@@ -96,9 +96,15 @@ static struct imx_ipu_fb_platform_data ipu_fb_data = {
 	.enable		= cupid_fb_enable,
 };
 
-#ifdef CONFIG_MMU
 static int cupid_mmu_init(void)
 {
+	struct device_d *sdram_dev;
+
+	sdram_dev = add_mem_device("ram0", IMX_SDRAM_CS0, 128 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
+
+#ifdef CONFIG_MMU
 	mmu_init();
 
 	arm_create_section(0x80000000, 0x80000000, 128, PMD_SECT_DEF_CACHED);
@@ -111,15 +117,14 @@ static int cupid_mmu_init(void)
 #ifdef CONFIG_CACHE_L2X0
 	l2x0_init((void __iomem *)0x30000000, 0x00030024, 0x00000000);
 #endif
+#endif
 	return 0;
 }
-postcore_initcall(cupid_mmu_init);
-#endif
+postconsole_initcall(cupid_mmu_init);
 
 static int cupid_devices_init(void)
 {
 	uint32_t reg;
-	struct device_d *sdram_dev;
 
 	gpio_direction_output(GPIO_LCD_ENABLE, 0);
 	gpio_direction_output(GPIO_LCD_BACKLIGHT, 0);
@@ -139,9 +144,6 @@ static int cupid_devices_init(void)
 	devfs_add_partition("nand0", 0x40000, 0x80000, PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
-	sdram_dev = add_mem_device("ram0", IMX_SDRAM_CS0, 128 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
 	imx35_add_fb(&ipu_fb_data);
 	imx35_add_mmc0(NULL);
 
diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/board.c
index e36e804..a595abd 100644
--- a/arch/arm/boards/guf-neso/board.c
+++ b/arch/arm/boards/guf-neso/board.c
@@ -136,9 +136,15 @@ static void neso_usbh_init(void)
 }
 #endif
 
-#ifdef CONFIG_MMU
-static void neso_mmu_init(void)
+static int neso_mmu_init(void)
 {
+	struct device_d *sdram_dev;
+
+	sdram_dev = add_mem_device("ram0", 0xa0000000, 128 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
+
+#ifdef CONFIG_MMU
 	mmu_init();
 
 	arm_create_section(0xa0000000, 0xa0000000, 128, PMD_SECT_DEF_CACHED);
@@ -147,17 +153,14 @@ static void neso_mmu_init(void)
 	setup_dma_coherent(0x10000000);
 
 	mmu_enable();
-}
-#else
-static void neso_mmu_init(void)
-{
-}
 #endif
+	return 0;
+}
+postconsole_initcall(neso_mmu_init);
 
 static int neso_devices_init(void)
 {
 	int i;
-	struct device_d *sdram_dev;
 
 	unsigned int mode[] = {
 		/* UART1 */
@@ -281,17 +284,11 @@ static int neso_devices_init(void)
 	gpio_direction_output(OTG_PHY_CS_GPIO, 1);
 	gpio_direction_output(USBH2_PHY_CS_GPIO, 1);
 
-
-	neso_mmu_init();
-
 	/* initialize gpios */
 	for (i = 0; i < ARRAY_SIZE(mode); i++)
 		imx_gpio_mode(mode[i]);
 
 	imx27_add_nand(&nand_info);
-	sdram_dev = add_mem_device("ram0", 0xa0000000, 128 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
 	imx27_add_fb(&neso_fb_data);
 
 #ifdef CONFIG_USB
diff --git a/arch/arm/boards/karo-tx25/board.c b/arch/arm/boards/karo-tx25/board.c
index a463c82..7b3cd7e 100644
--- a/arch/arm/boards/karo-tx25/board.c
+++ b/arch/arm/boards/karo-tx25/board.c
@@ -51,9 +51,20 @@ struct imx_nand_platform_data nand_info = {
 	.flash_bbt = 1,
 };
 
-#ifdef CONFIG_MMU
 static int tx25_mmu_init(void)
 {
+	struct device_d *sdram_dev;
+
+	sdram_dev = add_mem_device("ram0", IMX_SDRAM_CS0, 32 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
+	sdram_dev = add_mem_device("ram0", IMX_SDRAM_CS1, 32 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
+	add_mem_device("ram0", 0x78000000, 128 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+
+#ifdef CONFIG_MMU
 	mmu_init();
 
 	arm_create_section(0x80000000, 0x80000000, 32, PMD_SECT_DEF_CACHED);
@@ -63,17 +74,11 @@ static int tx25_mmu_init(void)
 
 	setup_dma_coherent(0x02000000);
 
-#if TEXT_BASE & (0x100000 - 1)
-#warning cannot create vector section. Adjust TEXT_BASE to a 1M boundary
-#else
-	arm_create_section(0x0,        TEXT_BASE,   1, PMD_SECT_DEF_UNCACHED);
-#endif
 	mmu_enable();
-
+#endif
 	return 0;
 }
-postcore_initcall(tx25_mmu_init);
-#endif
+postconsole_initcall(tx25_mmu_init);
 
 static struct pad_desc karo_tx25_padsd_fec[] = {
 	MX25_PAD_D11__GPIO_4_9,		/* FEC PHY power on pin */
@@ -117,8 +122,6 @@ static void noinline gpio_fec_active(void)
 
 static int tx25_devices_init(void)
 {
-	struct device_d *sdram_dev;
-
 	gpio_fec_active();
 
 	imx25_add_fec(&fec_info);
@@ -134,15 +137,6 @@ static int tx25_devices_init(void)
 	devfs_add_partition("nand0", 0x40000, 0x80000, PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
-	sdram_dev = add_mem_device("ram0", IMX_SDRAM_CS0, 32 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
-	sdram_dev = add_mem_device("ram0", IMX_SDRAM_CS1, 32 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
-	add_mem_device("ram0", 0x78000000, 128 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-
 	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_TX25);
 	armlinux_set_serial(imx_uid());
diff --git a/arch/arm/boards/karo-tx28/tx28.c b/arch/arm/boards/karo-tx28/tx28.c
index b9d5454..bdec51d 100644
--- a/arch/arm/boards/karo-tx28/tx28.c
+++ b/arch/arm/boards/karo-tx28/tx28.c
@@ -70,9 +70,15 @@ static const uint32_t tx28_pad_setup[] = {
 
 extern void base_board_init(void);
 
-#ifdef CONFIG_MMU
 static int tx28_mmu_init(void)
 {
+	struct device_d *sdram_dev;
+
+	sdram_dev = add_mem_device("ram0", IMX_MEMORY_BASE, 128 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
+
+#ifdef CONFIG_MMU
 	mmu_init();
 
 	arm_create_section(0x40000000, 0x40000000, 128, PMD_SECT_DEF_CACHED);
@@ -81,25 +87,20 @@ static int tx28_mmu_init(void)
 	setup_dma_coherent(0x10000000);
 
 	mmu_enable();
-
+#endif
 	return 0;
 }
-postcore_initcall(tx28_mmu_init);
-#endif
+postconsole_initcall(tx28_mmu_init);
 
 static int tx28_devices_init(void)
 {
 	int i;
-	struct device_d *sdram_dev;
 
 	/* initizalize gpios */
 	for (i = 0; i < ARRAY_SIZE(tx28_pad_setup); i++)
 		imx_gpio_mode(tx28_pad_setup[i]);
 
-	sdram_dev = add_mem_device("ram0", IMX_MEMORY_BASE, 128 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
-	armlinux_set_bootparams(dev_get_mem_region(sdram_dev, 0) + 0x100);
+	armlinux_set_bootparams((void *)IMX_MEMORY_BASE + 0x100);
 	armlinux_set_architecture(MACH_TYPE_TX28);
 
 	base_board_init();
diff --git a/arch/arm/boards/panda/board.c b/arch/arm/boards/panda/board.c
index 1c6cf58..b11da2e 100644
--- a/arch/arm/boards/panda/board.c
+++ b/arch/arm/boards/panda/board.c
@@ -46,20 +46,25 @@ static int panda_console_init(void)
 }
 console_initcall(panda_console_init);
 
-#ifdef CONFIG_MMU
 static int panda_mmu_init(void)
 {
+	struct device_d *sdram_dev;
+
+	sdram_dev = add_mem_device("ram0", 0x80000000, SZ_1G,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
+
+#ifdef CONFIG_MMU
 	mmu_init();
 
 	arm_create_section(0x80000000, 0x80000000, 256, PMD_SECT_DEF_CACHED);
 	arm_create_section(0x90000000, 0x80000000, 256, PMD_SECT_DEF_UNCACHED);
 
 	mmu_enable();
-
+#endif
 	return 0;
 }
-device_initcall(panda_mmu_init);
-#endif
+postconsole_initcall(panda_mmu_init);
 
 static struct ehci_platform_data ehci_pdata = {
 	.flags = 0,
@@ -126,8 +131,6 @@ static struct device_d hsmmc_dev = {
 
 static int panda_devices_init(void)
 {
-	struct device_d *sdram_dev;
-
 	panda_boardrev_init();
 
 	if (gpio_get_value(182)) {
@@ -154,9 +157,6 @@ static int panda_devices_init(void)
 		sr32(OMAP44XX_SCRM_ALTCLKSRC, 2, 2, 0x3);
 	}
 
-	sdram_dev = add_mem_device("ram0", 0x80000000, SZ_1G,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
 	register_device(&hsmmc_dev);
 	panda_ehci_init();
 
diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index 78bf1b9..acbfe54 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -146,9 +146,20 @@ static void pcm037_usb_init(void)
 }
 #endif
 
-#ifdef CONFIG_MMU
-static void pcm037_mmu_init(void)
+static int pcm037_mmu_init(void)
 {
+	struct device_d *sdram_dev;
+
+	sdram_dev = add_mem_device("ram0", IMX_SDRAM_CS0, SDRAM0 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
+#ifndef CONFIG_PCM037_SDRAM_BANK1_NONE
+	sdram_dev = add_mem_device("ram1", IMX_SDRAM_CS1, SDRAM1 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
+#endif
+
+#ifdef CONFIG_MMU
 	mmu_init();
 
 	arm_create_section(0x80000000, 0x80000000, 128, PMD_SECT_DEF_CACHED);
@@ -161,19 +172,13 @@ static void pcm037_mmu_init(void)
 #ifdef CONFIG_CACHE_L2X0
 	l2x0_init((void __iomem *)0x30000000, 0x00030024, 0x00000000);
 #endif
-}
-#else
-static void pcm037_mmu_init(void)
-{
-}
 #endif
+	return 0;
+}
+postconsole_initcall(pcm037_mmu_init);
 
 static int imx31_devices_init(void)
 {
-	struct device_d *sdram_dev;
-
-	pcm037_mmu_init();
-
 	__REG(CSCR_U(0)) = 0x0000cf03; /* CS0: Nor Flash */
 	__REG(CSCR_L(0)) = 0x10000d03;
 	__REG(CSCR_A(0)) = 0x00720900;
@@ -221,14 +226,6 @@ static int imx31_devices_init(void)
 	add_generic_device("smc911x", -1, NULL,	IMX_CS1_BASE, IMX_CS1_RANGE,
 			IORESOURCE_MEM, NULL);
 
-	sdram_dev = add_mem_device("ram0", IMX_SDRAM_CS0, SDRAM0 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
-#ifndef CONFIG_PCM037_SDRAM_BANK1_NONE
-	sdram_dev = add_mem_device("ram1", IMX_SDRAM_CS1, SDRAM1 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
-#endif
 #ifdef CONFIG_USB
 	pcm037_usb_init();
 	imx31_add_ehci0(NULL);
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 74c8b34..4644550 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -129,9 +129,15 @@ static void pcm038_usbh_init(void)
 }
 #endif
 
-#ifdef CONFIG_MMU
-static void pcm038_mmu_init(void)
+static int pcm038_mmu_init(void)
 {
+	struct device_d *sdram_dev;
+
+	sdram_dev = add_mem_device("ram0", 0xa0000000, 128 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
+
+#ifdef CONFIG_MMU
 	mmu_init();
 
 	arm_create_section(0xa0000000, 0xa0000000, 128, PMD_SECT_DEF_CACHED);
@@ -140,18 +146,15 @@ static void pcm038_mmu_init(void)
 	setup_dma_coherent(0x10000000);
 
 	mmu_enable();
-}
-#else
-static void pcm038_mmu_init(void)
-{
-}
 #endif
+	return 0;
+}
+postconsole_initcall(pcm038_mmu_init);
 
 static int pcm038_devices_init(void)
 {
 	int i;
 	char *envdev;
-	struct device_d *sdram_dev;
 
 	unsigned int mode[] = {
 		PD0_AIN_FEC_TXD0,
@@ -224,8 +227,6 @@ static int pcm038_devices_init(void)
 		PD26_AF_USBH2_DATA5,
 	};
 
-	pcm038_mmu_init();
-
 	/* configure 16 bit nor flash on cs0 */
 	CS0U = 0x0000CC03;
 	CS0L = 0xa0330D01;
@@ -250,14 +251,12 @@ static int pcm038_devices_init(void)
 
 	gpio_direction_output(GPIO_PORTD | 28, 0);
 	gpio_set_value(GPIO_PORTD | 28, 0);
+
 	spi_register_board_info(pcm038_spi_board_info, ARRAY_SIZE(pcm038_spi_board_info));
 	imx27_add_spi0(&pcm038_spi_0_data);
 
 	add_cfi_flash_device(-1, 0xC0000000, 32 * 1024 * 1024, 0);
 	imx27_add_nand(&nand_info);
-	sdram_dev = add_mem_device("ram0", 0xa0000000, 128 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
 	add_mem_device("ram0", 0xc8000000, 512 * 1024, /* Can be up to 2MiB */
 				   IORESOURCE_MEM_WRITEABLE);
 	imx27_add_fb(&pcm038_fb_data);
diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
index 3bd6402..d1fede7 100644
--- a/arch/arm/boards/pcm043/pcm043.c
+++ b/arch/arm/boards/pcm043/pcm043.c
@@ -99,9 +99,15 @@ static struct imx_ipu_fb_platform_data ipu_fb_data = {
 	.bpp		= 16,
 };
 
-#ifdef CONFIG_MMU
 static int pcm043_mmu_init(void)
 {
+	struct device_d *sdram_dev;
+
+	sdram_dev = add_mem_device("ram0", IMX_SDRAM_CS0, 128 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
+
+#ifdef CONFIG_MMU
 	mmu_init();
 
 	arm_create_section(0x80000000, 0x80000000, 128, PMD_SECT_DEF_CACHED);
@@ -114,10 +120,11 @@ static int pcm043_mmu_init(void)
 #ifdef CONFIG_CACHE_L2X0
 	l2x0_init((void __iomem *)0x30000000, 0x00030024, 0x00000000);
 #endif
+#endif
 	return 0;
 }
-postcore_initcall(pcm043_mmu_init);
-#endif
+postconsole_initcall(pcm043_mmu_init);
+
 
 struct gpio_led led0 = {
 	.gpio = 1 * 32 + 6,
@@ -125,7 +132,6 @@ struct gpio_led led0 = {
 
 static int imx35_devices_init(void)
 {
-	struct device_d *sdram_dev;
 	uint32_t reg;
 
 	/* CS0: Nor Flash */
@@ -171,9 +177,6 @@ static int imx35_devices_init(void)
 	}
 
 
-	sdram_dev = add_mem_device("ram0", IMX_SDRAM_CS0, 128 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
 	imx35_add_fb(&ipu_fb_data);
 
 	armlinux_set_bootparams((void *)0x80000100);
@@ -219,6 +222,7 @@ static int imx35_console_init(void)
 	mxc_iomux_v3_setup_multiple_pads(pcm043_pads, ARRAY_SIZE(pcm043_pads));
 
 	imx35_add_uart0();
+
 	return 0;
 }
 
diff --git a/arch/arm/boards/pcm049/board.c b/arch/arm/boards/pcm049/board.c
index 7eae2cf..e691f59 100644
--- a/arch/arm/boards/pcm049/board.c
+++ b/arch/arm/boards/pcm049/board.c
@@ -57,9 +57,15 @@ static int pcm049_console_init(void)
 }
 console_initcall(pcm049_console_init);
 
-#ifdef CONFIG_MMU
 static int pcm049_mmu_init(void)
 {
+	struct device_d *sdram_dev;
+
+	sdram_dev = add_mem_device("ram0", 0x80000000, SZ_512M,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
+
+#ifdef CONFIG_MMU
 	mmu_init();
 
 	arm_create_section(0x80000000, 0x80000000, 256, PMD_SECT_DEF_CACHED);
@@ -67,11 +73,10 @@ static int pcm049_mmu_init(void)
 	arm_create_section(0x90000000, 0x80000000, 256, PMD_SECT_DEF_UNCACHED);
 
 	mmu_enable();
-
+#endif
 	return 0;
 }
-device_initcall(pcm049_mmu_init);
-#endif
+postconsole_initcall(pcm049_mmu_init);
 
 static struct device_d hsmmc_dev = {
 	.id = -1,
@@ -109,12 +114,7 @@ static void pcm049_network_init(void)
 
 static int pcm049_devices_init(void)
 {
-	struct device_d *sdram_dev;
-
-	sdram_dev = add_mem_device("ram0", 0x80000000, SZ_512M,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
-	add_mem_device("ram0", 0x40300000, 48 * 1024,
+	add_mem_device("sram0", 0x40300000, 48 * 1024,
 				   IORESOURCE_MEM_WRITEABLE);
 	register_device(&hsmmc_dev);
 
diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
index d196e55..6d3e2e3 100644
--- a/arch/arm/boards/phycard-i.MX27/pca100.c
+++ b/arch/arm/boards/phycard-i.MX27/pca100.c
@@ -69,9 +69,15 @@ static void pca100_usb_register(void)
 }
 #endif
 
-#ifdef CONFIG_MMU
-static void pca100_mmu_init(void)
+static int pca100_mmu_init(void)
 {
+	struct device_d *sdram_dev;
+
+	sdram_dev = add_mem_device("ram0", 0xa0000000, 128 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
+
+#ifdef CONFIG_MMU
 	mmu_init();
 
 	arm_create_section(0xa0000000, 0xa0000000, 128, PMD_SECT_DEF_CACHED);
@@ -80,12 +86,10 @@ static void pca100_mmu_init(void)
 	setup_dma_coherent(0x10000000);
 
 	mmu_enable();
-}
-#else
-static void pca100_mmu_init(void)
-{
-}
 #endif
+	return 0;
+}
+postconsole_initcall(pca100_mmu_init);
 
 static void pca100_usb_init(void)
 {
@@ -123,7 +127,6 @@ static int pca100_devices_init(void)
 {
 	int i;
 	struct device_d *nand;
-	struct device_d *sdram_dev;
 
 	unsigned int mode[] = {
 		PD0_AIN_FEC_TXD0,
@@ -198,9 +201,6 @@ static int pca100_devices_init(void)
 		imx_gpio_mode(mode[i]);
 
 	imx27_add_nand(&nand_info);
-	sdram_dev = add_mem_device("ram0", 0xa0000000, 128 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
 	imx27_add_fec(&fec_info);
 	imx27_add_mmc0(NULL);
 
@@ -227,7 +227,6 @@ device_initcall(pca100_devices_init);
 
 static int pca100_console_init(void)
 {
-	pca100_mmu_init();
 	imx27_add_uart0();
 	return 0;
 }
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
