Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmLWk-0007qU-PX
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 08:01:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 10:00:56 +0200
Message-Id: <1311840062-11446-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311840062-11446-1-git-send-email-s.hauer@pengutronix.de>
References: <1311840062-11446-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/8] ARM i.MX cupid: use device registration helpers
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/guf-cupid/board.c |   46 +++++-------------------------------
 1 files changed, 7 insertions(+), 39 deletions(-)

diff --git a/arch/arm/boards/guf-cupid/board.c b/arch/arm/boards/guf-cupid/board.c
index 313e280..6906f0a 100644
--- a/arch/arm/boards/guf-cupid/board.c
+++ b/arch/arm/boards/guf-cupid/board.c
@@ -43,31 +43,18 @@
 #include <mach/imx-ipu-fb.h>
 #include <mach/imx-pll.h>
 #include <mach/iomux-mx35.h>
+#include <mach/devices-imx35.h>
 
 static struct fec_platform_data fec_info = {
 	.xcv_type = MII100,
 };
 
-static struct device_d fec_dev = {
-	.id	  = -1,
-	.name     = "fec_imx",
-	.map_base = IMX_FEC_BASE,
-	.platform_data	= &fec_info,
-};
-
 struct imx_nand_platform_data nand_info = {
 	.width	= 1,
 	.hw_ecc	= 1,
 	.flash_bbt = 1,
 };
 
-static struct device_d nand_dev = {
-	.id	  = -1,
-	.name     = "imx_nand",
-	.map_base = IMX_NFC_BASE,
-	.platform_data	= &nand_info,
-};
-
 static struct fb_videomode guf_cupid_fb_mode = {
 	/* 800x480 @ 70 Hz */
 	.name		= "CPT CLAA070LC0JCT",
@@ -109,19 +96,6 @@ static struct imx_ipu_fb_platform_data ipu_fb_data = {
 	.enable		= cupid_fb_enable,
 };
 
-static struct device_d imx_ipu_fb_dev = {
-	.id		= -1,
-	.name		= "imx-ipu-fb",
-	.map_base	= 0x53fc0000,
-	.size		= 0x1000,
-	.platform_data	= &ipu_fb_data,
-};
-
-static struct device_d esdhc_dev = {
-	.name		= "imx-esdhc",
-	.map_base	= IMX_SDHC1_BASE,
-};
-
 #ifdef CONFIG_MMU
 static int cupid_mmu_init(void)
 {
@@ -157,8 +131,8 @@ static int cupid_devices_init(void)
 	else
 		nand_info.width = 1;    /* 8 bit */
 
-	register_device(&fec_dev);
-	register_device(&nand_dev);
+	imx35_add_fec(&fec_info);
+	imx35_add_nand(&nand_info);
 
 	devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
@@ -168,8 +142,8 @@ static int cupid_devices_init(void)
 	sdram_dev = add_mem_device("ram0", IMX_SDRAM_CS0, 128 * 1024 * 1024,
 				   IORESOURCE_MEM_WRITEABLE);
 	armlinux_add_dram(sdram_dev);
-	register_device(&imx_ipu_fb_dev);
-	register_device(&esdhc_dev);
+	imx35_add_fb(&ipu_fb_data);
+	imx35_add_mmc0(NULL);
 
 	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_GUF_CUPID);
@@ -179,13 +153,6 @@ static int cupid_devices_init(void)
 
 device_initcall(cupid_devices_init);
 
-static struct device_d cupid_serial_device = {
-	.id	  = -1,
-	.name     = "imx_serial",
-	.map_base = IMX_UART1_BASE,
-	.size     = 16 * 1024,
-};
-
 static struct pad_desc cupid_pads[] = {
 	/* UART1 */
 	MX35_PAD_CTS1__UART1_CTS,
@@ -278,7 +245,8 @@ static int cupid_console_init(void)
 {
 	mxc_iomux_v3_setup_multiple_pads(cupid_pads, ARRAY_SIZE(cupid_pads));
 
-	register_device(&cupid_serial_device);
+	imx35_add_uart0();
+
 	return 0;
 }
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
