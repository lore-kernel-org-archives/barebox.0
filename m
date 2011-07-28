Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmLWk-0007qX-Vt
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 08:01:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 10:00:59 +0200
Message-Id: <1311840062-11446-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311840062-11446-1-git-send-email-s.hauer@pengutronix.de>
References: <1311840062-11446-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/8] ARM i.MX35 3stack: use device registration helpers
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx35-3-stack/3stack.c |   18 +++---------------
 1 files changed, 3 insertions(+), 15 deletions(-)

diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
index 9113650..e513439 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -69,13 +69,6 @@ struct imx_nand_platform_data nand_info = {
 	.flash_bbt	= 1,
 };
 
-static struct device_d smc911x_dev = {
-	.id		= -1,
-	.name		= "smc911x",
-	.map_base	= IMX_CS5_BASE,
-	.size		= IMX_CS5_RANGE,
-};
-
 static struct i2c_board_info i2c_devices[] = {
 	{
 		I2C_BOARD_INFO("mc13892-i2c", 0x08),
@@ -84,12 +77,6 @@ static struct i2c_board_info i2c_devices[] = {
 	},
 };
 
-static struct device_d i2c_dev = {
-	.id		= -1,
-	.name		= "i2c-imx",
-	.map_base	= IMX_I2C1_BASE,
-};
-
 /*
  * Generic display, shipped with the PDK
  */
@@ -183,10 +170,11 @@ static int f3s_devices_init(void)
 	set_silicon_rev(imx_silicon_revision());
 
 	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
-	register_device(&i2c_dev);
+	imx35_add_i2c0(NULL);
 
 	imx35_add_fec(&fec_info);
-	register_device(&smc911x_dev);
+	add_generic_device("smc911x", -1, NULL,	IMX_CS5_BASE, IMX_CS5_RANGE,
+			IORESOURCE_MEM, NULL);
 
 	imx35_add_mmc0(NULL);
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
