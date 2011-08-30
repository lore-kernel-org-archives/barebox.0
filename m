Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QyHu0-0005kt-4e
	for barebox@lists.infradead.org; Tue, 30 Aug 2011 06:34:28 +0000
Received: by bke17 with SMTP id 17so5551227bke.36
	for <barebox@lists.infradead.org>; Mon, 29 Aug 2011 23:34:26 -0700 (PDT)
Message-Id: <3c14dbb81191e6dcf1ecc7ef799834f52ad5f10a.1314685868.git.fercerpav@gmail.com>
From: Paul Fertser <fercerpav@gmail.com>
Date: Tue, 30 Aug 2011 10:20:23 +0400
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
Subject: [PATCH 1/2] imx_spi: rework transfer according to the API,
	fix compatibility with spi_write_then_read()
To: barebox@lists.infradead.org

This code was tested barely with m25p80 driver, reading jedec id and some data
from the chip worked fine.

Signed-off-by: Paul Fertser <fercerpav@gmail.com>
---
 drivers/spi/imx_spi.c |   55 +++++++++++++++++++++++++++++++++++++++---------
 1 files changed, 44 insertions(+), 11 deletions(-)

diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 6dc41b9..0d21fb3 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -310,23 +310,56 @@ static void cspi_2_3_init(struct imx_spi *imx)
 }
 #endif
 
+static void imx_spi_do_transfer(struct spi_device *spi, struct spi_transfer *t)
+{
+	struct imx_spi *imx = container_of(spi->master, struct imx_spi, master);
+	unsigned i;
+
+	if (spi->bits_per_word <= 8) {
+		const u8	*tx_buf = t->tx_buf;
+		u8		*rx_buf = t->rx_buf;
+		u8		rx_val;
+
+		for (i = 0; i < t->len; i++) {
+			rx_val = imx->xchg_single(imx, tx_buf ? tx_buf[i] : 0);
+			if (rx_buf)
+				rx_buf[i] = rx_val;
+		}
+	} else if (spi->bits_per_word <= 16) {
+		const u16	*tx_buf = t->tx_buf;
+		u16		*rx_buf = t->rx_buf;
+		u16		rx_val;
+
+		for (i = 0; i < t->len >> 1; i++) {
+			rx_val = imx->xchg_single(imx, tx_buf ? tx_buf[i] : 0);
+			if (rx_buf)
+				rx_buf[i] = rx_val;
+		}
+	} else if (spi->bits_per_word <= 32) {
+		const u32	*tx_buf = t->tx_buf;
+		u32		*rx_buf = t->rx_buf;
+		u32		rx_val;
+
+		for (i = 0; i < t->len >> 2; i++) {
+			rx_val = imx->xchg_single(imx, tx_buf ? tx_buf[i] : 0);
+			if (rx_buf)
+				rx_buf[i] = rx_val;
+		}
+	}
+}
+
 static int imx_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
 {
-	struct spi_master *master = spi->master;
-	struct imx_spi *imx = container_of(master, struct imx_spi, master);
-	struct spi_transfer	*t = NULL;
+	struct imx_spi *imx = container_of(spi->master, struct imx_spi, master);
+	struct spi_transfer *t = NULL;
 
 	imx->chipselect(spi, 1);
 
-	list_for_each_entry (t, &mesg->transfers, transfer_list) {
-		const u32 *txbuf = t->tx_buf;
-		u32 *rxbuf = t->rx_buf;
-		int i = 0;
+	mesg->actual_length = 0;
 
-		while(i < t->len >> 2) {
-			rxbuf[i] = imx->xchg_single(imx, txbuf[i]);
-			i++;
-		}
+	list_for_each_entry(t, &mesg->transfers, transfer_list) {
+		imx_spi_do_transfer(spi, t);
+		mesg->actual_length += t->len;
 	}
 
 	imx->chipselect(spi, 0);
-- 
1.5.2.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
