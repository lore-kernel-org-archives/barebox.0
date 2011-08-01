Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo4.mail-out.ovh.net ([46.105.72.36]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QnsqM-0003hJ-MQ
	for barebox@lists.infradead.org; Mon, 01 Aug 2011 13:47:56 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 0E450FFA5CA
	for <barebox@lists.infradead.org>;
	Mon,  1 Aug 2011 15:48:37 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  1 Aug 2011 15:29:41 +0200
Message-Id: <1312205383-13266-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110801132643.GH6255@game.jcrosoft.org>
References: <20110801132643.GH6255@game.jcrosoft.org>
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
Subject: [PATCH 7/9 v2] ARM boards: move sdram setup before mmu setup
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

The new MMU setup will need SDRAM base addresses and sizes.
For this reason convert the MMU enabled ARM boards:

- move mem setup to mem_initcall. This is early but
  still makes sure that we already have the console available
- move MMU setup in this initcall temporary as after the mmu_init will generic

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/a9m2410/a9m2410.c                 |   18 +++++++++---
 arch/arm/boards/a9m2440/a9m2440.c                 |   18 ++++++++----
 arch/arm/boards/at91rm9200ek/init.c               |    9 +++++-
 arch/arm/boards/at91sam9260ek/init.c              |    9 +++++-
 arch/arm/boards/at91sam9261ek/init.c              |    9 +++++-
 arch/arm/boards/at91sam9263ek/init.c              |    9 +++++-
 arch/arm/boards/at91sam9m10g45ek/init.c           |    8 +++++-
 arch/arm/boards/chumby_falconwing/falconwing.c    |   15 +++++-----
 arch/arm/boards/edb93xx/edb93xx.c                 |   30 ++++++++++++--------
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |   18 +++++-------
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |   17 +++++-------
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |   12 ++++----
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c |   17 +++++-------
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c     |   13 ++++++---
 arch/arm/boards/freescale-mx25-3-stack/3stack.c   |   26 +++++++++++-------
 arch/arm/boards/freescale-mx35-3-stack/3stack.c   |    8 +++++-
 arch/arm/boards/freescale-mx51-pdk/board.c        |   18 +++++-------
 arch/arm/boards/freescale-mx53-loco/board.c       |   20 +++++--------
 arch/arm/boards/guf-cupid/board.c                 |   11 ++++---
 arch/arm/boards/guf-neso/board.c                  |   18 +++++-------
 arch/arm/boards/imx21ads/imx21ads.c               |    9 +++++-
 arch/arm/boards/imx27ads/imx27ads.c               |    9 +++++-
 arch/arm/boards/karo-tx25/board.c                 |   24 ++++++----------
 arch/arm/boards/karo-tx28/tx28.c                  |   15 +++++-----
 arch/arm/boards/mini2440/mini2440.c               |   13 ++++++---
 arch/arm/boards/mmccpu/init.c                     |    9 +++++-
 arch/arm/boards/netx/netx.c                       |    9 +++++-
 arch/arm/boards/nhk8815/setup.c                   |    8 +++++-
 arch/arm/boards/omap/board-beagle.c               |    9 +++++-
 arch/arm/boards/omap/board-omap3evm.c             |    8 +++++-
 arch/arm/boards/omap/board-sdp343x.c              |   19 ++++++-------
 arch/arm/boards/panda/board.c                     |   12 ++++----
 arch/arm/boards/pcm037/pcm037.c                   |   23 +++++++---------
 arch/arm/boards/pcm038/pcm038.c                   |   22 +++++++--------
 arch/arm/boards/pcm043/pcm043.c                   |   13 +++++---
 arch/arm/boards/pcm049/board.c                    |   16 +++++-----
 arch/arm/boards/phycard-i.MX27/pca100.c           |   16 +++++------
 arch/arm/boards/pm9261/init.c                     |    9 +++++-
 arch/arm/boards/pm9263/init.c                     |    9 +++++-
 arch/arm/boards/pm9g45/init.c                     |    9 +++++-
 arch/arm/boards/scb9328/scb9328.c                 |    9 +++++-
 arch/arm/boards/versatile/versatilepb.c           |    8 +++++-
 42 files changed, 352 insertions(+), 229 deletions(-)

diff --git a/arch/arm/boards/a9m2410/a9m2410.c b/arch/arm/boards/a9m2410/a9m2410.c
index b249a1d..44ac44b 100644
--- a/arch/arm/boards/a9m2410/a9m2410.c
+++ b/arch/arm/boards/a9m2410/a9m2410.c
@@ -40,11 +40,10 @@ static struct s3c24x0_nand_platform_data nand_info = {
 	.nand_timing = CALC_NFCONF_TIMING(A9M2410_TACLS, A9M2410_TWRPH0, A9M2410_TWRPH1)
 };
 
-static int a9m2410_devices_init(void)
+static int a9m2410_mem_init(void)
 {
-	uint32_t reg;
 	resource_size_t size = 0;
-	struct device_d *sdram_dev;
+	uint32_t reg;
 
 	/*
 	 * detect the current memory size
@@ -101,6 +100,16 @@ static int a9m2410_devices_init(void)
 	 */
 	writel(0x40140, MISCCR);
 
+	arm_add_mem_device("ram0", CS6_BASE, size);
+
+	return 0;
+}
+mem_initcall(a9m2410_mem_init);
+
+static int a9m2410_devices_init(void)
+{
+	uint32_t reg;
+
 	/* ----------- configure the access to the outer space ---------- */
 	reg = readl(BWSCON);
 
@@ -124,7 +133,6 @@ static int a9m2410_devices_init(void)
 	/* ----------- the devices the boot loader should work with -------- */
 	add_generic_device("s3c24x0_nand", -1, NULL, S3C24X0_NAND_BASE, 0,
 			   IORESOURCE_MEM, &nand_info);
-	sdram_dev = arm_add_mem_device("ram0", CS6_BASE, size);
 	/*
 	 * SMSC 91C111 network controller on the baseboard
 	 * connected to CS line 1 and interrupt line
@@ -142,7 +150,7 @@ static int a9m2410_devices_init(void)
 	dev_add_bb_dev("env_raw", "env0");
 #endif
 
-	armlinux_set_bootparams(dev_get_mem_region(sdram_dev, 0) + 0x100);
+	armlinux_set_bootparams((void*)CS6_BASE + 0x100);
 	armlinux_set_architecture(MACH_TYPE_A9M2410);
 
 	return 0;
diff --git a/arch/arm/boards/a9m2440/a9m2440.c b/arch/arm/boards/a9m2440/a9m2440.c
index c5b467a..89c9cdf 100644
--- a/arch/arm/boards/a9m2440/a9m2440.c
+++ b/arch/arm/boards/a9m2440/a9m2440.c
@@ -72,11 +72,8 @@ static void a9m2440_disable_second_sdram_bank(void)
 	writel(readl(MISCCR) | (1 << 18), MISCCR); /* disable clock */
 }
 
-static int a9m2440_devices_init(void)
+static int a9m2440_mem_init(void)
 {
-	uint32_t reg;
-	struct device_d *sdram_dev;
-
 	/*
 	 * The special SDRAM setup code for this machine will always enable
 	 * both SDRAM banks. But the second SDRAM device may not exists!
@@ -106,6 +103,16 @@ static int a9m2440_devices_init(void)
 		break;
 	}
 
+	arm_add_mem_device("ram0", CS6_BASE, s3c24x0_get_memory_size());
+
+	return 0;
+}
+mem_initcall(a9m2440_mem_init);
+
+static int a9m2440_devices_init(void)
+{
+	uint32_t reg;
+
 	/* ----------- configure the access to the outer space ---------- */
 	reg = readl(BWSCON);
 
@@ -128,7 +135,6 @@ static int a9m2440_devices_init(void)
 	/* ----------- the devices the boot loader should work with -------- */
 	add_generic_device("s3c24x0_nand", -1, NULL, S3C24X0_NAND_BASE, 0,
 			   IORESOURCE_MEM, &nand_info);
-	sdram_dev = arm_add_mem_device("ram0", CS6_BASE, s3c24x0_get_memory_size());
 	/*
 	 * cs8900 network controller onboard
 	 * Connected to CS line 5 + A24 and interrupt line EINT9,
@@ -145,7 +151,7 @@ static int a9m2440_devices_init(void)
 	devfs_add_partition("nand0", 0x40000, 0x20000, PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 #endif
-	armlinux_set_bootparams(dev_get_mem_region(sdram_dev, 0) + 0x100);
+	armlinux_set_bootparams((void*)CS6_BASE + 0x100);
 	armlinux_set_architecture(MACH_TYPE_A9M2440);
 
 	return 0;
diff --git a/arch/arm/boards/at91rm9200ek/init.c b/arch/arm/boards/at91rm9200ek/init.c
index 9b58996..cff7ede 100644
--- a/arch/arm/boards/at91rm9200ek/init.c
+++ b/arch/arm/boards/at91rm9200ek/init.c
@@ -39,6 +39,14 @@ static struct at91_ether_platform_data ether_pdata = {
 	.phy_addr = 0,
 };
 
+static int at91rm9200ek_mem_init(void)
+{
+	at91_add_device_sdram(64 * 1024 * 1024);
+
+	return 0;
+}
+mem_initcall(at91rm9200ek_mem_init);
+
 static int at91rm9200ek_devices_init(void)
 {
 	/*
@@ -47,7 +55,6 @@ static int at91rm9200ek_devices_init(void)
 	 */
 	at91_set_gpio_output(AT91_PIN_PA23, 1);
 
-	at91_add_device_sdram(64 * 1024 * 1024);
 	at91_add_device_eth(&ether_pdata);
 
 	add_cfi_flash_device(0, AT91_CHIPSELECT_0, 0, 0);
diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index 966dd2f..861e898 100644
--- a/arch/arm/boards/at91sam9260ek/init.c
+++ b/arch/arm/boards/at91sam9260ek/init.c
@@ -141,13 +141,20 @@ static void at91sam9260ek_phy_reset(void)
 				     AT91_RSTC_URSTEN);
 }
 
