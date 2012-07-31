Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SwGj5-0001g2-Ow
 for barebox@lists.infradead.org; Tue, 31 Jul 2012 17:59:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 31 Jul 2012 19:59:16 +0200
Message-Id: <1343757556-11897-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1343757556-11897-1-git-send-email-s.hauer@pengutronix.de>
References: <1343757556-11897-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/6] nor m25p80: implement fast read
To: barebox@lists.infradead.org

The fast read command is needed for spi speeds > 25MHz, so use it for
higher speeds.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nor/m25p80.c |   12 ++++++++----
 drivers/nor/m25p80.h |   10 +---------
 2 files changed, 9 insertions(+), 13 deletions(-)

diff --git a/drivers/nor/m25p80.c b/drivers/nor/m25p80.c
index 4b62e93..daaf60c 100644
--- a/drivers/nor/m25p80.c
+++ b/drivers/nor/m25p80.c
@@ -267,6 +267,7 @@ ssize_t m25p80_read(struct cdev *cdev, void *buf, size_t count, loff_t offset,
 	struct spi_transfer t[2];
 	struct spi_message m;
 	ssize_t retlen;
+	int fast_read = 0;
 
 	/* sanity checks */
 	if (!count)
@@ -275,6 +276,9 @@ ssize_t m25p80_read(struct cdev *cdev, void *buf, size_t count, loff_t offset,
 	if (offset + count > flash->size)
 		return -EINVAL;
 
+	if (flash->spi->max_speed_hz >= 25000000)
+		fast_read = 1;
+
 	spi_message_init(&m);
 	memset(t, 0, (sizeof t));
 
@@ -283,7 +287,7 @@ ssize_t m25p80_read(struct cdev *cdev, void *buf, size_t count, loff_t offset,
 	 * Should add 1 byte DUMMY_BYTE.
 	 */
 	t[0].tx_buf = flash->command;
-	t[0].len = m25p_cmdsz(flash) + FAST_READ_DUMMY_BYTE;
+	t[0].len = m25p_cmdsz(flash) + fast_read;
 	spi_message_add_tail(&t[0], &m);
 
 	t[1].rx_buf = buf;
@@ -303,12 +307,12 @@ ssize_t m25p80_read(struct cdev *cdev, void *buf, size_t count, loff_t offset,
 	 */
 
 	/* Set up the write data buffer. */
-	flash->command[0] = OPCODE_READ;
+	flash->command[0] = fast_read ? OPCODE_FAST_READ : OPCODE_NORM_READ;
 	m25p_addr2cmd(flash, offset, flash->command);
 
 	spi_sync(flash->spi, &m);
 
-	retlen = m.actual_length - m25p_cmdsz(flash) - FAST_READ_DUMMY_BYTE;
+	retlen = m.actual_length - m25p_cmdsz(flash) - fast_read;
 
 	return retlen;
 }
@@ -756,7 +760,7 @@ static int m25p_probe(struct device_d *dev)
 	}
 
 	flash = xzalloc(sizeof *flash);
-	flash->command = xmalloc(MAX_CMD_SIZE + FAST_READ_DUMMY_BYTE);
+	flash->command = xmalloc(MAX_CMD_SIZE);
 
 	flash->spi = spi;
 	dev->priv = (void *)flash;
diff --git a/drivers/nor/m25p80.h b/drivers/nor/m25p80.h
index ce48ba7..34bf2e2 100644
--- a/drivers/nor/m25p80.h
+++ b/drivers/nor/m25p80.h
@@ -34,15 +34,7 @@
 
 /* Define max times to check status register before we give up. */
 #define	MAX_READY_WAIT		40	/* M25P16 specs 40s max chip erase */
-#define MAX_CMD_SIZE		5
-
-#ifdef CONFIG_M25PXX_USE_FAST_READ
-#define OPCODE_READ		OPCODE_FAST_READ
-#define FAST_READ_DUMMY_BYTE	1
-#else
-#define OPCODE_READ		OPCODE_NORM_READ
-#define FAST_READ_DUMMY_BYTE	0
-#endif
+#define MAX_CMD_SIZE		6
 
 #define SPI_NAME_SIZE   32
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
