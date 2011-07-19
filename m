Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo4.mail-out.ovh.net ([188.165.33.109]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QjE1o-00058N-6h
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 17:24:24 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 5D49BFF96CC
	for <barebox@lists.infradead.org>;
	Tue, 19 Jul 2011 19:24:44 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 19 Jul 2011 19:07:24 +0200
Message-Id: <1311095244-15040-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1311091752-9114-4-git-send-email-plagnioj@jcrosoft.com>
References: <1311091752-9114-4-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 04/16 v3] add a add_mem_device function
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Add a helper function for boards to register their memory
devices. This makes the board code smaller and also helps
getting rid of map_base and struct memory_platform_data.

And switch all of the memory to it

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
v3:

	forget to add common/mem.c

Best Regards,
J.
 arch/arm/boards/a9m2410/a9m2410.c                 |   35 +++-----
 arch/arm/boards/a9m2440/a9m2440.c                 |   22 +----
 arch/arm/boards/chumby_falconwing/falconwing.c    |   21 +----
 arch/arm/boards/edb93xx/edb93xx.c                 |   91 ++++-----------------
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |   20 +----
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |   19 +----
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |   20 +----
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c |   20 +----
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c     |   20 +----
 arch/arm/boards/freescale-mx25-3-stack/3stack.c   |   48 +++--------
 arch/arm/boards/freescale-mx35-3-stack/3stack.c   |   19 +----
 arch/arm/boards/freescale-mx51-pdk/board.c        |   19 +----
 arch/arm/boards/guf-cupid/board.c                 |   19 +----
 arch/arm/boards/guf-neso/board.c                  |   19 +----
 arch/arm/boards/imx21ads/imx21ads.c               |   19 +----
 arch/arm/boards/imx27ads/imx27ads.c               |   21 +----
 arch/arm/boards/karo-tx25/board.c                 |   54 +++----------
 arch/arm/boards/karo-tx28/tx28.c                  |   22 +----
 arch/arm/boards/mini2440/mini2440.c               |   24 ++----
 arch/arm/boards/netx/netx.c                       |   21 ++----
 arch/arm/boards/omap/board-beagle.c               |   28 ++-----
 arch/arm/boards/omap/board-omap3evm.c             |   30 ++-----
 arch/arm/boards/omap/board-sdp343x.c              |   30 ++-----
 arch/arm/boards/panda/board.c                     |   20 +----
 arch/arm/boards/pcm037/pcm037.c                   |   67 +++------------
 arch/arm/boards/pcm038/pcm038.c                   |   35 ++-------
 arch/arm/boards/pcm043/pcm043.c                   |   20 +----
 arch/arm/boards/pcm049/board.c                    |   36 ++-------
 arch/arm/boards/phycard-i.MX27/pca100.c           |   19 +----
 arch/arm/boards/scb9328/scb9328.c                 |   19 +----
 arch/arm/mach-at91/at91rm9200_devices.c           |   27 +-----
 arch/arm/mach-at91/at91sam9260_devices.c          |   27 +-----
 arch/arm/mach-at91/at91sam9261_devices.c          |   27 +-----
 arch/arm/mach-at91/at91sam9263_devices.c          |   27 +-----
 arch/arm/mach-at91/at91sam9g45_devices.c          |   27 +-----
 arch/arm/mach-nomadik/8815.c                      |   27 +-----
 arch/arm/mach-versatile/core.c                    |   20 +----
 arch/blackfin/boards/ipe337/ipe337.c              |   16 +---
 arch/nios2/boards/generic/generic.c               |   16 +---
 arch/ppc/boards/pcm030/pcm030.c                   |   16 +---
 arch/x86/boards/x86_generic/generic_pc.c          |   16 +---
 commands/mem.c                                    |   32 ++------
 common/Makefile                                   |    1 +
 common/mem.c                                      |   46 +++++++++++
 common/startup.c                                  |   16 +---
 include/driver.h                                  |   11 ++-
 46 files changed, 307 insertions(+), 902 deletions(-)
 create mode 100644 common/mem.c

diff --git a/arch/arm/boards/a9m2410/a9m2410.c b/arch/arm/boards/a9m2410/a9m2410.c
index bdf634d..54012d9 100644
--- a/arch/arm/boards/a9m2410/a9m2410.c
+++ b/arch/arm/boards/a9m2410/a9m2410.c
@@ -35,18 +35,6 @@
 #include <mach/s3c24x0-iomap.h>
 #include <mach/s3c24x0-nand.h>
 
