Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo4.mail-out.ovh.net ([46.105.40.29]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QinbX-0005yE-WE
	for barebox@lists.infradead.org; Mon, 18 Jul 2011 13:11:30 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id B5B2AFFA74E
	for <barebox@lists.infradead.org>;
	Mon, 18 Jul 2011 15:11:51 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 18 Jul 2011 14:54:35 +0200
Message-Id: <1310993678-7563-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1310993678-7563-1-git-send-email-plagnioj@jcrosoft.com>
References: <1310993678-7563-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 07/10 v2] dm9200: use "struct resource" instead of
	platform_data
To: barebox@lists.infradead.org

drop iobase and iodata in favor of resources

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9261ek/init.c |    8 +++++---
 arch/arm/boards/mini2440/mini2440.c  |   17 +++++++++++++----
 arch/arm/boards/pm9261/init.c        |    8 +++++---
 arch/arm/boards/scb9328/scb9328.c    |   23 ++++++++++++++++-------
 drivers/net/dm9000.c                 |   10 ++++++++--
 include/dm9000.h                     |    2 --
 6 files changed, 47 insertions(+), 21 deletions(-)

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
index c8d8517..708801d 100644
--- a/drivers/net/dm9000.c
+++ b/drivers/net/dm9000.c
@@ -491,12 +491,18 @@ static int dm9000_probe(struct device_d *dev)
 		printf("dm9000: no platform_data\n");
 		return -ENODEV;
 	}
+
+	if (dev->num_resources < 2) {
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
