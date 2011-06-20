Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QYmJG-0002xf-Vz
	for barebox@lists.infradead.org; Mon, 20 Jun 2011 21:47:12 +0000
Received: by fxm14 with SMTP id 14so881077fxm.36
	for <barebox@lists.infradead.org>; Mon, 20 Jun 2011 14:47:04 -0700 (PDT)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Mon, 20 Jun 2011 23:46:33 +0200
Message-Id: <1308606394-7510-2-git-send-email-h.feurstein@gmail.com>
In-Reply-To: <1308606394-7510-1-git-send-email-h.feurstein@gmail.com>
References: <1308606394-7510-1-git-send-email-h.feurstein@gmail.com>
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
Subject: [RFC PATCH 2/3] spi: add more spi transfer functions
To: barebox@lists.infradead.org

This commit adds the following spi transfer functions:
  - spi_write
  - spi_read
  - spi_write_then_read
  - spi_w8r8

The code has been ported from the linux kernel.

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 drivers/spi/spi.c |   41 +++++++++++++++++++++++++++++
 include/spi/spi.h |   74 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 115 insertions(+), 0 deletions(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 588c263..6456897 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -195,3 +195,44 @@ int spi_sync(struct spi_device *spi, struct spi_message *message)
 	return spi->master->transfer(spi, message);
 }
 
+/**
+ * spi_write_then_read - SPI synchronous write followed by read
+ * @spi: device with which data will be exchanged
+ * @txbuf: data to be written
+ * @n_tx: size of txbuf, in bytes
+ * @rxbuf: buffer into which data will be read
+ * @n_rx: size of rxbuf, in bytes
+ * Context: can sleep
+ *
+ * This performs a half duplex MicroWire style transaction with the
+ * device, sending txbuf and then reading rxbuf.  The return value
+ * is zero for success, else a negative errno status code.
+ * This call may only be used from a context that may sleep.
+ */
+int spi_write_then_read(struct spi_device *spi,
+		const void *txbuf, unsigned n_tx,
+		void *rxbuf, unsigned n_rx)
+{
+	int			status;
+	struct spi_message	message;
+	struct spi_transfer	x[2];
+
+	spi_message_init(&message);
+	memset(x, 0, sizeof x);
+	if (n_tx) {
+		x[0].len = n_tx;
+		spi_message_add_tail(&x[0], &message);
+	}
+	if (n_rx) {
+		x[1].len = n_rx;
+		spi_message_add_tail(&x[1], &message);
+	}
+
+	x[0].tx_buf = txbuf;
+	x[1].rx_buf = rxbuf;
+
+	/* do the i/o */
+	status = spi_sync(spi, &message);
+	return status;
+}
+EXPORT_SYMBOL(spi_write_then_read);
diff --git a/include/spi/spi.h b/include/spi/spi.h
index c76f3b7..ac2013a 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -349,6 +349,80 @@ static inline int spi_register_board_info(struct spi_board_info const *info,
 }
 #endif
 
+/**
+ * spi_write - SPI synchronous write
+ * @spi: device to which data will be written
+ * @buf: data buffer
+ * @len: data buffer size
+ * Context: can sleep
+ *
+ * This writes the buffer and returns zero or a negative error code.
+ * Callable only from contexts that can sleep.
+ */
+static inline int
+spi_write(struct spi_device *spi, const void *buf, size_t len)
+{
+	struct spi_transfer	t = {
+			.tx_buf		= buf,
+			.len		= len,
+		};
+	struct spi_message	m;
+
+	spi_message_init(&m);
+	spi_message_add_tail(&t, &m);
+	return spi_sync(spi, &m);
+}
+
+/**
+ * spi_read - SPI synchronous read
+ * @spi: device from which data will be read
+ * @buf: data buffer
+ * @len: data buffer size
+ * Context: can sleep
+ *
+ * This reads the buffer and returns zero or a negative error code.
+ * Callable only from contexts that can sleep.
+ */
+static inline int
+spi_read(struct spi_device *spi, void *buf, size_t len)
+{
+	struct spi_transfer	t = {
+			.rx_buf		= buf,
+			.len		= len,
+		};
+	struct spi_message	m;
+
+	spi_message_init(&m);
+	spi_message_add_tail(&t, &m);
+	return spi_sync(spi, &m);
+}
+
+/* this copies txbuf and rxbuf data; for small transfers only! */
+extern int spi_write_then_read(struct spi_device *spi,
+		const void *txbuf, unsigned n_tx,
+		void *rxbuf, unsigned n_rx);
+
+/**
+ * spi_w8r8 - SPI synchronous 8 bit write followed by 8 bit read
+ * @spi: device with which data will be exchanged
+ * @cmd: command to be written before data is read back
+ * Context: can sleep
+ *
+ * This returns the (unsigned) eight bit number returned by the
+ * device, or else a negative error code.  Callable only from
+ * contexts that can sleep.
+ */
+static inline ssize_t spi_w8r8(struct spi_device *spi, u8 cmd)
+{
+	ssize_t			status;
+	u8			result;
+
+	status = spi_write_then_read(spi, &cmd, 1, &result, 1);
+
+	/* return negative errno or unsigned value */
+	return (status < 0) ? status : result;
+}
+
 #endif /* DOXYGEN_SHOULD_SKIP_THIS */
 
 #endif /* __INCLUDE_SPI_H */
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
