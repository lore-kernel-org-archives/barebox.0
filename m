Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PDKUL-0005K9-Iw
	for barebox@lists.infradead.org; Tue, 02 Nov 2010 17:17:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Nov 2010 18:17:28 +0100
Message-Id: <1288718250-24919-16-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 15/17] ARM eukrea cpuimx35: Use device functions
To: barebox <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |   53 +++------------------
 1 files changed, 7 insertions(+), 46 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index dfe64d0..07f320b 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -54,19 +54,13 @@
 #include <i2c/i2c.h>
 #include <usb/fsl_usb2.h>
 #include <mach/usb.h>
+#include <mach/devices-imx35.h>
 
 static struct fec_platform_data fec_info = {
 	.xcv_type	= MII100,
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
@@ -86,13 +80,6 @@ struct imx_nand_platform_data nand_info = {
 	.flash_bbt	= 1,
 };
 
-static struct device_d nand_dev = {
-	.id		= -1,
-	.name		= "imx_nand",
-	.map_base	= IMX_NFC_BASE,
-	.platform_data	= &nand_info,
-};
-
 static struct fb_videomode imxfb_mode = {
 	.name		= "CMO_QVGA",
 	.refresh	= 60,
@@ -121,25 +108,6 @@ static struct imx_ipu_fb_platform_data ipu_fb_data = {
 	.enable		= eukrea_cpuimx35_enable_display,
 };
 
-static struct device_d imxfb_dev = {
-	.id		= -1,
-	.name		= "imx-ipu-fb",
-	.map_base	= 0x53fc0000,
-	.size		= 0x1000,
-	.platform_data	= &ipu_fb_data,
-};
-
-static struct device_d i2c_dev = {
-	.id	  = -1,
-	.name     = "i2c-imx",
-	.map_base = IMX_I2C1_BASE,
-};
-
-static struct device_d esdhc_dev = {
-	.name		= "imx-esdhc",
-	.map_base	= IMX_SDHC1_BASE,
-};
-
 #ifdef CONFIG_USB
 static void imx35_usb_init(void)
 {
@@ -212,20 +180,20 @@ static int eukrea_cpuimx35_devices_init(void)
 {
 	unsigned int tmp;
 
-	register_device(&nand_dev);
+	imx35_add_nand(&nand_info);
 
 	devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
 	devfs_add_partition("nand0", 0x40000, 0x20000, PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
-	register_device(&fec_dev);
+	imx35_add_fec(&fec_info);
 
 	register_device(&sdram_dev);
-	register_device(&imxfb_dev);
+	imx35_add_fb(&ipu_fb_data);
 
-	register_device(&i2c_dev);
-	register_device(&esdhc_dev);
+	imx35_add_i2c0(NULL);
+	imx35_add_mmc0(NULL);
 
 #ifdef CONFIG_USB
 	imx35_usb_init();
@@ -245,13 +213,6 @@ static int eukrea_cpuimx35_devices_init(void)
 
 device_initcall(eukrea_cpuimx35_devices_init);
 
-static struct device_d eukrea_cpuimx35_serial_device = {
-	.id		= -1,
-	.name		= "imx_serial",
-	.map_base	= IMX_UART1_BASE,
-	.size		= 4096,
-};
-
 static struct pad_desc eukrea_cpuimx35_pads[] = {
 	MX35_PAD_FEC_TX_CLK__FEC_TX_CLK,
 	MX35_PAD_FEC_RX_CLK__FEC_RX_CLK,
@@ -306,7 +267,7 @@ static int eukrea_cpuimx35_console_init(void)
 	/* led default off */
 	gpio_direction_output(32 * 2 + 29, 1);
 
-	register_device(&eukrea_cpuimx35_serial_device);
+	imx35_add_uart0();
 	return 0;
 }
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
