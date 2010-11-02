Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PDKUK-0005K0-UQ
	for barebox@lists.infradead.org; Tue, 02 Nov 2010 17:17:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Nov 2010 18:17:20 +0100
Message-Id: <1288718250-24919-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/17] ARM pcm038: Use device functions
To: barebox <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pcm038/pcm038.c |   47 +++++----------------------------------
 1 files changed, 6 insertions(+), 41 deletions(-)

diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 3a9b413..1dbc6b6 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -43,6 +43,7 @@
 #include <usb/isp1504.h>
 #include <mach/spi.h>
 #include <mach/iomux-mx27.h>
+#include <mach/devices-imx27.h>
 
 #include "pll.h"
 
@@ -84,13 +85,6 @@ static struct fec_platform_data fec_info = {
 	.phy_addr = 1,
 };
 
-static struct device_d fec_dev = {
-	.id	  = -1,
-	.name     = "fec_imx",
-	.map_base = 0x1002b000,
-	.platform_data	= &fec_info,
-};
-
 static int pcm038_spi_cs[] = {GPIO_PORTD + 28};
 
 static struct spi_imx_master pcm038_spi_0_data = {
@@ -98,13 +92,6 @@ static struct spi_imx_master pcm038_spi_0_data = {
 	.num_chipselect = ARRAY_SIZE(pcm038_spi_cs),
 };
 
-static struct device_d spi_dev = {
-	.id	  = -1,
-	.name     = "imx_spi",
-	.map_base = 0x1000e000,
-	.platform_data = &pcm038_spi_0_data,
-};
-
 static struct spi_board_info pcm038_spi_board_info[] = {
 	{
 		.name = "mc13783",
@@ -120,13 +107,6 @@ static struct imx_nand_platform_data nand_info = {
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
 		.name		= "Sharp-LQ035Q7",
@@ -161,14 +141,6 @@ static struct imx_fb_platform_data pcm038_fb_data = {
 	.dmacr	= 0x00020010,
 };
 
-static struct device_d imxfb_dev = {
-	.id		= -1,
-	.name		= "imxfb",
-	.map_base	= 0x10021000,
-	.size		= 0x1000,
-	.platform_data	= &pcm038_fb_data,
-};
-
 #ifdef CONFIG_USB
 static struct device_d usbh2_dev = {
 	.id	  = -1,
@@ -323,13 +295,13 @@ static int pcm038_devices_init(void)
 	gpio_direction_output(GPIO_PORTD | 28, 0);
 	gpio_set_value(GPIO_PORTD | 28, 0);
 	spi_register_board_info(pcm038_spi_board_info, ARRAY_SIZE(pcm038_spi_board_info));
-	register_device(&spi_dev);
+	imx27_add_spi0(&pcm038_spi_0_data);
 
 	register_device(&cfi_dev);
-	register_device(&nand_dev);
+	imx27_add_nand(&nand_info);
 	register_device(&sdram_dev);
 	register_device(&sram_dev);
-	register_device(&imxfb_dev);
+	imx27_add_fb(&pcm038_fb_data);
 
 #ifdef CONFIG_USB
 	pcm038_usbh_init();
@@ -339,7 +311,7 @@ static int pcm038_devices_init(void)
 	/* Register the fec device after the PLL re-initialisation
 	 * as the fec depends on the (now higher) ipg clock
 	 */
-	register_device(&fec_dev);
+	imx27_add_fec(&fec_info);
 
 	switch ((GPCR & GPCR_BOOT_MASK) >> GPCR_BOOT_SHIFT) {
 	case GPCR_BOOT_8BIT_NAND_2k:
@@ -372,16 +344,9 @@ static int pcm038_devices_init(void)
 
 device_initcall(pcm038_devices_init);
 
-static struct device_d pcm038_serial_device = {
-	.id	  = -1,
-	.name     = "imx_serial",
-	.map_base = IMX_UART1_BASE,
-	.size     = 4096,
-};
-
 static int pcm038_console_init(void)
 {
-	register_device(&pcm038_serial_device);
+	imx27_add_uart0();
 
 	return 0;
 }
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
