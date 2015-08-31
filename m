Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZWQlj-0001L3-I6
 for barebox@lists.infradead.org; Mon, 31 Aug 2015 15:13:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 31 Aug 2015 17:12:46 +0200
Message-Id: <1441033966-14045-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1441033966-14045-1-git-send-email-s.hauer@pengutronix.de>
References: <1441033966-14045-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] spi: i.MX: optimize transfers for ECSPI v2.3
To: Barebox List <barebox@lists.infradead.org>

Instead of writing one word to the txfifo and then wait until
one is received in the rxfifo we can write until the txfifos
are not full and read as long the rxfifos contain data. This
makes transfers for the m25p80 driver around 7 times faster
here.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/spi/imx_spi.c | 73 ++++++++++++++++++++++++++++++++++++++++++++++++++-
 include/spi/imx-spi.h |  3 ++-
 2 files changed, 74 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 9a3f05c..80dfc78 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -380,6 +380,77 @@ static void imx_spi_do_transfer(struct spi_device *spi)
 	}
 }
 
+static int cspi_2_3_xchg_burst(struct spi_device *spi)
+{
+	struct imx_spi *imx = container_of(spi->master, struct imx_spi, master);
+	int now, txlen, rxlen;
+	u32 ctrl;
+	void __iomem *base = imx->regs;
+
+	now = min(imx->xfer_len, 512);
+	now >>= 2;
+
+	if (!now)
+		return 0;
+
+	txlen = rxlen = now;
+
+	ctrl = readl(base + CSPI_2_3_CTRL);
+	ctrl &= ~(0xfff << CSPI_2_3_CTRL_BL_OFFSET);
+	ctrl |= ((txlen * 32) - 1) << CSPI_2_3_CTRL_BL_OFFSET;
+	ctrl |= 1 << 3;
+	writel(ctrl, base + CSPI_2_3_CTRL);
+
+	while (txlen || rxlen) {
+		u32 status = readl(base + CSPI_2_3_STAT);
+
+		if (txlen && !(status & CSPI_2_3_STAT_TF)) {
+			if (imx->tx_buf) {
+				u32 data = swab32(*(u32 *)imx->tx_buf);
+				writel(data, base + CSPI_2_3_TXDATA);
+				imx->tx_buf += sizeof(u32);
+			} else {
+				writel(0, base + CSPI_2_3_TXDATA);
+			}
+			txlen--;
+		}
+
+		if (rxlen && (status & CSPI_2_3_STAT_RR)) {
+			u32 data = readl(base + CSPI_2_3_RXDATA);
+
+			if (imx->rx_buf) {
+				*(u32 *)imx->rx_buf = swab32(data);
+				imx->rx_buf += sizeof(u32);
+			}
+
+			rxlen--;
+		}
+	}
+
+	imx->xfer_len -= now * 4;
+
+	return now;
+}
+
+static void cspi_2_3_do_transfer(struct spi_device *spi)
+{
+	struct imx_spi *imx = container_of(spi->master, struct imx_spi, master);
+	u32 ctrl;
+
+	if (imx->bits_per_word == 8 || imx->bits_per_word == 16 || imx->bits_per_word == 32)
+		while (cspi_2_3_xchg_burst(spi) > 0);
+
+	if (!imx->xfer_len)
+		return;
+
+	ctrl = readl(imx->regs + CSPI_2_3_CTRL);
+	ctrl &= ~(0xfff << CSPI_2_3_CTRL_BL_OFFSET);
+	ctrl |= (spi->bits_per_word - 1) << CSPI_2_3_CTRL_BL_OFFSET;
+	writel(ctrl, imx->regs + CSPI_2_3_CTRL);
+
+	imx_spi_do_transfer(spi);
+}
+
 static int imx_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
 {
 	struct imx_spi *imx = container_of(spi->master, struct imx_spi, master);
@@ -437,7 +508,7 @@ static __maybe_unused struct spi_imx_devtype_data spi_imx_devtype_data_0_7 = {
 
 static __maybe_unused struct spi_imx_devtype_data spi_imx_devtype_data_2_3 = {
 	.chipselect = cspi_2_3_chipselect,
-	.do_transfer = imx_spi_do_transfer,
+	.do_transfer = cspi_2_3_do_transfer,
 	.xchg_single = cspi_2_3_xchg_single,
 };
 
diff --git a/include/spi/imx-spi.h b/include/spi/imx-spi.h
index 5c89634..221c665 100644
--- a/include/spi/imx-spi.h
+++ b/include/spi/imx-spi.h
@@ -79,6 +79,7 @@
 #define CSPI_2_3_INT_RREN		(1 <<  3)
 
 #define CSPI_2_3_STAT		0x18
-#define CSPI_2_3_STAT_RR		(1 <<  3)
+#define CSPI_2_3_STAT_TF		(1 << 2)
+#define CSPI_2_3_STAT_RR		(1 << 3)
 
 #endif /* __SPI_IMX_SPI_H */
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
