Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qj5qb-0006l6-Ti
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 08:40:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Jul 2011 10:40:02 +0200
Message-Id: <1311064803-6305-19-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311064803-6305-1-git-send-email-s.hauer@pengutronix.de>
References: <1311064803-6305-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 18/19] ARM pcm037: use add_mem_device helper
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pcm037/pcm037.c |   56 ++++++--------------------------------
 1 files changed, 9 insertions(+), 47 deletions(-)

diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index cb4ffe6..fdf937a 100644
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
-	.flags = DEVFS_RDWR,
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
@@ -85,19 +68,6 @@ static struct device_d network_dev = {
 #define SDRAM0	256
 #endif
 
-static struct memory_platform_data ram_dev_pdata0 = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
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
 #ifndef CONFIG_PCM037_SDRAM_BANK1_NONE
 
 #if defined CONFIG_PCM037_SDRAM_BANK1_128MB
@@ -106,18 +76,6 @@ static struct device_d sdram0_dev = {
 #define SDRAM1	256
 #endif
 
-static struct memory_platform_data ram_dev_pdata1 = {
-	.name = "ram1",
-	.flags = DEVFS_RDWR,
-};
-
-static struct device_d sdram1_dev = {
-	.id	  = -1,
-	.name     = "mem",
-	.map_base = IMX_SDRAM_CS1,
-	.size     = SDRAM1 * 1024 * 1024,	/* fix size */
-	.platform_data = &ram_dev_pdata1,
-};
 #endif
 
 struct imx_nand_platform_data nand_info = {
@@ -253,6 +211,10 @@ static void pcm037_mmu_init(void)
 
 static int imx31_devices_init(void)
 {
+	struct device_d *sdram0_dev;
+#ifndef CONFIG_PCM037_SDRAM_BANK1_NONE
+	struct device_d *sdram1_dev;
+#endif
 	pcm037_mmu_init();
 
 	__REG(CSCR_U(0)) = 0x0000cf03; /* CS0: Nor Flash */
@@ -282,13 +244,13 @@ static int imx31_devices_init(void)
 
 	protect_file("/dev/env0", 1);
 
-	register_device(&sram_dev);
+	add_mem_device("sram0", IMX_CS4_BASE, IMX_CS4_RANGE, DEVFS_RDWR);
 	imx31_add_nand(&nand_info);
 	register_device(&network_dev);
 
-	register_device(&sdram0_dev);
+	sdram0_dev = add_mem_device("ram0", IMX_SDRAM_CS0, SDRAM0 * 1024 * 1024, DEVFS_RDWR);
 #ifndef CONFIG_PCM037_SDRAM_BANK1_NONE
-	register_device(&sdram1_dev);
+	sdram1_dev = add_mem_device("ram1", IMX_SDRAM_CS1, SDRAM1 * 1024 * 1024, DEVFS_RDWR);
 #endif
 #ifdef CONFIG_USB
 	pcm037_usb_init();
@@ -296,9 +258,9 @@ static int imx31_devices_init(void)
 	register_device(&usbh2_dev);
 #endif
 
-	armlinux_add_dram(&sdram0_dev);
+	armlinux_add_dram(sdram0_dev);
 #ifndef CONFIG_PCM037_SDRAM_BANK1_NONE
-	armlinux_add_dram(&sdram1_dev);
+	armlinux_add_dram(sdram1_dev);
 #endif
 	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_PCM037);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
