Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo4.mail-out.ovh.net ([91.121.62.11]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QmgHQ-0003zz-EQ
	for barebox@lists.infradead.org; Fri, 29 Jul 2011 06:10:48 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 586D4FFA2E9
	for <barebox@lists.infradead.org>;
	Fri, 29 Jul 2011 08:11:26 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 29 Jul 2011 07:52:54 +0200
Message-Id: <1311918777-26719-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1311918777-26719-1-git-send-email-plagnioj@jcrosoft.com>
References: <1311918777-26719-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/7] dm9000: introduce add_dm9000_device to register dm9000
	device
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9261ek/init.c |   25 +-------------
 arch/arm/boards/mini2440/mini2440.c  |   24 +-------------
 arch/arm/boards/pm9261/init.c        |   26 ++-------------
 arch/arm/boards/scb9328/scb9328.c    |   25 +-------------
 drivers/base/resource.c              |   57 +++++++++++++++++++++++++++++++--
 drivers/net/dm9000.c                 |    3 +-
 include/dm9000.h                     |    1 -
 include/driver.h                     |   11 ++++++
 8 files changed, 75 insertions(+), 97 deletions(-)

diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index 812b399..627202f 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -89,31 +89,9 @@ static void ek_add_device_nand(void)
  */
 #if defined(CONFIG_DRIVER_NET_DM9000)
 static struct dm9000_platform_data dm9000_data = {
-	.buswidth	= IORESOURCE_MEM_16BIT,
 	.srom		= 0,
 };
 
