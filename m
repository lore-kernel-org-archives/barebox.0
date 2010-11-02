Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PDKUL-0005K3-De
	for barebox@lists.infradead.org; Tue, 02 Nov 2010 17:17:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Nov 2010 18:17:22 +0100
Message-Id: <1288718250-24919-10-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/17] ARM imx27ads: Use device functions
To: barebox <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/imx27ads/imx27ads.c |   19 +++----------------
 1 files changed, 3 insertions(+), 16 deletions(-)

diff --git a/arch/arm/boards/imx27ads/imx27ads.c b/arch/arm/boards/imx27ads/imx27ads.c
index ae5da7f..0d433c1 100644
--- a/arch/arm/boards/imx27ads/imx27ads.c
+++ b/arch/arm/boards/imx27ads/imx27ads.c
@@ -32,6 +32,7 @@
 #include <fcntl.h>
 #include <generated/mach-types.h>
 #include <mach/iomux-mx27.h>
+#include <mach/devices-imx27.h>
 
 static struct device_d cfi_dev = {
 	.id	  = -1,
@@ -58,13 +59,6 @@ static struct fec_platform_data fec_info = {
 	.phy_addr = 1,
 };
 
-static struct device_d fec_dev = {
-	.id	  = -1,
-	.name     = "fec_imx",
-	.map_base = 0x1002b000,
-	.platform_data	= &fec_info,
-};
-
 static int imx27ads_timing_init(void)
 {
 	/* configure cpld on cs4 */
@@ -134,7 +128,7 @@ static int mx27ads_devices_init(void)
 
 	register_device(&cfi_dev);
 	register_device(&sdram_dev);
-	register_device(&fec_dev);
+	imx27_add_fec(&fec_info);
 
 	devfs_add_partition("nor0", 0x00000, 0x20000, PARTITION_FIXED, "self0");
 	devfs_add_partition("nor0", 0x20000, 0x20000, PARTITION_FIXED, "env0");
@@ -149,16 +143,9 @@ static int mx27ads_devices_init(void)
 
 device_initcall(mx27ads_devices_init);
 
-static struct device_d mx27ads_serial_device = {
-	.id	  = -1,
-	.name     = "imx_serial",
-	.map_base = IMX_UART1_BASE,
-	.size     = 4096,
-};
-
 static int mx27ads_console_init(void)
 {
-	register_device(&mx27ads_serial_device);
+	imx27_add_uart0();
 	return 0;
 }
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
