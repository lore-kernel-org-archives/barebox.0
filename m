Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo4.mail-out.ovh.net ([46.105.33.73]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QnsqK-0003gO-FA
	for barebox@lists.infradead.org; Mon, 01 Aug 2011 13:47:53 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id BA721FFA5BA
	for <barebox@lists.infradead.org>;
	Mon,  1 Aug 2011 15:48:34 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  1 Aug 2011 15:29:35 +0200
Message-Id: <1312205383-13266-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/9 v2] arm: introduce arm_add_mem_device to register dram
	device
To: barebox@lists.infradead.org

this will automaticaly register the device to armlinux_add_dram

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/a9m2410/a9m2410.c                 |    4 +--
 arch/arm/boards/a9m2440/a9m2440.c                 |    4 +--
 arch/arm/boards/chumby_falconwing/falconwing.c    |    4 +--
 arch/arm/boards/edb93xx/edb93xx.c                 |   26 ++++++--------------
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |    6 +----
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |    5 +---
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |    6 +----
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c |    6 +----
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c     |    4 +--
 arch/arm/boards/freescale-mx25-3-stack/3stack.c   |   10 ++-----
 arch/arm/boards/freescale-mx35-3-stack/3stack.c   |    5 +---
 arch/arm/boards/freescale-mx51-pdk/board.c        |    6 +----
 arch/arm/boards/freescale-mx53-loco/board.c       |   11 +-------
 arch/arm/boards/guf-cupid/board.c                 |    5 +---
 arch/arm/boards/guf-neso/board.c                  |    5 +---
 arch/arm/boards/imx21ads/imx21ads.c               |    5 +---
 arch/arm/boards/imx27ads/imx27ads.c               |    5 +---
 arch/arm/boards/karo-tx25/board.c                 |   10 +------
 arch/arm/boards/karo-tx28/tx28.c                  |    4 +--
 arch/arm/boards/mini2440/mini2440.c               |    4 +--
 arch/arm/boards/netx/netx.c                       |    6 +----
 arch/arm/boards/omap/board-beagle.c               |    9 +------
 arch/arm/boards/omap/board-omap3evm.c             |    8 +-----
 arch/arm/boards/omap/board-sdp343x.c              |    7 +-----
 arch/arm/boards/panda/board.c                     |    6 +----
 arch/arm/boards/pcm037/pcm037.c                   |   10 +------
 arch/arm/boards/pcm038/pcm038.c                   |    5 +---
 arch/arm/boards/pcm043/pcm043.c                   |    5 +---
 arch/arm/boards/pcm049/board.c                    |    6 +----
 arch/arm/boards/phycard-i.MX27/pca100.c           |    5 +---
 arch/arm/boards/scb9328/scb9328.c                 |    5 +---
 arch/arm/include/asm/armlinux.h                   |    3 ++
 arch/arm/mach-at91/at91rm9200_devices.c           |    6 +----
 arch/arm/mach-at91/at91sam9260_devices.c          |    6 +----
 arch/arm/mach-at91/at91sam9261_devices.c          |    6 +----
 arch/arm/mach-at91/at91sam9263_devices.c          |    6 +----
 arch/arm/mach-at91/at91sam9g45_devices.c          |    6 +----
 arch/arm/mach-nomadik/8815.c                      |    6 +----
 arch/arm/mach-versatile/core.c                    |    6 +----
 drivers/base/resource.c                           |   15 ++++++++++++
 40 files changed, 68 insertions(+), 199 deletions(-)

diff --git a/arch/arm/boards/a9m2410/a9m2410.c b/arch/arm/boards/a9m2410/a9m2410.c
index 64fabd2..b249a1d 100644
--- a/arch/arm/boards/a9m2410/a9m2410.c
+++ b/arch/arm/boards/a9m2410/a9m2410.c
@@ -124,8 +124,7 @@ static int a9m2410_devices_init(void)
 	/* ----------- the devices the boot loader should work with -------- */
 	add_generic_device("s3c24x0_nand", -1, NULL, S3C24X0_NAND_BASE, 0,
 			   IORESOURCE_MEM, &nand_info);
-	sdram_dev = add_mem_device("ram0", CS6_BASE, size,
-				   IORESOURCE_MEM_WRITEABLE);
+	sdram_dev = arm_add_mem_device("ram0", CS6_BASE, size);
 	/*
 	 * SMSC 91C111 network controller on the baseboard
 	 * connected to CS line 1 and interrupt line
@@ -143,7 +142,6 @@ static int a9m2410_devices_init(void)
 	dev_add_bb_dev("env_raw", "env0");
 #endif
 
-	armlinux_add_dram(sdram_dev);
 	armlinux_set_bootparams(dev_get_mem_region(sdram_dev, 0) + 0x100);
 	armlinux_set_architecture(MACH_TYPE_A9M2410);
 
diff --git a/arch/arm/boards/a9m2440/a9m2440.c b/arch/arm/boards/a9m2440/a9m2440.c
index d52f4c2..c5b467a 100644
--- a/arch/arm/boards/a9m2440/a9m2440.c
+++ b/arch/arm/boards/a9m2440/a9m2440.c
@@ -128,8 +128,7 @@ static int a9m2440_devices_init(void)
 	/* ----------- the devices the boot loader should work with -------- */
 	add_generic_device("s3c24x0_nand", -1, NULL, S3C24X0_NAND_BASE, 0,
 			   IORESOURCE_MEM, &nand_info);
