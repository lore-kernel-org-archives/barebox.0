Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1UAHM2-00082o-4x
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 10:01:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Feb 2013 11:01:43 +0100
Message-Id: <1361872903-2575-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1361872903-2575-1-git-send-email-s.hauer@pengutronix.de>
References: <1361872903-2575-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ARM i.MX pcm043: Use imx_bootsource() to detect bootsource
To: barebox@lists.infradead.org

Also, print out where our environment comes from.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pcm043/pcm043.c |   33 ++++++++++++++++++---------------
 1 file changed, 18 insertions(+), 15 deletions(-)

diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
index 563a98a..04418fb 100644
--- a/arch/arm/boards/pcm043/pcm043.c
+++ b/arch/arm/boards/pcm043/pcm043.c
@@ -43,6 +43,7 @@
 #include <mach/imx-pll.h>
 #include <mach/iomux-mx35.h>
 #include <mach/devices-imx35.h>
+#include <mach/generic.h>
 
 static struct fec_platform_data fec_info = {
 	.xcv_type = MII100,
@@ -113,6 +114,7 @@ struct gpio_led led0 = {
 static int imx35_devices_init(void)
 {
 	uint32_t reg;
+	char *envstr;
 
 	/* CS0: Nor Flash */
 	imx35_setup_weimcs(5, 0x22C0CF00, 0x75000D01, 0x00000900);
@@ -137,23 +139,24 @@ static int imx35_devices_init(void)
 	 */
 	add_cfi_flash_device(DEVICE_ID_DYNAMIC, MX35_CS0_BASE_ADDR, 32 * 1024 * 1024, 0);
 
-	if ((reg & 0xc00) == 0x800) {   /* reset mode: external boot */
-		switch ( (reg >> 25) & 0x3) {
-		case 0x01:              /* NAND is the source */
-			devfs_add_partition("nand0", 0x00000, SZ_512K, DEVFS_PARTITION_FIXED, "self_raw");
-			dev_add_bb_dev("self_raw", "self0");
-			devfs_add_partition("nand0", SZ_512K, SZ_256K, DEVFS_PARTITION_FIXED, "env_raw");
-			dev_add_bb_dev("env_raw", "env0");
-			break;
-
-		case 0x00:              /* NOR is the source */
-			devfs_add_partition("nor0", 0x00000, SZ_512K, DEVFS_PARTITION_FIXED, "self0"); /* ourself */
-			devfs_add_partition("nor0", SZ_512K, SZ_128K, DEVFS_PARTITION_FIXED, "env0");  /* environment */
-			protect_file("/dev/env0", 1);
-			break;
-		}
+	switch (imx_bootsource()) {
+	case bootsource_nand:
+		devfs_add_partition("nand0", 0x00000, SZ_512K, DEVFS_PARTITION_FIXED, "self_raw");
+		dev_add_bb_dev("self_raw", "self0");
+		devfs_add_partition("nand0", SZ_512K, SZ_256K, DEVFS_PARTITION_FIXED, "env_raw");
+		dev_add_bb_dev("env_raw", "env0");
+		envstr = "NAND";
+		break;
+	case bootsource_nor:
+	default:
+		devfs_add_partition("nor0", 0x00000, SZ_512K, DEVFS_PARTITION_FIXED, "self0"); /* ourself */
+		devfs_add_partition("nor0", SZ_512K, SZ_128K, DEVFS_PARTITION_FIXED, "env0");  /* environment */
+		protect_file("/dev/env0", 1);
+		envstr = "NOR";
+		break;
 	}
 
+	pr_info("using environment from %s flash\n", envstr);
 
 	imx35_add_fb(&ipu_fb_data);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
