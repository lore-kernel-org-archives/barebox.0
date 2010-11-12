Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PGyGj-0007mg-K0
	for barebox@lists.infradead.org; Fri, 12 Nov 2010 18:22:46 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 12 Nov 2010 19:18:58 +0100
Message-Id: <1289585938-22813-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20101112180228.GC13661@game.jcrosoft.org>
References: <20101112180228.GC13661@game.jcrosoft.org>
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
Subject: [PATCH 5/5] pcm037: convert to multiple mem resources
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/pcm037/pcm037.c |   45 ++++++++++++--------------------------
 1 files changed, 14 insertions(+), 31 deletions(-)

diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index 38725a2..a1783af 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -102,46 +102,35 @@ static struct device_d network_dev = {
 #define SDRAM0	256
 #endif
 
-static struct resource sdram0_dev_resources[] = {
-	[0] = {
-		.name	= "ram0",
-		.start	= IMX_SDRAM_CS0,
-		.size	= SDRAM0 * 1024 * 1024,	/* fix size */
-		.flags	= DEVFS_RDWR,
-	},
-};
-
-static struct device_d sdram0_dev = {
-	.id	  = -1,
-	.name     = "mem",
-	.num_resources	= ARRAY_SIZE(sdram0_dev_resources),
-	.resource	= sdram0_dev_resources,
-};
-
-#ifndef CONFIG_PCM037_SDRAM_BANK1_NONE
-
 #if defined CONFIG_PCM037_SDRAM_BANK1_128MB
 #define SDRAM1	128
 #elif defined CONFIG_PCM037_SDRAM_BANK1_256MB
 #define SDRAM1	256
 #endif
 
-static struct resource sdram1_dev_resources[] = {
+static struct resource sdram_dev_resources[] = {
 	[0] = {
+		.name	= "ram0",
+		.start	= IMX_SDRAM_CS0,
+		.size	= SDRAM0 * 1024 * 1024,	/* fix size */
+		.flags	= DEVFS_RDWR,
+	},
+#ifndef CONFIG_PCM037_SDRAM_BANK1_NONE
+	[1] = {
 		.name	= "ram1",
 		.start	= IMX_SDRAM_CS1,
 		.size	= SDRAM1 * 1024 * 1024,	/* fix size */
 		.flags	= DEVFS_RDWR,
 	},
+#endif
 };
 
-static struct device_d sdram1_dev = {
+static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.num_resources	= ARRAY_SIZE(sdram1_dev_resources),
-	.resource	= sdram1_dev_resources,
+	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
+	.resource	= sdram_dev_resources,
 };
-#endif
 
 struct imx_nand_platform_data nand_info = {
 	.width = 1,
@@ -328,20 +317,14 @@ static int imx31_devices_init(void)
 	imx31_add_nand(&nand_info);
 	register_device(&network_dev);
 
-	register_device(&sdram0_dev);
-#ifndef CONFIG_PCM037_SDRAM_BANK1_NONE
-	register_device(&sdram1_dev);
-#endif
+	register_device(&sdram_dev);
 #ifdef CONFIG_USB
 	pcm037_usb_init();
 	register_device(&usbotg_dev);
 	register_device(&usbh2_dev);
 #endif
 
-	armlinux_add_dram(&sdram0_dev);
-#ifndef CONFIG_PCM037_SDRAM_BANK1_NONE
-	armlinux_add_dram(&sdram1_dev);
-#endif
+	armlinux_add_dram(&sdram_dev);
 	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_PCM037);
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
