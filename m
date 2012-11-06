Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo3.mail-out.ovh.net ([178.32.228.3])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TVow6-0007zE-7H
 for barebox@lists.infradead.org; Tue, 06 Nov 2012 19:35:48 +0000
Received: from mail612.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 36325FFBD66
 for <barebox@lists.infradead.org>; Tue,  6 Nov 2012 20:46:06 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  6 Nov 2012 20:33:30 +0100
Message-Id: <1352230416-9396-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1352230416-9396-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121106193010.GE25679@game.jcrosoft.org>
 <1352230416-9396-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/8] atmel_spi: split transfert to atmel_spi_do_xfer
To: barebox@lists.infradead.org

This make the code mre readable

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/spi/atmel_spi.c |   89 ++++++++++++++++++++++++++---------------------
 1 file changed, 49 insertions(+), 40 deletions(-)

diff --git a/drivers/spi/atmel_spi.c b/drivers/spi/atmel_spi.c
index 3375f81..afbca9f 100644
--- a/drivers/spi/atmel_spi.c
+++ b/drivers/spi/atmel_spi.c
@@ -178,13 +178,54 @@ static int atmel_spi_xchg(struct atmel_spi *as, u32 tx_val)
 	return spi_readl(as, RDR) & 0xffff;
 }
 
+static int atmel_spi_do_xfer(struct spi_device *spi, struct atmel_spi *as,
+			     struct spi_transfer *t)
+{
+	unsigned int bits = spi->bits_per_word;
+	u32 tx_val;
+	int i = 0, rx_val;
+
+	if (bits <= 8) {
+		const u8 *txbuf = t->tx_buf;
+		u8 *rxbuf = t->rx_buf;
+
+		while (i < t->len) {
+			tx_val = txbuf ? txbuf[i] : 0;
+
+			rx_val = atmel_spi_xchg(as, tx_val);
+			if (rx_val < 0)
+				return rx_val;
+
+			if (rxbuf)
+				rxbuf[i] = rx_val;
+			i++;
+		}
+	} else if (bits <= 16) {
+		const u16 *txbuf = t->tx_buf;
+		u16 *rxbuf = t->rx_buf;
+
+		while (i < t->len >> 1) {
+			tx_val = txbuf ? txbuf[i] : 0;
+
+			rx_val = atmel_spi_xchg(as, tx_val);
+			if (rx_val < 0)
+				return rx_val;
+
+			if (rxbuf)
+				rxbuf[i] = rx_val;
+			i++;
+		}
+	}
+
+	return t->len;
+}
+
 static int atmel_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
 {
 	int ret;
 	struct spi_master *master	= spi->master;
 	struct atmel_spi *as		= to_atmel_spi(master);
 	struct spi_transfer *t		= NULL;
-	unsigned int bits		= spi->bits_per_word;
 
 	mesg->actual_length = 0;
 	ret = master->setup(spi);
@@ -203,47 +244,15 @@ static int atmel_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
 	}
 #endif
 	atmel_spi_chipselect(spi, as, 1);
+
 	list_for_each_entry(t, &mesg->transfers, transfer_list) {
-		u32 tx_val;
-		int i = 0, rx_val;
-
-		mesg->actual_length += t->len;
-		if (bits <= 8) {
-			const u8 *txbuf = t->tx_buf;
-			u8 *rxbuf = t->rx_buf;
-
-			while (i < t->len) {
-				tx_val = txbuf ? txbuf[i] : 0;
-
-				rx_val = atmel_spi_xchg(as, tx_val);
-				if (rx_val < 0) {
-					ret = rx_val;
-					goto out;
-				}
-
-				if (rxbuf)
-					rxbuf[i] = rx_val;
-				i++;
-			}
-		} else if (bits <= 16) {
-			const u16 *txbuf = t->tx_buf;
-			u16 *rxbuf = t->rx_buf;
-
-			while (i < t->len >> 1) {
-				tx_val = txbuf ? txbuf[i] : 0;
-
-				rx_val = atmel_spi_xchg(as, tx_val);
-				if (rx_val < 0) {
-					ret = rx_val;
-					goto out;
-				}
-
-				if (rxbuf)
-					rxbuf[i] = rx_val;
-				i++;
-			}
-		}
+
+		ret = atmel_spi_do_xfer(spi, as, t);
+		if (ret < 0)
+			goto out;
+		mesg->actual_length += ret;
 	}
+
 out:
 	atmel_spi_chipselect(spi, as, 0);
 	return ret;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
