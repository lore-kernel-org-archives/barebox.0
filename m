Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PDKUL-0005KB-J7
	for barebox@lists.infradead.org; Tue, 02 Nov 2010 17:17:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Nov 2010 18:17:30 +0100
Message-Id: <1288718250-24919-18-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 17/17] ARM eukrea cpuimx25: Use device functions
To: barebox <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |   54 +++------------------
 1 files changed, 7 insertions(+), 47 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index 805ffe2..3048c3f 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -43,6 +43,7 @@
 #include <i2c/i2c.h>
 #include <usb/fsl_usb2.h>
 #include <mach/usb.h>
+#include <mach/devices-imx25.h>
 
 extern unsigned long _stext;
 extern void exception_vectors(void);
@@ -88,13 +89,6 @@ static struct fec_platform_data fec_info = {
 	.phy_addr	= 1,
 };
 
-static struct device_d fec_dev = {
-	.id	  = -1,
-	.name     = "fec_imx",
-	.map_base = IMX_FEC_BASE,
-	.platform_data	= &fec_info,
-};
-
 static struct memory_platform_data sdram_pdata = {
 	.name	= "ram0",
 	.flags	= DEVFS_RDWR,
@@ -113,13 +107,6 @@ struct imx_nand_platform_data nand_info = {
 	.hw_ecc	= 1,
 };
 
-static struct device_d nand_dev = {
-	.id	  = -1,
-	.name     = "imx_nand",
-	.map_base = IMX_NFC_BASE,
-	.platform_data	= &nand_info,
-};
-
 static struct imx_fb_videomode imxfb_mode = {
 	.mode = {
 		.name		= "CMO-QVGA",
@@ -145,26 +132,6 @@ static struct imx_fb_platform_data eukrea_cpuimx25_fb_data = {
 	.dmacr		= 0x80040060,
 };
 
-
-static struct device_d imxfb_dev = {
-	.id		= -1,
-	.name		= "imxfb",
-	.map_base	= 0x53fbc000,
-	.size		= 0x1000,
-	.platform_data	= &eukrea_cpuimx25_fb_data,
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
-	.map_base	= 0x53fb4000,
-};
-
 #ifdef CONFIG_USB
 static void imx25_usb_init(void)
 {
@@ -285,10 +252,10 @@ static int eukrea_cpuimx25_devices_init(void)
 	mxc_iomux_v3_setup_multiple_pads(eukrea_cpuimx25_pads,
 		ARRAY_SIZE(eukrea_cpuimx25_pads));
 
-	register_device(&fec_dev);
+	imx25_add_fec(&fec_info);
 
 	nand_info.width = 1;
-	register_device(&nand_dev);
+	imx25_add_nand(&nand_info);
 
 	devfs_add_partition("nand0", 0x00000, 0x40000,
 		PARTITION_FIXED, "self_raw");
@@ -304,10 +271,10 @@ static int eukrea_cpuimx25_devices_init(void)
 	gpio_direction_output(26, 1);
 	gpio_set_value(26, 1);
 
-	register_device(&imxfb_dev);
+	imx25_add_fb(&eukrea_cpuimx25_fb_data);
 
-	register_device(&i2c_dev);
-	register_device(&esdhc_dev);
+	imx25_add_i2c0(NULL);
+	imx25_add_mmc0(NULL);
 
 #ifdef CONFIG_USB
 	imx25_usb_init();
@@ -324,16 +291,9 @@ static int eukrea_cpuimx25_devices_init(void)
 
 device_initcall(eukrea_cpuimx25_devices_init);
 
-static struct device_d eukrea_cpuimx25_serial_device = {
-	.id	  = -1,
-	.name     = "imx_serial",
-	.map_base = IMX_UART1_BASE,
-	.size     = 16 * 1024,
-};
-
 static int eukrea_cpuimx25_console_init(void)
 {
-	register_device(&eukrea_cpuimx25_serial_device);
+	imx25_add_uart0();
 	return 0;
 }
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
