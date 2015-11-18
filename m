Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZzA2O-0001qU-2O
 for barebox@lists.infradead.org; Wed, 18 Nov 2015 21:13:08 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Wed, 18 Nov 2015 21:11:49 +0000
Message-ID: <1447881110.4553.173.camel@rtred1test09.kymeta.local>
References: <1447880807.4553.171.camel@rtred1test09.kymeta.local>
In-Reply-To: <1447880807.4553.171.camel@rtred1test09.kymeta.local>
Content-Language: en-US
Content-ID: <E881E8418E874D4CACB5A3888CCD61B2@kymetacorp.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/4] mci: dw_mmc: socfpga: Supply bus-width in platform_data
To: barebox <barebox@lists.infradead.org>

Since there is no OF support in the xloader on socfpga it uses the
platform_data system.  There needs to be a way to supply the
equivalent of the DT property bus-width this way to support devices
that need to use a smaller bus.

So that we don't need to put every flag that might get added to the
MMC_CAP list into platform_data, just put the bus width ones into
platform_data.

The socfpga dts sources specify a bus-width of 4 so use that in the
platform_data for socfpga.

Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---
 arch/arm/mach-socfpga/xload.c  |  2 ++
 drivers/mci/dw_mmc.c           | 24 +++++++++++++-----------
 include/platform_data/dw_mmc.h |  1 +
 3 files changed, 16 insertions(+), 11 deletions(-)

diff --git a/arch/arm/mach-socfpga/xload.c b/arch/arm/mach-socfpga/xload.c
index 272896b..cf05ff3 100644
--- a/arch/arm/mach-socfpga/xload.c
+++ b/arch/arm/mach-socfpga/xload.c
@@ -10,6 +10,7 @@
 #include <linux/sizes.h>
 #include <fs.h>
 #include <io.h>
+#include <mci.h>
 
 #include <linux/clkdev.h>
 #include <linux/stat.h>
@@ -33,6 +34,7 @@ enum socfpga_clks {
 static struct clk *clks[clk_max];
 
 static struct dw_mmc_platform_data mmc_pdata = {
+	.bus_width_caps = MMC_CAP_4_BIT_DATA,
 	.ciu_div = 3,
 };
 
diff --git a/drivers/mci/dw_mmc.c b/drivers/mci/dw_mmc.c
index acdf795..f8ff389 100644
--- a/drivers/mci/dw_mmc.c
+++ b/drivers/mci/dw_mmc.c
@@ -698,9 +698,22 @@ static int dw_mmc_probe(struct device_d *dev)
 	if (IS_ERR(host->ioaddr))
 		return PTR_ERR(host->ioaddr);
 
+	host->idmac = dma_alloc_coherent(sizeof(*host->idmac) * DW_MMC_NUM_IDMACS,
+					 DMA_ADDRESS_BROKEN);
+
+	host->mci.send_cmd = dwmci_cmd;
+	host->mci.set_ios = dwmci_set_ios;
+	host->mci.init = dwmci_init;
+	host->mci.card_present = dwmci_card_present;
+	host->mci.hw_dev = dev;
+	host->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
+	host->mci.host_caps = MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA;
+
 	if (pdata) {
 		mci->devname = pdata->devname;
 		host->ciu_div = pdata->ciu_div;
+		host->mci.host_caps &= ~MMC_CAP_BIT_DATA_MASK;
+		host->mci.host_caps |= pdata->bus_width_caps;
 	} else if (dev->device_node) {
 		const char *alias = of_alias_get(dev->device_node);
 		if (alias)
@@ -712,17 +725,6 @@ static int dw_mmc_probe(struct device_d *dev)
 	/* divider is 0 based in pdata and 1 based in our private struct */
 	host->ciu_div++;
 
-	host->idmac = dma_alloc_coherent(sizeof(*host->idmac) * DW_MMC_NUM_IDMACS,
-					 DMA_ADDRESS_BROKEN);
-
-	host->mci.send_cmd = dwmci_cmd;
-	host->mci.set_ios = dwmci_set_ios;
-	host->mci.init = dwmci_init;
-	host->mci.card_present = dwmci_card_present;
-	host->mci.hw_dev = dev;
-	host->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
-	host->mci.host_caps = MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA;
-
 	if (of_device_is_compatible(dev->device_node,
 	    "rockchip,rk2928-dw-mshc"))
 		host->pwren_value = 0;
diff --git a/include/platform_data/dw_mmc.h b/include/platform_data/dw_mmc.h
index 48faa76..ce1b339 100644
--- a/include/platform_data/dw_mmc.h
+++ b/include/platform_data/dw_mmc.h
@@ -3,6 +3,7 @@
 
 struct dw_mmc_platform_data {
 	char *devname;
+	unsigned int bus_width_caps;
 	int ciu_div;
 };
 
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
