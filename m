Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX15x-0006Fk-5D
 for barebox@lists.infradead.org; Tue, 19 Nov 2019 10:50:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Nov 2019 11:50:30 +0100
Message-Id: <20191119105036.12300-16-s.hauer@pengutronix.de>
In-Reply-To: <20191119105036.12300-1-s.hauer@pengutronix.de>
References: <20191119105036.12300-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 15/21] mci: dove: Use sdhci_set_cmd_xfer_mode()
To: Barebox List <barebox@lists.infradead.org>

Use sdhci_set_cmd_xfer_mode() to share more code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/dove-sdhci.c | 32 ++++----------------------------
 1 file changed, 4 insertions(+), 28 deletions(-)

diff --git a/drivers/mci/dove-sdhci.c b/drivers/mci/dove-sdhci.c
index 7818bef0d9..e71a27ce4f 100644
--- a/drivers/mci/dove-sdhci.c
+++ b/drivers/mci/dove-sdhci.c
@@ -113,6 +113,7 @@ static int dove_sdhci_mci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 				struct mci_data *data)
 {
 	u16 val;
+	u32 command, xfer;
 	u64 start;
 	int ret;
 	unsigned int num_bytes = data->blocks * data->blocksize;
@@ -158,36 +159,11 @@ static int dove_sdhci_mci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	}
 
 	/* setup transfer mode */
-	val = 0;
-	if (data) {
-		val |= SDHCI_DMA_EN | SDHCI_BLOCK_COUNT_EN;
-		if (data->blocks > 1)
-			val |= SDHCI_MULTIPLE_BLOCKS;
-		if (data->flags & MMC_DATA_READ)
-			val |= SDHCI_DATA_TO_HOST;
-	}
-	sdhci_write16(&host->sdhci, SDHCI_TRANSFER_MODE, val);
+	sdhci_set_cmd_xfer_mode(&host->sdhci, cmd, data, true, &command, &xfer);
 
+	sdhci_write16(&host->sdhci, SDHCI_TRANSFER_MODE, xfer);
 	sdhci_write32(&host->sdhci, SDHCI_ARGUMENT, cmd->cmdarg);
-
-	if (!(cmd->resp_type & MMC_RSP_PRESENT))
-		val = SDHCI_RESP_NONE;
-	else if (cmd->resp_type & MMC_RSP_136)
-		val = SDHCI_RESP_TYPE_136;
-	else if (cmd->resp_type & MMC_RSP_BUSY)
-		val = SDHCI_RESP_TYPE_48_BUSY;
-	else
-		val = SDHCI_RESP_TYPE_48;
-
-	if (cmd->resp_type & MMC_RSP_CRC)
-		val |= SDHCI_CMD_CRC_CHECK_EN;
-	if (cmd->resp_type & MMC_RSP_OPCODE)
-		val |= SDHCI_CMD_INDEX_CHECK_EN;
-	if (data)
-		val |= SDHCI_DATA_PRESENT;
-	val |= SDHCI_CMD_INDEX(cmd->cmdidx);
-
-	sdhci_write16(&host->sdhci, SDHCI_COMMAND, val);
+	sdhci_write16(&host->sdhci, SDHCI_COMMAND, command);
 
 	ret = dove_sdhci_wait_for_done(host, SDHCI_INT_CMD_COMPLETE);
 	if (ret) {
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
