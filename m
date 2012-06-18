Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a02:8b8:656::164] (helo=bar.sig21.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SgdY4-0001BF-Qs
 for barebox@lists.infradead.org; Mon, 18 Jun 2012 15:07:25 +0000
Received: from p5099b351.dip0.t-ipconnect.de ([80.153.179.81] helo=zzz.local)
 by bar.sig21.net with esmtpsa (TLS1.0:RSA_ARCFOUR_SHA1:16)
 (Exim 4.72) (envelope-from <js@sig21.net>) id 1SgdXe-0008Ii-HE
 for barebox@lists.infradead.org; Mon, 18 Jun 2012 17:07:03 +0200
Received: from js by zzz.local with local (Exim 4.80)
 (envelope-from <js@sig21.net>) id 1SgdXd-0002mE-I9
 for barebox@lists.infradead.org; Mon, 18 Jun 2012 17:06:57 +0200
Date: Mon, 18 Jun 2012 17:06:57 +0200
From: Johannes Stezenbach <js@sig21.net>
Message-ID: <20120618150656.GA10624@sig21.net>
MIME-Version: 1.0
Content-Disposition: inline
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH RFC] spi: add support for dual and quad IO modes
To: barebox@lists.infradead.org

Some flashes and SPI masters support dual and quad IO modes
where data is transferred in parallel using two or four pins.
For now add this capability for mx25l25635e.

Signed-off-by: Johannes Stezenbach <js@sig21.net>
---

I'm planning to submit a similar patch for Linux sometime
within the next month or so.  Maybe you want to wait
for the review comments there before including it in barebox,
but I'm posting this anyway in case someone wants to comment.
At the moment I'm not able to post the SPI master driver
which implements it.  I'm not sure which if any of the SPI
masters already included in barebox have the dual and
quad mode capability, but it's important for boot time.
BTW, I have checked all users of struct spi_transfer
properly initialize it to zero so adding the
multi_io field should not cause problems.


 drivers/nor/m25p80.c |   33 +++++++++++++++++++++++++++------
 drivers/nor/m25p80.h |    6 ++++++
 drivers/spi/spi.c    |   10 ++++++++++
 include/spi/spi.h    |    9 +++++++++
 4 files changed, 52 insertions(+), 6 deletions(-)

