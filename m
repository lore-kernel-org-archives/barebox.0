Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX169-0006UB-Ay
 for barebox@lists.infradead.org; Tue, 19 Nov 2019 10:51:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Nov 2019 11:50:23 +0100
Message-Id: <20191119105036.12300-9-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/21] mci: mci-bcm2835: Use 16bit register definitions
To: Barebox List <barebox@lists.infradead.org>

We have some register defines in a 16bit access version and a 32bit
access version. Use the former to get rid of the latter later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-bcm2835.c | 22 ++++++++++++----------
 1 file changed, 12 insertions(+), 10 deletions(-)

diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
index 7037cbf7b8..d154dfa46d 100644
--- a/drivers/mci/mci-bcm2835.c
+++ b/drivers/mci/mci-bcm2835.c
@@ -203,30 +203,31 @@ static void bcm2835_mci_reset_emmc(struct bcm2835_mci_host *host, u32 reset,
  */
 static int bcm2835_mci_request(struct mci_host *mci, struct mci_cmd *cmd,
 		struct mci_data *data) {
-	u32 command, block_data = 0, ret = 0;
+	u32 command, block_data = 0, ret = 0, transfer_mode = 0;
 	u32 wait_inhibit_mask = PRSSTAT_CICHB | PRSSTAT_CIDHB;
 	struct bcm2835_mci_host *host = to_bcm2835_host(mci);
 
-	command = COMMAND_CMD(cmd->cmdidx);
+	command = SDHCI_CMD_INDEX(cmd->cmdidx);
 
 	if (cmd->resp_type != MMC_RSP_NONE) {
 		if (cmd->resp_type & MMC_RSP_136)
-			command |= COMMAND_RSPTYP_136;
+			command |= SDHCI_RESP_TYPE_136;
 		else if (cmd->resp_type & MMC_RSP_BUSY)
-			command |= COMMAND_RSPTYP_48_BUSY;
+			command |= SDHCI_RESP_TYPE_48_BUSY;
 		else
-			command |= COMMAND_RSPTYP_48;
+			command |= SDHCI_RESP_TYPE_48;
 		if (cmd->resp_type & MMC_RSP_CRC)
-			command |= COMMAND_CCCEN;
+			command |= SDHCI_CMD_CRC_CHECK_EN;
 	}
 	if (data != NULL) {
-		command |= COMMAND_DPSEL | TRANSFER_MODE_BCEN;
+		command |= SDHCI_DATA_PRESENT;
+		transfer_mode |= TRANSFER_MODE_BCEN;
 
 		if (data->blocks > 1)
-			command |= TRANSFER_MODE_MSBSEL;
+			transfer_mode |= TRANSFER_MODE_MSBSEL;
 
 		if (data->flags & MMC_DATA_READ)
-			command |= TRANSFER_MODE_DTDSEL;
+			transfer_mode |= TRANSFER_MODE_DTDSEL;
 
 		block_data = (data->blocks << BLOCK_SHIFT);
 		block_data |= data->blocksize;
@@ -247,7 +248,8 @@ static int bcm2835_mci_request(struct mci_host *mci, struct mci_cmd *cmd,
 
 	sdhci_write32(&host->sdhci, SDHCI_BLOCK_SIZE__BLOCK_COUNT, block_data);
 	sdhci_write32(&host->sdhci, SDHCI_ARGUMENT, cmd->cmdarg);
-	sdhci_write32(&host->sdhci, SDHCI_TRANSFER_MODE__COMMAND, command);
+	sdhci_write32(&host->sdhci, SDHCI_TRANSFER_MODE__COMMAND,
+		      command << 16 | transfer_mode);
 
 	ret = bcm2835_mci_wait_command_done(host);
 	if (ret) {
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
