Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PIibK-0003CA-Pk
	for barebox@lists.infradead.org; Wed, 17 Nov 2010 14:03:08 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 17 Nov 2010 14:59:25 +0100
Message-Id: <1290002365-22712-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20101112180228.GC13661@game.jcrosoft.org>
References: <20101112180228.GC13661@game.jcrosoft.org>
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
Subject: [PATCH 2/2] mem: convert to DEVFS_MEM_BAREBOX_ONLY for
	freescale-mx25-3-stack/pcm037/pvm038
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/freescale-mx25-3-stack/3stack.c |   35 ++++++++---------------
 arch/arm/boards/pcm037/pcm037.c                 |   33 +++++++--------------
 arch/arm/boards/pcm038/pcm038.c                 |   23 ++++-----------
 3 files changed, 29 insertions(+), 62 deletions(-)

diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index cb9ce79..434bd7f 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -113,8 +113,14 @@ static struct fec_platform_data fec_info = {
 	.phy_addr	= 1,
 };
 
-static struct resource sdram0_dev_resources[] = {
+static struct resource sdram_dev_resources[] = {
 	[0] = {
+		.name	= "sram0",
+		.start	= 0x78000000,
+		.size	= 128 * 1024,
+		.flags	= DEVFS_RDWR | DEVFS_MEM_BAREBOX_ONLY,
+	},
+	[1] = {
 		.name	= "ram0",
 		.start	= IMX_SDRAM_CS0,
 #if defined CONFIG_FREESCALE_MX25_3STACK_SDRAM_64MB_DDR2
@@ -128,27 +134,11 @@ static struct resource sdram0_dev_resources[] = {
 	},
 };
 
-static struct device_d sdram0_dev = {
-	.id	  = -1,
-	.name     = "mem",
-	.num_resources	= ARRAY_SIZE(sdram0_dev_resources),
-	.resource	= sdram0_dev_resources,
-};
-
-static struct resource sram0_dev_resources[] = {
-	[0] = {
-		.name	= "sram0",
-		.start	= 0x78000000,
-		.size	= 128 * 1024,
-		.flags	= DEVFS_RDWR,
-	},
-};
-
-static struct device_d sram0_dev = {
+static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.num_resources	= ARRAY_SIZE(sram0_dev_resources),
-	.resource	= sram0_dev_resources,
+	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
+	.resource	= sdram_dev_resources,
 };
 
 struct imx_nand_platform_data nand_info = {
@@ -266,13 +256,12 @@ static int imx25_devices_init(void)
 	devfs_add_partition("nand0", 0x40000, 0x20000, PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
-	register_device(&sdram0_dev);
-	register_device(&sram0_dev);
+	register_device(&sdram_dev);
 
 	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
 	imx25_add_i2c0(NULL);
 
-	armlinux_add_dram(&sdram0_dev);
+	armlinux_add_dram(&sdram_dev);
 	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_MX25_3DS);
 	armlinux_set_serial(imx_uid());
diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index a1783af..1045950 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -58,26 +58,6 @@ static struct device_d cfi_dev = {
 };
 
 /*
- * up to 2MiB static RAM type memory, connected
- * to CS4, data width is 16 bit
- */
-static struct resource sram_dev_resources[] = {
-	[0] = {
-		.name	= "sram0",
-		.start	= IMX_CS4_BASE,
-		.size	= IMX_CS4_RANGE,	/* area size */
-		.flags	= DEVFS_RDWR,
-	},
-};
-
-static struct device_d sram_dev = {
-	.id	  = -1,
-	.name     = "mem",
-	.num_resources	= ARRAY_SIZE(sram_dev_resources),
-	.resource	= sram_dev_resources,
-};
-
-/*
  * SMSC 9217 network controller
  * connected to CS line 1 and interrupt line
  * GPIO3, data width is 16 bit
@@ -109,14 +89,24 @@ static struct device_d network_dev = {
 #endif
 
 static struct resource sdram_dev_resources[] = {
+/*
+ * up to 2MiB static RAM type memory, connected
+ * to CS4, data width is 16 bit
+ */
 	[0] = {
+		.name	= "sram0",
+		.start	= IMX_CS4_BASE,
+		.size	= IMX_CS4_RANGE,	/* area size */
+		.flags	= DEVFS_RDWR | DEVFS_MEM_BAREBOX_ONLY,
+	},
+	[1] = {
 		.name	= "ram0",
 		.start	= IMX_SDRAM_CS0,
 		.size	= SDRAM0 * 1024 * 1024,	/* fix size */
 		.flags	= DEVFS_RDWR,
 	},
 #ifndef CONFIG_PCM037_SDRAM_BANK1_NONE
-	[1] = {
+	[2] = {
 		.name	= "ram1",
 		.start	= IMX_SDRAM_CS1,
 		.size	= SDRAM1 * 1024 * 1024,	/* fix size */
@@ -313,7 +303,6 @@ static int imx31_devices_init(void)
 
 	protect_file("/dev/env0", 1);
 
-	register_device(&sram_dev);
 	imx31_add_nand(&nand_info);
 	register_device(&network_dev);
 
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 1306f27..401b161 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -63,6 +63,12 @@ static struct device_d cfi_dev = {
 
 static struct resource sdram_dev_resources[] = {
 	[0] = {
+		.name	= "sram0",
+		.start	= 0xc8000000,
+		.size	= 512 * 1024, /* Can be up to 2MiB */
+		.flags	= DEVFS_RDWR | DEVFS_MEM_BAREBOX_ONLY,
+	},
+	[1] = {
 		.name 	= "ram0",
 		.start	= 0xa0000000,
 		.size	= 128 * 1024 * 1024,
@@ -77,22 +83,6 @@ static struct device_d sdram_dev = {
 	.resource	= sdram_dev_resources,
 };
 
-static struct resource sram_dev_resources[] = {
-	[0] = {
-		.name	= "sram0",
-		.start	= 0xc8000000,
-		.size	= 512 * 1024, /* Can be up to 2MiB */
-		.flags	= DEVFS_RDWR,
-	},
-};
-
-static struct device_d sram_dev = {
-	.id	  = -1,
-	.name     = "mem",
-	.num_resources	= ARRAY_SIZE(sram_dev_resources),
-	.resource	= sram_dev_resources,
-};
-
 static struct fec_platform_data fec_info = {
 	.xcv_type = MII100,
 	.phy_addr = 1,
@@ -320,7 +310,6 @@ static int pcm038_devices_init(void)
 	register_device(&cfi_dev);
 	imx27_add_nand(&nand_info);
 	register_device(&sdram_dev);
-	register_device(&sram_dev);
 	imx27_add_fb(&pcm038_fb_data);
 
 #ifdef CONFIG_USB
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
