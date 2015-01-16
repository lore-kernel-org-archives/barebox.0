Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x235.google.com ([2607:f8b0:400e:c02::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YBwig-000314-J7
 for barebox@lists.infradead.org; Fri, 16 Jan 2015 02:33:08 +0000
Received: by mail-pd0-f181.google.com with SMTP id z10so8388631pdj.12
 for <barebox@lists.infradead.org>; Thu, 15 Jan 2015 18:32:45 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 15 Jan 2015 18:32:34 -0800
Message-Id: <1421375556-21715-2-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1421375556-21715-1-git-send-email-andrew.smirnov@gmail.com>
References: <1421375556-21715-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2] i.MX: SPI: Respect SPI_LSB_FIRST flag in mode settings
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add code to support SPI transfers that have data shifted out least
significant bit first. This is useful in many cases, but specifically
it is needed for drivers/firmware/altera_serial.c to work on i.MX
platform.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/spi/imx_spi.c | 41 +++++++++++++++++++++++++++++++++++++----
 1 file changed, 37 insertions(+), 4 deletions(-)

diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 3146339..a1f19eb 100644
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
@@ -382,9 +401,20 @@ static void cspi_2_3_chipselect(struct spi_device *spi, int is_active)
 		gpio_set_value(gpio, gpio_cs);
 }
 
-static void imx_spi_do_transfer(struct spi_device *spi, struct spi_transfer *t)
+static u32 imx_xchg_single(struct spi_device *spi, u32 tx_val)
 {
+	u32 rx_val;
 	struct imx_spi *imx = container_of(spi->master, struct imx_spi, master);
+
+
+	tx_val = imx_spi_maybe_reverse_bits(spi, tx_val);
+	rx_val = imx->xchg_single(imx, tx_val);
+
+	return imx_spi_maybe_reverse_bits(spi, rx_val);
+}
+
+static void imx_spi_do_transfer(struct spi_device *spi, struct spi_transfer *t)
+{
 	unsigned i;
 
 	if (spi->bits_per_word <= 8) {
@@ -393,7 +423,8 @@ static void imx_spi_do_transfer(struct spi_device *spi, struct spi_transfer *t)
 		u8		rx_val;
 
 		for (i = 0; i < t->len; i++) {
-			rx_val = imx->xchg_single(imx, tx_buf ? tx_buf[i] : 0);
+			rx_val = imx_xchg_single(spi, tx_buf ? tx_buf[i] : 0);
+
 			if (rx_buf)
 				rx_buf[i] = rx_val;
 		}
@@ -403,7 +434,8 @@ static void imx_spi_do_transfer(struct spi_device *spi, struct spi_transfer *t)
 		u16		rx_val;
 
 		for (i = 0; i < t->len >> 1; i++) {
-			rx_val = imx->xchg_single(imx, tx_buf ? tx_buf[i] : 0);
+			rx_val = imx_xchg_single(spi, tx_buf ? tx_buf[i] : 0);
+
 			if (rx_buf)
 				rx_buf[i] = rx_val;
 		}
@@ -413,7 +445,8 @@ static void imx_spi_do_transfer(struct spi_device *spi, struct spi_transfer *t)
 		u32		rx_val;
 
 		for (i = 0; i < t->len >> 2; i++) {
-			rx_val = imx->xchg_single(imx, tx_buf ? tx_buf[i] : 0);
+			rx_val = imx_xchg_single(spi, tx_buf ? tx_buf[i] : 0);
+
 			if (rx_buf)
 				rx_buf[i] = rx_val;
 		}
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
