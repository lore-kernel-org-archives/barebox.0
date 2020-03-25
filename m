Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH1We-0005Je-7C
 for barebox@lists.infradead.org; Wed, 25 Mar 2020 08:36:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Mar 2020 09:36:06 +0100
Message-Id: <20200325083608.15676-4-s.hauer@pengutronix.de>
In-Reply-To: <20200325083608.15676-1-s.hauer@pengutronix.de>
References: <20200325083608.15676-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/5] spi: validate spi messages
To: Barebox List <barebox@lists.infradead.org>

This adds __spi_validate() to validate spi messages. This function is a
stripped down version from the Kernel. The motivation for adding this
was to fill in xfer->bits_per_word from spi->bits_per_word so that a
spi bus driver can use the former.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/spi/spi.c | 46 ++++++++++++++++++++++++++++++++++++++++++++++
 include/spi/spi.h |  4 ++++
 2 files changed, 50 insertions(+)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index bd615b4e99..0694f14c39 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -297,8 +297,54 @@ struct spi_controller *spi_get_controller(int bus)
 	return NULL;
 }
 
+static int __spi_validate(struct spi_device *spi, struct spi_message *message)
+{
+	struct spi_controller *ctlr = spi->controller;
+	struct spi_transfer *xfer;
+	int w_size;
+
+	if (list_empty(&message->transfers))
+		return -EINVAL;
+
+	list_for_each_entry(xfer, &message->transfers, transfer_list) {
+		if (!xfer->bits_per_word)
+			xfer->bits_per_word = spi->bits_per_word;
+
+		if (!xfer->speed_hz)
+			xfer->speed_hz = spi->max_speed_hz;
+
+		if (ctlr->max_speed_hz && xfer->speed_hz > ctlr->max_speed_hz)
+			xfer->speed_hz = ctlr->max_speed_hz;
+
+		/*
+		 * SPI transfer length should be multiple of SPI word size
+		 * where SPI word size should be power-of-two multiple
+		 */
+		if (xfer->bits_per_word <= 8)
+			w_size = 1;
+		else if (xfer->bits_per_word <= 16)
+			w_size = 2;
+		else
+			w_size = 4;
+
+		/* No partial transfers accepted */
+		if (xfer->len % w_size)
+			return -EINVAL;
+	}
+
+	message->status = -EINPROGRESS;
+
+	return 0;
+}
+
 int spi_sync(struct spi_device *spi, struct spi_message *message)
 {
+	int status;
+
+	status = __spi_validate(spi, message);
+	if (status != 0)
+		return status;
+
 	return spi->controller->transfer(spi, message);
 }
 
diff --git a/include/spi/spi.h b/include/spi/spi.h
index 48a90bcca7..66e0500d04 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -126,6 +126,7 @@ struct spi_message;
  *	SPI slaves, and are numbered from zero to num_chipselects.
  *	each slave has a chipselect signal, but it's common that not
  *	every chipselect is connected to a slave.
+ * @max_speed_hz: Highest supported transfer speed
  * @setup: updates the device mode and clocking records used by a
  *	device's SPI controller; protocol code may call this.  This
  *	must fail if an unrecognized or unsupported mode is requested.
@@ -171,6 +172,9 @@ struct spi_controller {
 	 */
 	u16			num_chipselect;
 
+	/* limits on transfer speed */
+	u32			max_speed_hz;
+
 	/* setup mode and clock, etc (spi driver may call many times) */
 	int			(*setup)(struct spi_device *spi);
 
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
