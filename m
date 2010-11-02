Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PDKUL-0005K8-JD
	for barebox@lists.infradead.org; Tue, 02 Nov 2010 17:17:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Nov 2010 18:17:27 +0100
Message-Id: <1288718250-24919-15-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/17] ARM mx25 3ds: Use device functions
To: barebox <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx25-3-stack/3stack.c |   36 +++-------------------
 1 files changed, 5 insertions(+), 31 deletions(-)

diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index 25945f1..49b7f5c 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -40,6 +40,7 @@
 #include <linux/err.h>
 #include <i2c/i2c.h>
 #include <mfd/mc34704.h>
+#include <mach/devices-imx25.h>
 
 extern unsigned long _stext;
 extern void exception_vectors(void);
@@ -112,13 +113,6 @@ static struct fec_platform_data fec_info = {
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
@@ -156,13 +150,6 @@ struct imx_nand_platform_data nand_info = {
 	.hw_ecc	= 1,
 };
 
-static struct device_d nand_dev = {
-	.id	  = -1,
-	.name     = "imx_nand",
-	.map_base = IMX_NFC_BASE,
-	.platform_data	= &nand_info,
-};
-
 #ifdef CONFIG_USB
 static void imx25_usb_init(void)
 {
@@ -197,12 +184,6 @@ static struct i2c_board_info i2c_devices[] = {
 	},
 };
 
-static struct device_d i2c_dev = {
-	.id	  = -1,
-	.name     = "i2c-imx",
-	.map_base = IMX_I2C1_BASE,
-};
-
 static int imx25_3ds_pmic_init(void)
 {
 	struct mc34704 *pmic;
@@ -259,12 +240,12 @@ static int imx25_devices_init(void)
 	register_device(&usbh2_dev);
 #endif
 
-	register_device(&fec_dev);
+	imx25_add_fec(&fec_info);
 
 	if (readl(IMX_CCM_BASE + CCM_RCSR) & (1 << 14))
 		nand_info.width = 2;
 
-	register_device(&nand_dev);
+	imx25_add_nand(&nand_info);
 
 	devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
@@ -276,7 +257,7 @@ static int imx25_devices_init(void)
 	register_device(&sram0_dev);
 
 	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
-	register_device(&i2c_dev);
+	imx25_add_i2c0(NULL);
 
 	armlinux_add_dram(&sdram0_dev);
 	armlinux_set_bootparams((void *)0x80000100);
@@ -288,13 +269,6 @@ static int imx25_devices_init(void)
 
 device_initcall(imx25_devices_init);
 
-static struct device_d imx25_serial_device = {
-	.id	  = -1,
-	.name     = "imx_serial",
-	.map_base = IMX_UART1_BASE,
-	.size     = 16 * 1024,
-};
-
 static struct pad_desc imx25_pads[] = {
 	MX25_PAD_FEC_MDC__MDC,
 	MX25_PAD_FEC_MDIO__MDIO,
@@ -339,7 +313,7 @@ static int imx25_console_init(void)
 
 	writel(0x03010101, 0x53f80024);
 
-	register_device(&imx25_serial_device);
+	imx25_add_uart0();
 	return 0;
 }
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
