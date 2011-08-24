Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QwGvY-0003u0-VP
	for barebox@lists.infradead.org; Wed, 24 Aug 2011 17:07:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 24 Aug 2011 19:07:38 +0200
Message-Id: <1314205658-28362-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] i.MX NAND: pass second base address as resource
To: barebox@lists.infradead.org

The nand controller on i.MX51/53 uses two base addresses. Instead
of hardcode the second address use the new shiny resources two specify
it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/devices-imx51.h |   25 +++++++++++++++++++++++-
 drivers/mtd/nand/nand_imx.c                    |   21 ++++++++++++++-----
 2 files changed, 39 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/devices-imx51.h b/arch/arm/mach-imx/include/mach/devices-imx51.h
index a5deb5c..54ea647 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx51.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx51.h
@@ -1,5 +1,6 @@
 
 #include <mach/devices.h>
+#include <sizes.h>
 
 static inline struct device_d *imx51_add_spi0(struct spi_imx_master *pdata)
 {
@@ -53,6 +54,28 @@ static inline struct device_d *imx51_add_mmc1(void *pdata)
 
 static inline struct device_d *imx51_add_nand(struct imx_nand_platform_data *pdata)
 {
-	return imx_add_nand((void *)MX51_NFC_AXI_BASE_ADDR, pdata);
+	struct resource res[] = {
+		{
+			.start = MX51_NFC_BASE_ADDR,
+			.size = SZ_4K,
+			.flags = IORESOURCE_MEM,
+		}, {
+			.start = MX51_NFC_AXI_BASE_ADDR,
+			.size = SZ_4K,
+			.flags = IORESOURCE_MEM,
+		},
+	};
+	struct device_d *dev = xzalloc(sizeof(*dev));
+
+	dev->resource = xzalloc(sizeof(struct resource) * ARRAY_SIZE(res));
+	memcpy(dev->resource, res, sizeof(struct resource) * ARRAY_SIZE(res));
+	dev->num_resources = ARRAY_SIZE(res);
+	strcpy(dev->name, "imx_nand");
+	dev->id = -1;
+	dev->platform_data = pdata;
+
+	register_device(dev);
+
+	return dev;
 }
 
diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index e471c8a..f270326 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -1034,9 +1034,6 @@ static int __init imxnd_probe(struct device_d *dev)
 		return -ENOMEM;
 
 	host->data_buf = (uint8_t *)(host + 1);
-	host->base = dev_request_mem_region(dev, 0);
-
-	host->main_area0 = host->base;
 
 	if (nfc_is_v1() || nfc_is_v21()) {
 		host->preset = preset_v1_v2;
@@ -1049,21 +1046,32 @@ static int __init imxnd_probe(struct device_d *dev)
 	}
 
 	if (nfc_is_v21()) {
+		host->base = dev_request_mem_region(dev, 0);
+		host->main_area0 = host->base;
 		host->regs = host->base + 0x1e00;
 		host->spare0 = host->base + 0x1000;
 		host->spare_len = 64;
 		oob_smallpage = &nandv2_hw_eccoob_smallpage;
 		oob_largepage = &nandv2_hw_eccoob_largepage;
 	} else if (nfc_is_v1()) {
+		host->base = dev_request_mem_region(dev, 0);
+		host->main_area0 = host->base;
 		host->regs = host->base + 0xe00;
 		host->spare0 = host->base + 0x800;
 		host->spare_len = 16;
 		oob_smallpage = &nandv1_hw_eccoob_smallpage;
 		oob_largepage = &nandv1_hw_eccoob_largepage;
 	} else if (nfc_is_v3_2()) {
-#ifdef CONFIG_ARCH_IMX51
-		host->regs_ip = (void *)MX51_NFC_BASE_ADDR;
-#endif
+		host->regs_ip = dev_request_mem_region(dev, 0);
+		host->base = dev_request_mem_region(dev, 1);
+		host->main_area0 = host->base;
+
+		if (!host->regs_ip) {
+			dev_err(dev, "no second mem region\n");
+			err = -ENODEV;
+			goto escan;
+		}
+
 		host->regs_axi = host->base + 0x1e00;
 		host->spare0 = host->base + 0x1000;
 		host->spare_len = 64;
@@ -1083,6 +1091,7 @@ static int __init imxnd_probe(struct device_d *dev)
 	this = &host->nand;
 	mtd = &host->mtd;
 	mtd->priv = this;
+	mtd->dev = dev;
 
 	/* 50 us command delay time */
 	this->chip_delay = 5;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
