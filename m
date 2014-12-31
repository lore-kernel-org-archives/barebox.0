Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x22b.google.com ([2607:f8b0:400e:c02::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y6Kvf-00023q-W5
 for barebox@lists.infradead.org; Wed, 31 Dec 2014 15:11:20 +0000
Received: by mail-pd0-f171.google.com with SMTP id y13so21023977pdi.16
 for <barebox@lists.infradead.org>; Wed, 31 Dec 2014 07:10:59 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 31 Dec 2014 07:10:55 -0800
Message-Id: <1420038655-8856-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH] i.MX: SPI: Respect SPI_LSB_FIRST flag in mode settings
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add code to support SPI transfers that have data shifted out least
significant bit first. This is useful in many cases, but specifically
it is needed for drivers/firmware/altera_serial.c to work on i.MX
platform.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/spi/imx_spi.c | 50 ++++++++++++++++++++++++++++++++++++++++++++------
 1 file changed, 44 insertions(+), 6 deletions(-)

diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 3146339..efbbb08 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -137,6 +137,25 @@ static int imx_spi_setup(struct spi_device *spi)
 	return 0;
 }
 
+static unsigned int imx_spi_maybe_reverse_bits(struct spi_device *spi, unsigned int word)
+{
+	unsigned int result = word;
+
+	if (spi->mode & SPI_LSB_FIRST) {
+		size_t bits_left = spi->bits_per_word - 1;
+
+		for (word >>= 1; word; word >>= 1) {
+			result <<= 1;
+			result |= word & 1;
+			bits_left--;
+		}
+
+		result <<= bits_left;
+	}
+
+	return result;
+}
+
 static unsigned int cspi_0_0_xchg_single(struct imx_spi *imx, unsigned int data)
 {
 	void __iomem *base = imx->regs;
@@ -386,6 +405,7 @@ static void imx_spi_do_transfer(struct spi_device *spi, struct spi_transfer *t)
 {
 	struct imx_spi *imx = container_of(spi->master, struct imx_spi, master);
 	unsigned i;
+	u32 tx_val;
 
 	if (spi->bits_per_word <= 8) {
 		const u8	*tx_buf = t->tx_buf;
@@ -393,9 +413,15 @@ static void imx_spi_do_transfer(struct spi_device *spi, struct spi_transfer *t)
 		u8		rx_val;
 
 		for (i = 0; i < t->len; i++) {
-			rx_val = imx->xchg_single(imx, tx_buf ? tx_buf[i] : 0);
+			if (tx_buf)
+				tx_val = imx_spi_maybe_reverse_bits(spi, tx_buf[i]);
+			else
+				tx_val = 0;
+
+			rx_val = imx->xchg_single(imx, tx_val);
+
 			if (rx_buf)
-				rx_buf[i] = rx_val;
+				rx_buf[i] = (u8)imx_spi_maybe_reverse_bits(spi, rx_val);
 		}
 	} else if (spi->bits_per_word <= 16) {
 		const u16	*tx_buf = t->tx_buf;
@@ -403,9 +429,15 @@ static void imx_spi_do_transfer(struct spi_device *spi, struct spi_transfer *t)
 		u16		rx_val;
 
 		for (i = 0; i < t->len >> 1; i++) {
-			rx_val = imx->xchg_single(imx, tx_buf ? tx_buf[i] : 0);
+			if (tx_buf)
+				tx_val = imx_spi_maybe_reverse_bits(spi, tx_buf[i]);
+			else
+				tx_val = 0;
+
+			rx_val = imx->xchg_single(imx, tx_val);
+
 			if (rx_buf)
-				rx_buf[i] = rx_val;
+				rx_buf[i] = (u16)imx_spi_maybe_reverse_bits(spi, rx_val);
 		}
 	} else if (spi->bits_per_word <= 32) {
 		const u32	*tx_buf = t->tx_buf;
@@ -413,9 +445,15 @@ static void imx_spi_do_transfer(struct spi_device *spi, struct spi_transfer *t)
 		u32		rx_val;
 
 		for (i = 0; i < t->len >> 2; i++) {
-			rx_val = imx->xchg_single(imx, tx_buf ? tx_buf[i] : 0);
+			if (tx_buf)
+				tx_val = imx_spi_maybe_reverse_bits(spi, tx_buf[i]);
+			else
+				tx_val = 0;
+
+			rx_val = imx->xchg_single(imx, tx_val);
+
 			if (rx_buf)
-				rx_buf[i] = rx_val;
+				rx_buf[i] = imx_spi_maybe_reverse_bits(spi, rx_val);
 		}
 	}
 }
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
