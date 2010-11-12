Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 31.mail-out.ovh.net ([213.186.62.10])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PGyGk-0007ld-VC
	for barebox@lists.infradead.org; Fri, 12 Nov 2010 18:22:47 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 12 Nov 2010 19:18:57 +0100
Message-Id: <1289585938-22813-4-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/5] edb93xx: convert to multiple mem resources
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/edb93xx/edb93xx.c |   68 +++++-------------------------------
 1 files changed, 10 insertions(+), 58 deletions(-)

diff --git a/arch/arm/boards/edb93xx/edb93xx.c b/arch/arm/boards/edb93xx/edb93xx.c
index 36cbb51..01ff2b5 100644
--- a/arch/arm/boards/edb93xx/edb93xx.c
+++ b/arch/arm/boards/edb93xx/edb93xx.c
@@ -52,75 +52,45 @@ static struct device_d cfi_dev = {
 	.resource	= cfi_dev_resources,
 };
 
-static struct resource sdram0_dev_resources[] = {
+static struct resource sdram_dev_resources[] = {
 	[0] = {
 		.name	= "ram0",
 		.start	= CONFIG_EP93XX_SDRAM_BANK0_BASE,
 		.size	= CONFIG_EP93XX_SDRAM_BANK0_SIZE,
 		.flags = DEVFS_RDWR,
 	},
-};
-
-static struct device_d sdram0_dev = {
-	.id	  = -1,
-	.name     = "mem",
-	.num_resources	= ARRAY_SIZE(sdram0_dev_resources),
-	.resource	= sdram0_dev_resources,
-};
-
 #if (CONFIG_EP93XX_SDRAM_NUM_BANKS >= 2)
-static struct resource sdram1_dev_resources[] = {
-	[0] = {
+	[1] = {
 		.name	= "ram1",
 		.start	= CONFIG_EP93XX_SDRAM_BANK1_BASE,
 		.size	= CONFIG_EP93XX_SDRAM_BANK1_SIZE,
 		.flags	= DEVFS_RDWR,
 	},
-};
-
-static struct device_d sdram1_dev = {
-	.id	  = -1,
-	.name     = "mem",
-	.num_resources	= ARRAY_SIZE(sdram1_dev_resources),
-	.resource	= sdram1_dev_resources,
-};
 #endif
-
 #if (CONFIG_EP93XX_SDRAM_NUM_BANKS >= 3)
-static struct resource sdram2_dev_resources[] = {
-	[0] = {
+	[2] = {
 		.name	= "ram2",
 		.start	= CONFIG_EP93XX_SDRAM_BANK2_BASE,
 		.size	= CONFIG_EP93XX_SDRAM_BANK2_SIZE,
 		.flags	= DEVFS_RDWR,
 	},
-};
-
-static struct device_d sdram2_dev = {
-	.id	  = -1,
-	.name     = "mem",
-	.num_resources	= ARRAY_SIZE(sdram2_dev_resources),
-	.resource	= sdram2_dev_resources,
-};
 #endif
-
 #if (CONFIG_EP93XX_SDRAM_NUM_BANKS == 4)
-static struct resource sdram3_dev_resources[] = {
-	[0] = {
+	[3] = {
 		.name	= "ram3",
 		.start	= CONFIG_EP93XX_SDRAM_BANK3_BASE,
 		.size	= CONFIG_EP93XX_SDRAM_BANK3_SIZE,
 		.flags	= DEVFS_RDWR,
 	},
+#endif
 };
 
-static struct device_d sdram3_dev = {
+static struct device_d sdram_dev = {
 	.id	  = -1,
 	.name     = "mem",
-	.num_resources	= ARRAY_SIZE(sdram3_dev_resources),
-	.resource	= sdram3_dev_resources,
+	.num_resources	= ARRAY_SIZE(sdram_dev_resources),
+	.resource	= sdram_dev_resources,
 };
-#endif
 
 static struct device_d eth_dev = {
 	.id	  = -1,
@@ -140,27 +110,9 @@ static int ep93xx_devices_init(void)
 
 	protect_file("/dev/env0", 1);
 
-	register_device(&sdram0_dev);
-#if (CONFIG_EP93XX_SDRAM_NUM_BANKS >= 2)
-	register_device(&sdram1_dev);
-#endif
-#if (CONFIG_EP93XX_SDRAM_NUM_BANKS >= 3)
-	register_device(&sdram2_dev);
-#endif
-#if (CONFIG_EP93XX_SDRAM_NUM_BANKS == 4)
-	register_device(&sdram3_dev);
-#endif
+	register_device(&sdram_dev);
 
-	armlinux_add_dram(&sdram0_dev);
-#if (CONFIG_EP93XX_SDRAM_NUM_BANKS >= 2)
-	armlinux_add_dram(&sdram1_dev);
-#endif
-#if (CONFIG_EP93XX_SDRAM_NUM_BANKS >= 3)
-	armlinux_add_dram(&sdram2_dev);
-#endif
-#if (CONFIG_EP93XX_SDRAM_NUM_BANKS == 4)
-	armlinux_add_dram(&sdram3_dev);
-#endif
+	armlinux_add_dram(&sdram_dev);
 
 	register_device(&eth_dev);
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
