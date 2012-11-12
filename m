Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f49.google.com ([74.125.82.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TY1Mv-0002MB-EK
 for barebox@lists.infradead.org; Mon, 12 Nov 2012 21:16:34 +0000
Received: by mail-wg0-f49.google.com with SMTP id gg4so2867160wgb.18
 for <barebox@lists.infradead.org>; Mon, 12 Nov 2012 13:16:31 -0800 (PST)
From: Franck Jullien <franck.jullien@gmail.com>
Date: Mon, 12 Nov 2012 22:16:31 +0100
Message-Id: <1352754991-11660-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH] mci_spi: always compute command crc byte
To: barebox@lists.infradead.org

The spec says: "the CMD8 CRC verification is always enabled.
The Host shall set correct CRC in the argument ofCMD8. If
CRC error is detected, card returns CRC error in R1 response
regardless of command index."

Make it simple, and compute crc on every commands.

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 drivers/mci/Kconfig   |    2 +-
 drivers/mci/mci_spi.c |   12 ------------
 2 files changed, 1 insertions(+), 13 deletions(-)

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index b1a678e..5c0ca4d 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -88,6 +88,7 @@ config MCI_ATMEL
 
 config MCI_SPI
 	bool "MMC/SD over SPI"
+	select CRC7
 	depends on SPI
 	help
 	  Some systems access MMC/SD/SDIO cards using a SPI controller
@@ -98,7 +99,6 @@ config MCI_SPI
 
 config MMC_SPI_CRC_ON
 	bool "Enable CRC protection for transfers"
-	select CRC7
 	select CRC16
 	depends on MCI_SPI
 	help
diff --git a/drivers/mci/mci_spi.c b/drivers/mci/mci_spi.c
index 5894104..cb5e0bb 100644
--- a/drivers/mci/mci_spi.c
+++ b/drivers/mci/mci_spi.c
@@ -121,14 +121,6 @@ mmc_spi_writebytes(struct mmc_spi_host *host, unsigned len, void *data)
 	return status;
 }
 
-/*
- * Note that while the CRC, in general, is ignored in SPI mode, the very first
- * command must be followed by a valid CRC, since the card is not yet in SPI mode.
- * The CRC byte for a CMD0 command with a zero argument is a constant 0x4A. For
- * simplicity, this CRC byte is always sent with every command.
- */
-#define MMC_SPI_CMD0_CRC	((0x4a << 1) | 0x1)
-
 static int mmc_spi_command_send(struct mmc_spi_host *host, struct mci_cmd *cmd)
 {
 	uint8_t r1;
@@ -141,11 +133,7 @@ static int mmc_spi_command_send(struct mmc_spi_host *host, struct mci_cmd *cmd)
 	command[3] = cmd->cmdarg >> 16;
 	command[4] = cmd->cmdarg >> 8;
 	command[5] = cmd->cmdarg;
-#ifdef CONFIG_MMC_SPI_CRC_ON
 	command[6] = (crc7(0, &command[1], 5) << 1) | 0x01;
-#else
-	command[6] = MMC_SPI_CMD0_CRC;
-#endif
 
 	mmc_spi_writebytes(host, 7, command);
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