diff --git a/drivers/nor/m25p80.c b/drivers/nor/m25p80.c
index 77669c2..7b28a1b 100644
--- a/drivers/nor/m25p80.c
+++ b/drivers/nor/m25p80.c
@@ -255,7 +255,7 @@ ssize_t m25p80_read(struct cdev *cdev, void *buf, size_t count, ulong offset, ul
 	struct m25p *flash = cdev->priv;
 	struct spi_transfer t[2];
 	struct spi_message m;
-	ssize_t retlen;
+	ssize_t retlen, cmdlen;
 
 	/* sanity checks */
 	if (!count)
@@ -271,12 +271,21 @@ ssize_t m25p80_read(struct cdev *cdev, void *buf, size_t count, ulong offset, ul
 	 * OPCODE_FAST_READ (if available) is faster.
 	 * Should add 1 byte DUMMY_BYTE.
 	 */
+	cmdlen = m25p_cmdsz(flash);
+	if (flash->dual_io || flash->quad_io)
+		cmdlen++;
+	else
+		cmdlen += FAST_READ_DUMMY_BYTE;
 	t[0].tx_buf = flash->command;
-	t[0].len = m25p_cmdsz(flash) + FAST_READ_DUMMY_BYTE;
+	t[0].len = cmdlen;
 	spi_message_add_tail(&t[0], &m);
 
 	t[1].rx_buf = buf;
 	t[1].len = count;
+	if (flash->quad_io)
+		t[1].multi_io = SPI_QUAD_IO;
+	else if (flash->dual_io)
+		t[1].multi_io = SPI_DUAL_IO;
 	spi_message_add_tail(&t[1], &m);
 
 	/* Byte count starts at zero. */
@@ -292,12 +301,17 @@ ssize_t m25p80_read(struct cdev *cdev, void *buf, size_t count, ulong offset, ul
 	 */
 
 	/* Set up the write data buffer. */
-	flash->command[0] = OPCODE_READ;
+	if (flash->quad_io)
+		flash->command[0] = OPCODE_QUAD_READ;
+	else if (flash->dual_io)
+		flash->command[0] = OPCODE_DUAL_READ;
+	else
+		flash->command[0] = OPCODE_READ;
 	m25p_addr2cmd(flash, offset, flash->command);
 
 	spi_sync(flash->spi, &m);
 
-	retlen = m.actual_length - m25p_cmdsz(flash) - FAST_READ_DUMMY_BYTE;
+	retlen = m.actual_length - cmdlen;
 
 	return retlen;
 }
@@ -552,7 +566,7 @@ static const struct spi_device_id m25p_ids[] = {
 	{ "mx25l6405d",  INFO(0xc22017, 0, 64 * 1024, 128, 0) },
 	{ "mx25l12805d", INFO(0xc22018, 0, 64 * 1024, 256, 0) },
 	{ "mx25l12855e", INFO(0xc22618, 0, 64 * 1024, 256, 0) },
-	{ "mx25l25635e", INFO(0xc22019, 0, 64 * 1024, 512, 0) },
+	{ "mx25l25635e", INFO(0xc22019, 0, 64 * 1024, 512, DUAL_IO | QUAD_IO) },
 	{ "mx25l25655e", INFO(0xc22619, 0, 64 * 1024, 512, 0) },
 
 	/* Spansion -- single (large) sector size only, at least
@@ -788,6 +802,10 @@ static int m25p_probe(struct device_d *dev)
 	} else {
 		flash->erase_opcode = OPCODE_SE;
 	}
+	if ((info->flags & DUAL_IO) && (spi->master->flags & SPI_MASTER_DUAL_IO))
+		flash->dual_io = 1;
+	if ((info->flags & QUAD_IO) && (spi->master->flags & SPI_MASTER_QUAD_IO))
+		flash->quad_io = 1;
 
 	flash->page_size = info->page_size;
 
@@ -802,7 +820,10 @@ static int m25p_probe(struct device_d *dev)
 			flash->addr_width = 3;
 	}
 
-	dev_info(dev, "%s (%lld Kbytes)\n", id->name, (long long)flash->size >> 10);
+	dev_info(dev, "%s (%lld Kbytes%s%s)\n", id->name,
+		 (long long)flash->size >> 10,
+		 flash->dual_io ? ", 2x" : "",
+		 flash->quad_io ? ", 4x" : "");
 
 	devfs_create(&flash->cdev);
 
diff --git a/drivers/nor/m25p80.h b/drivers/nor/m25p80.h
index 3f9dd9c..333cac2 100644
--- a/drivers/nor/m25p80.h
+++ b/drivers/nor/m25p80.h
@@ -7,6 +7,8 @@
 #define	OPCODE_WRSR		0x01	/* Write status register 1 byte */
 #define	OPCODE_NORM_READ	0x03	/* Read data bytes (low frequency) */
 #define	OPCODE_FAST_READ	0x0b	/* Read data bytes (high frequency) */
+#define	OPCODE_DUAL_READ	0x3b	/* Read data bytes (2 IO lanes) */
+#define	OPCODE_QUAD_READ	0x6b	/* Read data bytes (4 IO lanes) */
 #define	OPCODE_PP		0x02	/* Page program (up to 256 bytes) */
 #define	OPCODE_BE_4K		0x20	/* Erase 4KiB block */
 #define	OPCODE_BE_32K		0x52	/* Erase 32KiB block */
@@ -61,6 +63,8 @@ struct m25p {
 	u16			page_size;
 	u16			addr_width;
 	u8			erase_opcode;
+	u8			dual_io:1;
+	u8			quad_io:1;
 	u8			*command;
 	u32			size;
 };
@@ -85,6 +89,8 @@ struct flash_info {
 	u16		flags;
 #define	SECT_4K		0x01		/* OPCODE_BE_4K works uniformly */
 #define	M25P_NO_ERASE	0x02		/* No erase command needed */
+#define DUAL_IO		0x04		/* can do 2 lane data transfers */
+#define QUAD_IO		0x08		/* can do 4 lane data transfers */
 };
 
 #endif
diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index a7fe10c..d5b521b 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -196,6 +196,16 @@ EXPORT_SYMBOL(spi_register_master);
 
 int spi_sync(struct spi_device *spi, struct spi_message *message)
 {
+	struct spi_transfer *t;
+
+	list_for_each_entry(t, &message->transfers, transfer_list) {
+		if ((t->multi_io == SPI_DUAL_IO) &&
+		    !(spi->master->flags & SPI_MASTER_DUAL_IO))
+			return -EINVAL;
+		if ((t->multi_io == SPI_QUAD_IO) &&
+		    !(spi->master->flags & SPI_MASTER_QUAD_IO))
+			return -EINVAL;
+	}
 	return spi->master->transfer(spi, message);
 }
 
diff --git a/include/spi/spi.h b/include/spi/spi.h
index 9d01d06..7ff444d 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -136,6 +136,10 @@ struct spi_master {
 	 */
 	u16			num_chipselect;
 
+	u16			flags;
+#define SPI_MASTER_DUAL_IO	BIT(0)	/* can do 2 lane data transfers */
+#define SPI_MASTER_QUAD_IO	BIT(1)	/* can do 4 lane data transfers */
+
 	/* setup mode and clock, etc (spi driver may call many times) */
 	int			(*setup)(struct spi_device *spi);
 
@@ -256,6 +260,11 @@ struct spi_transfer {
 	unsigned	len;
 
 	unsigned	cs_change:1;
+#define SPI_SINGLE_IO 0
+#define SPI_DUAL_IO 1
+#define SPI_QUAD_IO 2
+	unsigned	multi_io:2;
+
 	u8		bits_per_word;
 	u16		delay_usecs;
 	u32		speed_hz;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
