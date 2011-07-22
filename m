Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo3.mail-out.ovh.net ([87.98.184.158]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QkI4s-000701-5W
	for barebox@lists.infradead.org; Fri, 22 Jul 2011 15:55:56 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 070A710140E4
	for <barebox@lists.infradead.org>;
	Fri, 22 Jul 2011 17:56:32 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 22 Jul 2011 17:38:39 +0200
Message-Id: <1311349119-30197-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1311349119-30197-1-git-send-email-plagnioj@jcrosoft.com>
References: <1311349119-30197-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 6/6] resource: introduce add_cfi_device to register simple cfi
	device
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91rm9200ek/init.c               |    3 +--
 arch/arm/boards/at91sam9263ek/init.c              |    3 +--
 arch/arm/boards/edb93xx/edb93xx.c                 |    9 +--------
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |   19 ++-----------------
 arch/arm/boards/freescale-mx35-3-stack/3stack.c   |    9 +--------
 arch/arm/boards/imx21ads/imx21ads.c               |    9 +--------
 arch/arm/boards/imx27ads/imx27ads.c               |    9 +--------
 arch/arm/boards/mmccpu/init.c                     |    3 +--
 arch/arm/boards/netx/netx.c                       |    9 +--------
 arch/arm/boards/pcm037/pcm037.c                   |   17 +++++------------
 arch/arm/boards/pcm038/pcm038.c                   |    9 +--------
 arch/arm/boards/pcm043/pcm043.c                   |   17 +++++------------
 arch/arm/boards/pm9261/init.c                     |    3 +--
 arch/arm/boards/pm9263/init.c                     |    3 +--
 arch/arm/boards/scb9328/scb9328.c                 |   10 +---------
 arch/arm/boards/versatile/versatilepb.c           |    9 +--------
 arch/blackfin/boards/ipe337/ipe337.c              |    9 +--------
 arch/nios2/boards/generic/generic.c               |    9 +--------
 arch/ppc/boards/pcm030/pcm030.c                   |    9 +--------
 include/driver.h                                  |    7 +++++++
 20 files changed, 35 insertions(+), 140 deletions(-)

diff --git a/arch/arm/boards/at91rm9200ek/init.c b/arch/arm/boards/at91rm9200ek/init.c
index 3ef41a2..9b58996 100644
--- a/arch/arm/boards/at91rm9200ek/init.c
+++ b/arch/arm/boards/at91rm9200ek/init.c
@@ -50,8 +50,7 @@ static int at91rm9200ek_devices_init(void)
 	at91_add_device_sdram(64 * 1024 * 1024);
 	at91_add_device_eth(&ether_pdata);
 
-	add_generic_device("cfi_flash", 0, NULL, AT91_CHIPSELECT_0, 0,
-			   IORESOURCE_MEM, NULL);
+	add_cfi_flash_device(0, AT91_CHIPSELECT_0, 0, 0);
 
 #if defined(CONFIG_DRIVER_CFI) || defined(CONFIG_DRIVER_CFI_OLD)
 	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self");
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index 655d46a..036a1c4 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -120,8 +120,7 @@ static int at91sam9263ek_devices_init(void)
 	at91_add_device_sdram(64 * 1024 * 1024);
 	ek_add_device_nand();
 	at91_add_device_eth(&macb_pdata);
-	add_generic_device("cfi_flash", 0, NULL, AT91_CHIPSELECT_0, 8 * 1024 * 1024,
-			   IORESOURCE_MEM, NULL);
+	add_cfi_flash_device(0, AT91_CHIPSELECT_0, 8 * 1024 * 1024, 0);
 	ek_add_device_mci();
 
 #if defined(CONFIG_DRIVER_CFI) || defined(CONFIG_DRIVER_CFI_OLD)
diff --git a/arch/arm/boards/edb93xx/edb93xx.c b/arch/arm/boards/edb93xx/edb93xx.c
index 49a01d6..b169db6 100644
--- a/arch/arm/boards/edb93xx/edb93xx.c
+++ b/arch/arm/boards/edb93xx/edb93xx.c
@@ -38,13 +38,6 @@
  * Up to 32MiB NOR type flash, connected to
  * CS line 6, data width is 16 bit
  */
