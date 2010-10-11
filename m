Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P5GYQ-0003G1-TM
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 11:28:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Oct 2010 13:28:12 +0200
Message-Id: <1286796505-16049-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1286796505-16049-1-git-send-email-s.hauer@pengutronix.de>
References: <1286796505-16049-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/17] spi i.MX: add spi version namespace to register defines
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/spi/imx_spi.c |  116 ++++++++++++++++++++++++------------------------
 1 files changed, 58 insertions(+), 58 deletions(-)

diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 5c97919..809a5f8 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -27,42 +27,42 @@
 #include <gpio.h>
 #include <mach/spi.h>
 
-#define MXC_CSPIRXDATA		0x00
-#define MXC_CSPITXDATA		0x04
-#define MXC_CSPICTRL		0x08
-#define MXC_CSPIINT		0x0C
-#define MXC_CSPIDMA		0x18
-#define MXC_CSPISTAT		0x0C
-#define MXC_CSPIPERIOD		0x14
-#define MXC_CSPITEST		0x10
-#define MXC_CSPIRESET		0x1C
-
-#define MXC_CSPICTRL_ENABLE	(1 << 10)
-#define MXC_CSPICTRL_MASTER	(1 << 11)
-#define MXC_CSPICTRL_XCH	(1 << 9)
-#define MXC_CSPICTRL_LOWPOL	(1 << 5)
-#define MXC_CSPICTRL_PHA	(1 << 6)
-#define MXC_CSPICTRL_SSCTL	(1 << 7)
-#define MXC_CSPICTRL_HIGHSSPOL 	(1 << 8)
-#define MXC_CSPICTRL_CS(x)	(((x) & 0x3) << 19)
-#define MXC_CSPICTRL_BITCOUNT(x)	(((x) & 0x1f) << 0)
-#define MXC_CSPICTRL_DATARATE(x)	(((x) & 0x7) << 14)
-
-#define MXC_CSPICTRL_MAXDATRATE	0x10
-#define MXC_CSPICTRL_DATAMASK	0x1F
-#define MXC_CSPICTRL_DATASHIFT 	14
-
-#define MXC_CSPISTAT_TE		(1 << 0)
-#define MXC_CSPISTAT_TH		(1 << 1)
-#define MXC_CSPISTAT_TF		(1 << 2)
-#define MXC_CSPISTAT_RR		(1 << 4)
-#define MXC_CSPISTAT_RH         (1 << 5)
-#define MXC_CSPISTAT_RF         (1 << 6)
-#define MXC_CSPISTAT_RO         (1 << 7)
-
-#define MXC_CSPIPERIOD_32KHZ	(1 << 15)
-
-#define MXC_CSPITEST_LBC	(1 << 14)
+#define CSPI_0_0_RXDATA		0x00
+#define CSPI_0_0_TXDATA		0x04
+#define CSPI_0_0_CTRL		0x08
+#define CSPI_0_0_INT		0x0C
+#define CSPI_0_0_DMA		0x18
+#define CSPI_0_0_STAT		0x0C
+#define CSPI_0_0_PERIOD		0x14
+#define CSPI_0_0_TEST		0x10
+#define CSPI_0_0_RESET		0x1C
+
+#define CSPI_0_0_CTRL_ENABLE		(1 << 10)
+#define CSPI_0_0_CTRL_MASTER		(1 << 11)
+#define CSPI_0_0_CTRL_XCH		(1 << 9)
+#define CSPI_0_0_CTRL_LOWPOL		(1 << 5)
+#define CSPI_0_0_CTRL_PHA		(1 << 6)
+#define CSPI_0_0_CTRL_SSCTL		(1 << 7)
+#define CSPI_0_0_CTRL_HIGHSSPOL 	(1 << 8)
+#define CSPI_0_0_CTRL_CS(x)		(((x) & 0x3) << 19)
+#define CSPI_0_0_CTRL_BITCOUNT(x)	(((x) & 0x1f) << 0)
+#define CSPI_0_0_CTRL_DATARATE(x)	(((x) & 0x7) << 14)
+
+#define CSPI_0_0_CTRL_MAXDATRATE	0x10
+#define CSPI_0_0_CTRL_DATAMASK		0x1F
+#define CSPI_0_0_CTRL_DATASHIFT 	14
+
+#define CSPI_0_0_STAT_TE		(1 << 0)
+#define CSPI_0_0_STAT_TH		(1 << 1)
+#define CSPI_0_0_STAT_TF		(1 << 2)
+#define CSPI_0_0_STAT_RR		(1 << 4)
+#define CSPI_0_0_STAT_RH		(1 << 5)
+#define CSPI_0_0_STAT_RF		(1 << 6)
+#define CSPI_0_0_STAT_RO		(1 << 7)
+
+#define CSPI_0_0_PERIOD_32KHZ		(1 << 15)
+
+#define CSPI_0_0_TEST_LBC		(1 << 14)
 
 struct imx_spi {
 	struct spi_master master;
@@ -80,17 +80,17 @@ static int imx_spi_setup(struct spi_device *spi)
 static unsigned int spi_xchg_single(ulong base, unsigned int data)
 {
 
-	unsigned int cfg_reg = readl(base + MXC_CSPICTRL);
+	unsigned int cfg_reg = readl(base + CSPI_0_0_CTRL);
 
-	writel(data, base + MXC_CSPITXDATA);
+	writel(data, base + CSPI_0_0_TXDATA);
 
-	cfg_reg |= MXC_CSPICTRL_XCH;
+	cfg_reg |= CSPI_0_0_CTRL_XCH;
 
-	writel(cfg_reg, base + MXC_CSPICTRL);
+	writel(cfg_reg, base + CSPI_0_0_CTRL);
 
-	while (!(readl(base + MXC_CSPIINT) & MXC_CSPISTAT_RR));
+	while (!(readl(base + CSPI_0_0_INT) & CSPI_0_0_STAT_RR));
 
-	return readl(base + MXC_CSPIRXDATA);
+	return readl(base + CSPI_0_0_RXDATA);
 }
 
 static void mxc_spi_chipselect(struct spi_device *spi, int is_active)
@@ -111,23 +111,23 @@ static void mxc_spi_chipselect(struct spi_device *spi, int is_active)
 		return;
 	}
 
