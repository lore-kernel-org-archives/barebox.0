Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZWQlo-0001MV-6C
 for barebox@lists.infradead.org; Mon, 31 Aug 2015 15:13:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 31 Aug 2015 17:12:44 +0200
Message-Id: <1441033966-14045-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] spi: i.MX: use start mode control bit
To: Barebox List <barebox@lists.infradead.org>

The i.MX SPI controller in version 2.3 can immediately start a transfer
when the txfifo is written to. In this mode we no longer have to trigger
the transfer with the xch bit which makes the code a bit simpler.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/spi/imx_spi.c | 8 ++------
 include/spi/imx-spi.h | 1 +
 2 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 6805d22..81fa3b0 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -230,14 +230,8 @@ static unsigned int cspi_2_3_xchg_single(struct imx_spi *imx, unsigned int data)
 {
 	void __iomem *base = imx->regs;
 
-	unsigned int cfg_reg = readl(base + CSPI_2_3_CTRL);
-
 	writel(data, base + CSPI_2_3_TXDATA);
 
-	cfg_reg |= CSPI_2_3_CTRL_XCH;
-
-	writel(cfg_reg, base + CSPI_2_3_CTRL);
-
 	while (!(readl(base + CSPI_2_3_STAT) & CSPI_2_3_STAT_RR));
 
 	return readl(base + CSPI_2_3_RXDATA);
@@ -306,6 +300,8 @@ static void cspi_2_3_chipselect(struct spi_device *spi, int is_active)
 
 	ctrl |= (spi->bits_per_word - 1) << CSPI_2_3_CTRL_BL_OFFSET;
 
+	ctrl |= CSPI_2_3_CTRL_SMC;
+
 	cfg |= CSPI_2_3_CONFIG_SBBCTRL(cs);
 
 	if (spi->mode & SPI_CPHA)
diff --git a/include/spi/imx-spi.h b/include/spi/imx-spi.h
index 560b092..5c89634 100644
--- a/include/spi/imx-spi.h
+++ b/include/spi/imx-spi.h
@@ -61,6 +61,7 @@
 #define CSPI_2_3_CTRL		0x08
 #define CSPI_2_3_CTRL_ENABLE		(1 <<  0)
 #define CSPI_2_3_CTRL_XCH		(1 <<  2)
+#define CSPI_2_3_CTRL_SMC		(1 <<  3)
 #define CSPI_2_3_CTRL_MODE(cs)	(1 << ((cs) +  4))
 #define CSPI_2_3_CTRL_POSTDIV_OFFSET	8
 #define CSPI_2_3_CTRL_PREDIV_OFFSET	12
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