-static struct device_d cfi_dev = {
-	.id	  = -1,
-	.name     = "cfi_flash",
-	.map_base = 0x60000000,
-	.size     = EDB93XX_CFI_FLASH_SIZE,
-};
-
 static struct device_d eth_dev = {
 	.id	  = -1,
 	.name     = "ep93xx_eth",
@@ -54,7 +47,7 @@ static int ep93xx_devices_init(void)
 {
 	struct device_d *sdram_dev;
 
-	register_device(&cfi_dev);
+	add_cfi_flash_device(-1, 0x60000000, EDB93XX_CFI_FLASH_SIZE, 0);
 
 	/*
 	 * Create partitions that should be
diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index 92424e6..4e69bbc 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -48,21 +48,6 @@
 #include <mach/iomux-mx27.h>
 #include <mach/devices-imx27.h>
 
-static struct device_d cfi_dev = {
-	.id	  = -1,
-	.name     = "cfi_flash",
-	.map_base = 0xC0000000,
-	.size     = 32 * 1024 * 1024,
-};
-#ifdef CONFIG_EUKREA_CPUIMX27_NOR_64MB
-static struct device_d cfi_dev1 = {
-	.id	  = -1,
-	.name     = "cfi_flash",
-	.map_base = 0xC2000000,
-	.size     = 32 * 1024 * 1024,
-};
-#endif
-
 #if defined CONFIG_EUKREA_CPUIMX27_SDRAM_256MB
 #define SDRAM0	256
 #elif defined CONFIG_EUKREA_CPUIMX27_SDRAM_128MB
@@ -254,9 +239,9 @@ static int eukrea_cpuimx27_devices_init(void)
 	for (i = 0; i < ARRAY_SIZE(mode); i++)
 		imx_gpio_mode(mode[i]);
 
-	register_device(&cfi_dev);
+	add_cfi_flash_device(-1, 0xC0000000, 32 * 1024 * 1024, 0);
 #ifdef CONFIG_EUKREA_CPUIMX27_NOR_64MB
-	register_device(&cfi_dev1);
+	add_cfi_flash_device(-1, 0xC2000000, 32 * 1024 * 1024, 0);
 #endif
 	imx27_add_nand(&nand_info);
 	sdram_dev = add_mem_device("ram0", 0xa0000000, SDRAM0 * 1024 * 1024,
diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
index b3a03cc..9113650 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -59,13 +59,6 @@
 #define MX35PDK_BOARD_REV_1		0
 #define MX35PDK_BOARD_REV_2		1
 
-static struct device_d cfi_dev = {
-	.id		= -1,
-	.name		= "cfi_flash",
-	.map_base	= IMX_CS0_BASE,
-	.size		= 64 * 1024 * 1024,
-};
-
 static struct fec_platform_data fec_info = {
 	.xcv_type	= MII100,
 	.phy_addr	= 0x1F,
@@ -170,7 +163,7 @@ static int f3s_devices_init(void)
 	 * This platform supports NOR and NAND
 	 */
 	imx35_add_nand(&nand_info);
-	register_device(&cfi_dev);
+	add_cfi_flash_device(-1, IMX_CS0_BASE, 64 * 1024 * 1024, 0);
 
 	switch ((reg >> 25) & 0x3) {
 	case 0x01:		/* NAND is the source */
diff --git a/arch/arm/boards/imx21ads/imx21ads.c b/arch/arm/boards/imx21ads/imx21ads.c
index ab47a8d..854f7ab 100644
--- a/arch/arm/boards/imx21ads/imx21ads.c
+++ b/arch/arm/boards/imx21ads/imx21ads.c
@@ -41,13 +41,6 @@
 #define MX21ADS_IO_REG    0xCC800000
 #define MX21ADS_IO_LCDON  (1 << 9)
 
-static struct device_d cfi_dev = {
-	.id	  = -1,
-	.name     = "cfi_flash",
-	.map_base = 0xC8000000,
-	.size     = 32 * 1024 * 1024,
-};
-
 struct imx_nand_platform_data nand_info = {
 	.width = 1,
 	.hw_ecc = 1,
@@ -171,7 +164,7 @@ static int mx21ads_devices_init(void)
 	for (i = 0; i < ARRAY_SIZE(mode); i++)
 		imx_gpio_mode(mode[i]);
 
-	register_device(&cfi_dev);
+	add_cfi_flash_device(-1, 0xC8000000, 32 * 1024 * 1024, 0);
 	sdram_dev = add_mem_device("ram0", 0xc0000000, 64 * 1024 * 1024,
 				   IORESOURCE_MEM_WRITEABLE);
 	armlinux_add_dram(sdram_dev);
diff --git a/arch/arm/boards/imx27ads/imx27ads.c b/arch/arm/boards/imx27ads/imx27ads.c
index 8aaf3a2..db49aac 100644
--- a/arch/arm/boards/imx27ads/imx27ads.c
+++ b/arch/arm/boards/imx27ads/imx27ads.c
@@ -34,13 +34,6 @@
 #include <mach/iomux-mx27.h>
 #include <mach/devices-imx27.h>
 
-static struct device_d cfi_dev = {
-	.id	  = -1,
-	.name     = "cfi_flash",
-	.map_base = 0xC0000000,
-	.size     = 32 * 1024 * 1024,
-};
-
 static struct fec_platform_data fec_info = {
 	.xcv_type = MII100,
 	.phy_addr = 1,
@@ -114,7 +107,7 @@ static int mx27ads_devices_init(void)
 	for (i = 0; i < ARRAY_SIZE(mode); i++)
 		imx_gpio_mode(mode[i]);
 
-	register_device(&cfi_dev);
+	add_cfi_flash_device(-1, 0xC0000000, 32 * 1024 * 1024, 0);
 
 	sdram_dev = add_mem_device("ram0", 0xa0000000, 128 * 1024 * 1024,
 				   IORESOURCE_MEM_WRITEABLE);
diff --git a/arch/arm/boards/mmccpu/init.c b/arch/arm/boards/mmccpu/init.c
index 85a18e0..eb6b490 100644
--- a/arch/arm/boards/mmccpu/init.c
+++ b/arch/arm/boards/mmccpu/init.c
@@ -54,8 +54,7 @@ static int mmccpu_devices_init(void)
 
 	at91_add_device_sdram(128 * 1024 * 1024);
 	at91_add_device_eth(&macb_pdata);
-	add_generic_device("cfi_flash", 0, NULL, AT91_CHIPSELECT_0, 0,
-			   IORESOURCE_MEM, NULL);
+	add_cfi_flash_device(0, AT91_CHIPSELECT_0, 0, 0);
 
 	devfs_add_partition("nor0", 0x00000, 256 * 1024, PARTITION_FIXED, "self0");
 	devfs_add_partition("nor0", 0x40000, 128 * 1024, PARTITION_FIXED, "env0");
diff --git a/arch/arm/boards/netx/netx.c b/arch/arm/boards/netx/netx.c
index 5e25b94..f3be348 100644
--- a/arch/arm/boards/netx/netx.c
+++ b/arch/arm/boards/netx/netx.c
@@ -30,13 +30,6 @@
 #include <generated/mach-types.h>
 #include <mach/netx-eth.h>
 
-static struct device_d cfi_dev = {
-	.id	  = -1,
-	.name     = "cfi_flash",
-	.map_base = 0xC0000000,
-	.size     = 32 * 1024 * 1024,
-};
-
 struct netx_eth_platform_data eth0_data = {
 	.xcno = 0,
 };
@@ -60,7 +53,7 @@ static struct device_d netx_eth_dev1 = {
 static int netx_devices_init(void) {
 	struct device_d *sdram_dev;
 
-	register_device(&cfi_dev);
+	add_cfi_flash_device(-1, 0xC0000000, 32 * 1024 * 1024, 0);
 
 	sdram_dev = add_mem_device("ram0", 0x80000000, 64 * 1024 * 1024,
 				   IORESOURCE_MEM_WRITEABLE);
diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index 7895059..6e20d1d 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -40,17 +40,6 @@
 #include <mach/devices-imx31.h>
 
 /*
- * Up to 32MiB NOR type flash, connected to
- * CS line 0, data width is 16 bit
- */
-static struct device_d cfi_dev = {
-	.id	  = -1,
-	.name     = "cfi_flash",
-	.map_base = IMX_CS0_BASE,
-	.size     = 32 * 1024 * 1024,	/* area size */
-};
-
-/*
  * SMSC 9217 network controller
  * connected to CS line 1 and interrupt line
  * GPIO3, data width is 16 bit
@@ -227,7 +216,11 @@ static int imx31_devices_init(void)
 	__REG(CSCR_L(5)) = 0x444A0301;
 	__REG(CSCR_A(5)) = 0x44443302;
 
-	register_device(&cfi_dev);
+	/*
+	 * Up to 32MiB NOR type flash, connected to
+	 * CS line 0, data width is 16 bit
+	 */
+	add_cfi_flash_device(-1, IMX_CS0_BASE, 32 * 1024 * 1024, 0);
 
 	/*
 	 * Create partitions that should be
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 046fbd5..2f87b12 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -47,13 +47,6 @@
 
 #include "pll.h"
 
-static struct device_d cfi_dev = {
-	.id	  = -1,
-	.name     = "cfi_flash",
-	.map_base = 0xC0000000,
-	.size     = 32 * 1024 * 1024,
-};
-
 static struct fec_platform_data fec_info = {
 	.xcv_type = MII100,
 	.phy_addr = 1,
@@ -267,7 +260,7 @@ static int pcm038_devices_init(void)
 	spi_register_board_info(pcm038_spi_board_info, ARRAY_SIZE(pcm038_spi_board_info));
 	imx27_add_spi0(&pcm038_spi_0_data);
 
-	register_device(&cfi_dev);
+	add_cfi_flash_device(-1, 0xC0000000, 32 * 1024 * 1024, 0);
 	imx27_add_nand(&nand_info);
 	sdram_dev = add_mem_device("ram0", 0xa0000000, 128 * 1024 * 1024,
 				   IORESOURCE_MEM_WRITEABLE);
diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
index 0cfd675..3bd6402 100644
--- a/arch/arm/boards/pcm043/pcm043.c
+++ b/arch/arm/boards/pcm043/pcm043.c
@@ -46,17 +46,6 @@
 #include <mach/iomux-mx35.h>
 #include <mach/devices-imx35.h>
 
-/*
- * Up to 32MiB NOR type flash, connected to
- * CS line 0, data width is 16 bit
- */
-static struct device_d cfi_dev = {
-	.id	  = -1,
-	.name     = "cfi_flash",
-	.map_base = IMX_CS0_BASE,
-	.size     = 32 * 1024 * 1024,	/* area size */
-};
-
 static struct fec_platform_data fec_info = {
 	.xcv_type = MII100,
 };
@@ -158,7 +147,11 @@ static int imx35_devices_init(void)
 	 * This platform supports NOR and NAND
 	 */
 	imx35_add_nand(&nand_info);
-	register_device(&cfi_dev);
+	/*
+	 * Up to 32MiB NOR type flash, connected to
+	 * CS line 0, data width is 16 bit
+	 */
+	add_cfi_flash_device(-1, IMX_CS0_BASE, 32 * 1024 * 1024, 0);
 
 	if ((reg & 0xc00) == 0x800) {   /* reset mode: external boot */
 		switch ( (reg >> 25) & 0x3) {
diff --git a/arch/arm/boards/pm9261/init.c b/arch/arm/boards/pm9261/init.c
index 38e4350..1059aec 100644
--- a/arch/arm/boards/pm9261/init.c
+++ b/arch/arm/boards/pm9261/init.c
@@ -151,8 +151,7 @@ static int pm9261_devices_init(void)
 {
 	at91_add_device_sdram(64 * 1024 * 1024);
 	pm_add_device_nand();
-	add_generic_device("cfi_flash", 0, NULL, AT91_CHIPSELECT_0, 4 * 1024 * 1024,
-			   IORESOURCE_MEM, NULL);
+	add_cfi_flash_device(0, AT91_CHIPSELECT_0, 4 * 1024 * 1024, 0);
 
 	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self");
 	devfs_add_partition("nor0", 0x40000, 0x10000, PARTITION_FIXED, "env0");
diff --git a/arch/arm/boards/pm9263/init.c b/arch/arm/boards/pm9263/init.c
index 9f86d67..418b804 100644
--- a/arch/arm/boards/pm9263/init.c
+++ b/arch/arm/boards/pm9263/init.c
@@ -104,8 +104,7 @@ static int pm9263_devices_init(void)
 	at91_add_device_sdram(64 * 1024 * 1024);
 	pm_add_device_nand();
 	at91_add_device_eth(&macb_pdata);
-	add_generic_device("cfi_flash", 0, NULL, AT91_CHIPSELECT_0, 4 * 1024 * 1024,
-			   IORESOURCE_MEM, NULL);
+	add_cfi_flash_device(0, AT91_CHIPSELECT_0, 4 * 1024 * 1024, 0);
 
 	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
 	devfs_add_partition("nor0", 0x40000, 0x10000, PARTITION_FIXED, "env0");
diff --git a/arch/arm/boards/scb9328/scb9328.c b/arch/arm/boards/scb9328/scb9328.c
index 2fe8236..d49eaff 100644
--- a/arch/arm/boards/scb9328/scb9328.c
+++ b/arch/arm/boards/scb9328/scb9328.c
@@ -33,14 +33,6 @@
 #include <dm9000.h>
 #include <led.h>
 
-static struct device_d cfi_dev = {
-	.id	  = -1,
-	.name     = "cfi_flash",
-
-	.map_base = 0x10000000,
-	.size     = 16 * 1024 * 1024,
-};
-
 static struct dm9000_platform_data dm9000_data = {
 	.buswidth = DM9000_WIDTH_16,
 	.srom     = 1,
@@ -110,7 +102,7 @@ static int scb9328_devices_init(void)
 	CS5U = 0x00008400;
 	CS5L = 0x00000D03;
 
-	register_device(&cfi_dev);
+	add_cfi_flash_device(-1, 0x10000000, 16 * 1024 * 1024, 0);
 	sdram_dev = add_mem_device("ram0", 0x08000000, 16 * 1024 * 1024,
 				   IORESOURCE_MEM_WRITEABLE);
 	armlinux_add_dram(sdram_dev);
diff --git a/arch/arm/boards/versatile/versatilepb.c b/arch/arm/boards/versatile/versatilepb.c
index 5568f21..830be93 100644
--- a/arch/arm/boards/versatile/versatilepb.c
+++ b/arch/arm/boards/versatile/versatilepb.c
@@ -33,13 +33,6 @@
 #include <partition.h>
 #include <sizes.h>
 
-static struct device_d cfi_dev = {
-	.id		= -1,
-	.name		= "cfi_flash",
-	.map_base	= VERSATILE_FLASH_BASE,
-	.size		= VERSATILE_FLASH_SIZE,
-};
-
 static int vpb_console_init(void)
 {
 	versatile_register_uart(0);
@@ -58,7 +51,7 @@ static int vpb_devices_init(void)
 {
 	versatile_add_sdram(64 * 1024 *1024);
 
-	register_device(&cfi_dev);
+	add_cfi_flash_device(-1, VERSATILE_FLASH_BASE, VERSATILE_FLASH_SIZE, 0);
 	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self");
 	devfs_add_partition("nor0", 0x40000, 0x20000, PARTITION_FIXED, "env0");
 
diff --git a/arch/blackfin/boards/ipe337/ipe337.c b/arch/blackfin/boards/ipe337/ipe337.c
index 81a6a6f..4430f3b 100644
--- a/arch/blackfin/boards/ipe337/ipe337.c
+++ b/arch/blackfin/boards/ipe337/ipe337.c
@@ -5,13 +5,6 @@
 #include <partition.h>
 #include <fs.h>
 
-static struct device_d cfi_dev = {
-	.id	  = -1,
-	.name     = "cfi_flash",
-	.map_base = 0x20000000,
-	.size     = 32 * 1024 * 1024,
-};
-
 static struct device_d smc911x_dev = {
 	.id	  = -1,
 	.name     = "smc911x",
@@ -20,7 +13,7 @@ static struct device_d smc911x_dev = {
 };
 
 static int ipe337_devices_init(void) {
-	register_device(&cfi_dev);
+	add_cfi_flash_device(-1, 0x20000000, 32 * 1024 * 1024, 0);
 	add_mem_device("ram0", 0x0, 128 * 1024 * 1024,
 		       IORESOURCE_MEM_WRITEABLE);
 
diff --git a/arch/nios2/boards/generic/generic.c b/arch/nios2/boards/generic/generic.c
index 37adfaa..089715b 100644
--- a/arch/nios2/boards/generic/generic.c
+++ b/arch/nios2/boards/generic/generic.c
@@ -4,13 +4,6 @@
 #include <partition.h>
 #include <fs.h>
 
-static struct device_d cfi_dev = {
-	.id       = -1,
-	.name     = "cfi_flash",
-	.map_base = NIOS_SOPC_FLASH_BASE,
-	.size     = NIOS_SOPC_FLASH_SIZE,
-};
-
 static int phy_address = 1;
 
 static struct device_d mac_dev = {
@@ -37,7 +30,7 @@ static struct device_d epcs_flash_device = {
 
 static int generic_devices_init(void)
 {
-	register_device(&cfi_dev);
+	add_cfi_flash_device(-1, NIOS_SOPC_FLASH_BASE, NIOS_SOPC_FLASH_SIZE, 0);
 	add_mem_device("ram0", NIOS_SOPC_MEMORY_BASE, NIOS_SOPC_MEMORY_SIZE,
 		       IORESOURCE_MEM_WRITEABLE);
 	register_device(&mac_dev);
diff --git a/arch/ppc/boards/pcm030/pcm030.c b/arch/ppc/boards/pcm030/pcm030.c
index 3c23d83..0f09d3e 100644
--- a/arch/ppc/boards/pcm030/pcm030.c
+++ b/arch/ppc/boards/pcm030/pcm030.c
@@ -37,13 +37,6 @@
 #include <mem_malloc.h>
 #include <reloc.h>
 
-struct device_d cfi_dev = {
-	.id	  = -1,
-	.name     = "cfi_flash",
-	.map_base = 0xff000000,
-	.size     = 16 * 1024 * 1024,
-};
-
 static struct mpc5xxx_fec_platform_data fec_info = {
 	.xcv_type = MII100,
 };
@@ -57,7 +50,7 @@ struct device_d eth_dev = {
 
 static int devices_init (void)
 {
-	register_device(&cfi_dev);
+	add_cfi_flash_device(-1, 0xff000000, 16 * 1024 * 1024, 0);
 	add_mem_device("ram0", 0x0, 64 * 1024 * 1024,
 		       IORESOURCE_MEM_WRITEABLE);
 	register_device(&eth_dev);
diff --git a/include/driver.h b/include/driver.h
index 738cfae..af34803 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -220,6 +220,13 @@ static inline struct device_d *add_mem_device(const char *name, resource_size_t
 				  IORESOURCE_MEM | flags, NULL);
 }
 
+static inline struct device_d *add_cfi_flash_device(int id, resource_size_t start,
+		resource_size_t size, unsigned int flags)
+{
+	return add_generic_device("cfi_flash", id, NULL, start, size,
+				  IORESOURCE_MEM | flags, NULL);
+}
+
 /* linear list over all available devices
  */
 extern struct list_head device_list;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
