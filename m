Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo4.mail-out.ovh.net ([178.33.253.54]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qi2dQ-0000jH-02
	for barebox@lists.infradead.org; Sat, 16 Jul 2011 11:02:22 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 86CE9FFA023
	for <barebox@lists.infradead.org>;
	Sat, 16 Jul 2011 13:02:33 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 16 Jul 2011 12:45:32 +0200
Message-Id: <1310813132-4151-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1310813132-4151-1-git-send-email-plagnioj@jcrosoft.com>
References: <1310813132-4151-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 7/7] dm9200: use "struct resource" instead of platform_data
To: barebox@lists.infradead.org
Cc: Patrice Vilchez <patrice.vilchez@atmel.com>, Nicolas Ferre <nicolas.ferre@atmel.com>

drop iobase and iodata in favor of resources

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
Cc: Patrice Vilchez <patrice.vilchez@atmel.com>
---
 arch/arm/boards/at91sam9261ek/init.c            |    8 +++++---
 arch/arm/boards/mini2440/env/welcome_en.bmp.lzo |  Bin 0 -> 26285 bytes
 arch/arm/boards/mini2440/mini2440.c             |   17 +++++++++++++----
 arch/arm/boards/pm9261/init.c                   |    8 +++++---
 arch/arm/boards/scb9328/scb9328.c               |   23 ++++++++++++++++-------
 drivers/net/dm9000.c                            |   10 ++++++++--
 include/dm9000.h                                |    2 --
 7 files changed, 47 insertions(+), 21 deletions(-)
 create mode 100644 arch/arm/boards/mini2440/env/welcome_en.bmp.lzo

diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index 3def38e..4e52ab8 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -89,8 +89,6 @@ static void ek_add_device_nand(void)
  */
 #if defined(CONFIG_DRIVER_NET_DM9000)
 static struct dm9000_platform_data dm9000_data = {
-	.iobase		= AT91_CHIPSELECT_2,
-	.iodata		= AT91_CHIPSELECT_2 + 4,
 	.buswidth	= DM9000_WIDTH_16,
 	.srom		= 0,
 };
