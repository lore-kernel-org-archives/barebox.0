Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QmplD-0005xl-Pl
	for barebox@lists.infradead.org; Fri, 29 Jul 2011 16:18:08 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 4BF49FFA717
	for <barebox@lists.infradead.org>;
	Fri, 29 Jul 2011 18:18:44 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 29 Jul 2011 17:59:57 +0200
Message-Id: <1311955207-22372-20-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110729155356.GF25658@game.jcrosoft.org>
References: <20110729155356.GF25658@game.jcrosoft.org>
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
Subject: [PATCH 13/23] s3c/boards: switch to resources
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/a9m2410/a9m2410.c   |   40 +++++++++-------------------------
 arch/arm/boards/a9m2440/a9m2440.c   |   40 +++++++++-------------------------
 arch/arm/boards/mini2440/mini2440.c |   36 +++++++------------------------
 3 files changed, 30 insertions(+), 86 deletions(-)

diff --git a/arch/arm/boards/a9m2410/a9m2410.c b/arch/arm/boards/a9m2410/a9m2410.c
index 54012d9..64fabd2 100644
--- a/arch/arm/boards/a9m2410/a9m2410.c
+++ b/arch/arm/boards/a9m2410/a9m2410.c
@@ -40,25 +40,6 @@ static struct s3c24x0_nand_platform_data nand_info = {
 	.nand_timing = CALC_NFCONF_TIMING(A9M2410_TACLS, A9M2410_TWRPH0, A9M2410_TWRPH1)
 };
 
-static struct device_d nand_dev = {
-	.id	  = -1,
-	.name     = "s3c24x0_nand",
-	.map_base = S3C24X0_NAND_BASE,
-	.platform_data	= &nand_info,
-};
-
-/*
- * SMSC 91C111 network controller on the baseboard
- * connected to CS line 1 and interrupt line
- * GPIO3, data width is 32 bit
- */
-static struct device_d network_dev = {
-	.id       = -1,
-        .name     = "smc91c111",
-        .map_base = CS1_BASE + 0x300,
-        .size     = 16,
-};
-
 static int a9m2410_devices_init(void)
 {
 	uint32_t reg;
@@ -141,10 +122,17 @@ static int a9m2410_devices_init(void)
 	writel(reg, MISCCR);
 
 	/* ----------- the devices the boot loader should work with -------- */
-	register_device(&nand_dev);
+	add_generic_device("s3c24x0_nand", -1, NULL, S3C24X0_NAND_BASE, 0,
+			   IORESOURCE_MEM, &nand_info);
 	sdram_dev = add_mem_device("ram0", CS6_BASE, size,
 				   IORESOURCE_MEM_WRITEABLE);
-	register_device(&network_dev);
+	/*
+	 * SMSC 91C111 network controller on the baseboard
+	 * connected to CS line 1 and interrupt line
+	 * GPIO3, data width is 32 bit
+	 */
+	add_generic_device("smc91c111", -1, NULL, CS1_BASE + 0x300, 16,
+			   IORESOURCE_MEM, NULL);
 
 #ifdef CONFIG_NAND
 	/* ----------- add some vital partitions -------- */
@@ -171,16 +159,10 @@ void __bare_init nand_boot(void)
 }
 #endif
 
-static struct device_d a9m2410_serial_device = {
-	.id       = -1,
-	.name     = "s3c24x0_serial",
-	.map_base = UART1_BASE,
-	.size     = UART1_SIZE,
-};
-
 static int a9m2410_console_init(void)
 {
-	register_device(&a9m2410_serial_device);
+	add_generic_device("s3c24x0_serial", -1, NULL, UART1_BASE, UART1_SIZE,
+			   IORESOURCE_MEM, NULL);
 	return 0;
 }
 
diff --git a/arch/arm/boards/a9m2440/a9m2440.c b/arch/arm/boards/a9m2440/a9m2440.c
index 7ea7f1c..d52f4c2 100644
--- a/arch/arm/boards/a9m2440/a9m2440.c
+++ b/arch/arm/boards/a9m2440/a9m2440.c
@@ -42,25 +42,6 @@ static struct s3c24x0_nand_platform_data nand_info = {
 	.nand_timing = CALC_NFCONF_TIMING(A9M2440_TACLS, A9M2440_TWRPH0, A9M2440_TWRPH1)
 };
 
