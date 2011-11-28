Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RUwlB-0001By-Qk
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 08:40:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Nov 2011 09:40:11 +0100
Message-Id: <1322469611-20173-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1322469611-20173-1-git-send-email-s.hauer@pengutronix.de>
References: <1322469611-20173-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] mmc spi: compile fix
To: barebox@lists.infradead.org

Without CRC support the mmc spi driver fails to compile with
the following:

drivers/mci/mci_spi.c:74:18: error: static declaration of 'crc7' follows non-static declaration

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci_spi.c |   29 ++++++++++++-----------------
 1 files changed, 12 insertions(+), 17 deletions(-)

diff --git a/drivers/mci/mci_spi.c b/drivers/mci/mci_spi.c
index 124e49b..653910b 100644
--- a/drivers/mci/mci_spi.c
+++ b/drivers/mci/mci_spi.c
@@ -64,23 +64,6 @@
 #define RTOUT 3000000 /* 1 sec */
 #define WTOUT 3000000 /* 1 sec */
 
-#ifndef CONFIG_MMC_SPI_CRC_ON
-/* Note that while the CRC, in general, is ignored in SPI mode, the very first
- * command must be followed by a valid CRC, since the card is not yet in SPI mode.
- * The CRC byte for a CMD0 command with a zero argument is a constant 0x4A. For
- * simplicity, this CRC byte is always sent with every command.
- */
-
-static inline u8 crc7(u8 crc, const u8 *buffer, size_t len)
-{
-	/* This is the crc7 value for a CMD0 command with a zero argument.
-	 * It'll be left shifted and ored with '1' in mmc_spi_command_send
-	 * to give 0x95 (also known as the CMD0 constant CRC value...)
-	 */
-	return 0x4A;
-}
-#endif
-
 struct mmc_spi_host {
 	struct mci_host	mci;
 	struct spi_device	*spi;
@@ -141,6 +124,14 @@ mmc_spi_writebytes(struct mmc_spi_host *host, unsigned len, void *data)
 	return status;
 }
 
+/*
+ * Note that while the CRC, in general, is ignored in SPI mode, the very first
+ * command must be followed by a valid CRC, since the card is not yet in SPI mode.
+ * The CRC byte for a CMD0 command with a zero argument is a constant 0x4A. For
+ * simplicity, this CRC byte is always sent with every command.
+ */
+#define MMC_SPI_CMD0_CRC	((0x4a << 1) | 0x1)
+
 static int mmc_spi_command_send(struct mmc_spi_host *host, struct mci_cmd *cmd)
 {
 	uint8_t r1;
@@ -153,7 +144,11 @@ static int mmc_spi_command_send(struct mmc_spi_host *host, struct mci_cmd *cmd)
 	command[3] = cmd->cmdarg >> 16;
 	command[4] = cmd->cmdarg >> 8;
 	command[5] = cmd->cmdarg;
+#ifdef CONFIG_MMC_SPI_CRC_ON
 	command[6] = (crc7(0, &command[1], 5) << 1) | 0x01;
+#else
+	command[6] = MMC_SPI_CMD0_CRC;
+#endif
 
 	mmc_spi_writebytes(host, 7, command);
 
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
