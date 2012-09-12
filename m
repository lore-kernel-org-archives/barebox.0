Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f49.google.com ([74.125.82.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBvQG-0006hA-5a
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 22:28:41 +0000
Received: by wgbdt14 with SMTP id dt14so1243194wgb.18
 for <barebox@lists.infradead.org>; Wed, 12 Sep 2012 15:28:38 -0700 (PDT)
From: Franck Jullien <franck.jullien@gmail.com>
Date: Thu, 13 Sep 2012 00:28:34 +0200
Message-Id: <1347488914-7460-3-git-send-email-franck.jullien@gmail.com>
In-Reply-To: <1347488914-7460-1-git-send-email-franck.jullien@gmail.com>
References: <1347488914-7460-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH 3/3] [MCI_SPI] Fix endianness error on be target
To: barebox@lists.infradead.org

Use be(xx)_to_cpu function to switch endianness intelligently.

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 drivers/mci/mci_spi.c |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/mci/mci_spi.c b/drivers/mci/mci_spi.c
index a659ebb..a771052 100644
--- a/drivers/mci/mci_spi.c
+++ b/drivers/mci/mci_spi.c
@@ -181,7 +181,7 @@ static uint mmc_spi_readdata(struct mmc_spi_host *host, void *xbuf,
 			mmc_spi_readbytes(host, bsize, buf);
 			mmc_spi_readbytes(host, 2, &crc);
 #ifdef CONFIG_MMC_SPI_CRC_ON
-			if (swab16(cyg_crc16(buf, bsize)) != crc) {
+			if (be16_to_cpu(cyg_crc16(buf, bsize)) != crc) {
 				dev_dbg(host->dev, "%s: CRC error\n", __func__);
 				r1 = R1_SPI_COM_CRC;
 				break;
@@ -212,7 +212,7 @@ static uint mmc_spi_writedata(struct mmc_spi_host *host, const void *xbuf,
 
 	while (bcnt--) {
 #ifdef CONFIG_MMC_SPI_CRC_ON
-		crc = swab16(cyg_crc16((u8 *)buf, bsize));
+		crc = be16_to_cpu(cyg_crc16((u8 *)buf, bsize));
 #endif
 		mmc_spi_writebytes(host, 2, tok);
 		mmc_spi_writebytes(host, bsize, (void *)buf);
@@ -291,7 +291,7 @@ static int mmc_spi_request(struct mci_host *mci, struct mci_cmd *cmd, struct mci
 	} else if (cmd->resp_type == MMC_RSP_R2) {
 		r1 = mmc_spi_readdata(host, cmd->response, 1, 16);
 		for (i = 0; i < 4; i++)
-			cmd->response[i] = swab32(cmd->response[i]);
+			cmd->response[i] = be32_to_cpu(cmd->response[i]);
 		dev_dbg(host->dev, "MMC_RSP_R2 -> %x %x %x %x\n", cmd->response[0], cmd->response[1],
 		      cmd->response[2], cmd->response[3]);
 	} else if (!data) {
@@ -299,7 +299,7 @@ static int mmc_spi_request(struct mci_host *mci, struct mci_cmd *cmd, struct mci
 		case SD_CMD_SEND_IF_COND:
 		case MMC_CMD_SPI_READ_OCR:
 			mmc_spi_readbytes(host, 4, cmd->response);
-			cmd->response[0] = swab32(cmd->response[0]);
+			cmd->response[0] = be32_to_cpu(cmd->response[0]);
 			break;
 		}
 	} else {
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
