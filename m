Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NxMv5-0000bt-MA
	for barebox@lists.infradead.org; Thu, 01 Apr 2010 16:07:00 +0000
Received: by wyb40 with SMTP id 40so613070wyb.36
	for <barebox@lists.infradead.org>; Thu, 01 Apr 2010 09:06:58 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 1 Apr 2010 18:06:58 +0200
Message-ID: <m2kba216b431004010906k670c0c20w52e5ac408a921c8@mail.gmail.com>
From: Ivo Clarysse <ivo.clarysse@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] MX21ADS: Support LCD panel
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>

This patch enabled support for the Sharp QVGA LCD panel of the MX21ADS board.

Signed-off-by: Ivo Clarysse <ivo.clarysse@gmail.com>
---
diff --git a/board/imx21ads/imx21ads.c b/board/imx21ads/imx21ads.c
index bc638e3..9eba19a 100644
--- a/board/imx21ads/imx21ads.c
+++ b/board/imx21ads/imx21ads.c
@@ -34,6 +34,10 @@
 #include <fcntl.h>
 #include <asm/mach-types.h>
 #include <mach/imx-nand.h>
+#include <mach/imxfb.h>
+
+#define MX21ADS_IO_REG    0xCC800000
+#define MX21ADS_IO_LCDON  (1 << 9)

 static struct device_d cfi_dev = {
 	.name     = "cfi_flash",
@@ -70,6 +74,45 @@ static struct device_d cs8900_dev = {
 	// IRQ is connected to UART3_RTS
 };

+/* Sharp LQ035Q7DB02 QVGA display */
+static struct imx_fb_videomode imx_fb_modedata = {
+        .mode = {
+		.name           = "Sharp-LQ035Q7",
+		.refresh        = 60,
+		.xres           = 240,
+		.yres           = 320,
+		.pixclock       = 188679,
+		.left_margin    = 6,
+		.right_margin   = 16,
+		.upper_margin   = 8,
+		.lower_margin   = 10,
+		.hsync_len      = 2,
+		.vsync_len      = 1,
+		.sync           = 0,
+		.vmode          = FB_VMODE_NONINTERLACED,
+		.flag           = 0,
+	},
+        .pcr            = 0xfb108bc7,
+        .bpp            = 16,
+};
+
+static struct imx_fb_platform_data imx_fb_data = {
+	.mode           = &imx_fb_modedata,
+	.cmap_greyscale = 0,
+	.cmap_inverse   = 0,
+	.cmap_static    = 0,
+	.pwmr           = 0x00a903ff,
+	.lscr1          = 0x00120300,
+	.dmacr          = 0x00020008,
+};
+
+static struct device_d imxfb_dev = {
+	.name           = "imxfb",
+	.map_base       = 0x10021000,
+	.size           = 0x1000,
+	.platform_data  = &imx_fb_data,
+};
+
 static int imx21ads_timing_init(void)
 {
 	u32 temp;
@@ -111,6 +154,33 @@ static int mx21ads_devices_init(void)
 {
 	int i;
 	unsigned int mode[] = {
+		PA5_PF_LSCLK,
+		PA6_PF_LD0,
+		PA7_PF_LD1,
+		PA8_PF_LD2,
+		PA9_PF_LD3,
+		PA10_PF_LD4,
+		PA11_PF_LD5,
+		PA12_PF_LD6,
+		PA13_PF_LD7,
+		PA14_PF_LD8,
+		PA15_PF_LD9,
+		PA16_PF_LD10,
+		PA17_PF_LD11,
+		PA18_PF_LD12,
+		PA19_PF_LD13,
+		PA20_PF_LD14,
+		PA21_PF_LD15,
+		PA22_PF_LD16,
+		PA23_PF_LD17,
+		PA24_PF_REV,
+		PA25_PF_CLS,
+		PA26_PF_PS,
+		PA27_PF_SPL_SPR,
+		PA28_PF_HSYNC,
+		PA29_PF_VSYNC,
+		PA30_PF_CONTRAST,
+		PA31_PF_OE_ACD,
 		PE12_PF_UART1_TXD,
 		PE13_PF_UART1_RXD,
 		PE14_PF_UART1_CTS,
@@ -125,6 +195,7 @@ static int mx21ads_devices_init(void)
 	register_device(&sdram_dev);
 	register_device(&nand_dev);
 	register_device(&cs8900_dev);
+	register_device(&imxfb_dev);

 	armlinux_add_dram(&sdram_dev);
 	armlinux_set_bootparams((void *)0xc0000100);
@@ -135,6 +206,18 @@ static int mx21ads_devices_init(void)

 device_initcall(mx21ads_devices_init);

+static int mx21ads_enable_display(void)
+{
+	u16 tmp;
+
+	tmp = readw(MX21ADS_IO_REG);
+	tmp |= MX21ADS_IO_LCDON;
+	writew(tmp, MX21ADS_IO_REG);
+	return 0;
+}
+
+late_initcall(mx21ads_enable_display);
+
 static struct device_d mx21ads_serial_device = {
 	.name     = "imx_serial",
 	.map_base = IMX_UART1_BASE,

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
