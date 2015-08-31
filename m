Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZWQly-0001NP-6D
 for barebox@lists.infradead.org; Mon, 31 Aug 2015 15:13:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 31 Aug 2015 17:12:45 +0200
Message-Id: <1441033966-14045-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] spi: i.MX: create SoC specific transfer functions
To: Barebox List <barebox@lists.infradead.org>

There are SoC specific ways to optimize transfers. Make the way free
to implement these by creating SoC specific transfer functions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/spi/imx_spi.c | 45 +++++++++++++++++++++++++++++++--------------
 1 file changed, 31 insertions(+), 14 deletions(-)

diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 81fa3b0..9a3f05c 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -39,11 +39,18 @@ struct imx_spi {
 	struct clk		*clk;
 
 	unsigned int		(*xchg_single)(struct imx_spi *imx, u32 data);
+	void			(*do_transfer)(struct spi_device *spi);
 	void			(*chipselect)(struct spi_device *spi, int active);
+
+	const void *tx_buf;
+	void *rx_buf;
+	int xfer_len;
+	int bits_per_word;
 };
 
 struct spi_imx_devtype_data {
 	unsigned int		(*xchg_single)(struct imx_spi *imx, u32 data);
+	void			(*do_transfer)(struct spi_device *spi);
 	void			(*chipselect)(struct spi_device *spi, int active);
 	void			(*init)(struct imx_spi *imx);
 };
@@ -332,38 +339,39 @@ static u32 imx_xchg_single(struct spi_device *spi, u32 tx_val)
 	return imx_spi_maybe_reverse_bits(spi, rx_val);
 }
 
-static void imx_spi_do_transfer(struct spi_device *spi, struct spi_transfer *t)
+static void imx_spi_do_transfer(struct spi_device *spi)
 {
+	struct imx_spi *imx = container_of(spi->master, struct imx_spi, master);
 	unsigned i;
 
-	if (spi->bits_per_word <= 8) {
-		const u8	*tx_buf = t->tx_buf;
-		u8		*rx_buf = t->rx_buf;
+	if (imx->bits_per_word <= 8) {
+		const u8	*tx_buf = imx->tx_buf;
+		u8		*rx_buf = imx->rx_buf;
 		u8		rx_val;
 
-		for (i = 0; i < t->len; i++) {
+		for (i = 0; i < imx->xfer_len; i++) {
 			rx_val = imx_xchg_single(spi, tx_buf ? tx_buf[i] : 0);
 
 			if (rx_buf)
 				rx_buf[i] = rx_val;
 		}
-	} else if (spi->bits_per_word <= 16) {
-		const u16	*tx_buf = t->tx_buf;
-		u16		*rx_buf = t->rx_buf;
+	} else if (imx->bits_per_word <= 16) {
+		const u16	*tx_buf = imx->tx_buf;
+		u16		*rx_buf = imx->rx_buf;
 		u16		rx_val;
 
-		for (i = 0; i < t->len >> 1; i++) {
+		for (i = 0; i < imx->xfer_len >> 1; i++) {
 			rx_val = imx_xchg_single(spi, tx_buf ? tx_buf[i] : 0);
 
 			if (rx_buf)
 				rx_buf[i] = rx_val;
 		}
-	} else if (spi->bits_per_word <= 32) {
-		const u32	*tx_buf = t->tx_buf;
-		u32		*rx_buf = t->rx_buf;
+	} else if (imx->bits_per_word <= 32) {
+		const u32	*tx_buf = imx->tx_buf;
+		u32		*rx_buf = imx->rx_buf;
 		u32		rx_val;
 
-		for (i = 0; i < t->len >> 2; i++) {
+		for (i = 0; i < imx->xfer_len >> 2; i++) {
 			rx_val = imx_xchg_single(spi, tx_buf ? tx_buf[i] : 0);
 
 			if (rx_buf)
@@ -395,7 +403,12 @@ static int imx_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
 
 		cs_change = t->cs_change;
 
-		imx_spi_do_transfer(spi, t);
+		imx->tx_buf = t->tx_buf;
+		imx->rx_buf = t->rx_buf;
+		imx->xfer_len = t->len;
+		imx->bits_per_word = spi->bits_per_word;
+		imx->do_transfer(spi);
+
 		mesg->actual_length += t->len;
 
 		if (cs_change)
@@ -411,17 +424,20 @@ static int imx_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
 static __maybe_unused struct spi_imx_devtype_data spi_imx_devtype_data_0_0 = {
 	.chipselect = cspi_0_0_chipselect,
 	.xchg_single = cspi_0_0_xchg_single,
+	.do_transfer = imx_spi_do_transfer,
 	.init = cspi_0_0_init,
 };
 
 static __maybe_unused struct spi_imx_devtype_data spi_imx_devtype_data_0_7 = {
 	.chipselect = cspi_0_7_chipselect,
 	.xchg_single = cspi_0_7_xchg_single,
+	.do_transfer = imx_spi_do_transfer,
 	.init = cspi_0_7_init,
 };
 
 static __maybe_unused struct spi_imx_devtype_data spi_imx_devtype_data_2_3 = {
 	.chipselect = cspi_2_3_chipselect,
+	.do_transfer = imx_spi_do_transfer,
 	.xchg_single = cspi_2_3_xchg_single,
 };
 
@@ -486,6 +502,7 @@ static int imx_spi_probe(struct device_d *dev)
 
 	imx->chipselect = devdata->chipselect;
 	imx->xchg_single = devdata->xchg_single;
+	imx->do_transfer = devdata->do_transfer;
 	imx->regs = dev_request_mem_region(dev, 0);
 
 	if (devdata->init)
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
