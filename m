Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PDKUL-0005K6-IV
	for barebox@lists.infradead.org; Tue, 02 Nov 2010 17:17:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Nov 2010 18:17:26 +0100
Message-Id: <1288718250-24919-14-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/17] ARM mx35 3ds: Use device functions
To: barebox <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx35-3-stack/3stack.c |   38 +++--------------------
 1 files changed, 5 insertions(+), 33 deletions(-)

diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
index d6699cd..127bfb4 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -48,6 +48,7 @@
 #include <mach/pmic.h>
 #include <mach/imx-ipu-fb.h>
 #include <mach/generic.h>
+#include <mach/devices-imx35.h>
 
 #include <i2c/i2c.h>
 #include <mfd/mc13892.h>
@@ -70,13 +71,6 @@ static struct fec_platform_data fec_info = {
 	.phy_addr	= 0x1F,
 };
 
-static struct device_d fec_dev = {
-	.id		= -1,
-	.name		= "fec_imx",
-	.map_base	= IMX_FEC_BASE,
-	.platform_data	= &fec_info,
-};
-
 static struct memory_platform_data sdram_pdata = {
 	.name	= "ram0",
 	.flags	= DEVFS_RDWR,
@@ -95,13 +89,6 @@ struct imx_nand_platform_data nand_info = {
 	.flash_bbt	= 1,
 };
 
-static struct device_d nand_dev = {
-	.id		= -1,
-	.name		= "imx_nand",
-	.map_base	= IMX_NFC_BASE,
-	.platform_data	= &nand_info,
-};
-
 static struct device_d smc911x_dev = {
 	.id		= -1,
 	.name		= "smc911x",
@@ -149,14 +136,6 @@ static struct imx_ipu_fb_platform_data ipu_fb_data = {
 	.bpp		= 16,
 };
 
-static struct device_d imxfb_dev = {
-	.id		= -1,
-	.name		= "imx-ipu-fb",
-	.map_base	= 0x53fc0000,
-	.size		= 0x1000,
-	.platform_data	= &ipu_fb_data,
-};
-
 /*
  * Revision to be passed to kernel. The kernel provided
  * by freescale relies on this.
@@ -202,7 +181,7 @@ static int f3s_devices_init(void)
 	/*
 	 * This platform supports NOR and NAND
 	 */
-	register_device(&nand_dev);
+	imx35_add_nand(&nand_info);
 	register_device(&cfi_dev);
 
 	switch ((reg >> 25) & 0x3) {
@@ -225,11 +204,11 @@ static int f3s_devices_init(void)
 	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
 	register_device(&i2c_dev);
 
-	register_device(&fec_dev);
+	imx35_add_fec(&fec_info);
 	register_device(&smc911x_dev);
 
 	register_device(&sdram_dev);
-	register_device(&imxfb_dev);
+	imx35_add_fb(&ipu_fb_data);
 
 	armlinux_add_dram(&sdram_dev);
 	armlinux_set_bootparams((void *)0x80000100);
@@ -250,13 +229,6 @@ static int f3s_enable_display(void)
 
 late_initcall(f3s_enable_display);
 
-static struct device_d f3s_serial_device = {
-	.id		= -1,
-	.name		= "imx_serial",
-	.map_base	= IMX_UART1_BASE,
-	.size		= 4096,
-};
-
 static struct pad_desc f3s_pads[] = {
 	MX35_PAD_FEC_TX_CLK__FEC_TX_CLK,
 	MX35_PAD_FEC_RX_CLK__FEC_RX_CLK,
@@ -322,7 +294,7 @@ static int f3s_console_init(void)
 {
 	mxc_iomux_v3_setup_multiple_pads(f3s_pads, ARRAY_SIZE(f3s_pads));
 
-	register_device(&f3s_serial_device);
+	imx35_add_uart0();
 	return 0;
 }
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