-	sdram_dev = add_mem_device("ram0", CS6_BASE, s3c24x0_get_memory_size(),
-				   IORESOURCE_MEM_WRITEABLE);
+	sdram_dev = arm_add_mem_device("ram0", CS6_BASE, s3c24x0_get_memory_size());
 	/*
 	 * cs8900 network controller onboard
 	 * Connected to CS line 5 + A24 and interrupt line EINT9,
@@ -146,7 +145,6 @@ static int a9m2440_devices_init(void)
 	devfs_add_partition("nand0", 0x40000, 0x20000, PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 #endif
-	armlinux_add_dram(sdram_dev);
 	armlinux_set_bootparams(dev_get_mem_region(sdram_dev, 0) + 0x100);
 	armlinux_set_architecture(MACH_TYPE_A9M2440);
 
diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index 69c3a61..06916f0 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -339,8 +339,7 @@ static int falconwing_devices_init(void)
 	for (i = 0; i < ARRAY_SIZE(pad_setup); i++)
 		imx_gpio_mode(pad_setup[i]);
 
-	sdram_dev = add_mem_device("ram0", IMX_MEMORY_BASE, 64 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
+	sdram_dev = arm_add_mem_device("ram0", IMX_MEMORY_BASE, 64 * 1024 * 1024);
 	imx_set_ioclk(480000000); /* enable IOCLK to run at the PLL frequency */
 	/* run the SSP unit clock at 100,000 kHz */
 	imx_set_sspclk(0, 100000000, 1);
@@ -351,7 +350,6 @@ static int falconwing_devices_init(void)
 
 	falconwing_init_usb();
 
-	armlinux_add_dram(sdram_dev);
 	armlinux_set_bootparams(dev_get_mem_region(sdram_dev, 0) + 0x100);
 	armlinux_set_architecture(MACH_TYPE_CHUMBY);
 