+static int at91sam9260ek_mem_init(void)
+{
+	at91_add_device_sdram(64 * 1024 * 1024);
+
+	return 0;
+}
+mem_initcall(at91sam9260ek_mem_init);
+
 static int at91sam9260ek_devices_init(void)
 {
 	ek_add_device_nand();
 	at91sam9260ek_phy_reset();
 	at91_add_device_eth(&macb_pdata);
 
-	at91_add_device_sdram(64 * 1024 * 1024);
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
 	ek_set_board_type();
 
diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index 627202f..69111a0 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -132,10 +132,17 @@ static void __init ek_add_device_dm9000(void)
 static void __init ek_add_device_dm9000(void) {}
 #endif /* CONFIG_DRIVER_NET_DM9000 */
 
+static int at91sam9261ek_mem_init(void)
+{
+	at91_add_device_sdram(64 * 1024 * 1024);
+
+	return 0;
+}
+mem_initcall(at91sam9261ek_mem_init);
+
 static int at91sam9261ek_devices_init(void)
 {
 
-	at91_add_device_sdram(64 * 1024 * 1024);
 	ek_add_device_nand();
 	ek_add_device_dm9000();
 
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index 036a1c4..46f3a7e 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -107,6 +107,14 @@ static void ek_add_device_mci(void)
 static void ek_add_device_mci(void) {}
 #endif
 
+static int at91sam9263ek_mem_init(void)
+{
+	at91_add_device_sdram(64 * 1024 * 1024);
+
+	return 0;
+}
+mem_initcall(at91sam9263ek_mem_init);
+
 static int at91sam9263ek_devices_init(void)
 {
 	/*
@@ -117,7 +125,6 @@ static int at91sam9263ek_devices_init(void)
 	at91_set_gpio_output(AT91_PIN_PB27, 1);
 	at91_set_gpio_value(AT91_PIN_PB27, 1); /* 1- enable, 0 - disable */
 
-	at91_add_device_sdram(64 * 1024 * 1024);
 	ek_add_device_nand();
 	at91_add_device_eth(&macb_pdata);
 	add_cfi_flash_device(0, AT91_CHIPSELECT_0, 8 * 1024 * 1024, 0);
diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
index 8cdcb8d..ba7c2ff 100644
--- a/arch/arm/boards/at91sam9m10g45ek/init.c
+++ b/arch/arm/boards/at91sam9m10g45ek/init.c
@@ -126,10 +126,16 @@ static void ek_add_device_mci(void)
 static void ek_add_device_mci(void) {}
 #endif
 
+static int at91sam9m10g45ek_mem_init(void)
+{
+	at91_add_device_sdram(128 * 1024 * 1024);
+
+	return 0;
+}
+mem_initcall(at91sam9m10g45ek_mem_init);
 
 static int at91sam9m10g45ek_devices_init(void)
 {
-	at91_add_device_sdram(128 * 1024 * 1024);
 	ek_add_device_nand();
 	at91_add_device_eth(&macb_pdata);
 	ek_add_device_mci();
diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index 06916f0..b20dd74 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -261,9 +261,11 @@ static const uint32_t pad_setup[] = {
 	GPMI_RDY3_GPIO | GPIO_IN | PULLUP(1),
 };
 
-#ifdef CONFIG_MMU
-static int falconwing_mmu_init(void)
+static int falconwing_mem_init(void)
 {
+	arm_add_mem_device("ram0", IMX_MEMORY_BASE, 64 * 1024 * 1024);
+
+#ifdef CONFIG_MMU
 	mmu_init();
 
 	arm_create_section(0x40000000, 0x40000000, 64, PMD_SECT_DEF_CACHED);
@@ -272,11 +274,10 @@ static int falconwing_mmu_init(void)
 	setup_dma_coherent(0x10000000);
 
 	mmu_enable();
-
+#endif
 	return 0;
 }
-postcore_initcall(falconwing_mmu_init);
-#endif
+mem_initcall(falconwing_mem_init);
 
 /**
  * Try to register an environment storage on the attached MCI card
@@ -333,13 +334,11 @@ static void falconwing_init_usb(void)
 static int falconwing_devices_init(void)
 {
 	int i, rc;
-	struct device_d *sdram_dev;
 
 	/* initizalize gpios */
 	for (i = 0; i < ARRAY_SIZE(pad_setup); i++)
 		imx_gpio_mode(pad_setup[i]);
 
-	sdram_dev = arm_add_mem_device("ram0", IMX_MEMORY_BASE, 64 * 1024 * 1024);
 	imx_set_ioclk(480000000); /* enable IOCLK to run at the PLL frequency */
 	/* run the SSP unit clock at 100,000 kHz */
 	imx_set_sspclk(0, 100000000, 1);
@@ -350,7 +349,7 @@ static int falconwing_devices_init(void)
 
 	falconwing_init_usb();
 
-	armlinux_set_bootparams(dev_get_mem_region(sdram_dev, 0) + 0x100);
+	armlinux_set_bootparams((void *)IMX_MEMORY_BASE + 0x100);
 	armlinux_set_architecture(MACH_TYPE_CHUMBY);
 
 	rc = register_persistant_environment();
diff --git a/arch/arm/boards/edb93xx/edb93xx.c b/arch/arm/boards/edb93xx/edb93xx.c
index fd838bf..3e4e0b0 100644
--- a/arch/arm/boards/edb93xx/edb93xx.c
+++ b/arch/arm/boards/edb93xx/edb93xx.c
@@ -34,19 +34,8 @@
 
 #define DEVCFG_U1EN (1 << 18)
 
-static int ep93xx_devices_init(void)
+static int ep93xx_mem_init(void)
 {
-	add_cfi_flash_device(-1, 0x60000000, EDB93XX_CFI_FLASH_SIZE, 0);
-
-	/*
-	 * Create partitions that should be
-	 * not touched by any regular user
-	 */
-	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
-	devfs_add_partition("nor0", 0x40000, 0x20000, PARTITION_FIXED, "env0");
-
-	protect_file("/dev/env0", 1);
-
 	arm_add_mem_device("ram0", CONFIG_EP93XX_SDRAM_BANK0_BASE,
 				   CONFIG_EP93XX_SDRAM_BANK0_SIZE);
 #if (CONFIG_EP93XX_SDRAM_NUM_BANKS >= 2)
@@ -62,6 +51,23 @@ static int ep93xx_devices_init(void)
 				   CONFIG_EP93XX_SDRAM_BANK2_SIZE);
 #endif
 
+	return 0;
+}
+mem_initcall(ep93xx_mem_init);
+
+static int ep93xx_devices_init(void)
+{
+	add_cfi_flash_device(-1, 0x60000000, EDB93XX_CFI_FLASH_SIZE, 0);
+
+	/*
+	 * Create partitions that should be
+	 * not touched by any regular user
+	 */
+	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
+	devfs_add_partition("nor0", 0x40000, 0x20000, PARTITION_FIXED, "env0");
+
+	protect_file("/dev/env0", 1);
+
 	/*
 	 * Up to 32MiB NOR type flash, connected to
 	 * CS line 6, data width is 16 bit
diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index e188fab..5c07597 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -156,9 +156,11 @@ static struct fsl_usb2_platform_data usb_pdata = {
 	.phy_mode	= FSL_USB2_PHY_UTMI,
 };
 
-#ifdef CONFIG_MMU
-static void eukrea_cpuimx25_mmu_init(void)
+static int eukrea_cpuimx25_mem_init(void)
 {
+	arm_add_mem_device("ram0", IMX_SDRAM_CS0, 64 * 1024 * 1024);
+
+#ifdef CONFIG_MMU
 	mmu_init();
 
 	arm_create_section(0x80000000, 0x80000000, 128, PMD_SECT_DEF_CACHED);
@@ -167,12 +169,10 @@ static void eukrea_cpuimx25_mmu_init(void)
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
+mem_initcall(eukrea_cpuimx25_mem_init);
 
 static struct pad_desc eukrea_cpuimx25_pads[] = {
 	MX25_PAD_FEC_MDC__FEC_MDC,
@@ -230,8 +230,6 @@ static struct pad_desc eukrea_cpuimx25_pads[] = {
 
 static int eukrea_cpuimx25_devices_init(void)
 {
-	eukrea_cpuimx25_mmu_init();
-
 	mxc_iomux_v3_setup_multiple_pads(eukrea_cpuimx25_pads,
 		ARRAY_SIZE(eukrea_cpuimx25_pads));
 
@@ -251,8 +249,6 @@ static int eukrea_cpuimx25_devices_init(void)
 		PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
-	arm_add_mem_device("ram0", IMX_SDRAM_CS0, 64 * 1024 * 1024);
-
 	/* enable LCD */
 	gpio_direction_output(26, 1);
 	gpio_set_value(26, 1);
diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index e42ad7c..ac886fa 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -88,9 +88,11 @@ static struct i2c_board_info i2c_devices[] = {
 	},
 };
 
-#ifdef CONFIG_MMU
-static void eukrea_cpuimx27_mmu_init(void)
+static int eukrea_cpuimx27_mem_init(void)
 {
+	arm_add_mem_device("ram0", 0xa0000000, SDRAM0 * 1024 * 1024);
+
+#ifdef CONFIG_MMU
 	mmu_init();
 
 	arm_create_section(0xa0000000, 0xa0000000, 128, PMD_SECT_DEF_CACHED);
@@ -99,12 +101,10 @@ static void eukrea_cpuimx27_mmu_init(void)
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
+mem_initcall(eukrea_cpuimx27_mem_init);
 
 #ifdef CONFIG_DRIVER_VIDEO_IMX
 static struct imx_fb_videomode imxfb_mode = {
@@ -192,8 +192,6 @@ static int eukrea_cpuimx27_devices_init(void)
 #endif
 	};
 
-	eukrea_cpuimx27_mmu_init();
-
 	/* configure 16 bit nor flash on cs0 */
 	CS0U = 0x00008F03;
 	CS0L = 0xA0330D01;
@@ -208,7 +206,6 @@ static int eukrea_cpuimx27_devices_init(void)
 	add_cfi_flash_device(-1, 0xC2000000, 32 * 1024 * 1024, 0);
 #endif
 	imx27_add_nand(&nand_info);
-	arm_add_mem_device("ram0", 0xa0000000, SDRAM0 * 1024 * 1024);
 
 	PCCR0 |= PCCR0_I2C1_EN;
 	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index 29b9edf..02df444 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -126,9 +126,11 @@ static struct fsl_usb2_platform_data usb_pdata = {
 };
 #endif
 
-#ifdef CONFIG_MMU
-static int eukrea_cpuimx35_mmu_init(void)
+static int eukrea_cpuimx35_mem_init(void)
 {
+	arm_add_mem_device("ram0", IMX_SDRAM_CS0, 128 * 1024 * 1024);
+
+#ifdef CONFIG_MMU
 	mmu_init();
 
 	arm_create_section(0x80000000, 0x80000000, 128, PMD_SECT_DEF_CACHED);
@@ -141,10 +143,10 @@ static int eukrea_cpuimx35_mmu_init(void)
 #ifdef CONFIG_CACHE_L2X0
 	l2x0_init((void __iomem *)0x30000000, 0x00030024, 0x00000000);
 #endif
+#endif
 	return 0;
 }
-postcore_initcall(eukrea_cpuimx35_mmu_init);
-#endif
+mem_initcall(eukrea_cpuimx35_mem_init);
 
 static int eukrea_cpuimx35_devices_init(void)
 {
@@ -156,8 +158,6 @@ static int eukrea_cpuimx35_devices_init(void)
 	dev_add_bb_dev("env_raw", "env0");
 
 	imx35_add_fec(&fec_info);
-
-	arm_add_mem_device("ram0", IMX_SDRAM_CS0, 128 * 1024 * 1024);
 	imx35_add_fb(&ipu_fb_data);
 
 	imx35_add_i2c0(NULL);
diff --git a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
index 2510e07..b6fce93 100644
--- a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
+++ b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
@@ -93,9 +93,11 @@ static struct pad_desc eukrea_cpuimx51_pads[] = {
 #define GPIO_LAN8700_RESET	(1 * 32 + 31)
 #define GPIO_LCD_BL		(2 * 32 + 4)
 
-#ifdef CONFIG_MMU
-static void eukrea_cpuimx51_mmu_init(void)
+static int eukrea_cpuimx51_mem_init(void)
 {
+	arm_add_mem_device("ram0", 0x90000000, 256 * 1024 * 1024);
+
+#ifdef CONFIG_MMU
 	mmu_init();
 
 	arm_create_section(0x90000000, 0x90000000, 256, PMD_SECT_DEF_CACHED);
@@ -110,18 +112,13 @@ static void eukrea_cpuimx51_mmu_init(void)
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
+mem_initcall(eukrea_cpuimx51_mem_init);
 
 static int eukrea_cpuimx51_devices_init(void)
 {
-	eukrea_cpuimx51_mmu_init();
-
-	arm_add_mem_device("ram0", 0x90000000, 256 * 1024 * 1024);
 	imx51_add_fec(&fec_info);
 #ifdef CONFIG_MCI_IMX_ESDHC
 	imx51_add_mmc0(NULL);
diff --git a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
index 7e23e9a..47f6769 100644
--- a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
+++ b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
@@ -25,12 +25,17 @@
 #include <generated/mach-types.h>
 #include <mach/imx-regs.h>
 
-static int mx23_evk_devices_init(void)
+static int mx23_evk_mem_init(void)
 {
-	struct device_d *sdram_dev;
+	arm_add_mem_device("ram0", IMX_MEMORY_BASE, 32 * 1024 * 1024);
+
+	return 0;
+}
+mem_initcall(mx23_evk_mem_init);
 
-	sdram_dev = arm_add_mem_device("ram0", IMX_MEMORY_BASE, 32 * 1024 * 1024);
-	armlinux_set_bootparams(dev_get_mem_region(sdram_dev, 0) + 0x100);
+static int mx23_evk_devices_init(void)
+{
+	armlinux_set_bootparams((void*)IMX_MEMORY_BASE + 0x100);
 	armlinux_set_architecture(MACH_TYPE_MX23EVK);
 
 	return 0;
diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index b142232..979115d 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -192,6 +192,22 @@ static int imx25_3ds_fec_init(void)
 }
 late_initcall(imx25_3ds_fec_init);
 
+static int imx25_mem_init(void)
+{
+#if defined CONFIG_FREESCALE_MX25_3STACK_SDRAM_64MB_DDR2
+#define SDRAM_SIZE	64 * 1024 * 1024
+#elif defined CONFIG_FREESCALE_MX25_3STACK_SDRAM_128MB_MDDR
+#define SDRAM_SIZE	128 * 1024 * 1024
+#else
+#error "Unsupported SDRAM type"
+#endif
+	arm_add_mem_device("ram0", IMX_SDRAM_CS0, SDRAM_SIZE);
+	add_mem_device("sram0", 0x78000000, 128 * 1024, IORESOURCE_MEM_WRITEABLE);
+
+	return 0;
+}
+mem_initcall(imx25_mem_init);
+
 static int imx25_devices_init(void)
 {
 #ifdef CONFIG_USB
@@ -216,16 +232,6 @@ static int imx25_devices_init(void)
 	devfs_add_partition("nand0", 0x40000, 0x20000, PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
-#if defined CONFIG_FREESCALE_MX25_3STACK_SDRAM_64MB_DDR2
-#define SDRAM_SIZE	64 * 1024 * 1024
-#elif defined CONFIG_FREESCALE_MX25_3STACK_SDRAM_128MB_MDDR
-#define SDRAM_SIZE	128 * 1024 * 1024
-#else
-#error "Unsupported SDRAM type"
-#endif
-	arm_add_mem_device("ram0", IMX_SDRAM_CS0, SDRAM_SIZE);
-	add_mem_device("sram0", 0x78000000, 128 * 1024, IORESOURCE_MEM_WRITEABLE);
-
 	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
 	imx25_add_i2c0(NULL);
 
diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
index 27d4e83..ab70265 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -128,6 +128,13 @@ static void set_board_rev(int rev)
 	imx35_3ds_system_rev =  (imx35_3ds_system_rev & ~(0xF << 8)) | (rev & 0xF) << 8;
 }
 
+static int f3s_mem_init(void)
+{
+	arm_add_mem_device("ram0", IMX_SDRAM_CS0, 124 * 1024 * 1024);
+
+	return 0;
+}
+mem_initcall(f3s_mem_init);
 
 static int f3s_devices_init(void)
 {
@@ -177,7 +184,6 @@ static int f3s_devices_init(void)
 
 	imx35_add_mmc0(NULL);
 
-	arm_add_mem_device("ram0", IMX_SDRAM_CS0, 124 * 1024 * 1024);
 	imx35_add_fb(&ipu_fb_data);
 
 	armlinux_set_bootparams((void *)0x80000100);
diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index 509e3c4..f347657 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -73,9 +73,11 @@ static struct pad_desc f3s_pads[] = {
 	IOMUX_PAD(0x60C, 0x21C, 3, 0x0, 0, 0x85), /* FIXME: needed? */
 };
 
-#ifdef CONFIG_MMU
-static void babbage_mmu_init(void)
+static int babbage_mem_init(void)
 {
+	arm_add_mem_device("ram0", 0x90000000, 512 * 1024 * 1024);
+
+#ifdef CONFIG_MMU
 	mmu_init();
 
 	arm_create_section(0x90000000, 0x90000000, 512, PMD_SECT_DEF_CACHED);
@@ -84,12 +86,10 @@ static void babbage_mmu_init(void)
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
+mem_initcall(babbage_mem_init);
 
 #define BABBAGE_ECSPI1_CS0	(3 * 32 + 24)
 static int spi_0_cs[] = {BABBAGE_ECSPI1_CS0};
@@ -227,10 +227,6 @@ static void babbage_power_init(void)
 
 static int f3s_devices_init(void)
 {
-	babbage_mmu_init();
-
-	arm_add_mem_device("ram0", 0x90000000, 512 * 1024 * 1024);
-
 	imx51_iim_register_fec_ethaddr();
 	imx51_add_fec(&fec_info);
 	imx51_add_mmc0(NULL);
diff --git a/arch/arm/boards/freescale-mx53-loco/board.c b/arch/arm/boards/freescale-mx53-loco/board.c
index 8ffe964..92cff01 100644
--- a/arch/arm/boards/freescale-mx53-loco/board.c
+++ b/arch/arm/boards/freescale-mx53-loco/board.c
@@ -73,9 +73,12 @@ static struct pad_desc loco_pads[] = {
 	MX53_PAD_EIM_DA13__GPIO3_13,
 };
 
-#ifdef CONFIG_MMU
-static void loco_mmu_init(void)
+static int loco_mem_init(void)
 {
+	arm_add_mem_device("ram0", 0x70000000, SZ_512M);
+	arm_add_mem_device("ram1", 0xb0000000, SZ_512M);
+
+#ifdef CONFIG_MMU
 	mmu_init();
 
 	arm_create_section(0x70000000, 0x70000000, 512, PMD_SECT_DEF_CACHED);
@@ -86,12 +89,10 @@ static void loco_mmu_init(void)
 	setup_dma_coherent(0x20000000);
 
 	mmu_enable();
-}
-#else
-static void loco_mmu_init(void)
-{
-}
 #endif
+	return 0;
+}
+mem_initcall(loco_mem_init);
 
 #define LOCO_FEC_PHY_RST		IMX_GPIO_NR(7, 6)
 
@@ -104,11 +105,6 @@ static void loco_fec_reset(void)
 
 static int loco_devices_init(void)
 {
-	loco_mmu_init();
-
-	arm_add_mem_device("ram0", 0x70000000, SZ_512M);
-	arm_add_mem_device("ram1", 0xb0000000, SZ_512M);
-
 	imx51_iim_register_fec_ethaddr();
 	imx53_add_fec(&fec_info);
 	imx53_add_mmc0(NULL);
diff --git a/arch/arm/boards/guf-cupid/board.c b/arch/arm/boards/guf-cupid/board.c
index d66afac..134f377 100644
--- a/arch/arm/boards/guf-cupid/board.c
+++ b/arch/arm/boards/guf-cupid/board.c
@@ -96,9 +96,11 @@ static struct imx_ipu_fb_platform_data ipu_fb_data = {
 	.enable		= cupid_fb_enable,
 };
 
-#ifdef CONFIG_MMU
-static int cupid_mmu_init(void)
+static int cupid_mem_init(void)
 {
+	arm_add_mem_device("ram0", IMX_SDRAM_CS0, 128 * 1024 * 1024);
+
+#ifdef CONFIG_MMU
 	mmu_init();
 
 	arm_create_section(0x80000000, 0x80000000, 128, PMD_SECT_DEF_CACHED);
@@ -111,10 +113,10 @@ static int cupid_mmu_init(void)
 #ifdef CONFIG_CACHE_L2X0
 	l2x0_init((void __iomem *)0x30000000, 0x00030024, 0x00000000);
 #endif
+#endif
 	return 0;
 }
-postcore_initcall(cupid_mmu_init);
-#endif
+mem_initcall(cupid_mem_init);
 
 static int cupid_devices_init(void)
 {
@@ -138,7 +140,6 @@ static int cupid_devices_init(void)
 	devfs_add_partition("nand0", 0x40000, 0x80000, PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
-	arm_add_mem_device("ram0", IMX_SDRAM_CS0, 128 * 1024 * 1024);
 	imx35_add_fb(&ipu_fb_data);
 	imx35_add_mmc0(NULL);
 
diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/board.c
index 6486f3a..3517a5d 100644
--- a/arch/arm/boards/guf-neso/board.c
+++ b/arch/arm/boards/guf-neso/board.c
@@ -136,9 +136,11 @@ static void neso_usbh_init(void)
 }
 #endif
 
-#ifdef CONFIG_MMU
-static void neso_mmu_init(void)
+static int neso_mem_init(void)
 {
+	arm_add_mem_device("ram0", 0xa0000000, 128 * 1024 * 1024);
+
+#ifdef CONFIG_MMU
 	mmu_init();
 
 	arm_create_section(0xa0000000, 0xa0000000, 128, PMD_SECT_DEF_CACHED);
@@ -147,12 +149,10 @@ static void neso_mmu_init(void)
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
+mem_initcall(neso_mem_init);
 
 static int neso_devices_init(void)
 {
@@ -280,15 +280,11 @@ static int neso_devices_init(void)
 	gpio_direction_output(OTG_PHY_CS_GPIO, 1);
 	gpio_direction_output(USBH2_PHY_CS_GPIO, 1);
 
-
-	neso_mmu_init();
-
 	/* initialize gpios */
 	for (i = 0; i < ARRAY_SIZE(mode); i++)
 		imx_gpio_mode(mode[i]);
 
 	imx27_add_nand(&nand_info);
-	arm_add_mem_device("ram0", 0xa0000000, 128 * 1024 * 1024);
 	imx27_add_fb(&neso_fb_data);
 
 #ifdef CONFIG_USB
diff --git a/arch/arm/boards/imx21ads/imx21ads.c b/arch/arm/boards/imx21ads/imx21ads.c
index b449279..d58831e 100644
--- a/arch/arm/boards/imx21ads/imx21ads.c
+++ b/arch/arm/boards/imx21ads/imx21ads.c
@@ -115,6 +115,14 @@ static int imx21ads_timing_init(void)
 
 core_initcall(imx21ads_timing_init);
 
+static int mx21ads_mem_init(void)
+{
+	arm_add_mem_device("ram0", 0xc0000000, 64 * 1024 * 1024);
+
+	return 0;
+}
+mem_initcall(mx21ads_mem_init);
+
 static int mx21ads_devices_init(void)
 {
 	int i;
@@ -157,7 +165,6 @@ static int mx21ads_devices_init(void)
 		imx_gpio_mode(mode[i]);
 
 	add_cfi_flash_device(-1, 0xC8000000, 32 * 1024 * 1024, 0);
-	arm_add_mem_device("ram0", 0xc0000000, 64 * 1024 * 1024);
 	imx21_add_nand(&nand_info);
 	add_generic_device("cs8900", -1, NULL,	IMX_CS1_BASE, 0x1000,
 			IORESOURCE_MEM, NULL);
diff --git a/arch/arm/boards/imx27ads/imx27ads.c b/arch/arm/boards/imx27ads/imx27ads.c
index 299b2ea..da4260f 100644
--- a/arch/arm/boards/imx27ads/imx27ads.c
+++ b/arch/arm/boards/imx27ads/imx27ads.c
@@ -74,6 +74,14 @@ static int imx27ads_timing_init(void)
 
 core_initcall(imx27ads_timing_init);
 
+static int mx27ads_mem_init(void)
+{
+	arm_add_mem_device("ram0", 0xa0000000, 128 * 1024 * 1024);
+
+	return 0;
+}
+mem_initcall(mx27ads_mem_init);
+
 static int mx27ads_devices_init(void)
 {
 	int i;
@@ -108,7 +116,6 @@ static int mx27ads_devices_init(void)
 
 	add_cfi_flash_device(-1, 0xC0000000, 32 * 1024 * 1024, 0);
 
-	arm_add_mem_device("ram0", 0xa0000000, 128 * 1024 * 1024);
 	imx27_add_fec(&fec_info);
 	devfs_add_partition("nor0", 0x00000, 0x20000, PARTITION_FIXED, "self0");
 	devfs_add_partition("nor0", 0x20000, 0x20000, PARTITION_FIXED, "env0");
diff --git a/arch/arm/boards/karo-tx25/board.c b/arch/arm/boards/karo-tx25/board.c
index 4e5eafa..a01fa3c 100644
--- a/arch/arm/boards/karo-tx25/board.c
+++ b/arch/arm/boards/karo-tx25/board.c
@@ -52,9 +52,14 @@ struct imx_nand_platform_data nand_info = {
 	.flash_bbt = 1,
 };
 
-#ifdef CONFIG_MMU
-static int tx25_mmu_init(void)
+static int tx25_mem_init(void)
 {
+	arm_add_mem_device("ram0", IMX_SDRAM_CS0, 32 * 1024 * 1024);
+	arm_add_mem_device("ram0", IMX_SDRAM_CS1, 32 * 1024 * 1024);
+	add_mem_device("ram0", 0x78000000, 128 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+
+#ifdef CONFIG_MMU
 	mmu_init();
 
 	arm_create_section(0x80000000, 0x80000000, 32, PMD_SECT_DEF_CACHED);
@@ -64,17 +69,11 @@ static int tx25_mmu_init(void)
 
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
+mem_initcall(tx25_mem_init);
 
 static struct pad_desc karo_tx25_padsd_fec[] = {
 	MX25_PAD_D11__GPIO_4_9,		/* FEC PHY power on pin */
@@ -134,11 +133,6 @@ static int tx25_devices_init(void)
 	devfs_add_partition("nand0", 0x40000, 0x80000, PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
-	arm_add_mem_device("ram0", IMX_SDRAM_CS0, 32 * 1024 * 1024);
-	arm_add_mem_device("ram0", IMX_SDRAM_CS1, 32 * 1024 * 1024);
-	add_mem_device("ram0", 0x78000000, 128 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-
 	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_TX25);
 	armlinux_set_serial(imx_uid());
diff --git a/arch/arm/boards/karo-tx28/tx28.c b/arch/arm/boards/karo-tx28/tx28.c
index 095835b..d6e3f9c 100644
--- a/arch/arm/boards/karo-tx28/tx28.c
+++ b/arch/arm/boards/karo-tx28/tx28.c
@@ -70,9 +70,11 @@ static const uint32_t tx28_pad_setup[] = {
 
 extern void base_board_init(void);
 
-#ifdef CONFIG_MMU
-static int tx28_mmu_init(void)
+static int tx28_mem_init(void)
 {
+	arm_add_mem_device("ram0", IMX_MEMORY_BASE, 128 * 1024 * 1024);
+
+#ifdef CONFIG_MMU
 	mmu_init();
 
 	arm_create_section(0x40000000, 0x40000000, 128, PMD_SECT_DEF_CACHED);
@@ -81,23 +83,20 @@ static int tx28_mmu_init(void)
 	setup_dma_coherent(0x10000000);
 
 	mmu_enable();
-
+#endif
 	return 0;
 }
-postcore_initcall(tx28_mmu_init);
-#endif
+mem_initcall(tx28_mem_init);
 
 static int tx28_devices_init(void)
 {
 	int i;
-	struct device_d *sdram_dev;
 
 	/* initizalize gpios */
 	for (i = 0; i < ARRAY_SIZE(tx28_pad_setup); i++)
 		imx_gpio_mode(tx28_pad_setup[i]);
 
-	sdram_dev = arm_add_mem_device("ram0", IMX_MEMORY_BASE, 128 * 1024 * 1024);
-	armlinux_set_bootparams(dev_get_mem_region(sdram_dev, 0) + 0x100);
+	armlinux_set_bootparams((void *)IMX_MEMORY_BASE + 0x100);
 	armlinux_set_architecture(MACH_TYPE_TX28);
 
 	base_board_init();
diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index df7e617..fd1f2f2 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -263,11 +263,18 @@ static const unsigned pin_usage[] = {
 	GPH7_RXD2,
 };
 
+static int mini2440_mem_init(void)
+{
+	arm_add_mem_device("ram0", CS6_BASE, s3c24x0_get_memory_size());
+
+	return 0;
+}
+mem_initcall(mini2440_mem_init);
+
 static int mini2440_devices_init(void)
 {
 	uint32_t reg;
 	int i;
-	struct device_d *sdram_dev;
 
 	/* ----------- configure the access to the outer space ---------- */
 	for (i = 0; i < ARRAY_SIZE(pin_usage); i++)
@@ -290,8 +297,6 @@ static int mini2440_devices_init(void)
 	add_generic_device("s3c24x0_nand", -1, NULL, S3C24X0_NAND_BASE, 0,
 			   IORESOURCE_MEM, &nand_info);
 
-	sdram_dev = arm_add_mem_device("ram0", CS6_BASE, s3c24x0_get_memory_size());
-
 	add_dm9000_device(0, CS4_BASE + 0x300, CS4_BASE + 0x304,
 			  IORESOURCE_MEM_16BIT, &dm9000_data);
 #ifdef CONFIG_NAND
@@ -308,7 +313,7 @@ static int mini2440_devices_init(void)
 			   IORESOURCE_MEM, &mci_data);
 	add_generic_device("s3c_fb", 0, NULL, S3C2410_LCD_BASE, 0,
 			   IORESOURCE_MEM, &s3c24x0_fb_data);
-	armlinux_set_bootparams(dev_get_mem_region(sdram_dev, 0) + 0x100);
+	armlinux_set_bootparams((void*)CS6_BASE + 0x100);
 	armlinux_set_architecture(MACH_TYPE_MINI2440);
 
 	return 0;
diff --git a/arch/arm/boards/mmccpu/init.c b/arch/arm/boards/mmccpu/init.c
index eb6b490..36bc193 100644
--- a/arch/arm/boards/mmccpu/init.c
+++ b/arch/arm/boards/mmccpu/init.c
@@ -42,6 +42,14 @@ static struct at91_ether_platform_data macb_pdata = {
 	.phy_addr	= 4,
 };
 
+static int mmccpu_mem_init(void)
+{
+	at91_add_device_sdram(128 * 1024 * 1024);
+
+	return 0;
+}
+mem_initcall(mmccpu_mem_init);
+
 static int mmccpu_devices_init(void)
 {
 	/*
@@ -52,7 +60,6 @@ static int mmccpu_devices_init(void)
 	at91_set_gpio_output(AT91_PIN_PB27, 1);
 	at91_set_gpio_value(AT91_PIN_PB27, 1); /* 1- enable, 0 - disable */
 
-	at91_add_device_sdram(128 * 1024 * 1024);
 	at91_add_device_eth(&macb_pdata);
 	add_cfi_flash_device(0, AT91_CHIPSELECT_0, 0, 0);
 
diff --git a/arch/arm/boards/netx/netx.c b/arch/arm/boards/netx/netx.c
index e9b834a..92d2911 100644
--- a/arch/arm/boards/netx/netx.c
+++ b/arch/arm/boards/netx/netx.c
@@ -38,10 +38,17 @@ struct netx_eth_platform_data eth1_data = {
 	.xcno = 1,
 };
 
+static int netx_mem_init(void)
+{
+	arm_add_mem_device("ram0", 0x80000000, 64 * 1024 * 1024);
+
+	return 0;
+}
+mem_initcall(netx_mem_init);
+
 static int netx_devices_init(void) {
 	add_cfi_flash_device(-1, 0xC0000000, 32 * 1024 * 1024, 0);
 
-	arm_add_mem_device("ram0", 0x80000000, 64 * 1024 * 1024);
 	add_generic_device("netx-eth", -1, NULL, 0, 0, IORESOURCE_MEM, &eth0_data);
 	add_generic_device("netx-eth", -1, NULL, 0, 0, IORESOURCE_MEM, &eth1_data);
 
diff --git a/arch/arm/boards/nhk8815/setup.c b/arch/arm/boards/nhk8815/setup.c
index da6be93..dcf7166 100644
--- a/arch/arm/boards/nhk8815/setup.c
+++ b/arch/arm/boards/nhk8815/setup.c
@@ -76,10 +76,16 @@ static struct device_d nhk8815_nand_device = {
 	.platform_data	= &nhk8815_nand_data,
 };
 
-static int nhk8815_devices_init(void)
+static int nhk8815_mem_init(void)
 {
 	st8815_add_device_sdram(64 * 1024 *1024);
 
+	return 0;
+}
+mem_initcall(nhk8815_mem_init);
+
+static int nhk8815_devices_init(void)
+{
 	writel(0xC37800F0, NOMADIK_GPIO1_BASE + 0x20);
 	writel(0x00000000, NOMADIK_GPIO1_BASE + 0x24);
 	writel(0x00000000, NOMADIK_GPIO1_BASE + 0x28);
diff --git a/arch/arm/boards/omap/board-beagle.c b/arch/arm/boards/omap/board-beagle.c
index 4602631..49af40c 100644
--- a/arch/arm/boards/omap/board-beagle.c
+++ b/arch/arm/boards/omap/board-beagle.c
@@ -278,9 +278,16 @@ static struct i2c_board_info i2c_devices[] = {
 	},
 };
 
-static int beagle_devices_init(void)
+static int beagle_mem_init(void)
 {
 	arm_add_mem_device("ram0", 0x80000000, 128 * 1024 * 1024);
+
+	return 0;
+}
+mem_initcall(beagle_mem_init);
+
+static int beagle_devices_init(void)
+{
 	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
 	add_generic_device("i2c-omap", -1, NULL, 0x4809C000, SZ_4K,
 			   IORESOURCE_MEM, NULL);
diff --git a/arch/arm/boards/omap/board-omap3evm.c b/arch/arm/boards/omap/board-omap3evm.c
index 68d971b..a2532d5 100644
--- a/arch/arm/boards/omap/board-omap3evm.c
+++ b/arch/arm/boards/omap/board-omap3evm.c
@@ -235,10 +235,16 @@ static int omap3evm_init_console(void)
 console_initcall(omap3evm_init_console);
 #endif /* CONFIG_DRIVER_SERIAL_NS16550 */
 
-static int omap3evm_init_devices(void)
+static int omap3evm_mem_init(void)
 {
 	arm_add_mem_device("ram0", 0x80000000, 128 * 1024 * 1024);
 
+	return 0;
+}
+mem_initcall(omap3evm_mem_init);
+
+static int omap3evm_init_devices(void)
+{
 #ifdef CONFIG_GPMC
 	/*
 	 * WP is made high and WAIT1 active Low
diff --git a/arch/arm/boards/omap/board-sdp343x.c b/arch/arm/boards/omap/board-sdp343x.c
index 8fcae12..82fc16d 100644
--- a/arch/arm/boards/omap/board-sdp343x.c
+++ b/arch/arm/boards/omap/board-sdp343x.c
@@ -624,23 +624,22 @@ static int sdp3430_console_init(void)
 console_initcall(sdp3430_console_init);
 #endif				/* CONFIG_DRIVER_SERIAL_NS16550 */
 
-/*------------------------- FLASH Devices -----------------------------------*/
-static int sdp3430_flash_init(void)
+static int sdp3430_mem_init(void)
 {
-#ifdef CONFIG_GPMC
-	/* WP is made high and WAIT1 active Low */
-	gpmc_generic_init(0x10);
-#endif
+	arm_add_mem_device("ram0", 0x80000000, 128 * 1024 * 1024);
+
 	return 0;
 }
-
-/*-----------------------Generic Devices Initialization ---------------------*/
+mem_initcall(sdp3430_mem_init);
 
 static int sdp3430_devices_init(void)
 {
-	arm_add_mem_device("ram0", 0x80000000, 128 * 1024 * 1024);
+#ifdef CONFIG_GPMC
+	/* WP is made high and WAIT1 active Low */
+	gpmc_generic_init(0x10);
+#endif
 
-	return sdp3430_flash_init();
+	return 0;
 }
 
 device_initcall(sdp3430_devices_init);
diff --git a/arch/arm/boards/panda/board.c b/arch/arm/boards/panda/board.c
index e27f0a4..696d44a 100644
--- a/arch/arm/boards/panda/board.c
+++ b/arch/arm/boards/panda/board.c
@@ -44,20 +44,21 @@ static int panda_console_init(void)
 }
 console_initcall(panda_console_init);
 
-#ifdef CONFIG_MMU
-static int panda_mmu_init(void)
+static int panda_mem_init(void)
 {
+	arm_add_mem_device("ram0", 0x80000000, SZ_1G);
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
+mem_initcall(panda_mem_init);
 
 #ifdef CONFIG_USB_EHCI
 static struct ehci_platform_data ehci_pdata = {
@@ -139,7 +140,6 @@ static int panda_devices_init(void)
 		sr32(OMAP44XX_SCRM_ALTCLKSRC, 2, 2, 0x3);
 	}
 
-	arm_add_mem_device("ram0", 0x80000000, SZ_1G);
 	add_generic_device("omap-hsmmc", -1, NULL, 0x4809C100, SZ_4K,
 			   IORESOURCE_MEM, NULL);
 	panda_ehci_init();
diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index 56db9a8..a026f23 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -146,9 +146,14 @@ static void pcm037_usb_init(void)
 }
 #endif
 
-#ifdef CONFIG_MMU
-static void pcm037_mmu_init(void)
+static int pcm037_mem_init(void)
 {
+	arm_add_mem_device("ram0", IMX_SDRAM_CS0, SDRAM0 * 1024 * 1024);
+#ifndef CONFIG_PCM037_SDRAM_BANK1_NONE
+	arm_add_mem_device("ram1", IMX_SDRAM_CS1, SDRAM1 * 1024 * 1024);
+#endif
+
+#ifdef CONFIG_MMU
 	mmu_init();
 
 	arm_create_section(0x80000000, 0x80000000, 128, PMD_SECT_DEF_CACHED);
@@ -161,17 +166,13 @@ static void pcm037_mmu_init(void)
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
+mem_initcall(pcm037_mem_init);
 
 static int imx31_devices_init(void)
 {
-	pcm037_mmu_init();
-
 	__REG(CSCR_U(0)) = 0x0000cf03; /* CS0: Nor Flash */
 	__REG(CSCR_L(0)) = 0x10000d03;
 	__REG(CSCR_A(0)) = 0x00720900;
@@ -219,10 +220,6 @@ static int imx31_devices_init(void)
 	add_generic_device("smc911x", -1, NULL,	IMX_CS1_BASE, IMX_CS1_RANGE,
 			IORESOURCE_MEM, NULL);
 
-	arm_add_mem_device("ram0", IMX_SDRAM_CS0, SDRAM0 * 1024 * 1024);
-#ifndef CONFIG_PCM037_SDRAM_BANK1_NONE
-	arm_add_mem_device("ram1", IMX_SDRAM_CS1, SDRAM1 * 1024 * 1024);
-#endif
 #ifdef CONFIG_USB
 	pcm037_usb_init();
 	add_generic_usb_ehci_device(-1, IMX_OTG_BASE, NULL);
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index bf15cfd..9588b9b 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -129,9 +129,13 @@ static void pcm038_usbh_init(void)
 }
 #endif
 
-#ifdef CONFIG_MMU
-static void pcm038_mmu_init(void)
+static int pcm038_mem_init(void)
 {
+	arm_add_mem_device("ram0", 0xa0000000, 128 * 1024 * 1024);
+
+	add_mem_device("ram0", 0xc8000000, 512 * 1024, /* Can be up to 2MiB */
+				   IORESOURCE_MEM_WRITEABLE);
+#ifdef CONFIG_MMU
 	mmu_init();
 
 	arm_create_section(0xa0000000, 0xa0000000, 128, PMD_SECT_DEF_CACHED);
@@ -140,12 +144,10 @@ static void pcm038_mmu_init(void)
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
+mem_initcall(pcm038_mem_init);
 
 static int pcm038_devices_init(void)
 {
@@ -223,8 +225,6 @@ static int pcm038_devices_init(void)
 		PD26_AF_USBH2_DATA5,
 	};
 
-	pcm038_mmu_init();
-
 	/* configure 16 bit nor flash on cs0 */
 	CS0U = 0x0000CC03;
 	CS0L = 0xa0330D01;
@@ -249,14 +249,12 @@ static int pcm038_devices_init(void)
 
 	gpio_direction_output(GPIO_PORTD | 28, 0);
 	gpio_set_value(GPIO_PORTD | 28, 0);
+
 	spi_register_board_info(pcm038_spi_board_info, ARRAY_SIZE(pcm038_spi_board_info));
 	imx27_add_spi0(&pcm038_spi_0_data);
 
 	add_cfi_flash_device(-1, 0xC0000000, 32 * 1024 * 1024, 0);
 	imx27_add_nand(&nand_info);
-	arm_add_mem_device("ram0", 0xa0000000, 128 * 1024 * 1024);
-	add_mem_device("ram0", 0xc8000000, 512 * 1024, /* Can be up to 2MiB */
-				   IORESOURCE_MEM_WRITEABLE);
 	imx27_add_fb(&pcm038_fb_data);
 
 #ifdef CONFIG_USB
diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
index 0f25354..10d319f 100644
--- a/arch/arm/boards/pcm043/pcm043.c
+++ b/arch/arm/boards/pcm043/pcm043.c
@@ -99,9 +99,11 @@ static struct imx_ipu_fb_platform_data ipu_fb_data = {
 	.bpp		= 16,
 };
 
-#ifdef CONFIG_MMU
-static int pcm043_mmu_init(void)
+static int pcm043_mem_init(void)
 {
+	arm_add_mem_device("ram0", IMX_SDRAM_CS0, 128 * 1024 * 1024);
+
+#ifdef CONFIG_MMU
 	mmu_init();
 
 	arm_create_section(0x80000000, 0x80000000, 128, PMD_SECT_DEF_CACHED);
@@ -114,10 +116,11 @@ static int pcm043_mmu_init(void)
 #ifdef CONFIG_CACHE_L2X0
 	l2x0_init((void __iomem *)0x30000000, 0x00030024, 0x00000000);
 #endif
+#endif
 	return 0;
 }
-postcore_initcall(pcm043_mmu_init);
-#endif
+mem_initcall(pcm043_mem_init);
+
 
 struct gpio_led led0 = {
 	.gpio = 1 * 32 + 6,
@@ -170,7 +173,6 @@ static int imx35_devices_init(void)
 	}
 
 
-	arm_add_mem_device("ram0", IMX_SDRAM_CS0, 128 * 1024 * 1024);
 	imx35_add_fb(&ipu_fb_data);
 
 	armlinux_set_bootparams((void *)0x80000100);
@@ -216,6 +218,7 @@ static int imx35_console_init(void)
 	mxc_iomux_v3_setup_multiple_pads(pcm043_pads, ARRAY_SIZE(pcm043_pads));
 
 	imx35_add_uart0();
+
 	return 0;
 }
 
diff --git a/arch/arm/boards/pcm049/board.c b/arch/arm/boards/pcm049/board.c
index 20419a3..83eb9be 100644
--- a/arch/arm/boards/pcm049/board.c
+++ b/arch/arm/boards/pcm049/board.c
@@ -54,9 +54,13 @@ static int pcm049_console_init(void)
 }
 console_initcall(pcm049_console_init);
 
-#ifdef CONFIG_MMU
-static int pcm049_mmu_init(void)
+static int pcm049_mem_init(void)
 {
+	arm_add_mem_device("ram0", 0x80000000, SZ_512M);
+
+	add_mem_device("sram0", 0x40300000, 48 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+#ifdef CONFIG_MMU
 	mmu_init();
 
 	arm_create_section(0x80000000, 0x80000000, 256, PMD_SECT_DEF_CACHED);
@@ -64,11 +68,10 @@ static int pcm049_mmu_init(void)
 	arm_create_section(0x90000000, 0x80000000, 256, PMD_SECT_DEF_UNCACHED);
 
 	mmu_enable();
-
+#endif
 	return 0;
 }
-device_initcall(pcm049_mmu_init);
-#endif
+mem_initcall(pcm049_mem_init);
 
 static struct gpmc_config net_cfg = {
 	.cfg = {
@@ -93,9 +96,6 @@ static void pcm049_network_init(void)
 
 static int pcm049_devices_init(void)
 {
-	arm_add_mem_device("ram0", 0x80000000, SZ_512M);
-	add_mem_device("ram0", 0x40300000, 48 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
 	add_generic_device("omap-hsmmc", -1, NULL, 0x4809C100, SZ_4K,
 			   IORESOURCE_MEM, NULL);
 
diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
index 68f972a..3c2a0e4 100644
--- a/arch/arm/boards/phycard-i.MX27/pca100.c
+++ b/arch/arm/boards/phycard-i.MX27/pca100.c
@@ -69,9 +69,11 @@ static void pca100_usb_register(void)
 }
 #endif
 
-#ifdef CONFIG_MMU
-static void pca100_mmu_init(void)
+static int pca100_mem_init(void)
 {
+	arm_add_mem_device("ram0", 0xa0000000, 128 * 1024 * 1024);
+
+#ifdef CONFIG_MMU
 	mmu_init();
 
 	arm_create_section(0xa0000000, 0xa0000000, 128, PMD_SECT_DEF_CACHED);
@@ -80,12 +82,10 @@ static void pca100_mmu_init(void)
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
+mem_initcall(pca100_mem_init);
 
 static void pca100_usb_init(void)
 {
@@ -197,7 +197,6 @@ static int pca100_devices_init(void)
 		imx_gpio_mode(mode[i]);
 
 	imx27_add_nand(&nand_info);
-	arm_add_mem_device("ram0", 0xa0000000, 128 * 1024 * 1024);
 	imx27_add_fec(&fec_info);
 	imx27_add_mmc0(NULL);
 
@@ -224,7 +223,6 @@ device_initcall(pca100_devices_init);
 
 static int pca100_console_init(void)
 {
-	pca100_mmu_init();
 	imx27_add_uart0();
 	return 0;
 }
diff --git a/arch/arm/boards/pm9261/init.c b/arch/arm/boards/pm9261/init.c
index 783a404..efc5dcc 100644
--- a/arch/arm/boards/pm9261/init.c
+++ b/arch/arm/boards/pm9261/init.c
@@ -126,9 +126,16 @@ static void __init pm_add_device_dm9000(void)
 static void __init ek_add_device_dm9000(void) {}
 #endif /* CONFIG_DRIVER_NET_DM9000 */
 
-static int pm9261_devices_init(void)
+static int pm9261_mem_init(void)
 {
 	at91_add_device_sdram(64 * 1024 * 1024);
+
+	return 0;
+}
+mem_initcall(pm9261_mem_init);
+
+static int pm9261_devices_init(void)
+{
 	pm_add_device_nand();
 	pm_add_device_dm9000();
 	add_cfi_flash_device(0, AT91_CHIPSELECT_0, 4 * 1024 * 1024, 0);
diff --git a/arch/arm/boards/pm9263/init.c b/arch/arm/boards/pm9263/init.c
index 418b804..aeca4e7 100644
--- a/arch/arm/boards/pm9263/init.c
+++ b/arch/arm/boards/pm9263/init.c
@@ -91,6 +91,14 @@ static struct at91_ether_platform_data macb_pdata = {
 	.phy_addr = 0,
 };
 
+static int pm9263_mem_init(void)
+{
+	at91_add_device_sdram(64 * 1024 * 1024);
+
+	return 0;
+}
+mem_initcall(pm9263_mem_init);
+
 static int pm9263_devices_init(void)
 {
 	/*
@@ -101,7 +109,6 @@ static int pm9263_devices_init(void)
 	at91_set_gpio_output(AT91_PIN_PB27, 1);
 	at91_set_gpio_value(AT91_PIN_PB27, 1); /* 1- enable, 0 - disable */
 
-	at91_add_device_sdram(64 * 1024 * 1024);
 	pm_add_device_nand();
 	at91_add_device_eth(&macb_pdata);
 	add_cfi_flash_device(0, AT91_CHIPSELECT_0, 4 * 1024 * 1024, 0);
diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
index 8031ce5..35c9ce9 100644
--- a/arch/arm/boards/pm9g45/init.c
+++ b/arch/arm/boards/pm9g45/init.c
@@ -82,9 +82,16 @@ static struct at91_ether_platform_data macb_pdata = {
 	.phy_addr = 0,
 };
 
-static int pm9g45_devices_init(void)
+static int pm9g45_mem_init(void)
 {
 	at91_add_device_sdram(128 * 1024 * 1024);
+
+	return 0;
+}
+mem_initcall(pm9g45_mem_init);
+
+static int pm9g45_devices_init(void)
+{
 	pm_add_device_nand();
 	at91_add_device_eth(&macb_pdata);
 
diff --git a/arch/arm/boards/scb9328/scb9328.c b/arch/arm/boards/scb9328/scb9328.c
index 68a39bf..e90417f 100644
--- a/arch/arm/boards/scb9328/scb9328.c
+++ b/arch/arm/boards/scb9328/scb9328.c
@@ -50,6 +50,14 @@ struct gpio_led leds[] = {
 	},
 };
 
+static int scb9328_mem_init(void)
+{
+	arm_add_mem_device("ram0", 0x08000000, 16 * 1024 * 1024);
+
+	return 0;
+}
+mem_initcall(scb9328_mem_init);
+
 static int scb9328_devices_init(void)
 {
 	int i;
@@ -81,7 +89,6 @@ static int scb9328_devices_init(void)
 	CS5L = 0x00000D03;
 
 	add_cfi_flash_device(-1, 0x10000000, 16 * 1024 * 1024, 0);
-	arm_add_mem_device("ram0", 0x08000000, 16 * 1024 * 1024);
 	add_dm9000_device(-1, 0x16000000, 0x16000004,
 			  IORESOURCE_MEM_16BIT, &dm9000_data);
 
diff --git a/arch/arm/boards/versatile/versatilepb.c b/arch/arm/boards/versatile/versatilepb.c
index fdd77e5..4e09de3 100644
--- a/arch/arm/boards/versatile/versatilepb.c
+++ b/arch/arm/boards/versatile/versatilepb.c
@@ -40,10 +40,16 @@ static int vpb_console_init(void)
 }
 console_initcall(vpb_console_init);
 
-static int vpb_devices_init(void)
+static int vpb_mem_init(void)
 {
 	versatile_add_sdram(64 * 1024 *1024);
 
+	return 0;
+}
+mem_initcall(vpb_mem_init);
+
+static int vpb_devices_init(void)
+{
 	add_cfi_flash_device(-1, VERSATILE_FLASH_BASE, VERSATILE_FLASH_SIZE, 0);
 	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self");
 	devfs_add_partition("nor0", 0x40000, 0x20000, PARTITION_FIXED, "env0");
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
