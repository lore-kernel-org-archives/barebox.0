Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OTZz7-0008W9-3x
	for barebox@lists.infradead.org; Tue, 29 Jun 2010 12:32:18 +0000
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Tue, 29 Jun 2010 14:32:00 +0200
Message-Id: <1277814720-1717-1-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: [PATCH] omap/devices-gpmc-nand.c remove repeating words
To: barebox@lists.infradead.org

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 board/omap/devices-gpmc-nand.c |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/board/omap/devices-gpmc-nand.c b/board/omap/devices-gpmc-nand.c
index bbcceaf..a25933f 100644
--- a/board/omap/devices-gpmc-nand.c
+++ b/board/omap/devices-gpmc-nand.c
@@ -95,7 +95,7 @@ static struct gpmc_config nand_cfg = {
 	.size = GPMC_SIZE_16M,
 };
 
-/** NAND platform specific settings settings */
+/** NAND platform specific settings */
 static struct gpmc_nand_platform_data nand_plat = {
 	.cs = CONFIG_MACH_OMAP_CS,
 	.device_width = GPMC_NAND_DEV_WIDTH,
@@ -111,7 +111,7 @@ static struct gpmc_nand_platform_data nand_plat = {
 };
 
 /** NAND device definition */
-static struct device_d gpmc_generic_nand_nand_device = {
+static struct device_d gpmc_generic_nand_device = {
 	.name = "gpmc_nand",
 	.map_base = OMAP_GPMC_BASE,
 	.size = 1024 * 4,	/* GPMC size */
@@ -127,7 +127,7 @@ static int gpmc_generic_nand_devices_init(void)
 {
 	/* Configure GPMC CS before register */
 	gpmc_cs_config(nand_plat.cs, &nand_cfg);
-	return register_device(&gpmc_generic_nand_nand_device);
+	return register_device(&gpmc_generic_nand_device);
 }
 
 device_initcall(gpmc_generic_nand_devices_init);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
