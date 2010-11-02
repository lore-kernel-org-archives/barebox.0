Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PDKUL-0005K4-H9
	for barebox@lists.infradead.org; Tue, 02 Nov 2010 17:17:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Nov 2010 18:17:25 +0100
Message-Id: <1288718250-24919-13-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/17] ARM neso: Use device functions
To: barebox <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/guf-neso/board.c |   38 +++++---------------------------------
 1 files changed, 5 insertions(+), 33 deletions(-)

diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/board.c
index 9c85c08..d371dd6 100644
--- a/arch/arm/boards/guf-neso/board.c
+++ b/arch/arm/boards/guf-neso/board.c
@@ -44,6 +44,7 @@
 #include <mach/imx-nand.h>
 #include <mach/imx-pll.h>
 #include <mach/imxfb.h>
+#include <mach/devices-imx27.h>
 
 /* two pins are controlling the CS signals to the USB phys */
 #define USBH2_PHY_CS_GPIO (GPIO_PORTF + 20)
@@ -71,26 +72,12 @@ static struct fec_platform_data fec_info = {
 	.phy_addr = 31,
 };
 
-static struct device_d fec_dev = {
-	.id	  = -1,
-	.name     = "fec_imx",
-	.map_base = 0x1002b000,
-	.platform_data	= &fec_info,
-};
-
 static struct imx_nand_platform_data nand_info = {
 	.width		= 1,
 	.hw_ecc		= 1,
 	.flash_bbt	= 1,
 };
 
-static struct device_d nand_dev = {
-	.id	  = -1,
-	.name     = "imx_nand",
-	.map_base = 0xd8000000,
-	.platform_data	= &nand_info,
-};
-
 static struct imx_fb_videomode imxfb_mode = {
 	.mode = {
 		.name		= "CPT CLAA070LC0JCT",
@@ -139,14 +126,6 @@ static struct imx_fb_platform_data neso_fb_data = {
 	.framebuffer_ovl = (void *)0xa7f00000,
 };
 
-static struct device_d imxfb_dev = {
-	.id		= -1,
-	.name		= "imxfb",
-	.map_base	= 0x10021000,
-	.size		= 0x1000,
-	.platform_data	= &neso_fb_data,
-};
-
 #ifdef CONFIG_USB
 
 static struct device_d usbh2_dev = {
@@ -334,16 +313,16 @@ static int neso_devices_init(void)
 	for (i = 0; i < ARRAY_SIZE(mode); i++)
 		imx_gpio_mode(mode[i]);
 
-	register_device(&nand_dev);
+	imx27_add_nand(&nand_info);
 	register_device(&sdram_dev);
-	register_device(&imxfb_dev);
+	imx27_add_fb(&neso_fb_data);
 
 #ifdef CONFIG_USB
 	neso_usbh_init();
 	register_device(&usbh2_dev);
 #endif
 
-	register_device(&fec_dev);
+	imx27_add_fec(&fec_info);
 
 	devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
@@ -360,16 +339,9 @@ static int neso_devices_init(void)
 
 device_initcall(neso_devices_init);
 
-static struct device_d neso_serial_device = {
-	.id	  = -1,
-	.name     = "imx_serial",
-	.map_base = IMX_UART1_BASE,
-	.size     = 4096,
-};
-
 static int neso_console_init(void)
 {
-	register_device(&neso_serial_device);
+	imx27_add_uart0();
 
 	return 0;
 }
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
