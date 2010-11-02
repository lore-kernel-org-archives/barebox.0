Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PDKUL-0005K2-2O
	for barebox@lists.infradead.org; Tue, 02 Nov 2010 17:17:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Nov 2010 18:17:21 +0100
Message-Id: <1288718250-24919-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/17] ARM pcm037: Use device functions
To: barebox <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pcm037/pcm037.c |   20 +++-----------------
 1 files changed, 3 insertions(+), 17 deletions(-)

diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index 89e2481..ffecec2 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -37,7 +37,7 @@
 #include <partition.h>
 #include <generated/mach-types.h>
 #include <mach/imx-nand.h>
-
+#include <mach/devices-imx31.h>
 
 /*
  * Up to 32MiB NOR type flash, connected to
@@ -126,13 +126,6 @@ struct imx_nand_platform_data nand_info = {
 	.flash_bbt = 1,
 };
 
-static struct device_d nand_dev = {
-	.id	  = -1,
-	.name     = "imx_nand",
-	.map_base = 0xB8000000,
-	.platform_data	= &nand_info,
-};
-
 #ifdef CONFIG_USB
 static struct device_d usbotg_dev = {
 	.id	  = -1,
@@ -295,7 +288,7 @@ static int imx31_devices_init(void)
 	protect_file("/dev/env0", 1);
 
 	register_device(&sram_dev);
-	register_device(&nand_dev);
+	imx31_add_nand(&nand_info);
 	register_device(&network_dev);
 
 	register_device(&sdram0_dev);
@@ -320,13 +313,6 @@ static int imx31_devices_init(void)
 
 device_initcall(imx31_devices_init);
 
-static struct device_d imx31_serial_device = {
-	.id	  = -1,
-	.name     = "imx_serial",
-	.map_base = IMX_UART1_BASE,
-	.size     = 16 * 1024,
-};
-
 static int imx31_console_init(void)
 {
 	/* init gpios for serial port */
@@ -335,7 +321,7 @@ static int imx31_console_init(void)
 	imx_iomux_mode(MX31_PIN_CTS1__CTS1);
 	imx_iomux_mode(MX31_PIN_RTS1__RTS1);
 
-	register_device(&imx31_serial_device);
+	imx31_add_uart0();
 	return 0;
 }
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