-static struct device_d nand_dev = {
-	.id	  = -1,
-	.name     = "s3c24x0_nand",
-	.map_base = S3C24X0_NAND_BASE,
-	.platform_data	= &nand_info,
-};
-
-/*
- * cs8900 network controller onboard
- * Connected to CS line 5 + A24 and interrupt line EINT9,
- * data width is 16 bit
- */
-static struct device_d network_dev = {
-	.id	  = -1,
-	.name     = "cs8900",
-	.map_base = CS5_BASE + (1 << 24) + 0x300,
-	.size     = 16,
-};
-
 static int a9m2440_check_for_ram(uint32_t addr)
 {
 	uint32_t tmp1, tmp2;
@@ -145,10 +126,17 @@ static int a9m2440_devices_init(void)
 	writel(reg, MISCCR);
 
 	/* ----------- the devices the boot loader should work with -------- */
-	register_device(&nand_dev);
+	add_generic_device("s3c24x0_nand", -1, NULL, S3C24X0_NAND_BASE, 0,
+			   IORESOURCE_MEM, &nand_info);
 	sdram_dev = add_mem_device("ram0", CS6_BASE, s3c24x0_get_memory_size(),
 				   IORESOURCE_MEM_WRITEABLE);
-	register_device(&network_dev);
+	/*
+	 * cs8900 network controller onboard
+	 * Connected to CS line 5 + A24 and interrupt line EINT9,
+	 * data width is 16 bit
+	 */
+	add_generic_device("cs8900", -1, NULL, CS5_BASE + (1 << 24) + 0x300, 16,
+			   IORESOURCE_MEM, NULL);
 
 #ifdef CONFIG_NAND
 	/* ----------- add some vital partitions -------- */
@@ -174,16 +162,10 @@ void __bare_init nand_boot(void)
 }
 #endif
 
-static struct device_d a9m2440_serial_device = {
-	.id	  = -1,
-	.name     = "s3c24x0_serial",
-	.map_base = UART1_BASE,
-	.size     = UART1_SIZE,
-};
-
 static int a9m2440_console_init(void)
 {
-	register_device(&a9m2440_serial_device);
+	add_generic_device("s3c24x0_serial", -1, NULL, UART1_BASE, UART1_SIZE,
+			   IORESOURCE_MEM, NULL);
 	return 0;
 }
 
diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index dbf7503..c6b4932 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -49,12 +49,6 @@ static struct s3c24x0_nand_platform_data nand_info = {
 	.flash_bbt = 1,	/* same as the kernel */
 };
 
-static struct device_d nand_dev = {
-	.name     = "s3c24x0_nand",
-	.map_base = S3C24X0_NAND_BASE,
-	.platform_data	= &nand_info,
-};
-
 /*
  * dm9000 network controller onboard
  * Connected to CS line 4 and interrupt line EINT7,
@@ -73,12 +67,6 @@ static struct s3c_mci_platform_data mci_data = {
 	.detect_invert = 0,
 };
 
-static struct device_d mci_dev = {
-	.name     = "s3c_mci",
-	.map_base = S3C2410_SDI_BASE,
-	.platform_data	= &mci_data,
-};
-
 static struct fb_videomode s3c24x0_fb_modes[] = {
 #ifdef CONFIG_MINI2440_VIDEO_N35
 	{
@@ -144,12 +132,6 @@ static struct s3c_fb_platform_data s3c24x0_fb_data = {
 	.passive_display	= 0,
 };
 
-static struct device_d s3cfb_dev = {
-	.name    = "s3c_fb",
-	.map_base = S3C2410_LCD_BASE,
-	.platform_data	= &s3c24x0_fb_data,
-};
-
 static const unsigned pin_usage[] = {
 	/* address bus, used by NOR, SDRAM */
 	GPA1_ADDR16,
@@ -305,7 +287,8 @@ static int mini2440_devices_init(void)
 	reg |= 0x10000;
 	writel(reg, MISCCR);
 
-	register_device(&nand_dev);
+	add_generic_device("s3c24x0_nand", -1, NULL, S3C24X0_NAND_BASE, 0,
+			   IORESOURCE_MEM, &nand_info);
 
 	sdram_dev = add_mem_device("ram0", CS6_BASE, s3c24x0_get_memory_size(),
 				   IORESOURCE_MEM_WRITEABLE);
@@ -323,8 +306,10 @@ static int mini2440_devices_init(void)
 	devfs_add_partition("nand0", 0x40000, 0x20000, PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 #endif
-	register_device(&mci_dev);
-	register_device(&s3cfb_dev);
+	add_generic_device("s3c_mci", 0, NULL, S3C2410_SDI_BASE, 0,
+			   IORESOURCE_MEM, &mci_data);
+	add_generic_device("s3c_fb", 0, NULL, S3C2410_LCD_BASE, 0,
+			   IORESOURCE_MEM, &s3c24x0_fb_data);
 	armlinux_set_bootparams(dev_get_mem_region(sdram_dev, 0) + 0x100);
 	armlinux_set_architecture(MACH_TYPE_MINI2440);
 
@@ -340,12 +325,6 @@ void __bare_init nand_boot(void)
 }
 #endif
 
-static struct device_d mini2440_serial_device = {
-	.name     = "s3c24x0_serial",
-	.map_base = UART1_BASE,
-	.size     = UART1_SIZE,
-};
-
 static int mini2440_console_init(void)
 {
 	/*
@@ -357,7 +336,8 @@ static int mini2440_console_init(void)
 	s3c_gpio_mode(GPH2_TXD0);
 	s3c_gpio_mode(GPH3_RXD0);
 
-	register_device(&mini2440_serial_device);
+	add_generic_device("s3c24x0_serial", -1, NULL, UART1_BASE, UART1_SIZE,
+			   IORESOURCE_MEM, NULL);
 	return 0;
 }
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
