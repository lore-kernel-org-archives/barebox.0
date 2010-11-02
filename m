Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PDKUK-0005Jx-D5
	for barebox@lists.infradead.org; Tue, 02 Nov 2010 17:17:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Nov 2010 18:17:18 +0100
Message-Id: <1288718250-24919-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1288718250-24919-1-git-send-email-s.hauer@pengutronix.de>
References: <1288718250-24919-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/17] ARM pcm043: Use device functions
To: barebox <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pcm043/pcm043.c |   38 +++++---------------------------------
 1 files changed, 5 insertions(+), 33 deletions(-)

diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
index 5932f95..2191bc8 100644
--- a/arch/arm/boards/pcm043/pcm043.c
+++ b/arch/arm/boards/pcm043/pcm043.c
@@ -43,6 +43,7 @@
 #include <mach/imx-ipu-fb.h>
 #include <mach/imx-pll.h>
 #include <mach/iomux-mx35.h>
+#include <mach/devices-imx35.h>
 
 /*
  * Up to 32MiB NOR type flash, connected to
@@ -59,13 +60,6 @@ static struct fec_platform_data fec_info = {
 	.xcv_type = MII100,
 };
 
-static struct device_d fec_dev = {
-	.id	  = -1,
-	.name     = "fec_imx",
-	.map_base = IMX_FEC_BASE,
-	.platform_data	= &fec_info,
-};
-
 static struct memory_platform_data ram_pdata = {
 	.name = "ram0",
 	.flags = DEVFS_RDWR,
@@ -85,13 +79,6 @@ struct imx_nand_platform_data nand_info = {
 	.flash_bbt = 1,
 };
 
-static struct device_d nand_dev = {
-	.id	  = -1,
-	.name     = "imx_nand",
-	.map_base = IMX_NFC_BASE,
-	.platform_data	= &nand_info,
-};
-
 #ifdef CONFIG_PCM043_DISPLAY_SHARP
 static struct fb_videomode pcm043_fb_mode = {
 	/* 240x320 @ 60 Hz */
@@ -135,14 +122,6 @@ static struct imx_ipu_fb_platform_data ipu_fb_data = {
 	.bpp		= 16,
 };
 
-static struct device_d imx_ipu_fb_dev = {
-	.id		= -1,
-	.name		= "imx-ipu-fb",
-	.map_base	= 0x53fc0000,
-	.size		= 0x1000,
-	.platform_data	= &ipu_fb_data,
-};
-
 #ifdef CONFIG_MMU
 static int pcm043_mmu_init(void)
 {
@@ -185,11 +164,11 @@ static int imx35_devices_init(void)
 	else
 		nand_info.width = 1;    /* 8 bit */
 
-	register_device(&fec_dev);
+	imx35_add_fec(&fec_info);
 	/*
 	 * This platform supports NOR and NAND
 	 */
-	register_device(&nand_dev);
+	imx35_add_nand(&nand_info);
 	register_device(&cfi_dev);
 
 	if ((reg & 0xc00) == 0x800) {   /* reset mode: external boot */
@@ -210,7 +189,7 @@ static int imx35_devices_init(void)
 	}
 
 	register_device(&sdram0_dev);
-	register_device(&imx_ipu_fb_dev);
+	imx35_add_fb(&ipu_fb_data);
 
 	armlinux_add_dram(&sdram0_dev);
 	armlinux_set_bootparams((void *)0x80000100);
@@ -221,13 +200,6 @@ static int imx35_devices_init(void)
 
 device_initcall(imx35_devices_init);
 
-static struct device_d imx35_serial_device = {
-	.id	  = -1,
-	.name     = "imx_serial",
-	.map_base = IMX_UART1_BASE,
-	.size     = 16 * 1024,
-};
-
 static struct pad_desc pcm043_pads[] = {
 	MX35_PAD_FEC_TX_CLK__FEC_TX_CLK,
 	MX35_PAD_FEC_RX_CLK__FEC_RX_CLK,
@@ -261,7 +233,7 @@ static int imx35_console_init(void)
 {
 	mxc_iomux_v3_setup_multiple_pads(pcm043_pads, ARRAY_SIZE(pcm043_pads));
 
-	register_device(&imx35_serial_device);
+	imx35_add_uart0();
 	return 0;
 }
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