@@ -98,7 +96,11 @@ static struct dm9000_platform_data dm9000_data = {
 static struct resource dm9000_resources[] = {
 	[0] = {
 		.start	= AT91_CHIPSELECT_2,
-		.size	= 8,
+		.size	= 4,
+	},
+	[1] = {
+		.start	= AT91_CHIPSELECT_2 + 4,
+		.size	= 4,
 	},
 };
 
diff --git a/arch/arm/boards/mini2440/env/welcome_en.bmp.lzo b/arch/arm/boards/mini2440/env/welcome_en.bmp.lzo
new file mode 100644
index 0000000000000000000000000000000000000000..8d4b743d934ed19c63ae1c6738d6661de545745c
GIT binary patch
literal 26285
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
HX88XAF7rza

literal 0
HcmV?d00001

diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index dcc7c3f..b487082 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -75,16 +75,25 @@ static struct device_d nand_dev = {
  * Area 2: Offset 0x304...0x307
  */
 static struct dm9000_platform_data dm9000_data = {
-	.iobase   = CS4_BASE + 0x300,
-	.iodata   = CS4_BASE + 0x304,
 	.buswidth = DM9000_WIDTH_16,
 	.srom     = 1,
 };
 
+static struct resource dm9000_resources[] = {
+	[0] = {
+		.start	= CS4_BASE + 0x300,
+		.size	= 4,
+	},
+	[1] = {
+		.start	= CS4_BASE + 0x304,
+		.size	= 4,
+	},
+};
+
 static struct device_d dm9000_dev = {
 	.name     = "dm9000",
-	.map_base = CS4_BASE + 0x300,
-	.size     = 8,
+	.num_resources	= ARRAY_SIZE(dm9000_resources),
+	.resource	= dm9000_resources,
 	.platform_data = &dm9000_data,
 };
 
diff --git a/arch/arm/boards/pm9261/init.c b/arch/arm/boards/pm9261/init.c
index af92835..4811c73 100644
--- a/arch/arm/boards/pm9261/init.c
+++ b/arch/arm/boards/pm9261/init.c
@@ -89,8 +89,6 @@ static void pm_add_device_nand(void)
  */
 #if defined(CONFIG_DRIVER_NET_DM9000)
 static struct dm9000_platform_data dm9000_data = {
-	.iobase		= AT91_CHIPSELECT_2,
-	.iodata		= AT91_CHIPSELECT_2 + 4,
 	.buswidth	= DM9000_WIDTH_16,
 	.srom		= 1,
 };
@@ -98,7 +96,11 @@ static struct dm9000_platform_data dm9000_data = {
 static struct resource dm9000_resources[] = {
 	[0] = {
 		.start	= AT91_CHIPSELECT_2,
-		.size	= 8,
+		.size	= 4,
+	},
+	[1] = {
+		.start	= AT91_CHIPSELECT_2 + 4,
+		.size	= 4,
 	},
 };
 
diff --git a/arch/arm/boards/scb9328/scb9328.c b/arch/arm/boards/scb9328/scb9328.c
index a98d9fe..69d0589 100644
--- a/arch/arm/boards/scb9328/scb9328.c
+++ b/arch/arm/boards/scb9328/scb9328.c
@@ -55,18 +55,27 @@ static struct device_d sdram_dev = {
 };
 
 static struct dm9000_platform_data dm9000_data = {
-	.iobase   = 0x16000000,
-	.iodata   = 0x16000004,
 	.buswidth = DM9000_WIDTH_16,
 	.srom     = 1,
 };
 
+static struct resource dm9000_resources[] = {
+	[0] = {
+		.start	= 0x16000000,
+		.size	= 4,
+	},
+	[1] = {
+		.start	= 0x16000004,
+		.size	= 4,
+	},
+};
+
 static struct device_d dm9000_dev = {
-	.id	  = -1,
-	.name     = "dm9000",
-	.map_base = 0x16000000,
-	.size     = 8,
-	.platform_data = &dm9000_data,
+	.id		= -1,
+	.name		= "dm9000",
+	.num_resources	= ARRAY_SIZE(dm9000_resources),
+	.resource	= dm9000_resources,
+	.platform_data	= &dm9000_data,
 };
 
 struct gpio_led leds[] = {
diff --git a/drivers/net/dm9000.c b/drivers/net/dm9000.c
index c8d8517..416525b 100644
--- a/drivers/net/dm9000.c
+++ b/drivers/net/dm9000.c
@@ -491,12 +491,18 @@ static int dm9000_probe(struct device_d *dev)
 		printf("dm9000: no platform_data\n");
 		return -ENODEV;
 	}
+
+	if (!dev->num_resources < 2) {
+		printf("dm9000: need 2 resources base and data");
+		return -ENODEV;
+	}
+
 	pdata = dev->platform_data;
 
 	priv = edev->priv;
 	priv->buswidth = pdata->buswidth;
-	priv->iodata = (void *)pdata->iodata;
-	priv->iobase = (void *)pdata->iobase;
+	priv->iodata = (void __iomem *)dev->resource[1].start;
+	priv->iobase = (void __iomem *)dev->resource[0].start;
 	priv->srom = pdata->srom;
 
 	edev->init = dm9000_init_dev;
diff --git a/include/dm9000.h b/include/dm9000.h
index b4a04b1..0991ab5 100644
--- a/include/dm9000.h
+++ b/include/dm9000.h
@@ -7,8 +7,6 @@
 #define DM9000_WIDTH_32		3
 
 struct dm9000_platform_data {
-	unsigned long iobase;
-	unsigned long iodata;
 	int buswidth;
 	int srom;
 };
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
