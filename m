Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qj5qb-0006l2-TK
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 08:40:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Jul 2011 10:40:03 +0200
Message-Id: <1311064803-6305-20-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311064803-6305-1-git-send-email-s.hauer@pengutronix.de>
References: <1311064803-6305-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 19/19] ARM i.MX51 babbage: use add_mem_device helper
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx51-pdk/board.c |   20 +++++---------------
 1 files changed, 5 insertions(+), 15 deletions(-)

diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index 35d6153..686cb60 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -30,6 +30,7 @@
 #include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
+#include <sizes.h>
 #include <nand.h>
 #include <spi/spi.h>
 #include <mfd/mc13892.h>
@@ -41,19 +42,6 @@
 #include <mach/iomux-mx51.h>
 #include <mach/devices-imx51.h>
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
-};
-
-static struct device_d sdram_dev = {
-	.id       = -1,
-	.name     = "mem",
-	.map_base = 0x90000000,
-	.size     = 512 * 1024 * 1024,
-	.platform_data = &ram_pdata,
-};
-
 static struct fec_platform_data fec_info = {
 	.xcv_type = MII100,
 };
@@ -242,9 +230,11 @@ static void babbage_power_init(void)
 
 static int f3s_devices_init(void)
 {
+	struct device_d *sdram_dev;
+
 	babbage_mmu_init();
 
-	register_device(&sdram_dev);
+	sdram_dev = add_mem_device("ram0", 0x90000000, SZ_512M, DEVFS_RDWR);
 	imx51_add_fec(&fec_info);
 	imx51_add_mmc0(NULL);
 
@@ -254,7 +244,7 @@ static int f3s_devices_init(void)
 
 	babbage_power_init();
 
-	armlinux_add_dram(&sdram_dev);
+	armlinux_add_dram(sdram_dev);
 	armlinux_set_bootparams((void *)0x90000100);
 	armlinux_set_architecture(MACH_TYPE_MX51_BABBAGE);
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
