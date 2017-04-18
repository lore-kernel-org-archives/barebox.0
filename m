Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d0UOx-0003UY-NY
 for barebox@lists.infradead.org; Tue, 18 Apr 2017 14:46:46 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 18 Apr 2017 16:46:14 +0200
Message-Id: <20170418144615.22989-1-s.trumtrar@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] mtd: spi-nor: cadence: change devicetree bindings to
 upstream
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Upstream devicetree bindings where changed to use "cdns,is-decoded-cs"
instead of "external-decoder". Use it.
Also, get rid of the clock-names "qspi_clk" dependency.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-socfpga/xload.c         |  2 +-
 drivers/mtd/spi-nor/cadence-quadspi.c | 15 ++++++---------
 include/platform_data/cadence_qspi.h  |  2 +-
 3 files changed, 8 insertions(+), 11 deletions(-)

diff --git a/arch/arm/mach-socfpga/xload.c b/arch/arm/mach-socfpga/xload.c
index d24944bbb85e..d7997a6ac42c 100644
--- a/arch/arm/mach-socfpga/xload.c
+++ b/arch/arm/mach-socfpga/xload.c
@@ -51,7 +51,7 @@ static void socfpga_mmc_init(void)
 
 #if defined(CONFIG_SPI_CADENCE_QUADSPI)
 static struct cadence_qspi_platform_data qspi_pdata = {
-	.ext_decoder = 0,
+	.is_decoded_cs = 0,
 	.fifo_depth = 128,
 };
 
diff --git a/drivers/mtd/spi-nor/cadence-quadspi.c b/drivers/mtd/spi-nor/cadence-quadspi.c
index 680f30f707b4..626966818746 100644
--- a/drivers/mtd/spi-nor/cadence-quadspi.c
+++ b/drivers/mtd/spi-nor/cadence-quadspi.c
@@ -58,7 +58,7 @@ struct cqspi_st {
 	unsigned int	irq_mask;
 	int		current_cs;
 	unsigned int	master_ref_clk_hz;
-	unsigned int	ext_decoder;
+	unsigned int	is_decoded_cs;
 	unsigned int	fifo_depth;
 	struct cqspi_flash_pdata f_pdata[CQSPI_MAX_CHIPSELECT];
 	bool no_reconfig;
@@ -903,7 +903,7 @@ static void cqspi_switch_cs(struct cqspi_st *cqspi, unsigned int cs)
 	writel(reg, reg_base + CQSPI_REG_SIZE);
 
 	/* configure the chip select */
-	cqspi_chipselect(cqspi, cs, cqspi->ext_decoder);
+	cqspi_chipselect(cqspi, cs, cqspi->is_decoded_cs);
 
 	cqspi_controller_enable(cqspi);
 }
@@ -1020,12 +1020,9 @@ static int cqspi_parse_dt(struct cqspi_st *cqspi)
 	struct device_node *np = cqspi->dev->device_node;
 	struct device_d *dev = cqspi->dev;
 
-	if (of_property_read_u32(np, "ext-decoder", &cqspi->ext_decoder)) {
-		dev_err(dev, "couldn't determine ext-decoder\n");
-		return -ENXIO;
-	}
+	cqspi->is_decoded_cs = of_property_read_bool(np, "cdns,is-decoded-cs");
 
-	if (of_property_read_u32(np, "fifo-depth", &cqspi->fifo_depth)) {
+	if (of_property_read_u32(np, "cdns,fifo-depth", &cqspi->fifo_depth)) {
 		dev_err(dev, "couldn't determine fifo-depth\n");
 		return -ENXIO;
 	}
@@ -1123,7 +1120,7 @@ static int cqspi_probe(struct device_d *dev)
 	dev->priv = cqspi;
 
 	if (pdata) {
-		cqspi->ext_decoder = pdata->ext_decoder;
+		cqspi->is_decoded_cs = pdata->is_decoded_cs;
 		cqspi->fifo_depth = pdata->fifo_depth;
 	} else {
 		ret = cqspi_parse_dt(cqspi);
@@ -1133,7 +1130,7 @@ static int cqspi_probe(struct device_d *dev)
 		}
 	}
 
-	cqspi->qspi_clk = clk_get(dev, "qspi_clk");
+	cqspi->qspi_clk = clk_get(dev, NULL);
 	if (IS_ERR(cqspi->qspi_clk)) {
 		dev_err(dev, "cannot get qspi clk\n");
 		ret = PTR_ERR(cqspi->qspi_clk);
diff --git a/include/platform_data/cadence_qspi.h b/include/platform_data/cadence_qspi.h
index 4930edce507e..ad1a680c9f95 100644
--- a/include/platform_data/cadence_qspi.h
+++ b/include/platform_data/cadence_qspi.h
@@ -2,7 +2,7 @@
 #define __INCLUDE_PLATFORM_DATA_CADENCE_QSPI_H
 
 struct cadence_qspi_platform_data {
-	unsigned int ext_decoder;
+	unsigned int is_decoded_cs;
 	unsigned int fifo_depth;
 };
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