-static struct memory_platform_data ram_pdata = {
-	.name		= "ram0",
-	.flags		= IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram_dev = {
-	.id		= -1,
-	.name     	= "ram",
-	.map_base	= CS6_BASE,
-	.platform_data  = &ram_pdata,
-};
-
 // {"NAND 1MiB 3,3V 8-bit", 0xec, 256, 1, 0x1000, 0},
 static struct s3c24x0_nand_platform_data nand_info = {
 	.nand_timing = CALC_NFCONF_TIMING(A9M2410_TACLS, A9M2410_TWRPH0, A9M2410_TWRPH1)
@@ -74,6 +62,8 @@ static struct device_d network_dev = {
 static int a9m2410_devices_init(void)
 {
 	uint32_t reg;
+	resource_size_t size = 0;
+	struct device_d *sdram_dev;
 
 	/*
 	 * detect the current memory size
@@ -83,25 +73,25 @@ static int a9m2410_devices_init(void)
 
 	switch (reg &= 0x7) {
 	case 0:
-		sdram_dev.size = 32 * 1024 * 1024;
+		size = 32 * 1024 * 1024;
 		break;
 	case 1:
-		sdram_dev.size = 64 * 1024 * 1024;
+		size = 64 * 1024 * 1024;
 		break;
 	case 2:
-		sdram_dev.size = 128 * 1024 * 1024;
+		size = 128 * 1024 * 1024;
 		break;
 	case 4:
-		sdram_dev.size = 2 * 1024 * 1024;
+		size = 2 * 1024 * 1024;
 		break;
 	case 5:
-		sdram_dev.size = 4 * 1024 * 1024;
+		size = 4 * 1024 * 1024;
 		break;
 	case 6:
-		sdram_dev.size = 8 * 1024 * 1024;
+		size = 8 * 1024 * 1024;
 		break;
 	case 7:
-		sdram_dev.size = 16 * 1024 * 1024;
+		size = 16 * 1024 * 1024;
 		break;
 	}
 
@@ -152,7 +142,8 @@ static int a9m2410_devices_init(void)
 
 	/* ----------- the devices the boot loader should work with -------- */
 	register_device(&nand_dev);
-	register_device(&sdram_dev);
+	sdram_dev = add_mem_device("ram0", CS6_BASE, size,
+				   IORESOURCE_MEM_WRITEABLE);
 	register_device(&network_dev);
 
 #ifdef CONFIG_NAND
@@ -164,8 +155,8 @@ static int a9m2410_devices_init(void)
 	dev_add_bb_dev("env_raw", "env0");
 #endif
 
-	armlinux_add_dram(&sdram_dev);
-	armlinux_set_bootparams((void *)sdram_dev.map_base + 0x100);
+	armlinux_add_dram(sdram_dev);
+	armlinux_set_bootparams(dev_get_mem_region(sdram_dev, 0) + 0x100);
 	armlinux_set_architecture(MACH_TYPE_A9M2410);
 
 	return 0;
diff --git a/arch/arm/boards/a9m2440/a9m2440.c b/arch/arm/boards/a9m2440/a9m2440.c
index 55e9e8e..7ea7f1c 100644
--- a/arch/arm/boards/a9m2440/a9m2440.c
+++ b/arch/arm/boards/a9m2440/a9m2440.c
@@ -38,18 +38,6 @@
 
 #include "baseboards.h"
 
-static struct memory_platform_data ram_pdata = {
-	.name		= "ram0",
-	.flags		= IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram_dev = {
-	.id		= -1,
-	.name		= "mem",
-	.map_base	= CS6_BASE,
-	.platform_data	= &ram_pdata,
-};
-
 static struct s3c24x0_nand_platform_data nand_info = {
 	.nand_timing = CALC_NFCONF_TIMING(A9M2440_TACLS, A9M2440_TWRPH0, A9M2440_TWRPH1)
 };
@@ -106,6 +94,7 @@ static void a9m2440_disable_second_sdram_bank(void)
 static int a9m2440_devices_init(void)
 {
 	uint32_t reg;
+	struct device_d *sdram_dev;
 
 	/*
 	 * The special SDRAM setup code for this machine will always enable
@@ -136,8 +125,6 @@ static int a9m2440_devices_init(void)
 		break;
 	}
 
-	sdram_dev.size = s3c24x0_get_memory_size();
-
 	/* ----------- configure the access to the outer space ---------- */
 	reg = readl(BWSCON);
 
@@ -159,7 +146,8 @@ static int a9m2440_devices_init(void)
 
 	/* ----------- the devices the boot loader should work with -------- */
 	register_device(&nand_dev);
-	register_device(&sdram_dev);
+	sdram_dev = add_mem_device("ram0", CS6_BASE, s3c24x0_get_memory_size(),
+				   IORESOURCE_MEM_WRITEABLE);
 	register_device(&network_dev);
 
 #ifdef CONFIG_NAND
@@ -170,8 +158,8 @@ static int a9m2440_devices_init(void)
 	devfs_add_partition("nand0", 0x40000, 0x20000, PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 #endif
-	armlinux_add_dram(&sdram_dev);
-	armlinux_set_bootparams((void *)sdram_dev.map_base + 0x100);
+	armlinux_add_dram(sdram_dev);
+	armlinux_set_bootparams(dev_get_mem_region(sdram_dev, 0) + 0x100);
 	armlinux_set_architecture(MACH_TYPE_A9M2440);
 
 	return 0;
diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index 52c7459..7a5f37e 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -34,19 +34,6 @@
 #include <mach/fb.h>
 #include <mach/usb.h>
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram_dev = {
-	.id       = -1,
-	.name     = "mem",
-	.map_base = IMX_MEMORY_BASE,
-	.size     = 64 * 1024 * 1024,
-	.platform_data = &ram_pdata,
-};
-
 static struct mxs_mci_platform_data mci_pdata = {
 	.caps = MMC_MODE_4BIT | MMC_MODE_HS | MMC_MODE_HS_52MHz,
 	.voltages = MMC_VDD_32_33 | MMC_VDD_33_34,	/* fixed to 3.3 V */
@@ -372,12 +359,14 @@ static void falconwing_init_usb(void)
 static int falconwing_devices_init(void)
 {
 	int i, rc;
+	struct device_d *sdram_dev;
 
 	/* initizalize gpios */
 	for (i = 0; i < ARRAY_SIZE(pad_setup); i++)
 		imx_gpio_mode(pad_setup[i]);
 
-	register_device(&sdram_dev);
+	sdram_dev = add_mem_device("ram0", IMX_MEMORY_BASE, 64 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
 	imx_set_ioclk(480000000); /* enable IOCLK to run at the PLL frequency */
 	/* run the SSP unit clock at 100,000 kHz */
 	imx_set_sspclk(0, 100000000, 1);
@@ -386,8 +375,8 @@ static int falconwing_devices_init(void)
 
 	falconwing_init_usb();
 
-	armlinux_add_dram(&sdram_dev);
-	armlinux_set_bootparams((void*)(sdram_dev.map_base + 0x100));
+	armlinux_add_dram(sdram_dev);
+	armlinux_set_bootparams(dev_get_mem_region(sdram_dev, 0) + 0x100);
 	armlinux_set_architecture(MACH_TYPE_CHUMBY);
 
 	rc = register_persistant_environment();
diff --git a/arch/arm/boards/edb93xx/edb93xx.c b/arch/arm/boards/edb93xx/edb93xx.c
index 85fd2c0..49a01d6 100644
--- a/arch/arm/boards/edb93xx/edb93xx.c
+++ b/arch/arm/boards/edb93xx/edb93xx.c
@@ -45,64 +45,6 @@ static struct device_d cfi_dev = {
 	.size     = EDB93XX_CFI_FLASH_SIZE,
 };
 
-static struct memory_platform_data ram_dev_pdata0 = {
-	.name = "ram0",
-	.flags = IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram0_dev = {
-	.id	  = -1,
-	.name     = "mem",
-	.map_base = CONFIG_EP93XX_SDRAM_BANK0_BASE,
-	.size     = CONFIG_EP93XX_SDRAM_BANK0_SIZE,
-	.platform_data = &ram_dev_pdata0,
-};
-
-#if (CONFIG_EP93XX_SDRAM_NUM_BANKS >= 2)
-static struct memory_platform_data ram_dev_pdata1 = {
-	.name = "ram1",
-	.flags = IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram1_dev = {
-	.id	  = -1,
-	.name     = "mem",
-	.map_base = CONFIG_EP93XX_SDRAM_BANK1_BASE,
-	.size     = CONFIG_EP93XX_SDRAM_BANK1_SIZE,
-	.platform_data = &ram_dev_pdata1,
-};
-#endif
-
-#if (CONFIG_EP93XX_SDRAM_NUM_BANKS >= 3)
-static struct memory_platform_data ram_dev_pdata2 = {
-	.name = "ram2",
-	.flags = IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram2_dev = {
-	.id	  = -1,
-	.name     = "mem",
-	.map_base = CONFIG_EP93XX_SDRAM_BANK2_BASE,
-	.size     = CONFIG_EP93XX_SDRAM_BANK2_SIZE,
-	.platform_data = &ram_dev_pdata2,
-};
-#endif
-
-#if (CONFIG_EP93XX_SDRAM_NUM_BANKS == 4)
-static struct memory_platform_data ram_dev_pdata3 = {
-	.name = "ram3",
-	.flags = IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram3_dev = {
-	.id	  = -1,
-	.name     = "mem",
-	.map_base = CONFIG_EP93XX_SDRAM_BANK3_BASE,
-	.size     = CONFIG_EP93XX_SDRAM_BANK3_SIZE,
-	.platform_data = &ram_dev_pdata3,
-};
-#endif
-
 static struct device_d eth_dev = {
 	.id	  = -1,
 	.name     = "ep93xx_eth",
@@ -110,6 +52,8 @@ static struct device_d eth_dev = {
 
 static int ep93xx_devices_init(void)
 {
+	struct device_d *sdram_dev;
+
 	register_device(&cfi_dev);
 
 	/*
@@ -121,26 +65,27 @@ static int ep93xx_devices_init(void)
 
 	protect_file("/dev/env0", 1);
 
-	register_device(&sdram0_dev);
-#if (CONFIG_EP93XX_SDRAM_NUM_BANKS >= 2)
-	register_device(&sdram1_dev);
-#endif
-#if (CONFIG_EP93XX_SDRAM_NUM_BANKS >= 3)
-	register_device(&sdram2_dev);
-#endif
-#if (CONFIG_EP93XX_SDRAM_NUM_BANKS == 4)
-	register_device(&sdram3_dev);
-#endif
-
-	armlinux_add_dram(&sdram0_dev);
+	sdram_dev = add_mem_device("ram0", CONFIG_EP93XX_SDRAM_BANK0_BASE,
+				   CONFIG_EP93XX_SDRAM_BANK0_SIZE,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
 #if (CONFIG_EP93XX_SDRAM_NUM_BANKS >= 2)
-	armlinux_add_dram(&sdram1_dev);
+	sdram_dev = add_mem_device("ram1", CONFIG_EP93XX_SDRAM_BANK1_BASE,
+				   CONFIG_EP93XX_SDRAM_BANK1_SIZE,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
 #endif
 #if (CONFIG_EP93XX_SDRAM_NUM_BANKS >= 3)
-	armlinux_add_dram(&sdram2_dev);
+	sdram_dev = add_mem_device("ram2", CONFIG_EP93XX_SDRAM_BANK2_BASE,
+				   CONFIG_EP93XX_SDRAM_BANK2_SIZE,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
 #endif
 #if (CONFIG_EP93XX_SDRAM_NUM_BANKS == 4)
-	armlinux_add_dram(&sdram3_dev);
+	sdram_dev = add_mem_device("ram3", CONFIG_EP93XX_SDRAM_BANK3_BASE,
+				   CONFIG_EP93XX_SDRAM_BANK2_SIZE,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
 #endif
 
 	register_device(&eth_dev);
diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index 36f5aa8..6ea4a6e 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -90,19 +90,6 @@ static struct fec_platform_data fec_info = {
 	.phy_addr	= 1,
 };
 
-static struct memory_platform_data sdram_pdata = {
-	.name	= "ram0",
-	.flags	= IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram0_dev = {
-	.id	  = -1,
-	.name     = "mem",
-	.map_base = IMX_SDRAM_CS0,
-	.size     = 64 * 1024 * 1024,
-	.platform_data = &sdram_pdata,
-};
-
 struct imx_nand_platform_data nand_info = {
 	.width	= 1,
 	.hw_ecc	= 1,
@@ -255,6 +242,8 @@ static struct pad_desc eukrea_cpuimx25_pads[] = {
 
 static int eukrea_cpuimx25_devices_init(void)
 {
+	struct device_d *sdram_dev;
+
 	eukrea_cpuimx25_mmu_init();
 
 	mxc_iomux_v3_setup_multiple_pads(eukrea_cpuimx25_pads,
@@ -275,7 +264,9 @@ static int eukrea_cpuimx25_devices_init(void)
 		PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
-	register_device(&sdram0_dev);
+	sdram_dev = add_mem_device("ram0", IMX_SDRAM_CS0, 64 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
 
 	/* enable LCD */
 	gpio_direction_output(26, 1);
@@ -295,7 +286,6 @@ static int eukrea_cpuimx25_devices_init(void)
 #endif
 	register_device(&usbotg_dev);
 
-	armlinux_add_dram(&sdram0_dev);
 	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_EUKREA_CPUIMX25);
 
diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index 108636f..92424e6 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -63,25 +63,12 @@ static struct device_d cfi_dev1 = {
 };
 #endif
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = IORESOURCE_MEM_WRITEABLE,
-};
-
 #if defined CONFIG_EUKREA_CPUIMX27_SDRAM_256MB
 #define SDRAM0	256
 #elif defined CONFIG_EUKREA_CPUIMX27_SDRAM_128MB
 #define SDRAM0	128
 #endif
 
-static struct device_d sdram_dev = {
-	.id	  = -1,
-	.name     = "mem",
-	.map_base = 0xa0000000,
-	.size     = SDRAM0 * 1024 * 1024,
-	.platform_data = &ram_pdata,
-};
-
 static struct fec_platform_data fec_info = {
 	.xcv_type = MII100,
 	.phy_addr = 1,
@@ -197,6 +184,7 @@ static struct device_d imxfb_dev = {
 
 static int eukrea_cpuimx27_devices_init(void)
 {
+	struct device_d *sdram_dev;
 	char *envdev = "no";
 	int i;
 
@@ -271,7 +259,9 @@ static int eukrea_cpuimx27_devices_init(void)
 	register_device(&cfi_dev1);
 #endif
 	imx27_add_nand(&nand_info);
-	register_device(&sdram_dev);
+	sdram_dev = add_mem_device("ram0", 0xa0000000, SDRAM0 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
 
 	PCCR0 |= PCCR0_I2C1_EN;
 	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
@@ -292,7 +282,6 @@ static int eukrea_cpuimx27_devices_init(void)
 	gpio_set_value(GPIO_PORTA | 25, 1);
 #endif
 
-	armlinux_add_dram(&sdram_dev);
 	armlinux_set_bootparams((void *)0xa0000100);
 	armlinux_set_architecture(MACH_TYPE_CPUIMX27);
 
diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index dd842d5..d1de495 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -61,19 +61,6 @@ static struct fec_platform_data fec_info = {
 	.phy_addr	= 0x1F,
 };
 
-static struct memory_platform_data sdram_pdata = {
-	.name	= "ram0",
-	.flags	= IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram_dev = {
-	.id		= -1,
-	.name		= "mem",
-	.map_base	= IMX_SDRAM_CS0,
-	.size		= 128 * 1024 * 1024,
-	.platform_data	= &sdram_pdata,
-};
-
 struct imx_nand_platform_data nand_info = {
 	.width		= 1,
 	.hw_ecc		= 1,
@@ -173,6 +160,8 @@ postcore_initcall(eukrea_cpuimx35_mmu_init);
 
 static int eukrea_cpuimx35_devices_init(void)
 {
+	struct device_d *sdram_dev;
+
 	imx35_add_nand(&nand_info);
 
 	devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_raw");
@@ -182,7 +171,9 @@ static int eukrea_cpuimx35_devices_init(void)
 
 	imx35_add_fec(&fec_info);
 
-	register_device(&sdram_dev);
+	sdram_dev = add_mem_device("ram0", IMX_SDRAM_CS0, 128 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
 	imx35_add_fb(&ipu_fb_data);
 
 	imx35_add_i2c0(NULL);
@@ -198,7 +189,6 @@ static int eukrea_cpuimx35_devices_init(void)
 	writel(tmp | (1 << 23), IMX_OTG_BASE + 0x608);
 	register_device(&usbotg_dev);
 #endif
-	armlinux_add_dram(&sdram_dev);
 	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_EUKREA_CPUIMX35);
 
diff --git a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
index 3a07e22..4d281f4 100644
--- a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
+++ b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
@@ -42,19 +42,6 @@
 #include <mach/iomux-mx51.h>
 #include <mach/devices-imx51.h>
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram_dev = {
-	.id       = -1,
-	.name     = "mem",
-	.map_base = 0x90000000,
-	.size     = 256 * 1024 * 1024,
-	.platform_data = &ram_pdata,
-};
-
 static struct fec_platform_data fec_info = {
 	.xcv_type = MII100,
 };
@@ -132,9 +119,13 @@ static void eukrea_cpuimx51_mmu_init(void)
 
 static int eukrea_cpuimx51_devices_init(void)
 {
+	struct device_d *sdram_dev;
+
 	eukrea_cpuimx51_mmu_init();
 
-	register_device(&sdram_dev);
+	sdram_dev = add_mem_device("ram0", 0x90000000, 256 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
 	imx51_add_fec(&fec_info);
 #ifdef CONFIG_MCI_IMX_ESDHC
 	imx51_add_mmc0(NULL);
@@ -150,7 +141,6 @@ static int eukrea_cpuimx51_devices_init(void)
 	gpio_set_value(GPIO_LAN8700_RESET, 1);
 	gpio_direction_output(GPIO_LCD_BL, 0);
 
-	armlinux_add_dram(&sdram_dev);
 	armlinux_set_bootparams((void *)0x90000100);
 	armlinux_set_architecture(MACH_TYPE_EUKREA_CPUIMX51SD);
 
diff --git a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
index c2fbfa2..d6c2996 100644
--- a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
+++ b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
@@ -25,24 +25,14 @@
 #include <generated/mach-types.h>
 #include <mach/imx-regs.h>
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram_dev = {
-	.name     = "mem",
-	.map_base = IMX_MEMORY_BASE,
-	.size     = 32 * 1024 * 1024,
-	.platform_data = &ram_pdata,
-};
-
 static int mx23_evk_devices_init(void)
 {
-	register_device(&sdram_dev);
+	struct device_d *sdram_dev;
 
-	armlinux_add_dram(&sdram_dev);
-	armlinux_set_bootparams((void*)(sdram_dev.map_base + 0x100));
+	sdram_dev = add_mem_device("ram0", IMX_MEMORY_BASE, 32 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
+	armlinux_set_bootparams(dev_get_mem_region(sdram_dev, 0) + 0x100);
 	armlinux_set_architecture(MACH_TYPE_MX23EVK);
 
 	return 0;
diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index 212a937..6d4bde5 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -113,38 +113,6 @@ static struct fec_platform_data fec_info = {
 	.phy_addr	= 1,
 };
 
-static struct memory_platform_data sdram_pdata = {
-	.name	= "ram0",
-	.flags	= IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram0_dev = {
-	.id	  = -1,
-	.name     = "mem",
-	.map_base = IMX_SDRAM_CS0,
-#if defined CONFIG_FREESCALE_MX25_3STACK_SDRAM_64MB_DDR2
-	.size     = 64 * 1024 * 1024,
-#elif defined CONFIG_FREESCALE_MX25_3STACK_SDRAM_128MB_MDDR
-	.size     = 128 * 1024 * 1024,
-#else
-#error "Unsupported SDRAM type"
-#endif
-	.platform_data = &sdram_pdata,
-};
-
-static struct memory_platform_data sram_pdata = {
-	.name	= "sram0",
-	.flags	= IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sram0_dev = {
-	.id	  = -1,
-	.name     = "mem",
-	.map_base = 0x78000000,
-	.size     = 128 * 1024,
-	.platform_data = &sram_pdata,
-};
-
 struct imx_nand_platform_data nand_info = {
 	.width	= 1,
 	.hw_ecc	= 1,
@@ -232,6 +200,8 @@ late_initcall(imx25_3ds_fec_init);
 
 static int imx25_devices_init(void)
 {
+	struct device_d *sdram_dev;
+
 #ifdef CONFIG_USB
 	/* USB does not work yet. Don't know why. Maybe
 	 * the CPLD has to be initialized.
@@ -253,13 +223,21 @@ static int imx25_devices_init(void)
 	devfs_add_partition("nand0", 0x40000, 0x20000, PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
-	register_device(&sdram0_dev);
-	register_device(&sram0_dev);
+	sdram_dev = add_mem_device("ram0", IMX_SDRAM_CS0, 
+#if defined CONFIG_FREESCALE_MX25_3STACK_SDRAM_64MB_DDR2
+	64 * 1024 * 1024,
+#elif defined CONFIG_FREESCALE_MX25_3STACK_SDRAM_128MB_MDDR
+	128 * 1024 * 1024,
+#else
+#error "Unsupported SDRAM type"
+#endif
+				   IORESOURCE_MEM_WRITEABLE);
+	add_mem_device("sram0", 0x78000000, 128 * 1024, IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
 
 	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
 	imx25_add_i2c0(NULL);
 
-	armlinux_add_dram(&sdram0_dev);
 	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_MX25_3DS);
 	armlinux_set_serial(imx_uid());
diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
index 0c54337..b3a03cc 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -71,19 +71,6 @@ static struct fec_platform_data fec_info = {
 	.phy_addr	= 0x1F,
 };
 
-static struct memory_platform_data sdram_pdata = {
-	.name	= "ram0",
-	.flags	= IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram_dev = {
-	.id		= -1,
-	.name		= "mem",
-	.map_base	= IMX_SDRAM_CS0,
-	.size		= 128 * 1024 * 1024,
-	.platform_data	= &sdram_pdata,
-};
-
 struct imx_nand_platform_data nand_info = {
 	.hw_ecc		= 1,
 	.flash_bbt	= 1,
@@ -165,6 +152,7 @@ static void set_board_rev(int rev)
 static int f3s_devices_init(void)
 {
 	uint32_t reg;
+	struct device_d *sdram_dev;
 
 	/* CS0: Nor Flash */
 	writel(0x0000cf03, CSCR_U(0));
@@ -209,10 +197,11 @@ static int f3s_devices_init(void)
 
 	imx35_add_mmc0(NULL);
 
-	register_device(&sdram_dev);
+	sdram_dev = add_mem_device("ram0", IMX_SDRAM_CS0, 124 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
 	imx35_add_fb(&ipu_fb_data);
 
-	armlinux_add_dram(&sdram_dev);
 	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_MX35_3DS);
 
diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index 706642b..d0b8b89 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -41,19 +41,6 @@
 #include <mach/iomux-mx51.h>
 #include <mach/devices-imx51.h>
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram_dev = {
-	.id       = -1,
-	.name     = "mem",
-	.map_base = 0x90000000,
-	.size     = 512 * 1024 * 1024,
-	.platform_data = &ram_pdata,
-};
-
 static struct fec_platform_data fec_info = {
 	.xcv_type = MII100,
 };
@@ -242,9 +229,12 @@ static void babbage_power_init(void)
 
 static int f3s_devices_init(void)
 {
+	struct device_d *sdram_dev;
 	babbage_mmu_init();
 
-	register_device(&sdram_dev);
+	sdram_dev = add_mem_device("ram0", 0x90000000, 512 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
 	imx51_add_fec(&fec_info);
 	imx51_add_mmc0(NULL);
 
@@ -254,7 +244,6 @@ static int f3s_devices_init(void)
 
 	babbage_power_init();
 
-	armlinux_add_dram(&sdram_dev);
 	armlinux_set_bootparams((void *)0x90000100);
 	armlinux_set_architecture(MACH_TYPE_MX51_BABBAGE);
 
diff --git a/arch/arm/boards/guf-cupid/board.c b/arch/arm/boards/guf-cupid/board.c
index 88fde34..313e280 100644
--- a/arch/arm/boards/guf-cupid/board.c
+++ b/arch/arm/boards/guf-cupid/board.c
@@ -55,19 +55,6 @@ static struct device_d fec_dev = {
 	.platform_data	= &fec_info,
 };
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram0_dev = {
-	.id	  = -1,
-	.name     = "mem",
-	.map_base = IMX_SDRAM_CS0,
-	.size     = 128 * 1024 * 1024,
-	.platform_data = &ram_pdata,
-};
-
 struct imx_nand_platform_data nand_info = {
 	.width	= 1,
 	.hw_ecc	= 1,
@@ -158,6 +145,7 @@ postcore_initcall(cupid_mmu_init);
 static int cupid_devices_init(void)
 {
 	uint32_t reg;
+	struct device_d *sdram_dev;
 
 	gpio_direction_output(GPIO_LCD_ENABLE, 0);
 	gpio_direction_output(GPIO_LCD_BACKLIGHT, 0);
@@ -177,11 +165,12 @@ static int cupid_devices_init(void)
 	devfs_add_partition("nand0", 0x40000, 0x80000, PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
-	register_device(&sdram0_dev);
+	sdram_dev = add_mem_device("ram0", IMX_SDRAM_CS0, 128 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
 	register_device(&imx_ipu_fb_dev);
 	register_device(&esdhc_dev);
 
-	armlinux_add_dram(&sdram0_dev);
 	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_GUF_CUPID);
 
diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/board.c
index 83d20ec..4e0ac90 100644
--- a/arch/arm/boards/guf-neso/board.c
+++ b/arch/arm/boards/guf-neso/board.c
@@ -54,19 +54,6 @@
 #define LCD_POWER_GPIO (GPIO_PORTF + 18)
 #define BACKLIGHT_POWER_GPIO (GPIO_PORTE + 5)
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram_dev = {
-	.id	  = -1,
-	.name     = "mem",
-	.map_base = 0xa0000000,
-	.size     = 128 * 1024 * 1024,
-	.platform_data = &ram_pdata,
-};
-
 static struct fec_platform_data fec_info = {
 	.xcv_type = MII100,
 	.phy_addr = 31,
@@ -178,6 +165,7 @@ static void neso_mmu_init(void)
 static int neso_devices_init(void)
 {
 	int i;
+	struct device_d *sdram_dev;
 
 	unsigned int mode[] = {
 		/* UART1 */
@@ -309,7 +297,9 @@ static int neso_devices_init(void)
 		imx_gpio_mode(mode[i]);
 
 	imx27_add_nand(&nand_info);
-	register_device(&sdram_dev);
+	sdram_dev = add_mem_device("ram0", 0xa0000000, 128 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
 	imx27_add_fb(&neso_fb_data);
 
 #ifdef CONFIG_USB
@@ -325,7 +315,6 @@ static int neso_devices_init(void)
 	devfs_add_partition("nand0", 0x40000, 0x80000, PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
-	armlinux_add_dram(&sdram_dev);
 	armlinux_set_bootparams((void *)0xa0000100);
 	armlinux_set_architecture(MACH_TYPE_NESO);
 
diff --git a/arch/arm/boards/imx21ads/imx21ads.c b/arch/arm/boards/imx21ads/imx21ads.c
index 2ff3d4b..ab47a8d 100644
--- a/arch/arm/boards/imx21ads/imx21ads.c
+++ b/arch/arm/boards/imx21ads/imx21ads.c
@@ -48,19 +48,6 @@ static struct device_d cfi_dev = {
 	.size     = 32 * 1024 * 1024,
 };
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram_dev = {
-	.id	  = -1,
-	.name     = "mem",
-	.map_base = 0xc0000000,
-	.size     = 64 * 1024 * 1024,
-	.platform_data = &ram_pdata,
-};
-
 struct imx_nand_platform_data nand_info = {
 	.width = 1,
 	.hw_ecc = 1,
@@ -145,6 +132,7 @@ core_initcall(imx21ads_timing_init);
 static int mx21ads_devices_init(void)
 {
 	int i;
+	struct device_d *sdram_dev;
 	unsigned int mode[] = {
 		PA5_PF_LSCLK,
 		PA6_PF_LD0,
@@ -184,12 +172,13 @@ static int mx21ads_devices_init(void)
 		imx_gpio_mode(mode[i]);
 
 	register_device(&cfi_dev);
-	register_device(&sdram_dev);
+	sdram_dev = add_mem_device("ram0", 0xc0000000, 64 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
 	imx21_add_nand(&nand_info);
 	register_device(&cs8900_dev);
 	imx21_add_fb(&imx_fb_data);
 
-	armlinux_add_dram(&sdram_dev);
 	armlinux_set_bootparams((void *)0xc0000100);
 	armlinux_set_architecture(MACH_TYPE_MX21ADS);
 
diff --git a/arch/arm/boards/imx27ads/imx27ads.c b/arch/arm/boards/imx27ads/imx27ads.c
index e957125..8aaf3a2 100644
--- a/arch/arm/boards/imx27ads/imx27ads.c
+++ b/arch/arm/boards/imx27ads/imx27ads.c
@@ -41,19 +41,6 @@ static struct device_d cfi_dev = {
 	.size     = 32 * 1024 * 1024,
 };
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram_dev = {
-	.id	  = -1,
-	.name     = "mem",
-	.map_base = 0xa0000000,
-	.size     = 128 * 1024 * 1024,
-	.platform_data = &ram_pdata,
-};
-
 static struct fec_platform_data fec_info = {
 	.xcv_type = MII100,
 	.phy_addr = 1,
@@ -97,6 +84,7 @@ core_initcall(imx27ads_timing_init);
 static int mx27ads_devices_init(void)
 {
 	int i;
+	struct device_d *sdram_dev;
 	unsigned int mode[] = {
 		PD0_AIN_FEC_TXD0,
 		PD1_AIN_FEC_TXD1,
@@ -127,14 +115,15 @@ static int mx27ads_devices_init(void)
 		imx_gpio_mode(mode[i]);
 
 	register_device(&cfi_dev);
-	register_device(&sdram_dev);
-	imx27_add_fec(&fec_info);
 
+	sdram_dev = add_mem_device("ram0", 0xa0000000, 128 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
+	imx27_add_fec(&fec_info);
 	devfs_add_partition("nor0", 0x00000, 0x20000, PARTITION_FIXED, "self0");
 	devfs_add_partition("nor0", 0x20000, 0x20000, PARTITION_FIXED, "env0");
 	protect_file("/dev/env0", 1);
 
-	armlinux_add_dram(&sdram_dev);
 	armlinux_set_bootparams((void *)0xa0000100);
 	armlinux_set_architecture(MACH_TYPE_MX27ADS);
 
diff --git a/arch/arm/boards/karo-tx25/board.c b/arch/arm/boards/karo-tx25/board.c
index dbe0284..a463c82 100644
--- a/arch/arm/boards/karo-tx25/board.c
+++ b/arch/arm/boards/karo-tx25/board.c
@@ -45,45 +45,6 @@ static struct fec_platform_data fec_info = {
 	.phy_addr	= 0x1f,
 };
 
-static struct memory_platform_data sdram0_pdata = {
-	.name	= "ram0",
-	.flags	= IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram0_dev = {
-	.id	  = -1,
-	.name     = "mem",
-	.map_base = IMX_SDRAM_CS0,
-	.size     = 32 * 1024 * 1024,
-	.platform_data = &sdram0_pdata,
-};
-
-static struct memory_platform_data sdram1_pdata = {
-	.name	= "ram1",
-	.flags	= IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram1_dev = {
-	.id	  = -1,
-	.name     = "mem",
-	.map_base = IMX_SDRAM_CS1,
-	.size     = 32 * 1024 * 1024,
-	.platform_data = &sdram1_pdata,
-};
-
-static struct memory_platform_data sram_pdata = {
-	.name	= "sram0",
-	.flags	= IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sram0_dev = {
-	.id	  = -1,
-	.name     = "mem",
-	.map_base = 0x78000000,
-	.size     = 128 * 1024,
-	.platform_data = &sram_pdata,
-};
-
 struct imx_nand_platform_data nand_info = {
 	.width	= 1,
 	.hw_ecc	= 1,
@@ -156,6 +117,8 @@ static void noinline gpio_fec_active(void)
 
 static int tx25_devices_init(void)
 {
+	struct device_d *sdram_dev;
+
 	gpio_fec_active();
 
 	imx25_add_fec(&fec_info);
@@ -171,12 +134,15 @@ static int tx25_devices_init(void)
 	devfs_add_partition("nand0", 0x40000, 0x80000, PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
-	register_device(&sdram0_dev);
-	register_device(&sdram1_dev);
-	register_device(&sram0_dev);
+	sdram_dev = add_mem_device("ram0", IMX_SDRAM_CS0, 32 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
+	sdram_dev = add_mem_device("ram0", IMX_SDRAM_CS1, 32 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
+	add_mem_device("ram0", 0x78000000, 128 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
 
-	armlinux_add_dram(&sdram0_dev);
-	armlinux_add_dram(&sdram1_dev);
 	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_TX25);
 	armlinux_set_serial(imx_uid());
diff --git a/arch/arm/boards/karo-tx28/tx28.c b/arch/arm/boards/karo-tx28/tx28.c
index 095b1bf..b9d5454 100644
--- a/arch/arm/boards/karo-tx28/tx28.c
+++ b/arch/arm/boards/karo-tx28/tx28.c
@@ -23,19 +23,6 @@
 #include <mach/imx-regs.h>
 #include <asm/mmu.h>
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram_dev = {
-	.id = -1,
-	.name = "mem",
-	.map_base = IMX_MEMORY_BASE,
-	.size = 128 * 1024 * 1024,
-	.platform_data = &ram_pdata,
-};
-
 /* setup the CPU card internal signals */
 static const uint32_t tx28_pad_setup[] = {
 	/* NAND interface */
@@ -103,15 +90,16 @@ postcore_initcall(tx28_mmu_init);
 static int tx28_devices_init(void)
 {
 	int i;
+	struct device_d *sdram_dev;
 
 	/* initizalize gpios */
 	for (i = 0; i < ARRAY_SIZE(tx28_pad_setup); i++)
 		imx_gpio_mode(tx28_pad_setup[i]);
 
-	register_device(&sdram_dev);
-
-	armlinux_add_dram(&sdram_dev);
-	armlinux_set_bootparams((void *)(sdram_dev.map_base + 0x100));
+	sdram_dev = add_mem_device("ram0", IMX_MEMORY_BASE, 128 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
+	armlinux_set_bootparams(dev_get_mem_region(sdram_dev, 0) + 0x100);
 	armlinux_set_architecture(MACH_TYPE_TX28);
 
 	base_board_init();
diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index f0be4b8..2bdc2ca 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -44,18 +44,6 @@
 #include <mach/mci.h>
 #include <mach/fb.h>
 
-static struct memory_platform_data ram_pdata = {
-	.name		= "ram0",
-	.flags		= IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram_dev = {
-	.id		= -1,
-	.name		= "mem",
-	.map_base	= CS6_BASE,
-	.platform_data	= &ram_pdata,
-};
-
 static struct s3c24x0_nand_platform_data nand_info = {
 	.nand_timing = CALC_NFCONF_TIMING(A9M2440_TACLS, A9M2440_TWRPH0, A9M2440_TWRPH1),
 	.flash_bbt = 1,	/* same as the kernel */
@@ -316,8 +304,7 @@ static int mini2440_devices_init(void)
 {
 	uint32_t reg;
 	int i;
-
-	sdram_dev.size = s3c24x0_get_memory_size();
+	struct device_d *sdram_dev;
 
 	/* ----------- configure the access to the outer space ---------- */
 	for (i = 0; i < ARRAY_SIZE(pin_usage); i++)
@@ -338,7 +325,11 @@ static int mini2440_devices_init(void)
 	writel(reg, MISCCR);
 
 	register_device(&nand_dev);
-	register_device(&sdram_dev);
+
+	sdram_dev = add_mem_device("ram0", CS6_BASE, s3c24x0_get_memory_size(),
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
+
 	register_device(&dm9000_dev);
 #ifdef CONFIG_NAND
 	/* ----------- add some vital partitions -------- */
@@ -352,8 +343,7 @@ static int mini2440_devices_init(void)
 #endif
 	register_device(&mci_dev);
 	register_device(&s3cfb_dev);
-	armlinux_add_dram(&sdram_dev);
-	armlinux_set_bootparams((void *)sdram_dev.map_base + 0x100);
+	armlinux_set_bootparams(dev_get_mem_region(sdram_dev, 0) + 0x100);
 	armlinux_set_architecture(MACH_TYPE_MINI2440);
 
 	return 0;
diff --git a/arch/arm/boards/netx/netx.c b/arch/arm/boards/netx/netx.c
index 9705300..5e25b94 100644
--- a/arch/arm/boards/netx/netx.c
+++ b/arch/arm/boards/netx/netx.c
@@ -37,19 +37,6 @@ static struct device_d cfi_dev = {
 	.size     = 32 * 1024 * 1024,
 };
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram_dev = {
-	.id	  = -1,
-	.name     = "mem",
-	.map_base = 0x80000000,
-	.size     = 64 * 1024 * 1024,
-	.platform_data = &ram_pdata,
-};
-
 struct netx_eth_platform_data eth0_data = {
 	.xcno = 0,
 };
@@ -71,8 +58,13 @@ static struct device_d netx_eth_dev1 = {
 };
 
 static int netx_devices_init(void) {
+	struct device_d *sdram_dev;
+
 	register_device(&cfi_dev);
-	register_device(&sdram_dev);
+
+	sdram_dev = add_mem_device("ram0", 0x80000000, 64 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
 	register_device(&netx_eth_dev0);
 	register_device(&netx_eth_dev1);
 
@@ -83,7 +75,6 @@ static int netx_devices_init(void) {
 
 	protect_file("/dev/env0", 1);
 
-	armlinux_add_dram(&sdram_dev);
 	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_NXDB500);
 
diff --git a/arch/arm/boards/omap/board-beagle.c b/arch/arm/boards/omap/board-beagle.c
index 0385666..107a009 100644
--- a/arch/arm/boards/omap/board-beagle.c
+++ b/arch/arm/boards/omap/board-beagle.c
@@ -264,19 +264,6 @@ static int beagle_console_init(void)
 console_initcall(beagle_console_init);
 #endif /* CONFIG_DRIVER_SERIAL_NS16550 */
 
-static struct memory_platform_data sram_pdata = {
-	.name = "ram0",
-	.flags = IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram_dev = {
-	.id = -1,
-	.name = "mem",
-	.map_base = 0x80000000,
-	.size = 128 * 1024 * 1024,
-	.platform_data = &sram_pdata,
-};
-
 #ifdef CONFIG_USB_EHCI_OMAP
 static struct omap_hcd omap_ehci_pdata = {
 	.port_mode[0] = EHCI_HCD_OMAP_MODE_PHY,
@@ -324,11 +311,13 @@ static struct device_d hsmmc_dev = {
 
 static int beagle_devices_init(void)
 {
-	int ret;
+	struct device_d *sdram_dev;
 
-	ret = register_device(&sdram_dev);
-	if (ret)
-		goto failed;
+	sdram_dev = add_mem_device("ram0", 0x80000000, 128 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	if (!sdram_dev)
+		return -EIO;
+	armlinux_add_dram(sdram_dev);
 
 	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
 	register_device(&i2c_dev);
@@ -345,11 +334,10 @@ static int beagle_devices_init(void)
 
 	register_device(&hsmmc_dev);
 
-	armlinux_add_dram(&sdram_dev);
 	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_OMAP3_BEAGLE);
-failed:
-	return ret;
+
+	return 0;
 }
 device_initcall(beagle_devices_init);
 
diff --git a/arch/arm/boards/omap/board-omap3evm.c b/arch/arm/boards/omap/board-omap3evm.c
index d7654c7..d555da4 100644
--- a/arch/arm/boards/omap/board-omap3evm.c
+++ b/arch/arm/boards/omap/board-omap3evm.c
@@ -58,6 +58,7 @@
 #include <mach/control.h>
 #include <mach/omap3-mux.h>
 #include <mach/gpmc.h>
+#include <errno.h>
 #include "board.h"
 
 
@@ -241,26 +242,15 @@ static int omap3evm_init_console(void)
 console_initcall(omap3evm_init_console);
 #endif /* CONFIG_DRIVER_SERIAL_NS16550 */
 
-static struct memory_platform_data sram_pdata = {
-	.name	= "ram0",
-	.flags	= IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram_dev = {
-	.id		= -1,
-	.name		= "mem",
-	.map_base	= 0x80000000,
-	.size		= 128 * 1024 * 1024,
-	.platform_data	= &sram_pdata,
-};
-
 static int omap3evm_init_devices(void)
 {
-	int ret;
+	struct device_d *sdram_dev;
 
-	ret = register_device(&sdram_dev);
-	if (ret)
-		goto failed;
+	sdram_dev = add_mem_device("ram0", 0x80000000, 128 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	if (!sdram_dev)
+		return -EIO;
+	armlinux_add_dram(sdram_dev);
 
 #ifdef CONFIG_GPMC
 	/*
@@ -268,10 +258,6 @@ static int omap3evm_init_devices(void)
 	 */
 	gpmc_generic_init(0x10);
 #endif
-
-	armlinux_add_dram(&sdram_dev);
-
-failed:
-	return ret;
+	return 0;
 }
 device_initcall(omap3evm_init_devices);
diff --git a/arch/arm/boards/omap/board-sdp343x.c b/arch/arm/boards/omap/board-sdp343x.c
index 048168d..04aa302 100644
--- a/arch/arm/boards/omap/board-sdp343x.c
+++ b/arch/arm/boards/omap/board-sdp343x.c
@@ -61,6 +61,7 @@
 #include <mach/control.h>
 #include <mach/omap3-mux.h>
 #include <mach/gpmc.h>
+#include <errno.h>
 #include "board.h"
 
 /******************** Board Boot Time *******************/
@@ -641,34 +642,19 @@ static int sdp3430_flash_init(void)
 	return 0;
 }
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = IORESOURCE_MEM_WRITEABLE,
-};
-
-struct device_d sdram_dev = {
-	.id = -1,
-	.name = "mem",
-	.map_base = 0x80000000,
-	.size = 128 * 1024 * 1024,
-	.platform_data = &ram_pdata,
-};
-
 /*-----------------------Generic Devices Initialization ---------------------*/
 
 static int sdp3430_devices_init(void)
 {
+	struct device_d *sdram_dev;
 	int ret;
-	ret = register_device(&sdram_dev);
-	if (ret)
-		goto failed;
-	ret = sdp3430_flash_init();
-	if (ret)
-		goto failed;
 
-	armlinux_add_dram(&sdram_dev);
-failed:
-	return ret;
+	sdram_dev = add_mem_device("ram0", 0x80000000, 128 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	if (!sdram_dev)
+		return -EIO;
+	armlinux_add_dram(sdram_dev);
+	return sdp3430_flash_init();
 }
 
 device_initcall(sdp3430_devices_init);
diff --git a/arch/arm/boards/panda/board.c b/arch/arm/boards/panda/board.c
index 43fa0d9..c5b1e5c 100644
--- a/arch/arm/boards/panda/board.c
+++ b/arch/arm/boards/panda/board.c
@@ -52,19 +52,6 @@ static int panda_console_init(void)
 }
 console_initcall(panda_console_init);
 
-static struct memory_platform_data sram_pdata = {
-	.name = "ram0",
-	.flags = IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram_dev = {
-	.id = -1,
-	.name = "mem",
-	.map_base = 0x80000000,
-	.size = SZ_1G,
-	.platform_data = &sram_pdata,
-};
-
 #ifdef CONFIG_MMU
 static int panda_mmu_init(void)
 {
@@ -145,6 +132,8 @@ static struct device_d hsmmc_dev = {
 
 static int panda_devices_init(void)
 {
+	struct device_d *sdram_dev;
+
 	panda_boardrev_init();
 
 	if (gpio_get_value(182)) {
@@ -171,11 +160,12 @@ static int panda_devices_init(void)
 		sr32(OMAP44XX_SCRM_ALTCLKSRC, 2, 2, 0x3);
 	}
 
-	register_device(&sdram_dev);
+	sdram_dev = add_mem_device("ram0", 0x80000000, SZ_1G,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
 	register_device(&hsmmc_dev);
 	panda_ehci_init();
 
-	armlinux_add_dram(&sdram_dev);
 	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_OMAP4_PANDA);
 
diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index 366a8a4..7895059 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -51,23 +51,6 @@ static struct device_d cfi_dev = {
 };
 
 /*
- * up to 2MiB static RAM type memory, connected
- * to CS4, data width is 16 bit
- */
-static struct memory_platform_data sram_dev_pdata0 = {
-	.name = "sram0",
-	.flags = IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sram_dev = {
-	.id	  = -1,
-	.name     = "mem",
-	.map_base = IMX_CS4_BASE,
-	.size     = IMX_CS4_RANGE,	/* area size */
-	.platform_data = &sram_dev_pdata0,
-};
-
-/*
  * SMSC 9217 network controller
  * connected to CS line 1 and interrupt line
  * GPIO3, data width is 16 bit
@@ -85,41 +68,12 @@ static struct device_d network_dev = {
 #define SDRAM0	256
 #endif
 
-static struct memory_platform_data ram_dev_pdata0 = {
-	.name = "ram0",
-	.flags = IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram0_dev = {
-	.id	  = -1,
-	.name     = "mem",
-	.map_base = IMX_SDRAM_CS0,
-	.size     = SDRAM0 * 1024 * 1024,	/* fix size */
-	.platform_data = &ram_dev_pdata0,
-};
-
-#ifndef CONFIG_PCM037_SDRAM_BANK1_NONE
-
 #if defined CONFIG_PCM037_SDRAM_BANK1_128MB
 #define SDRAM1	128
 #elif defined CONFIG_PCM037_SDRAM_BANK1_256MB
 #define SDRAM1	256
 #endif
 
-static struct memory_platform_data ram_dev_pdata1 = {
-	.name = "ram1",
-	.flags = IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram1_dev = {
-	.id	  = -1,
-	.name     = "mem",
-	.map_base = IMX_SDRAM_CS1,
-	.size     = SDRAM1 * 1024 * 1024,	/* fix size */
-	.platform_data = &ram_dev_pdata1,
-};
-#endif
-
 struct imx_nand_platform_data nand_info = {
 	.width = 1,
 	.hw_ecc = 1,
@@ -253,6 +207,8 @@ static void pcm037_mmu_init(void)
 
 static int imx31_devices_init(void)
 {
+	struct device_d *sdram_dev;
+
 	pcm037_mmu_init();
 
 	__REG(CSCR_U(0)) = 0x0000cf03; /* CS0: Nor Flash */
@@ -282,13 +238,22 @@ static int imx31_devices_init(void)
 
 	protect_file("/dev/env0", 1);
 
-	register_device(&sram_dev);
+	/*
+	 * up to 2MiB static RAM type memory, connected
+	 * to CS4, data width is 16 bit
+	 */
+	add_mem_device("sram0", IMX_CS4_BASE, IMX_CS4_RANGE, /* area size */
+				   IORESOURCE_MEM_WRITEABLE);
 	imx31_add_nand(&nand_info);
 	register_device(&network_dev);
 
-	register_device(&sdram0_dev);
+	sdram_dev = add_mem_device("ram0", IMX_SDRAM_CS1, SDRAM0 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
 #ifndef CONFIG_PCM037_SDRAM_BANK1_NONE
-	register_device(&sdram1_dev);
+	sdram_dev = add_mem_device("ram1", IMX_SDRAM_CS1, SDRAM1 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
 #endif
 #ifdef CONFIG_USB
 	pcm037_usb_init();
@@ -296,10 +261,6 @@ static int imx31_devices_init(void)
 	register_device(&usbh2_dev);
 #endif
 
-	armlinux_add_dram(&sdram0_dev);
-#ifndef CONFIG_PCM037_SDRAM_BANK1_NONE
-	armlinux_add_dram(&sdram1_dev);
-#endif
 	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_PCM037);
 
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 2f4e671..046fbd5 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -54,32 +54,6 @@ static struct device_d cfi_dev = {
 	.size     = 32 * 1024 * 1024,
 };
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram_dev = {
-	.id	  = -1,
-	.name     = "mem",
-	.map_base = 0xa0000000,
-	.size     = 128 * 1024 * 1024,
-	.platform_data = &ram_pdata,
-};
-
-static struct memory_platform_data sram_pdata = {
-	.name = "sram0",
-	.flags = IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sram_dev = {
-	.id	  = -1,
-	.name     = "mem",
-	.map_base = 0xc8000000,
-	.size     = 512 * 1024, /* Can be up to 2MiB */
-	.platform_data = &sram_pdata,
-};
-
 static struct fec_platform_data fec_info = {
 	.xcv_type = MII100,
 	.phy_addr = 1,
@@ -191,6 +165,7 @@ static int pcm038_devices_init(void)
 {
 	int i;
 	char *envdev;
+	struct device_d *sdram_dev;
 
 	unsigned int mode[] = {
 		PD0_AIN_FEC_TXD0,
@@ -294,8 +269,11 @@ static int pcm038_devices_init(void)
 
 	register_device(&cfi_dev);
 	imx27_add_nand(&nand_info);
-	register_device(&sdram_dev);
-	register_device(&sram_dev);
+	sdram_dev = add_mem_device("ram0", 0xa0000000, 128 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
+	add_mem_device("ram0", 0xc8000000, 512 * 1024, /* Can be up to 2MiB */
+				   IORESOURCE_MEM_WRITEABLE);
 	imx27_add_fb(&pcm038_fb_data);
 
 #ifdef CONFIG_USB
@@ -330,7 +308,6 @@ static int pcm038_devices_init(void)
 
 	printf("Using environment in %s Flash\n", envdev);
 
-	armlinux_add_dram(&sdram_dev);
 	armlinux_set_bootparams((void *)0xa0000100);
 	armlinux_set_architecture(MACH_TYPE_PCM038);
 
diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
index ab88617..0cfd675 100644
--- a/arch/arm/boards/pcm043/pcm043.c
+++ b/arch/arm/boards/pcm043/pcm043.c
@@ -61,19 +61,6 @@ static struct fec_platform_data fec_info = {
 	.xcv_type = MII100,
 };
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram0_dev = {
-	.id	  = -1,
-	.name     = "mem",
-	.map_base = IMX_SDRAM_CS0,
-	.size     = 128 * 1024 * 1024,
-	.platform_data = &ram_pdata,
-};
-
 struct imx_nand_platform_data nand_info = {
 	.width	= 1,
 	.hw_ecc	= 1,
@@ -149,6 +136,7 @@ struct gpio_led led0 = {
 
 static int imx35_devices_init(void)
 {
+	struct device_d *sdram_dev;
 	uint32_t reg;
 
 	/* CS0: Nor Flash */
@@ -189,10 +177,12 @@ static int imx35_devices_init(void)
 		}
 	}
 
-	register_device(&sdram0_dev);
+
+	sdram_dev = add_mem_device("ram0", IMX_SDRAM_CS0, 128 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
 	imx35_add_fb(&ipu_fb_data);
 
-	armlinux_add_dram(&sdram0_dev);
 	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_PCM043);
 
diff --git a/arch/arm/boards/pcm049/board.c b/arch/arm/boards/pcm049/board.c
index b5d22bb..1b7923f 100644
--- a/arch/arm/boards/pcm049/board.c
+++ b/arch/arm/boards/pcm049/board.c
@@ -63,32 +63,6 @@ static int pcm049_console_init(void)
 }
 console_initcall(pcm049_console_init);
 
-static struct memory_platform_data sram_pdata = {
-	.name = "sram0",
-	.flags = IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sram_dev = {
-	.id = -1,
-	.name = "mem",
-	.map_base = 0x40300000,
-	.size = 48 * 1024,
-	.platform_data = &sram_pdata,
-};
-
-static struct memory_platform_data sdram_pdata = {
-	.name = "ram0",
-	.flags = IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram_dev = {
-	.id = -1,
-	.name = "mem",
-	.map_base = 0x80000000,
-	.size = SZ_512M,
-	.platform_data = &sdram_pdata,
-};
-
 #ifdef CONFIG_MMU
 static int pcm049_mmu_init(void)
 {
@@ -141,8 +115,13 @@ static void pcm049_network_init(void)
 
 static int pcm049_devices_init(void)
 {
-	register_device(&sdram_dev);
-	register_device(&sram_dev);
+	struct device_d *sdram_dev;
+
+	sdram_dev = add_mem_device("ram0", 0x80000000, SZ_512M,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
+	add_mem_device("ram0", 0x40300000, 48 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
 	register_device(&hsmmc_dev);
 
 	gpmc_generic_init(0x10);
@@ -160,7 +139,6 @@ static int pcm049_devices_init(void)
 	dev_add_bb_dev("env_raw", "env0");
 #endif
 
-	armlinux_add_dram(&sdram_dev);
 	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_PCM049);
 
diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
index 2eba3e4..63216f5 100644
--- a/arch/arm/boards/phycard-i.MX27/pca100.c
+++ b/arch/arm/boards/phycard-i.MX27/pca100.c
@@ -41,19 +41,6 @@
 #include <mach/iomux-mx27.h>
 #include <mach/devices-imx27.h>
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram_dev = {
-	.id	  = -1,
-	.name     = "mem",
-	.map_base = 0xa0000000,
-	.size     = 128 * 1024 * 1024,
-	.platform_data = &ram_pdata,
-};
-
 static struct fec_platform_data fec_info = {
 	.xcv_type = MII100,
 	.phy_addr = 1,
@@ -150,6 +137,7 @@ static int pca100_devices_init(void)
 {
 	int i;
 	struct device_d *nand;
+	struct device_d *sdram_dev;
 
 	unsigned int mode[] = {
 		PD0_AIN_FEC_TXD0,
@@ -224,7 +212,9 @@ static int pca100_devices_init(void)
 		imx_gpio_mode(mode[i]);
 
 	imx27_add_nand(&nand_info);
-	register_device(&sdram_dev);
+	sdram_dev = add_mem_device("ram0", 0xa0000000, 128 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
 	imx27_add_fec(&fec_info);
 	imx27_add_mmc0(NULL);
 
@@ -241,7 +231,6 @@ static int pca100_devices_init(void)
 	devfs_add_partition("nand0", 0x40000, 0x20000, PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
-	armlinux_add_dram(&sdram_dev);
 	armlinux_set_bootparams((void *)0xa0000100);
 	armlinux_set_architecture(2149);
 
diff --git a/arch/arm/boards/scb9328/scb9328.c b/arch/arm/boards/scb9328/scb9328.c
index 2227427..dc818ce 100644
--- a/arch/arm/boards/scb9328/scb9328.c
+++ b/arch/arm/boards/scb9328/scb9328.c
@@ -41,19 +41,6 @@ static struct device_d cfi_dev = {
 	.size     = 16 * 1024 * 1024,
 };
 
-static struct memory_platform_data sdram_pdata = {
-	.name = "ram0",
-	.flags = IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram_dev = {
-	.id	  = -1,
-	.name     = "mem",
-	.map_base = 0x08000000,
-	.size     = 16 * 1024 * 1024,
-	.platform_data = &sdram_pdata,
-};
-
 static struct dm9000_platform_data dm9000_data = {
 	.buswidth = DM9000_WIDTH_16,
 	.srom     = 1,
@@ -93,6 +80,7 @@ struct gpio_led leds[] = {
 static int scb9328_devices_init(void)
 {
 	int i;
+	struct device_d *sdram_dev;
 
 	imx_gpio_mode(PA23_PF_CS5);
 	imx_gpio_mode(GPIO_PORTB | GPIO_GPIO | GPIO_OUT | 21);
@@ -121,14 +109,15 @@ static int scb9328_devices_init(void)
 	CS5L = 0x00000D03;
 
 	register_device(&cfi_dev);
-	register_device(&sdram_dev);
+	sdram_dev = add_mem_device("ram0", 0x08000000, 16 * 1024 * 1024,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
 	register_device(&dm9000_dev);
 
 	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
 	devfs_add_partition("nor0", 0x40000, 0x20000, PARTITION_FIXED, "env0");
 	protect_file("/dev/env0", 1);
 
-	armlinux_add_dram(&sdram_dev);
 	armlinux_set_bootparams((void *)0x08000100);
 	armlinux_set_architecture(MACH_TYPE_SCB9328);
 
diff --git a/arch/arm/mach-at91/at91rm9200_devices.c b/arch/arm/mach-at91/at91rm9200_devices.c
index c6c823e..d0502ca 100644
--- a/arch/arm/mach-at91/at91rm9200_devices.c
+++ b/arch/arm/mach-at91/at91rm9200_devices.c
@@ -20,30 +20,13 @@
 
 #include "generic.h"
 
-static struct resource sdram_dev_resources[] = {
-	[0] = {
-		.start	= AT91_CHIPSELECT_1,
-	},
-};
-
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram_dev = {
-	.id = -1,
-	.name = "mem",
-	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
-	.resource	= sdram_dev_resources,
-	.platform_data = &ram_pdata,
-};
-
 void at91_add_device_sdram(u32 size)
 {
-	sdram_dev_resources[0].size = size;
-	register_device(&sdram_dev);
-	armlinux_add_dram(&sdram_dev);
+	struct device_d *sdram_dev;
+
+	sdram_dev = add_mem_device("ram0", AT91_CHIPSELECT_1, size,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
 }
 
 /* --------------------------------------------------------------------
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index a149ede..988dd92 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -21,30 +21,13 @@
 
 #include "generic.h"
 
-static struct resource sdram_dev_resources[] = {
-	[0] = {
-		.start	= AT91_CHIPSELECT_1,
-	},
-};
-
-static struct memory_platform_data sram_pdata = {
-	.name = "sram0",
-	.flags = IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram_dev = {
-	.id	  = -1,
-	.name     = "mem",
-	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
-	.resource	= sdram_dev_resources,
-	.platform_data = &sram_pdata,
-};
-
 void at91_add_device_sdram(u32 size)
 {
-	sdram_dev_resources[0].size = size;
-	register_device(&sdram_dev);
-	armlinux_add_dram(&sdram_dev);
+	struct device_d *sdram_dev;
+
+	sdram_dev = add_mem_device("ram0", AT91_CHIPSELECT_1, size,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
 }
 
 #if defined(CONFIG_DRIVER_NET_MACB)
diff --git a/arch/arm/mach-at91/at91sam9261_devices.c b/arch/arm/mach-at91/at91sam9261_devices.c
index 901f7e4..e00c3e0 100644
--- a/arch/arm/mach-at91/at91sam9261_devices.c
+++ b/arch/arm/mach-at91/at91sam9261_devices.c
@@ -21,30 +21,13 @@
 
 #include "generic.h"
 
-static struct resource sdram_dev_resources[] = {
-	[0] = {
-		.start	= AT91_CHIPSELECT_1,
-	},
-};
-
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram_dev = {
-	.id		= -1,
-	.name		= "mem",
-	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
-	.resource	= sdram_dev_resources,
-	.platform_data	= &ram_pdata,
-};
-
 void at91_add_device_sdram(u32 size)
 {
-	sdram_dev_resources[0].size = size;
-	register_device(&sdram_dev);
-	armlinux_add_dram(&sdram_dev);
+	struct device_d *sdram_dev;
+
+	sdram_dev = add_mem_device("ram0", AT91_CHIPSELECT_1, size,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
 }
 
 #if defined(CONFIG_NAND_ATMEL)
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index 74edb8d..752f789 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -21,30 +21,13 @@
 
 #include "generic.h"
 
-static struct resource sdram_dev_resources[] = {
-	[0] = {
-		.start	= AT91_CHIPSELECT_1,
-	},
-};
-
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram_dev = {
-	.id	  = -1,
-	.name     = "mem",
-	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
-	.resource	= sdram_dev_resources,
-	.platform_data	= &ram_pdata,
-};
-
 void at91_add_device_sdram(u32 size)
 {
-	sdram_dev_resources[0].size = size;
-	register_device(&sdram_dev);
-	armlinux_add_dram(&sdram_dev);
+	struct device_d *sdram_dev;
+
+	sdram_dev = add_mem_device("ram0", AT91_CHIPSELECT_1, size,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
 }
 
 #if defined(CONFIG_DRIVER_NET_MACB)
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index 9657649..8a02c8d 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -21,30 +21,13 @@
 
 #include "generic.h"
 
-static struct resource sdram_dev_resources[] = {
-	[0] = {
-		.start	= AT91_CHIPSELECT_6,
-	},
-};
-
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram_dev = {
-	.id		= -1,
-	.name		= "mem",
-	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
-	.resource	= sdram_dev_resources,
-	.platform_data	= &ram_pdata,
-};
-
 void at91_add_device_sdram(u32 size)
 {
-	sdram_dev_resources[0].size = size;
-	register_device(&sdram_dev);
-	armlinux_add_dram(&sdram_dev);
+	struct device_d *sdram_dev;
+
+	sdram_dev = add_mem_device("ram0", AT91_CHIPSELECT_6, size,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
 }
 
 #if defined(CONFIG_DRIVER_NET_MACB)
diff --git a/arch/arm/mach-nomadik/8815.c b/arch/arm/mach-nomadik/8815.c
index e742a09..e5adafd 100644
--- a/arch/arm/mach-nomadik/8815.c
+++ b/arch/arm/mach-nomadik/8815.c
@@ -31,30 +31,13 @@ static struct clk st8815_clk_48 = {
        .rate = 48 * 1000 * 1000,
 };
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct resource sdram_dev_resources[] = {
-	[0] = {
-		.start	= 0x00000000,
-	},
-};
-
-static struct device_d sdram_dev = {
-	.id = -1,
-	.name = "mem",
-	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
-	.resource	= sdram_dev_resources,
-	.platform_data = &ram_pdata,
-};
-
 void st8815_add_device_sdram(u32 size)
 {
-	sdram_dev_resources[0].size = size;
-	register_device(&sdram_dev);
-	armlinux_add_dram(&sdram_dev);
+	struct device_d *sdram_dev;
+
+	sdram_dev = add_mem_device("ram0", 0x00000000, size,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
 }
 
 static struct resource uart0_serial_resources[] = {
diff --git a/arch/arm/mach-versatile/core.c b/arch/arm/mach-versatile/core.c
index 5857d43..63cf4a5 100644
--- a/arch/arm/mach-versatile/core.c
+++ b/arch/arm/mach-versatile/core.c
@@ -42,23 +42,13 @@
 #include <mach/platform.h>
 #include <mach/init.h>
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram_dev = {
-	.id = -1,
-	.name = "mem",
-	.map_base = 0x00000000,
-	.platform_data	= &ram_pdata,
-};
-
 void versatile_add_sdram(u32 size)
 {
-	sdram_dev.size = size;
-	register_device(&sdram_dev);
-	armlinux_add_dram(&sdram_dev);
+	struct device_d *sdram_dev;
+
+	sdram_dev = add_mem_device("ram0", 0x00000000, size,
+				   IORESOURCE_MEM_WRITEABLE);
+	armlinux_add_dram(sdram_dev);
 }
 
 static struct device_d uart0_serial_device = {
diff --git a/arch/blackfin/boards/ipe337/ipe337.c b/arch/blackfin/boards/ipe337/ipe337.c
index 6953d08..81a6a6f 100644
--- a/arch/blackfin/boards/ipe337/ipe337.c
+++ b/arch/blackfin/boards/ipe337/ipe337.c
@@ -12,19 +12,6 @@ static struct device_d cfi_dev = {
 	.size     = 32 * 1024 * 1024,
 };
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram_dev = {
-	.id	  = -1,
-	.name     = "mem",
-	.map_base = 0x0,
-	.size     = 128 * 1024 * 1024,
-	.platform_data = &ram_pdata,
-};
-
 static struct device_d smc911x_dev = {
 	.id	  = -1,
 	.name     = "smc911x",
@@ -34,7 +21,8 @@ static struct device_d smc911x_dev = {
 
 static int ipe337_devices_init(void) {
 	register_device(&cfi_dev);
-	register_device(&sdram_dev);
+	add_mem_device("ram0", 0x0, 128 * 1024 * 1024,
+		       IORESOURCE_MEM_WRITEABLE);
 
 	/* Reset smc911x */
 	*pFIO0_DIR = (1<<12);
diff --git a/arch/nios2/boards/generic/generic.c b/arch/nios2/boards/generic/generic.c
index 5d6df8e..37adfaa 100644
--- a/arch/nios2/boards/generic/generic.c
+++ b/arch/nios2/boards/generic/generic.c
@@ -21,19 +21,6 @@ static struct device_d mac_dev = {
 	.platform_data = &phy_address,
 };
 
-static struct memory_platform_data ram_pdata = {
-	.name  = "ram0",
-	.flags = IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d ram_dev = {
-	.id            = -1,
-	.name          = "mem",
-	.map_base      = NIOS_SOPC_MEMORY_BASE,
-	.size          = NIOS_SOPC_MEMORY_SIZE,
-	.platform_data = &ram_pdata,
-};
-
 static struct device_d altera_serial_device = {
 	.id       = -1,
 	.name     = "altera_serial",
@@ -51,7 +38,8 @@ static struct device_d epcs_flash_device = {
 static int generic_devices_init(void)
 {
 	register_device(&cfi_dev);
-	register_device(&ram_dev);
+	add_mem_device("ram0", NIOS_SOPC_MEMORY_BASE, NIOS_SOPC_MEMORY_SIZE,
+		       IORESOURCE_MEM_WRITEABLE);
 	register_device(&mac_dev);
 	/*register_device(&epcs_flash_device);*/
 
diff --git a/arch/ppc/boards/pcm030/pcm030.c b/arch/ppc/boards/pcm030/pcm030.c
index fcb8404..3c23d83 100644
--- a/arch/ppc/boards/pcm030/pcm030.c
+++ b/arch/ppc/boards/pcm030/pcm030.c
@@ -44,19 +44,6 @@ struct device_d cfi_dev = {
 	.size     = 16 * 1024 * 1024,
 };
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = IORESOURCE_MEM_WRITEABLE,
-};
-
-struct device_d sdram_dev = {
-	.id	  = -1,
-	.name     = "mem",
-	.map_base = 0x0,
-	.size     = 64 * 1024 * 1024,
-	.platform_data = &ram_pdata,
-};
-
 static struct mpc5xxx_fec_platform_data fec_info = {
 	.xcv_type = MII100,
 };
@@ -71,7 +58,8 @@ struct device_d eth_dev = {
 static int devices_init (void)
 {
 	register_device(&cfi_dev);
-	register_device(&sdram_dev);
+	add_mem_device("ram0", 0x0, 64 * 1024 * 1024,
+		       IORESOURCE_MEM_WRITEABLE);
 	register_device(&eth_dev);
 
 	devfs_add_partition("nor0", 0x00f00000, 0x40000, PARTITION_FIXED, "self0");
diff --git a/arch/x86/boards/x86_generic/generic_pc.c b/arch/x86/boards/x86_generic/generic_pc.c
index efd081d..fa2975f 100644
--- a/arch/x86/boards/x86_generic/generic_pc.c
+++ b/arch/x86/boards/x86_generic/generic_pc.c
@@ -30,19 +30,6 @@
 #include <asm/syslib.h>
 #include <ns16550.h>
 
-static struct memory_platform_data ram_pdata = {
-	.name		= "ram0",
-	.flags		= IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d sdram_dev = {
-	.id		= -1,
-	.name		= "mem",
-	.size		= 16 * 1024 * 1024,
-	.map_base	= 0,
-	.platform_data	= &ram_pdata,
-};
-
 static struct device_d bios_disk_dev = {
 	.id		= -1,
 	.name		= "biosdrive",
@@ -70,7 +57,8 @@ static int devices_init(void)
 	sdram_dev.size = bios_get_memsize();	/* extended memory only */
 	sdram_dev.size <<= 10;
 
-	register_device(&sdram_dev);
+	add_mem_device("ram0", 0x0, 16 * 1024 * 1024,
+		       IORESOURCE_MEM_WRITEABLE);
 	register_device(&bios_disk_dev);
 
 	if (pers_env_size != PATCH_AREA_PERS_SIZE_UNUSED) {
diff --git a/commands/mem.c b/commands/mem.c
index 927b7cc..a5eea36 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -1,14 +1,12 @@
 /*
- * (C) Copyright 2000
- * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
+ * Copyright (c) 2011 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
  *
  * See file CREDITS for list of people who contributed to this
  * project.
  *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
  *
  * This program is distributed in the hope that it will be useful,
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
@@ -17,7 +15,7 @@
  *
  * You should have received a copy of the GNU General Public License
  * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
  * MA 02111-1307 USA
  */
 
@@ -589,14 +587,13 @@ static struct file_operations memops = {
 
 static int mem_probe(struct device_d *dev)
 {
-	struct memory_platform_data *pdata = dev->platform_data;
 	struct cdev *cdev;
 
 	cdev = xzalloc(sizeof (*cdev));
 	dev->priv = cdev;
 
-	cdev->name = pdata->name;
-	cdev->size = dev->size;
+	cdev->name = (char*)dev->resource[0].name;
+	cdev->size = (unsigned long)dev->resource[0].size;
 	cdev->ops = &memops;
 	cdev->dev = dev;
 
@@ -610,19 +607,6 @@ static struct driver_d mem_drv = {
 	.probe = mem_probe,
 };
 
-static struct memory_platform_data mem_dev_pdata = {
-	.name = "mem",
-	.flags = IORESOURCE_MEM_WRITEABLE,
-};
-
-static struct device_d mem_dev = {
-	.id = -1,
-	.name  = "mem",
-	.map_base = 0,
-	.size   = ~0, /* FIXME: should be 0x100000000, ahem... */
-	.platform_data = &mem_dev_pdata,
-};
-
 static int mem_init(void)
 {
 	rw_buf = malloc(RW_BUF_SIZE);
@@ -631,8 +615,8 @@ static int mem_init(void)
 		return -1;
 	}
 
+	add_mem_device("mem", 0, ~0, IORESOURCE_MEM_WRITEABLE);
 	register_driver(&mem_drv);
-	register_device(&mem_dev);
 
 	return 0;
 }
diff --git a/common/Makefile b/common/Makefile
index 9fed2ae..27aebae 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -9,6 +9,7 @@ obj-$(CONFIG_POLLER)		+= poller.o
 obj-$(CONFIG_BLOCK)		+= block.o
 
 obj-y += memory.o
+obj-y += mem.o
 obj-$(CONFIG_MALLOC_DLMALLOC) += dlmalloc.o
 obj-$(CONFIG_MALLOC_DUMMY) += dummy_malloc.o
 obj-y += clock.o
diff --git a/common/mem.c b/common/mem.c
new file mode 100644
index 0000000..7b0020b
--- /dev/null
+++ b/common/mem.c
@@ -0,0 +1,46 @@
+/*
+ * (C) Copyright 2000
+ * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <xfuncs.h>
+
+struct device_d *add_mem_device(const char *name, resource_size_t start,
+		resource_size_t size, unsigned int flags)
+{
+	struct device_d *dev;
+
+	dev = xzalloc(sizeof(*dev));
+	strcpy(dev->name, "mem");
+	dev->id = -1;
+	dev->resource = xzalloc(sizeof(struct resource));
+	dev->num_resources = 1;
+	dev->resource[0].name = xstrdup(name);
+	dev->resource[0].start = start;
+	dev->resource[0].size = size;
+	dev->resource[0].flags = IORESOURCE_MEM | flags;
+
+	register_device(dev);
+
+	return dev;
+}
diff --git a/common/startup.c b/common/startup.c
index 2e28cb2..bf67aef 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -82,21 +82,11 @@ void early_init (void)
 #ifdef CONFIG_DEFAULT_ENVIRONMENT
 #include <generated/barebox_default_env.h>
 
-static struct memory_platform_data default_env_platform_data = {
-	.name = "defaultenv",
-};
-
-static struct device_d default_env_dev = {
-	.id		= -1,
-	.name		= "mem",
-	.platform_data	= &default_env_platform_data,
-};
-
 static int register_default_env(void)
 {
-	default_env_dev.map_base = (unsigned long)default_environment;
-	default_env_dev.size = sizeof(default_environment);
-	register_device(&default_env_dev);
+	add_mem_device("defaultenv", (unsigned long)default_environment,
+		       sizeof(default_environment),
+		       IORESOURCE_MEM_WRITEABLE);
 	return 0;
 }
 
diff --git a/include/driver.h b/include/driver.h
index 05c3991..11c42fe 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -202,6 +202,12 @@ static inline void __iomem *dev_request_mem_region(struct device_d *dev, int num
 	return dev_get_mem_region(dev, num);
 }
 
+/*
+ * register a memory device
+ */
+struct device_d *add_mem_device(const char *name, resource_size_t start,
+		resource_size_t size, unsigned int flags);
+
 /* linear list over all available devices
  */
 extern struct list_head device_list;
@@ -349,10 +355,5 @@ int devfs_add_partition(const char *devname, unsigned long offset, size_t size,
 		int flags, const char *name);
 int devfs_del_partition(const char *name);
 
-struct memory_platform_data {
-	char *name;
-	unsigned int flags;
-};
-
 #endif /* DRIVER_H */
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