-	ctrl_reg = MXC_CSPICTRL_BITCOUNT(spi->bits_per_word - 1)
-		| MXC_CSPICTRL_DATARATE(7) /* FIXME: calculate data rate */
-		| MXC_CSPICTRL_ENABLE
-		| MXC_CSPICTRL_MASTER;
+	ctrl_reg = CSPI_0_0_CTRL_BITCOUNT(spi->bits_per_word - 1)
+		| CSPI_0_0_CTRL_DATARATE(7) /* FIXME: calculate data rate */
+		| CSPI_0_0_CTRL_ENABLE
+		| CSPI_0_0_CTRL_MASTER;
 
 	if (gpio < 0) {
-		ctrl_reg |= MXC_CSPICTRL_CS(gpio + 32);
+		ctrl_reg |= CSPI_0_0_CTRL_CS(gpio + 32);
 	}
 
 	if (spi->mode & SPI_CPHA)
-		ctrl_reg |= MXC_CSPICTRL_PHA;
+		ctrl_reg |= CSPI_0_0_CTRL_PHA;
 	if (spi->mode & SPI_CPOL)
-		ctrl_reg |= MXC_CSPICTRL_LOWPOL;
+		ctrl_reg |= CSPI_0_0_CTRL_LOWPOL;
 	if (spi->mode & SPI_CS_HIGH)
-		ctrl_reg |= MXC_CSPICTRL_HIGHSSPOL;
+		ctrl_reg |= CSPI_0_0_CTRL_HIGHSSPOL;
 
-	writel(ctrl_reg, base + MXC_CSPICTRL);
+	writel(ctrl_reg, base + CSPI_0_0_CTRL);
 
 	if (gpio >= 0)
 		gpio_set_value(gpio, cs);
@@ -173,13 +173,13 @@ static int imx_spi_probe(struct device_d *dev)
 	master->num_chipselect = pdata->num_chipselect;
 	imx->chipselect = pdata->chipselect;
 
-	writel(MXC_CSPICTRL_ENABLE | MXC_CSPICTRL_MASTER,
-		     dev->map_base + MXC_CSPICTRL);
-	writel(MXC_CSPIPERIOD_32KHZ,
-		     dev->map_base + MXC_CSPIPERIOD);
-	while (readl(dev->map_base + MXC_CSPIINT) & MXC_CSPISTAT_RR)
-		readl(dev->map_base + MXC_CSPIRXDATA);
-	writel(0, dev->map_base + MXC_CSPIINT);
+	writel(CSPI_0_0_CTRL_ENABLE | CSPI_0_0_CTRL_MASTER,
+		     dev->map_base + CSPI_0_0_CTRL);
+	writel(CSPI_0_0_PERIOD_32KHZ,
+		     dev->map_base + CSPI_0_0_PERIOD);
+	while (readl(dev->map_base + CSPI_0_0_INT) & CSPI_0_0_STAT_RR)
+		readl(dev->map_base + CSPI_0_0_RXDATA);
+	writel(0, dev->map_base + CSPI_0_0_INT);
 
 	spi_register_master(master);
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
