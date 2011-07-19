Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qj5qg-0006lB-6n
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 08:40:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Jul 2011 10:40:01 +0200
Message-Id: <1311064803-6305-18-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 17/19] ARM pcm038: use add_mem_device helper
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pcm038/pcm038.c |   34 +++++-----------------------------
 1 files changed, 5 insertions(+), 29 deletions(-)

diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 3ca6650..6cb96f1 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -34,6 +34,7 @@
 #include <fcntl.h>
 #include <nand.h>
 #include <command.h>
+#include <sizes.h>
 #include <spi/spi.h>
 #include <asm/io.h>
 #include <mach/imx-nand.h>
@@ -54,32 +55,6 @@ static struct device_d cfi_dev = {
 	.size     = 32 * 1024 * 1024,
 };
 
-static struct memory_platform_data ram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
-};
-
-static struct device_d sdram_dev = {
-	.id	  = -1,
-	.name     = "mem",
-	.map_base = 0xa0000000,
-	.size     = 128 * 1024 * 1024,
-	.platform_data = &ram_pdata,
-};
-
-static struct memory_platform_data sram_pdata = {
-	.name = "sram0",
-	.flags = DEVFS_RDWR,
-};
-
-static struct device_d sram_dev = {
-	.id	  = -1,
-	.name     = "mem",
-	.map_base = 0xc8000000,
-	.size     = 512 * 1024, /* Can be up to 2MiB */
-	.platform_data = &sram_pdata,
-};
-
 static struct fec_platform_data fec_info = {
 	.xcv_type = MII100,
 	.phy_addr = 1,
@@ -191,6 +166,7 @@ static int pcm038_devices_init(void)
 {
 	int i;
 	char *envdev;
+	struct device_d *sdramdev;
 
 	unsigned int mode[] = {
 		PD0_AIN_FEC_TXD0,
@@ -294,8 +270,8 @@ static int pcm038_devices_init(void)
 
 	register_device(&cfi_dev);
 	imx27_add_nand(&nand_info);
-	register_device(&sdram_dev);
-	register_device(&sram_dev);
+	sdramdev = add_mem_device("ram0", 0xa0000000, SZ_128M, DEVFS_RDWR);
+	add_mem_device("sram0", 0xc8000000, SZ_512K, DEVFS_RDWR);
 	imx27_add_fb(&pcm038_fb_data);
 
 #ifdef CONFIG_USB
@@ -330,7 +306,7 @@ static int pcm038_devices_init(void)
 
 	printf("Using environment in %s Flash\n", envdev);
 
-	armlinux_add_dram(&sdram_dev);
+	armlinux_add_dram(sdramdev);
 	armlinux_set_bootparams((void *)0xa0000100);
 	armlinux_set_architecture(MACH_TYPE_PCM038);
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