diff --git a/arch/arm/boards/edb93xx/edb93xx.c b/arch/arm/boards/edb93xx/edb93xx.c
index 7f9e647..fd838bf 100644
--- a/arch/arm/boards/edb93xx/edb93xx.c
+++ b/arch/arm/boards/edb93xx/edb93xx.c
@@ -36,8 +36,6 @@
 
 static int ep93xx_devices_init(void)
 {
-	struct device_d *sdram_dev;
-
 	add_cfi_flash_device(-1, 0x60000000, EDB93XX_CFI_FLASH_SIZE, 0);
 
 	/*
@@ -49,27 +47,19 @@ static int ep93xx_devices_init(void)
 
 	protect_file("/dev/env0", 1);
 
-	sdram_dev = add_mem_device("ram0", CONFIG_EP93XX_SDRAM_BANK0_BASE,
-				   CONFIG_EP93XX_SDRAM_BANK0_SIZE,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
+	arm_add_mem_device("ram0", CONFIG_EP93XX_SDRAM_BANK0_BASE,
+				   CONFIG_EP93XX_SDRAM_BANK0_SIZE);
 #if (CONFIG_EP93XX_SDRAM_NUM_BANKS >= 2)
-	sdram_dev = add_mem_device("ram1", CONFIG_EP93XX_SDRAM_BANK1_BASE,
-				   CONFIG_EP93XX_SDRAM_BANK1_SIZE,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
+	arm_add_mem_device("ram1", CONFIG_EP93XX_SDRAM_BANK1_BASE,
+				   CONFIG_EP93XX_SDRAM_BANK1_SIZE);
 #endif
 #if (CONFIG_EP93XX_SDRAM_NUM_BANKS >= 3)
-	sdram_dev = add_mem_device("ram2", CONFIG_EP93XX_SDRAM_BANK2_BASE,
-				   CONFIG_EP93XX_SDRAM_BANK2_SIZE,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
+	arm_add_mem_device("ram2", CONFIG_EP93XX_SDRAM_BANK2_BASE,
+				   CONFIG_EP93XX_SDRAM_BANK2_SIZE);
 #endif
 #if (CONFIG_EP93XX_SDRAM_NUM_BANKS == 4)
-	sdram_dev = add_mem_device("ram3", CONFIG_EP93XX_SDRAM_BANK3_BASE,
-				   CONFIG_EP93XX_SDRAM_BANK2_SIZE,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
+	arm_add_mem_device("ram3", CONFIG_EP93XX_SDRAM_BANK3_BASE,
+				   CONFIG_EP93XX_SDRAM_BANK2_SIZE);
 #endif
 
 	/*
diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index aeeed17..e188fab 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -230,8 +230,6 @@ static struct pad_desc eukrea_cpuimx25_pads[] = {
 
 static int eukrea_cpuimx25_devices_init(void)
 {
-	struct device_d *sdram_dev;
-
 	eukrea_cpuimx25_mmu_init();
 
 	mxc_iomux_v3_setup_multiple_pads(eukrea_cpuimx25_pads,
@@ -253,9 +251,7 @@ static int eukrea_cpuimx25_devices_init(void)
 		PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
-	sdram_dev = add_mem_device("ram0", IMX_SDRAM_CS0, 64 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
+	arm_add_mem_device("ram0", IMX_SDRAM_CS0, 64 * 1024 * 1024);
 
 	/* enable LCD */
 	gpio_direction_output(26, 1);
diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index b38decf..e42ad7c 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -134,7 +134,6 @@ static struct imx_fb_platform_data eukrea_cpuimx27_fb_data = {
 
 static int eukrea_cpuimx27_devices_init(void)
 {
-	struct device_d *sdram_dev;
 	char *envdev = "no";
 	int i;
 
@@ -209,9 +208,7 @@ static int eukrea_cpuimx27_devices_init(void)
 	add_cfi_flash_device(-1, 0xC2000000, 32 * 1024 * 1024, 0);
 #endif
 	imx27_add_nand(&nand_info);
-	sdram_dev = add_mem_device("ram0", 0xa0000000, SDRAM0 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
+	arm_add_mem_device("ram0", 0xa0000000, SDRAM0 * 1024 * 1024);
 
 	PCCR0 |= PCCR0_I2C1_EN;
 	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index 53e5bad..29b9edf 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -148,8 +148,6 @@ postcore_initcall(eukrea_cpuimx35_mmu_init);
 
 static int eukrea_cpuimx35_devices_init(void)
 {
-	struct device_d *sdram_dev;
-
 	imx35_add_nand(&nand_info);
 
 	devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_raw");
@@ -159,9 +157,7 @@ static int eukrea_cpuimx35_devices_init(void)
 
 	imx35_add_fec(&fec_info);
 
-	sdram_dev = add_mem_device("ram0", IMX_SDRAM_CS0, 128 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
+	arm_add_mem_device("ram0", IMX_SDRAM_CS0, 128 * 1024 * 1024);
 	imx35_add_fb(&ipu_fb_data);
 
 	imx35_add_i2c0(NULL);
diff --git a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
index 4d281f4..2510e07 100644
--- a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
+++ b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
@@ -119,13 +119,9 @@ static void eukrea_cpuimx51_mmu_init(void)
 
 static int eukrea_cpuimx51_devices_init(void)
 {
-	struct device_d *sdram_dev;
-
 	eukrea_cpuimx51_mmu_init();
 
-	sdram_dev = add_mem_device("ram0", 0x90000000, 256 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
+	arm_add_mem_device("ram0", 0x90000000, 256 * 1024 * 1024);
 	imx51_add_fec(&fec_info);
 #ifdef CONFIG_MCI_IMX_ESDHC
 	imx51_add_mmc0(NULL);
diff --git a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
index f9f85fa..7e23e9a 100644
--- a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
+++ b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
@@ -29,9 +29,7 @@ static int mx23_evk_devices_init(void)
 {
 	struct device_d *sdram_dev;
 
-	sdram_dev = add_mem_device("ram0", IMX_MEMORY_BASE, 32 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
+	sdram_dev = arm_add_mem_device("ram0", IMX_MEMORY_BASE, 32 * 1024 * 1024);
 	armlinux_set_bootparams(dev_get_mem_region(sdram_dev, 0) + 0x100);
 	armlinux_set_architecture(MACH_TYPE_MX23EVK);
 
diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index 3902ccf..b142232 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -194,8 +194,6 @@ late_initcall(imx25_3ds_fec_init);
 
 static int imx25_devices_init(void)
 {
-	struct device_d *sdram_dev;
-
 #ifdef CONFIG_USB
 	/* USB does not work yet. Don't know why. Maybe
 	 * the CPLD has to be initialized.
@@ -218,17 +216,15 @@ static int imx25_devices_init(void)
 	devfs_add_partition("nand0", 0x40000, 0x20000, PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
-	sdram_dev = add_mem_device("ram0", IMX_SDRAM_CS0, 
 #if defined CONFIG_FREESCALE_MX25_3STACK_SDRAM_64MB_DDR2
-	64 * 1024 * 1024,
+#define SDRAM_SIZE	64 * 1024 * 1024
 #elif defined CONFIG_FREESCALE_MX25_3STACK_SDRAM_128MB_MDDR
-	128 * 1024 * 1024,
+#define SDRAM_SIZE	128 * 1024 * 1024
 #else
 #error "Unsupported SDRAM type"
 #endif
-				   IORESOURCE_MEM_WRITEABLE);
+	arm_add_mem_device("ram0", IMX_SDRAM_CS0, SDRAM_SIZE);
 	add_mem_device("sram0", 0x78000000, 128 * 1024, IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
 
 	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
 	imx25_add_i2c0(NULL);
diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
index e513439..27d4e83 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -132,7 +132,6 @@ static void set_board_rev(int rev)
 static int f3s_devices_init(void)
 {
 	uint32_t reg;
-	struct device_d *sdram_dev;
 
 	/* CS0: Nor Flash */
 	writel(0x0000cf03, CSCR_U(0));
@@ -178,9 +177,7 @@ static int f3s_devices_init(void)
 
 	imx35_add_mmc0(NULL);
 
-	sdram_dev = add_mem_device("ram0", IMX_SDRAM_CS0, 124 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
+	arm_add_mem_device("ram0", IMX_SDRAM_CS0, 124 * 1024 * 1024);
 	imx35_add_fb(&ipu_fb_data);
 
 	armlinux_set_bootparams((void *)0x80000100);
diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index b205a23..509e3c4 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -227,13 +227,9 @@ static void babbage_power_init(void)
 
 static int f3s_devices_init(void)
 {
-	struct device_d *sdram_dev;
-
 	babbage_mmu_init();
 
-	sdram_dev = add_mem_device("ram0", 0x90000000, 512 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
+	arm_add_mem_device("ram0", 0x90000000, 512 * 1024 * 1024);
 
 	imx51_iim_register_fec_ethaddr();
 	imx51_add_fec(&fec_info);
diff --git a/arch/arm/boards/freescale-mx53-loco/board.c b/arch/arm/boards/freescale-mx53-loco/board.c
index e3db7f3..8ffe964 100644
--- a/arch/arm/boards/freescale-mx53-loco/board.c
+++ b/arch/arm/boards/freescale-mx53-loco/board.c
@@ -104,17 +104,10 @@ static void loco_fec_reset(void)
 
 static int loco_devices_init(void)
 {
-	struct device_d *sdram_dev;
-
 	loco_mmu_init();
 
-	sdram_dev = add_mem_device("ram0", 0x70000000, SZ_512M,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
-
-	sdram_dev = add_mem_device("ram1", 0xb0000000, SZ_512M,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
+	arm_add_mem_device("ram0", 0x70000000, SZ_512M);
+	arm_add_mem_device("ram1", 0xb0000000, SZ_512M);
 
 	imx51_iim_register_fec_ethaddr();
 	imx53_add_fec(&fec_info);
diff --git a/arch/arm/boards/guf-cupid/board.c b/arch/arm/boards/guf-cupid/board.c
index 6906f0a..d66afac 100644
--- a/arch/arm/boards/guf-cupid/board.c
+++ b/arch/arm/boards/guf-cupid/board.c
@@ -119,7 +119,6 @@ postcore_initcall(cupid_mmu_init);
 static int cupid_devices_init(void)
 {
 	uint32_t reg;
-	struct device_d *sdram_dev;
 
 	gpio_direction_output(GPIO_LCD_ENABLE, 0);
 	gpio_direction_output(GPIO_LCD_BACKLIGHT, 0);
@@ -139,9 +138,7 @@ static int cupid_devices_init(void)
 	devfs_add_partition("nand0", 0x40000, 0x80000, PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
-	sdram_dev = add_mem_device("ram0", IMX_SDRAM_CS0, 128 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
+	arm_add_mem_device("ram0", IMX_SDRAM_CS0, 128 * 1024 * 1024);
 	imx35_add_fb(&ipu_fb_data);
 	imx35_add_mmc0(NULL);
 
diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/board.c
index f3a4635..6486f3a 100644
--- a/arch/arm/boards/guf-neso/board.c
+++ b/arch/arm/boards/guf-neso/board.c
@@ -157,7 +157,6 @@ static void neso_mmu_init(void)
 static int neso_devices_init(void)
 {
 	int i;
-	struct device_d *sdram_dev;
 
 	unsigned int mode[] = {
 		/* UART1 */
@@ -289,9 +288,7 @@ static int neso_devices_init(void)
 		imx_gpio_mode(mode[i]);
 
 	imx27_add_nand(&nand_info);
-	sdram_dev = add_mem_device("ram0", 0xa0000000, 128 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
+	arm_add_mem_device("ram0", 0xa0000000, 128 * 1024 * 1024);
 	imx27_add_fb(&neso_fb_data);
 
 #ifdef CONFIG_USB
diff --git a/arch/arm/boards/imx21ads/imx21ads.c b/arch/arm/boards/imx21ads/imx21ads.c
index 2661064..b449279 100644
--- a/arch/arm/boards/imx21ads/imx21ads.c
+++ b/arch/arm/boards/imx21ads/imx21ads.c
@@ -118,7 +118,6 @@ core_initcall(imx21ads_timing_init);
 static int mx21ads_devices_init(void)
 {
 	int i;
-	struct device_d *sdram_dev;
 	unsigned int mode[] = {
 		PA5_PF_LSCLK,
 		PA6_PF_LD0,
@@ -158,9 +157,7 @@ static int mx21ads_devices_init(void)
 		imx_gpio_mode(mode[i]);
 
 	add_cfi_flash_device(-1, 0xC8000000, 32 * 1024 * 1024, 0);
-	sdram_dev = add_mem_device("ram0", 0xc0000000, 64 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
+	arm_add_mem_device("ram0", 0xc0000000, 64 * 1024 * 1024);
 	imx21_add_nand(&nand_info);
 	add_generic_device("cs8900", -1, NULL,	IMX_CS1_BASE, 0x1000,
 			IORESOURCE_MEM, NULL);
diff --git a/arch/arm/boards/imx27ads/imx27ads.c b/arch/arm/boards/imx27ads/imx27ads.c
index db49aac..299b2ea 100644
--- a/arch/arm/boards/imx27ads/imx27ads.c
+++ b/arch/arm/boards/imx27ads/imx27ads.c
@@ -77,7 +77,6 @@ core_initcall(imx27ads_timing_init);
 static int mx27ads_devices_init(void)
 {
 	int i;
-	struct device_d *sdram_dev;
 	unsigned int mode[] = {
 		PD0_AIN_FEC_TXD0,
 		PD1_AIN_FEC_TXD1,
@@ -109,9 +108,7 @@ static int mx27ads_devices_init(void)
 
 	add_cfi_flash_device(-1, 0xC0000000, 32 * 1024 * 1024, 0);
 
-	sdram_dev = add_mem_device("ram0", 0xa0000000, 128 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
+	arm_add_mem_device("ram0", 0xa0000000, 128 * 1024 * 1024);
 	imx27_add_fec(&fec_info);
 	devfs_add_partition("nor0", 0x00000, 0x20000, PARTITION_FIXED, "self0");
 	devfs_add_partition("nor0", 0x20000, 0x20000, PARTITION_FIXED, "env0");
diff --git a/arch/arm/boards/karo-tx25/board.c b/arch/arm/boards/karo-tx25/board.c
index e4a9aeb..4e5eafa 100644
--- a/arch/arm/boards/karo-tx25/board.c
+++ b/arch/arm/boards/karo-tx25/board.c
@@ -118,8 +118,6 @@ static void noinline gpio_fec_active(void)
 
 static int tx25_devices_init(void)
 {
-	struct device_d *sdram_dev;
-
 	gpio_fec_active();
 
 	imx25_iim_register_fec_ethaddr();
@@ -136,12 +134,8 @@ static int tx25_devices_init(void)
 	devfs_add_partition("nand0", 0x40000, 0x80000, PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
-	sdram_dev = add_mem_device("ram0", IMX_SDRAM_CS0, 32 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
-	sdram_dev = add_mem_device("ram0", IMX_SDRAM_CS1, 32 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
+	arm_add_mem_device("ram0", IMX_SDRAM_CS0, 32 * 1024 * 1024);
+	arm_add_mem_device("ram0", IMX_SDRAM_CS1, 32 * 1024 * 1024);
 	add_mem_device("ram0", 0x78000000, 128 * 1024,
 				   IORESOURCE_MEM_WRITEABLE);
 
diff --git a/arch/arm/boards/karo-tx28/tx28.c b/arch/arm/boards/karo-tx28/tx28.c
index b9d5454..095835b 100644
--- a/arch/arm/boards/karo-tx28/tx28.c
+++ b/arch/arm/boards/karo-tx28/tx28.c
@@ -96,9 +96,7 @@ static int tx28_devices_init(void)
 	for (i = 0; i < ARRAY_SIZE(tx28_pad_setup); i++)
 		imx_gpio_mode(tx28_pad_setup[i]);
 
-	sdram_dev = add_mem_device("ram0", IMX_MEMORY_BASE, 128 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
+	sdram_dev = arm_add_mem_device("ram0", IMX_MEMORY_BASE, 128 * 1024 * 1024);
 	armlinux_set_bootparams(dev_get_mem_region(sdram_dev, 0) + 0x100);
 	armlinux_set_architecture(MACH_TYPE_TX28);
 
diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index c6b4932..df7e617 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -290,9 +290,7 @@ static int mini2440_devices_init(void)
 	add_generic_device("s3c24x0_nand", -1, NULL, S3C24X0_NAND_BASE, 0,
 			   IORESOURCE_MEM, &nand_info);
 
-	sdram_dev = add_mem_device("ram0", CS6_BASE, s3c24x0_get_memory_size(),
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
+	sdram_dev = arm_add_mem_device("ram0", CS6_BASE, s3c24x0_get_memory_size());
 
 	add_dm9000_device(0, CS4_BASE + 0x300, CS4_BASE + 0x304,
 			  IORESOURCE_MEM_16BIT, &dm9000_data);
diff --git a/arch/arm/boards/netx/netx.c b/arch/arm/boards/netx/netx.c
index 65681aa..e9b834a 100644
--- a/arch/arm/boards/netx/netx.c
+++ b/arch/arm/boards/netx/netx.c
@@ -39,13 +39,9 @@ struct netx_eth_platform_data eth1_data = {
 };
 
 static int netx_devices_init(void) {
-	struct device_d *sdram_dev;
-
 	add_cfi_flash_device(-1, 0xC0000000, 32 * 1024 * 1024, 0);
 
-	sdram_dev = add_mem_device("ram0", 0x80000000, 64 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
+	arm_add_mem_device("ram0", 0x80000000, 64 * 1024 * 1024);
 	add_generic_device("netx-eth", -1, NULL, 0, 0, IORESOURCE_MEM, &eth0_data);
 	add_generic_device("netx-eth", -1, NULL, 0, 0, IORESOURCE_MEM, &eth1_data);
 
diff --git a/arch/arm/boards/omap/board-beagle.c b/arch/arm/boards/omap/board-beagle.c
index e12e2fe..4602631 100644
--- a/arch/arm/boards/omap/board-beagle.c
+++ b/arch/arm/boards/omap/board-beagle.c
@@ -280,14 +280,7 @@ static struct i2c_board_info i2c_devices[] = {
 
 static int beagle_devices_init(void)
 {
-	struct device_d *sdram_dev;
-
-	sdram_dev = add_mem_device("ram0", 0x80000000, 128 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-	if (!sdram_dev)
-		return -EIO;
-	armlinux_add_dram(sdram_dev);
-
+	arm_add_mem_device("ram0", 0x80000000, 128 * 1024 * 1024);
 	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
 	add_generic_device("i2c-omap", -1, NULL, 0x4809C000, SZ_4K,
 			   IORESOURCE_MEM, NULL);
diff --git a/arch/arm/boards/omap/board-omap3evm.c b/arch/arm/boards/omap/board-omap3evm.c
index 8b5c9b3..68d971b 100644
--- a/arch/arm/boards/omap/board-omap3evm.c
+++ b/arch/arm/boards/omap/board-omap3evm.c
@@ -237,13 +237,7 @@ console_initcall(omap3evm_init_console);
 
 static int omap3evm_init_devices(void)
 {
-	struct device_d *sdram_dev;
-
-	sdram_dev = add_mem_device("ram0", 0x80000000, 128 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-	if (!sdram_dev)
-		return -EIO;
-	armlinux_add_dram(sdram_dev);
+	arm_add_mem_device("ram0", 0x80000000, 128 * 1024 * 1024);
 
 #ifdef CONFIG_GPMC
 	/*
diff --git a/arch/arm/boards/omap/board-sdp343x.c b/arch/arm/boards/omap/board-sdp343x.c
index 7c6df05..8fcae12 100644
--- a/arch/arm/boards/omap/board-sdp343x.c
+++ b/arch/arm/boards/omap/board-sdp343x.c
@@ -638,13 +638,8 @@ static int sdp3430_flash_init(void)
 
 static int sdp3430_devices_init(void)
 {
-	struct device_d *sdram_dev;
+	arm_add_mem_device("ram0", 0x80000000, 128 * 1024 * 1024);
 
-	sdram_dev = add_mem_device("ram0", 0x80000000, 128 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-	if (!sdram_dev)
-		return -EIO;
-	armlinux_add_dram(sdram_dev);
 	return sdp3430_flash_init();
 }
 
diff --git a/arch/arm/boards/panda/board.c b/arch/arm/boards/panda/board.c
index deded28..e27f0a4 100644
--- a/arch/arm/boards/panda/board.c
+++ b/arch/arm/boards/panda/board.c
@@ -113,8 +113,6 @@ static void __init panda_boardrev_init(void)
 
 static int panda_devices_init(void)
 {
-	struct device_d *sdram_dev;
-
 	panda_boardrev_init();
 
 	if (gpio_get_value(182)) {
@@ -141,9 +139,7 @@ static int panda_devices_init(void)
 		sr32(OMAP44XX_SCRM_ALTCLKSRC, 2, 2, 0x3);
 	}
 
-	sdram_dev = add_mem_device("ram0", 0x80000000, SZ_1G,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
+	arm_add_mem_device("ram0", 0x80000000, SZ_1G);
 	add_generic_device("omap-hsmmc", -1, NULL, 0x4809C100, SZ_4K,
 			   IORESOURCE_MEM, NULL);
 	panda_ehci_init();
diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index f4b4444..56db9a8 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -170,8 +170,6 @@ static void pcm037_mmu_init(void)
 
 static int imx31_devices_init(void)
 {
-	struct device_d *sdram_dev;
-
 	pcm037_mmu_init();
 
 	__REG(CSCR_U(0)) = 0x0000cf03; /* CS0: Nor Flash */
@@ -221,13 +219,9 @@ static int imx31_devices_init(void)
 	add_generic_device("smc911x", -1, NULL,	IMX_CS1_BASE, IMX_CS1_RANGE,
 			IORESOURCE_MEM, NULL);
 
-	sdram_dev = add_mem_device("ram0", IMX_SDRAM_CS0, SDRAM0 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
+	arm_add_mem_device("ram0", IMX_SDRAM_CS0, SDRAM0 * 1024 * 1024);
 #ifndef CONFIG_PCM037_SDRAM_BANK1_NONE
-	sdram_dev = add_mem_device("ram1", IMX_SDRAM_CS1, SDRAM1 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
+	arm_add_mem_device("ram1", IMX_SDRAM_CS1, SDRAM1 * 1024 * 1024);
 #endif
 #ifdef CONFIG_USB
 	pcm037_usb_init();
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 02c3dba..bf15cfd 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -151,7 +151,6 @@ static int pcm038_devices_init(void)
 {
 	int i;
 	char *envdev;
-	struct device_d *sdram_dev;
 
 	unsigned int mode[] = {
 		PD0_AIN_FEC_TXD0,
@@ -255,9 +254,7 @@ static int pcm038_devices_init(void)
 
 	add_cfi_flash_device(-1, 0xC0000000, 32 * 1024 * 1024, 0);
 	imx27_add_nand(&nand_info);
-	sdram_dev = add_mem_device("ram0", 0xa0000000, 128 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
+	arm_add_mem_device("ram0", 0xa0000000, 128 * 1024 * 1024);
 	add_mem_device("ram0", 0xc8000000, 512 * 1024, /* Can be up to 2MiB */
 				   IORESOURCE_MEM_WRITEABLE);
 	imx27_add_fb(&pcm038_fb_data);
diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
index 3bd6402..0f25354 100644
--- a/arch/arm/boards/pcm043/pcm043.c
+++ b/arch/arm/boards/pcm043/pcm043.c
@@ -125,7 +125,6 @@ struct gpio_led led0 = {
 
 static int imx35_devices_init(void)
 {
-	struct device_d *sdram_dev;
 	uint32_t reg;
 
 	/* CS0: Nor Flash */
@@ -171,9 +170,7 @@ static int imx35_devices_init(void)
 	}
 
 
-	sdram_dev = add_mem_device("ram0", IMX_SDRAM_CS0, 128 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
+	arm_add_mem_device("ram0", IMX_SDRAM_CS0, 128 * 1024 * 1024);
 	imx35_add_fb(&ipu_fb_data);
 
 	armlinux_set_bootparams((void *)0x80000100);
diff --git a/arch/arm/boards/pcm049/board.c b/arch/arm/boards/pcm049/board.c
index d3f1310..20419a3 100644
--- a/arch/arm/boards/pcm049/board.c
+++ b/arch/arm/boards/pcm049/board.c
@@ -93,11 +93,7 @@ static void pcm049_network_init(void)
 
 static int pcm049_devices_init(void)
 {
-	struct device_d *sdram_dev;
-
-	sdram_dev = add_mem_device("ram0", 0x80000000, SZ_512M,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
+	arm_add_mem_device("ram0", 0x80000000, SZ_512M);
 	add_mem_device("ram0", 0x40300000, 48 * 1024,
 				   IORESOURCE_MEM_WRITEABLE);
 	add_generic_device("omap-hsmmc", -1, NULL, 0x4809C100, SZ_4K,
diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
index 9a10a9d..68f972a 100644
--- a/arch/arm/boards/phycard-i.MX27/pca100.c
+++ b/arch/arm/boards/phycard-i.MX27/pca100.c
@@ -123,7 +123,6 @@ static int pca100_devices_init(void)
 {
 	int i;
 	struct device_d *nand;
-	struct device_d *sdram_dev;
 
 	unsigned int mode[] = {
 		PD0_AIN_FEC_TXD0,
@@ -198,9 +197,7 @@ static int pca100_devices_init(void)
 		imx_gpio_mode(mode[i]);
 
 	imx27_add_nand(&nand_info);
-	sdram_dev = add_mem_device("ram0", 0xa0000000, 128 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
+	arm_add_mem_device("ram0", 0xa0000000, 128 * 1024 * 1024);
 	imx27_add_fec(&fec_info);
 	imx27_add_mmc0(NULL);
 
diff --git a/arch/arm/boards/scb9328/scb9328.c b/arch/arm/boards/scb9328/scb9328.c
index 5c52af9..68a39bf 100644
--- a/arch/arm/boards/scb9328/scb9328.c
+++ b/arch/arm/boards/scb9328/scb9328.c
@@ -53,7 +53,6 @@ struct gpio_led leds[] = {
 static int scb9328_devices_init(void)
 {
 	int i;
-	struct device_d *sdram_dev;
 
 	imx_gpio_mode(PA23_PF_CS5);
 	imx_gpio_mode(GPIO_PORTB | GPIO_GPIO | GPIO_OUT | 21);
@@ -82,9 +81,7 @@ static int scb9328_devices_init(void)
 	CS5L = 0x00000D03;
 
 	add_cfi_flash_device(-1, 0x10000000, 16 * 1024 * 1024, 0);
-	sdram_dev = add_mem_device("ram0", 0x08000000, 16 * 1024 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
+	arm_add_mem_device("ram0", 0x08000000, 16 * 1024 * 1024);
 	add_dm9000_device(-1, 0x16000000, 0x16000004,
 			  IORESOURCE_MEM_16BIT, &dm9000_data);
 
diff --git a/arch/arm/include/asm/armlinux.h b/arch/arm/include/asm/armlinux.h
index 3cab209..f76cca8 100644
--- a/arch/arm/include/asm/armlinux.h
+++ b/arch/arm/include/asm/armlinux.h
@@ -34,4 +34,7 @@ struct image_data;
 
 void start_linux(void *adr, int swap, struct image_data *data);
 
+struct device_d *arm_add_mem_device(const char* name, resource_size_t start,
+				    resource_size_t size);
+
 #endif /* __ARCH_ARMLINUX_H */
diff --git a/arch/arm/mach-at91/at91rm9200_devices.c b/arch/arm/mach-at91/at91rm9200_devices.c
index 289f2c3..84605e4 100644
--- a/arch/arm/mach-at91/at91rm9200_devices.c
+++ b/arch/arm/mach-at91/at91rm9200_devices.c
@@ -22,11 +22,7 @@
 
 void at91_add_device_sdram(u32 size)
 {
-	struct device_d *sdram_dev;
-
-	sdram_dev = add_mem_device("ram0", AT91_CHIPSELECT_1, size,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
+	arm_add_mem_device("ram0", AT91_CHIPSELECT_1, size);
 }
 
 /* --------------------------------------------------------------------
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index 468f00d..5c1bbbe 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -23,11 +23,7 @@
 
 void at91_add_device_sdram(u32 size)
 {
-	struct device_d *sdram_dev;
-
-	sdram_dev = add_mem_device("ram0", AT91_CHIPSELECT_1, size,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
+	arm_add_mem_device("ram0", AT91_CHIPSELECT_1, size);
 }
 
 #if defined(CONFIG_DRIVER_NET_MACB)
diff --git a/arch/arm/mach-at91/at91sam9261_devices.c b/arch/arm/mach-at91/at91sam9261_devices.c
index 1e741fd..4985cf1 100644
--- a/arch/arm/mach-at91/at91sam9261_devices.c
+++ b/arch/arm/mach-at91/at91sam9261_devices.c
@@ -23,11 +23,7 @@
 
 void at91_add_device_sdram(u32 size)
 {
-	struct device_d *sdram_dev;
-
-	sdram_dev = add_mem_device("ram0", AT91_CHIPSELECT_1, size,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
+	arm_add_mem_device("ram0", AT91_CHIPSELECT_1, size);
 }
 
 #if defined(CONFIG_NAND_ATMEL)
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index 07bd02f..540220e 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -23,11 +23,7 @@
 
 void at91_add_device_sdram(u32 size)
 {
-	struct device_d *sdram_dev;
-
-	sdram_dev = add_mem_device("ram0", AT91_CHIPSELECT_1, size,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
+	arm_add_mem_device("ram0", AT91_CHIPSELECT_1, size);
 }
 
 #if defined(CONFIG_DRIVER_NET_MACB)
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index 4d55e22..2cd5a95 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -23,11 +23,7 @@
 
 void at91_add_device_sdram(u32 size)
 {
-	struct device_d *sdram_dev;
-
-	sdram_dev = add_mem_device("ram0", AT91_CHIPSELECT_6, size,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
+	arm_add_mem_device("ram0", AT91_CHIPSELECT_6, size);
 }
 
 #if defined(CONFIG_DRIVER_NET_MACB)
diff --git a/arch/arm/mach-nomadik/8815.c b/arch/arm/mach-nomadik/8815.c
index f2b8fd0..bcc3406 100644
--- a/arch/arm/mach-nomadik/8815.c
+++ b/arch/arm/mach-nomadik/8815.c
@@ -33,11 +33,7 @@ static struct clk st8815_clk_48 = {
 
 void st8815_add_device_sdram(u32 size)
 {
-	struct device_d *sdram_dev;
-
-	sdram_dev = add_mem_device("ram0", 0x00000000, size,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
+	arm_add_mem_device("ram0", 0x00000000, size);
 }
 
 void st8815_register_uart(unsigned id)
diff --git a/arch/arm/mach-versatile/core.c b/arch/arm/mach-versatile/core.c
index 249d97a..28582f7 100644
--- a/arch/arm/mach-versatile/core.c
+++ b/arch/arm/mach-versatile/core.c
@@ -44,11 +44,7 @@
 
 void versatile_add_sdram(u32 size)
 {
-	struct device_d *sdram_dev;
-
-	sdram_dev = add_mem_device("ram0", 0x00000000, size,
-				   IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(sdram_dev);
+	arm_add_mem_device("ram0", 0x00000000, size);
 }
 
 struct clk {
diff --git a/drivers/base/resource.c b/drivers/base/resource.c
index 5fc705f..175beb9 100644
--- a/drivers/base/resource.c
+++ b/drivers/base/resource.c
@@ -118,3 +118,18 @@ struct device_d *add_usb_ehci_device(int id, resource_size_t hccr,
 }
 EXPORT_SYMBOL(add_usb_ehci_device);
 #endif
+
+#ifdef CONFIG_ARM
+#include <asm/armlinux.h>
+
+struct device_d *arm_add_mem_device(const char* name, resource_size_t start,
+				    resource_size_t size)
+{
+	struct device_d *dev;
+
+	dev = add_mem_device(name, start, size, IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(dev);
+
+	return dev;
+}
+#endif
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
