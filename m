Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFesd-0005lb-QS
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 08:51:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 16 Jul 2015 10:50:25 +0200
Message-Id: <1437036628-29439-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1437036628-29439-1-git-send-email-s.hauer@pengutronix.de>
References: <1437036628-29439-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/11] spi: i.MX: move register defines to include/
To: Barebox List <barebox@lists.infradead.org>

The register defines will be used by the SPI xload code, so move
them to a place where the xload code can include them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/spi/imx_spi.c | 80 +------------------------------------------------
 include/spi/imx-spi.h | 83 +++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 84 insertions(+), 79 deletions(-)
 create mode 100644 include/spi/imx-spi.h

diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index be6a4fd..6805d22 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -18,6 +18,7 @@
 #include <init.h>
 #include <driver.h>
 #include <spi/spi.h>
+#include <spi/imx-spi.h>
 #include <xfuncs.h>
 #include <io.h>
 #include <of.h>
@@ -31,85 +32,6 @@
 #include <linux/err.h>
 #include <clock.h>
 
-#define CSPI_0_0_RXDATA		0x00
-#define CSPI_0_0_TXDATA		0x04
-#define CSPI_0_0_CTRL		0x08
-#define CSPI_0_0_INT		0x0C
-#define CSPI_0_0_DMA		0x18
-#define CSPI_0_0_STAT		0x0C
-#define CSPI_0_0_PERIOD		0x14
-#define CSPI_0_0_TEST		0x10
-#define CSPI_0_0_RESET		0x1C
-
-#define CSPI_0_0_CTRL_ENABLE		(1 << 10)
-#define CSPI_0_0_CTRL_MASTER		(1 << 11)
-#define CSPI_0_0_CTRL_XCH		(1 << 9)
-#define CSPI_0_0_CTRL_LOWPOL		(1 << 5)
-#define CSPI_0_0_CTRL_PHA		(1 << 6)
-#define CSPI_0_0_CTRL_SSCTL		(1 << 7)
-#define CSPI_0_0_CTRL_HIGHSSPOL 	(1 << 8)
-#define CSPI_0_0_CTRL_CS(x)		(((x) & 0x3) << 19)
-#define CSPI_0_0_CTRL_BITCOUNT(x)	(((x) & 0x1f) << 0)
-#define CSPI_0_0_CTRL_DATARATE(x)	(((x) & 0x7) << 14)
-
-#define CSPI_0_0_CTRL_MAXDATRATE	0x10
-#define CSPI_0_0_CTRL_DATAMASK		0x1F
-#define CSPI_0_0_CTRL_DATASHIFT 	14
-
-#define CSPI_0_0_STAT_TE		(1 << 0)
-#define CSPI_0_0_STAT_TH		(1 << 1)
-#define CSPI_0_0_STAT_TF		(1 << 2)
-#define CSPI_0_0_STAT_RR		(1 << 4)
-#define CSPI_0_0_STAT_RH		(1 << 5)
-#define CSPI_0_0_STAT_RF		(1 << 6)
-#define CSPI_0_0_STAT_RO		(1 << 7)
-
-#define CSPI_0_0_PERIOD_32KHZ		(1 << 15)
-
-#define CSPI_0_0_TEST_LBC		(1 << 14)
-
-#define CSPI_0_0_RESET_START		(1 << 0)
-
-#define CSPI_0_7_RXDATA			0x00
-#define CSPI_0_7_TXDATA			0x04
-#define CSPI_0_7_CTRL			0x08
-#define CSPI_0_7_CTRL_ENABLE		(1 << 0)
-#define CSPI_0_7_CTRL_MASTER		(1 << 1)
-#define CSPI_0_7_CTRL_XCH		(1 << 2)
-#define CSPI_0_7_CTRL_POL		(1 << 4)
-#define CSPI_0_7_CTRL_PHA		(1 << 5)
-#define CSPI_0_7_CTRL_SSCTL		(1 << 6)
-#define CSPI_0_7_CTRL_SSPOL		(1 << 7)
-#define CSPI_0_7_CTRL_CS_SHIFT		12
-#define CSPI_0_7_CTRL_DR_SHIFT		16
-#define CSPI_0_7_CTRL_BL_SHIFT		20
-#define CSPI_0_7_STAT			0x14
-#define CSPI_0_7_STAT_RR		(1 << 3)
-
-#define CSPI_2_3_RXDATA		0x00
-#define CSPI_2_3_TXDATA		0x04
-#define CSPI_2_3_CTRL		0x08
-#define CSPI_2_3_CTRL_ENABLE		(1 <<  0)
-#define CSPI_2_3_CTRL_XCH		(1 <<  2)
-#define CSPI_2_3_CTRL_MODE(cs)	(1 << ((cs) +  4))
-#define CSPI_2_3_CTRL_POSTDIV_OFFSET	8
-#define CSPI_2_3_CTRL_PREDIV_OFFSET	12
-#define CSPI_2_3_CTRL_CS(cs)		((cs) << 18)
-#define CSPI_2_3_CTRL_BL_OFFSET	20
-
-#define CSPI_2_3_CONFIG	0x0c
-#define CSPI_2_3_CONFIG_SCLKPHA(cs)	(1 << ((cs) +  0))
-#define CSPI_2_3_CONFIG_SCLKPOL(cs)	(1 << ((cs) +  4))
-#define CSPI_2_3_CONFIG_SBBCTRL(cs)	(1 << ((cs) +  8))
-#define CSPI_2_3_CONFIG_SSBPOL(cs)	(1 << ((cs) + 12))
-
-#define CSPI_2_3_INT		0x10
-#define CSPI_2_3_INT_TEEN		(1 <<  0)
-#define CSPI_2_3_INT_RREN		(1 <<  3)
-
-#define CSPI_2_3_STAT		0x18
-#define CSPI_2_3_STAT_RR		(1 <<  3)
-
 struct imx_spi {
 	struct spi_master	master;
 	int			*cs_array;
diff --git a/include/spi/imx-spi.h b/include/spi/imx-spi.h
new file mode 100644
index 0000000..560b092
--- /dev/null
+++ b/include/spi/imx-spi.h
@@ -0,0 +1,83 @@
+#ifndef __SPI_IMX_SPI_H
+#define __SPI_IMX_SPI_H
+
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
+
+#define CSPI_0_0_RESET_START		(1 << 0)
+
+#define CSPI_0_7_RXDATA			0x00
+#define CSPI_0_7_TXDATA			0x04
+#define CSPI_0_7_CTRL			0x08
+#define CSPI_0_7_CTRL_ENABLE		(1 << 0)
+#define CSPI_0_7_CTRL_MASTER		(1 << 1)
+#define CSPI_0_7_CTRL_XCH		(1 << 2)
+#define CSPI_0_7_CTRL_POL		(1 << 4)
+#define CSPI_0_7_CTRL_PHA		(1 << 5)
+#define CSPI_0_7_CTRL_SSCTL		(1 << 6)
+#define CSPI_0_7_CTRL_SSPOL		(1 << 7)
+#define CSPI_0_7_CTRL_CS_SHIFT		12
+#define CSPI_0_7_CTRL_DR_SHIFT		16
+#define CSPI_0_7_CTRL_BL_SHIFT		20
+#define CSPI_0_7_STAT			0x14
+#define CSPI_0_7_STAT_RR		(1 << 3)
+
+#define CSPI_2_3_RXDATA		0x00
+#define CSPI_2_3_TXDATA		0x04
+#define CSPI_2_3_CTRL		0x08
+#define CSPI_2_3_CTRL_ENABLE		(1 <<  0)
+#define CSPI_2_3_CTRL_XCH		(1 <<  2)
+#define CSPI_2_3_CTRL_MODE(cs)	(1 << ((cs) +  4))
+#define CSPI_2_3_CTRL_POSTDIV_OFFSET	8
+#define CSPI_2_3_CTRL_PREDIV_OFFSET	12
+#define CSPI_2_3_CTRL_CS(cs)		((cs) << 18)
+#define CSPI_2_3_CTRL_BL_OFFSET	20
+
+#define CSPI_2_3_CONFIG	0x0c
+#define CSPI_2_3_CONFIG_SCLKPHA(cs)	(1 << ((cs) +  0))
+#define CSPI_2_3_CONFIG_SCLKPOL(cs)	(1 << ((cs) +  4))
+#define CSPI_2_3_CONFIG_SBBCTRL(cs)	(1 << ((cs) +  8))
+#define CSPI_2_3_CONFIG_SSBPOL(cs)	(1 << ((cs) + 12))
+
+#define CSPI_2_3_INT		0x10
+#define CSPI_2_3_INT_TEEN		(1 <<  0)
+#define CSPI_2_3_INT_RREN		(1 <<  3)
+
+#define CSPI_2_3_STAT		0x18
+#define CSPI_2_3_STAT_RR		(1 <<  3)
+
+#endif /* __SPI_IMX_SPI_H */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
