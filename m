Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX16D-0006Xi-D0
 for barebox@lists.infradead.org; Tue, 19 Nov 2019 10:51:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Nov 2019 11:50:32 +0100
Message-Id: <20191119105036.12300-18-s.hauer@pengutronix.de>
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
Subject: [PATCH 17/21] mci: bcm2835: Use sdhci_set_cmd_xfer_mode()
To: Barebox List <barebox@lists.infradead.org>

Use sdhci_set_cmd_xfer_mode() to share more code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-bcm2835.c | 22 ++--------------------
 1 file changed, 2 insertions(+), 20 deletions(-)

diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
index 61995a2883..f17bae7c8d 100644
--- a/drivers/mci/mci-bcm2835.c
+++ b/drivers/mci/mci-bcm2835.c
@@ -207,28 +207,10 @@ static int bcm2835_mci_request(struct mci_host *mci, struct mci_cmd *cmd,
 	u32 wait_inhibit_mask = SDHCI_CMD_INHIBIT_CMD | SDHCI_CMD_INHIBIT_DATA;
 	struct bcm2835_mci_host *host = to_bcm2835_host(mci);
 
-	command = SDHCI_CMD_INDEX(cmd->cmdidx);
+	sdhci_set_cmd_xfer_mode(&host->sdhci, cmd, data, false,
+				&command, &transfer_mode);
 
-	if (cmd->resp_type != MMC_RSP_NONE) {
-		if (cmd->resp_type & MMC_RSP_136)
-			command |= SDHCI_RESP_TYPE_136;
-		else if (cmd->resp_type & MMC_RSP_BUSY)
-			command |= SDHCI_RESP_TYPE_48_BUSY;
-		else
-			command |= SDHCI_RESP_TYPE_48;
-		if (cmd->resp_type & MMC_RSP_CRC)
-			command |= SDHCI_CMD_CRC_CHECK_EN;
-	}
 	if (data != NULL) {
-		command |= SDHCI_DATA_PRESENT;
-		transfer_mode |= SDHCI_BLOCK_COUNT_EN;
-
-		if (data->blocks > 1)
-			transfer_mode |= SDHCI_MULTIPLE_BLOCKS;
-
-		if (data->flags & MMC_DATA_READ)
-			transfer_mode |= SDHCI_DATA_TO_HOST;
-
 		block_data = (data->blocks << BLOCK_SHIFT);
 		block_data |= data->blocksize;
 	}
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
