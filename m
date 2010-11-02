Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PDKUK-0005K1-Rv
	for barebox@lists.infradead.org; Tue, 02 Nov 2010 17:17:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Nov 2010 18:17:23 +0100
Message-Id: <1288718250-24919-11-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/17] ARM imx21ads: Use device functions
To: barebox <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/imx21ads/imx21ads.c |   29 ++++-------------------------
 1 files changed, 4 insertions(+), 25 deletions(-)

diff --git a/arch/arm/boards/imx21ads/imx21ads.c b/arch/arm/boards/imx21ads/imx21ads.c
index 44d37aa..3942581 100644
--- a/arch/arm/boards/imx21ads/imx21ads.c
+++ b/arch/arm/boards/imx21ads/imx21ads.c
@@ -36,6 +36,7 @@
 #include <mach/imx-nand.h>
 #include <mach/imxfb.h>
 #include <mach/iomux-mx21.h>
+#include <mach/devices-imx21.h>
 
 #define MX21ADS_IO_REG    0xCC800000
 #define MX21ADS_IO_LCDON  (1 << 9)
@@ -65,13 +66,6 @@ struct imx_nand_platform_data nand_info = {
 	.hw_ecc = 1,
 };
 
-static struct device_d nand_dev = {
-	.id	  = -1,
-	.name     = "imx_nand",
-	.map_base = 0xDF003000,
-	.platform_data  = &nand_info,
-};
-
 static struct device_d cs8900_dev = {
 	.id	  = -1,
 	.name     = "cs8900",
@@ -111,14 +105,6 @@ static struct imx_fb_platform_data imx_fb_data = {
 	.dmacr          = 0x00020008,
 };
 
-static struct device_d imxfb_dev = {
-	.id		= -1,
-	.name           = "imxfb",
-	.map_base       = 0x10021000,
-	.size           = 0x1000,
-	.platform_data  = &imx_fb_data,
-};
-
 static int imx21ads_timing_init(void)
 {
 	u32 temp;
@@ -199,9 +185,9 @@ static int mx21ads_devices_init(void)
 
 	register_device(&cfi_dev);
 	register_device(&sdram_dev);
-	register_device(&nand_dev);
+	imx21_add_nand(&nand_info);
 	register_device(&cs8900_dev);
-	register_device(&imxfb_dev);
+	imx21_add_fb(&imx_fb_data);
 
 	armlinux_add_dram(&sdram_dev);
 	armlinux_set_bootparams((void *)0xc0000100);
@@ -224,16 +210,9 @@ static int mx21ads_enable_display(void)
 
 late_initcall(mx21ads_enable_display);
 
-static struct device_d mx21ads_serial_device = {
-	.id	  = -1,
-	.name     = "imx_serial",
-	.map_base = IMX_UART1_BASE,
-	.size     = 4096,
-};
-
 static int mx21ads_console_init(void)
 {
-	register_device(&mx21ads_serial_device);
+	imx21_add_uart0();
 	return 0;
 }
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