-static struct resource dm9000_resources[] = {
-	[0] = {
-		.start	= AT91_CHIPSELECT_2,
-		.size	= 4,
-		.flags	= IORESOURCE_MEM,
-	},
-	[1] = {
-		.start	= AT91_CHIPSELECT_2 + 4,
-		.size	= 4,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d dm9000_dev = {
-	.id		= 0,
-	.name		= "dm9000",
-	.num_resources	= ARRAY_SIZE(dm9000_resources),
-	.resource	= dm9000_resources,
-	.platform_data	= &dm9000_data,
-};
-
 /*
  * SMC timings for the DM9000.
  * Note: These timings were calculated for MASTER_CLOCK = 100000000 according to the DM9000 timings.
@@ -147,7 +125,8 @@ static void __init ek_add_device_dm9000(void)
 	/* Configure Interrupt pin as input, no pull-up */
 	at91_set_gpio_input(AT91_PIN_PC11, 0);
 
-	register_device(&dm9000_dev);
+	add_dm9000_device(0, AT91_CHIPSELECT_2, AT91_CHIPSELECT_2 + 4,
+			  IORESOURCE_MEM_16BIT, &dm9000_data);
 }
 #else
 static void __init ek_add_device_dm9000(void) {}
diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index 634e035..dbf7503 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -63,30 +63,9 @@ static struct device_d nand_dev = {
  * Area 2: Offset 0x304...0x307
  */
 static struct dm9000_platform_data dm9000_data = {
-	.buswidth = IORESOURCE_MEM_16BIT,
 	.srom     = 1,
 };
 
-static struct resource dm9000_resources[] = {
-	[0] = {
-		.start	= CS4_BASE + 0x300,
-		.size	= 4,
-		.flags	= IORESOURCE_MEM,
-	},
-	[1] = {
-		.start	= CS4_BASE + 0x304,
-		.size	= 4,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d dm9000_dev = {
-	.name     = "dm9000",
-	.num_resources	= ARRAY_SIZE(dm9000_resources),
-	.resource	= dm9000_resources,
-	.platform_data = &dm9000_data,
-};
-
 static struct s3c_mci_platform_data mci_data = {
 	.caps = MMC_MODE_4BIT | MMC_MODE_HS | MMC_MODE_HS_52MHz,
 	.voltages = MMC_VDD_32_33 | MMC_VDD_33_34,
@@ -332,7 +311,8 @@ static int mini2440_devices_init(void)
 				   IORESOURCE_MEM_WRITEABLE);
 	armlinux_add_dram(sdram_dev);
 
-	register_device(&dm9000_dev);
+	add_dm9000_device(0, CS4_BASE + 0x300, CS4_BASE + 0x304,
+			  IORESOURCE_MEM_16BIT, &dm9000_data);
 #ifdef CONFIG_NAND
 	/* ----------- add some vital partitions -------- */
 	devfs_del_partition("self_raw");
diff --git a/arch/arm/boards/pm9261/init.c b/arch/arm/boards/pm9261/init.c
index fa21e24..783a404 100644
--- a/arch/arm/boards/pm9261/init.c
+++ b/arch/arm/boards/pm9261/init.c
@@ -89,31 +89,9 @@ static void pm_add_device_nand(void)
  */
 #if defined(CONFIG_DRIVER_NET_DM9000)
 static struct dm9000_platform_data dm9000_data = {
-	.buswidth	= IORESOURCE_MEM_16BIT,
 	.srom		= 1,
 };
 
-static struct resource dm9000_resources[] = {
-	[0] = {
-		.start	= AT91_CHIPSELECT_2,
-		.size	= 4,
-		.flags	= IORESOURCE_MEM,
-	},
-	[1] = {
-		.start	= AT91_CHIPSELECT_2 + 4,
-		.size	= 4,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d dm9000_dev = {
-	.id		= 0,
-	.name		= "dm9000",
-	.num_resources	= ARRAY_SIZE(dm9000_resources),
-	.resource	= dm9000_resources,
-	.platform_data	= &dm9000_data,
-};
-
 /*
  * SMC timings for the DM9000.
  * Note: These timings were calculated for MASTER_CLOCK = 100000000 according to the DM9000 timings.
@@ -141,7 +119,8 @@ static void __init pm_add_device_dm9000(void)
 	/* Configure chip-select 2 (DM9000) */
 	sam9_smc_configure(2, &dm9000_smc_config);
 
-	register_device(&dm9000_dev);
+	add_dm9000_device(0, AT91_CHIPSELECT_2, AT91_CHIPSELECT_2 + 4,
+			  IORESOURCE_MEM_16BIT, &dm9000_data);
 }
 #else
 static void __init ek_add_device_dm9000(void) {}
@@ -151,6 +130,7 @@ static int pm9261_devices_init(void)
 {
 	at91_add_device_sdram(64 * 1024 * 1024);
 	pm_add_device_nand();
+	pm_add_device_dm9000();
 	add_cfi_flash_device(0, AT91_CHIPSELECT_0, 4 * 1024 * 1024, 0);
 
 	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self");
diff --git a/arch/arm/boards/scb9328/scb9328.c b/arch/arm/boards/scb9328/scb9328.c
index 47aa8ce..a610275 100644
--- a/arch/arm/boards/scb9328/scb9328.c
+++ b/arch/arm/boards/scb9328/scb9328.c
@@ -34,31 +34,9 @@
 #include <led.h>
 
 static struct dm9000_platform_data dm9000_data = {
-	.buswidth = IORESOURCE_MEM_16BIT,
 	.srom     = 1,
 };
 
-static struct resource dm9000_resources[] = {
-	[0] = {
-		.start	= 0x16000000,
-		.size	= 4,
-		.flags	= IORESOURCE_MEM,
-	},
-	[1] = {
-		.start	= 0x16000004,
-		.size	= 4,
-		.flags	= IORESOURCE_MEM,
-	},
-};
-
-static struct device_d dm9000_dev = {
-	.id		= -1,
-	.name		= "dm9000",
-	.num_resources	= ARRAY_SIZE(dm9000_resources),
-	.resource	= dm9000_resources,
-	.platform_data	= &dm9000_data,
-};
-
 struct gpio_led leds[] = {
 	{
 		.gpio = 32 + 21,
@@ -106,7 +84,8 @@ static int scb9328_devices_init(void)
 	sdram_dev = add_mem_device("ram0", 0x08000000, 16 * 1024 * 1024,
 				   IORESOURCE_MEM_WRITEABLE);
 	armlinux_add_dram(sdram_dev);
-	register_device(&dm9000_dev);
+	add_dm9000_device(-1, 0x16000000, 0x16000004,
+			  IORESOURCE_MEM_16BIT, &dm9000_data);
 
 	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
 	devfs_add_partition("nor0", 0x40000, 0x20000, PARTITION_FIXED, "env0");
diff --git a/drivers/base/resource.c b/drivers/base/resource.c
index f0450d3..98fc68a 100644
--- a/drivers/base/resource.c
+++ b/drivers/base/resource.c
@@ -25,15 +25,25 @@
 #include <driver.h>
 #include <xfuncs.h>
 
-struct device_d *add_generic_device(const char* devname, int id, const char *resname,
-		resource_size_t start, resource_size_t size, unsigned int flags,
-		void *pdata)
+static struct device_d *alloc_device(const char* devname, int id, void *pdata)
 {
 	struct device_d *dev;
 
 	dev = xzalloc(sizeof(*dev));
 	strcpy(dev->name, devname);
 	dev->id = id;
+	dev->platform_data = pdata;
+
+	return dev;
+}
+
+struct device_d *add_generic_device(const char* devname, int id, const char *resname,
+		resource_size_t start, resource_size_t size, unsigned int flags,
+		void *pdata)
+{
+	struct device_d *dev;
+
+	dev = alloc_device(devname, id, pdata);
 	dev->resource = xzalloc(sizeof(struct resource));
 	dev->num_resources = 1;
 	if (resname)
@@ -41,10 +51,49 @@ struct device_d *add_generic_device(const char* devname, int id, const char *res
 	dev->resource[0].start = start;
 	dev->resource[0].size = size;
 	dev->resource[0].flags = flags;
-	dev->platform_data = pdata;
 
 	register_device(dev);
 
 	return dev;
 }
 EXPORT_SYMBOL(add_generic_device);
+
+#ifdef CONFIG_DRIVER_NET_DM9000
+struct device_d *add_dm9000_device(int id, resource_size_t base,
+		resource_size_t data, int flags, void *pdata)
+{
+	struct device_d *dev;
+	resource_size_t size;
+
+	dev = alloc_device("dm9000", id, pdata);
+	dev->resource = xzalloc(sizeof(struct resource) * 2);
+	dev->num_resources = 2;
+
+	switch (flags) {
+	case IORESOURCE_MEM_32BIT:
+		size = 8;
+		break;
+	case IORESOURCE_MEM_16BIT:
+		size = 4;
+		break;
+	case IORESOURCE_MEM_8BIT:
+		size = 2;
+		break;
+	default:
+		printf("dm9000: memory width flag missing\n");
+		return NULL;
+	}
+
+	dev->resource[0].start = base;
+	dev->resource[0].size = size;
+	dev->resource[0].flags = IORESOURCE_MEM | flags;
+	dev->resource[1].start = data;
+	dev->resource[1].size = size;
+	dev->resource[1].flags = IORESOURCE_MEM | flags;
+
+	register_device(dev);
+
+	return dev;
+}
+EXPORT_SYMBOL(add_dm9000_device);
+#endif
diff --git a/drivers/net/dm9000.c b/drivers/net/dm9000.c
index 691d877..be14317 100644
--- a/drivers/net/dm9000.c
+++ b/drivers/net/dm9000.c
@@ -500,7 +500,8 @@ static int dm9000_probe(struct device_d *dev)
 	pdata = dev->platform_data;
 
 	priv = edev->priv;
-	priv->buswidth = pdata->buswidth;
+
+	priv->buswidth = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
 	priv->iodata = dev_request_mem_region(dev, 1);
 	priv->iobase = dev_request_mem_region(dev, 0);
 	priv->srom = pdata->srom;
diff --git a/include/dm9000.h b/include/dm9000.h
index c4618f1..a9a4635 100644
--- a/include/dm9000.h
+++ b/include/dm9000.h
@@ -3,7 +3,6 @@
 #define __DM9000_H__
 
 struct dm9000_platform_data {
-	int buswidth;
 	int srom;
 };
 
diff --git a/include/driver.h b/include/driver.h
index af34803..1f45019 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -227,6 +227,17 @@ static inline struct device_d *add_cfi_flash_device(int id, resource_size_t star
 				  IORESOURCE_MEM | flags, NULL);
 }
 
+#ifdef CONFIG_DRIVER_NET_DM9000
+struct device_d *add_dm9000_device(int id, resource_size_t base,
+		resource_size_t data, int flags, void *pdata);
+#else
+static inline struct device_d *add_dm9000_device(int id, resource_size_t base,
+		resource_size_t data, int flags, void *pdata)
+{
+	return NULL;
+}
+#endif
+
 /* linear list over all available devices
  */
 extern struct list_head device_list;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
