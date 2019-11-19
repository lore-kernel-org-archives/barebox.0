Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX165-0006Oy-EI
 for barebox@lists.infradead.org; Tue, 19 Nov 2019 10:51:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Nov 2019 11:50:33 +0100
Message-Id: <20191119105036.12300-19-s.hauer@pengutronix.de>
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
Subject: [PATCH 18/21] mci: tegra: Use sdhci_set_cmd_xfer_mode()
To: Barebox List <barebox@lists.infradead.org>

Use sdhci_set_cmd_xfer_mode() to share more code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/tegra-sdmmc.c | 33 +++------------------------------
 1 file changed, 3 insertions(+), 30 deletions(-)

diff --git a/drivers/mci/tegra-sdmmc.c b/drivers/mci/tegra-sdmmc.c
index 69de39b180..1cc75dc524 100644
--- a/drivers/mci/tegra-sdmmc.c
+++ b/drivers/mci/tegra-sdmmc.c
@@ -116,7 +116,7 @@ static int tegra_sdmmc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 {
 	struct tegra_sdmmc_host *host = to_tegra_sdmmc_host(mci);
 	unsigned int num_bytes = 0;
-	u32 val = 0, command = 0;
+	u32 val = 0, command, xfer;
 	int ret;
 
 	ret = tegra_sdmmc_wait_inhibit(host, cmd, data, 10);
@@ -146,37 +146,10 @@ static int tegra_sdmmc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	if ((cmd->resp_type & MMC_RSP_136) && (cmd->resp_type & MMC_RSP_BUSY))
 		return -1;
 
-	if (data) {
-		if (data->blocks > 1)
-			val |= SDHCI_MULTIPLE_BLOCKS;
-
-		if (data->flags & MMC_DATA_READ)
-			val |= SDHCI_DATA_TO_HOST;
-
-		val |= SDHCI_DMA_EN | SDHCI_BLOCK_COUNT_EN;
-	}
-
-	if (!(cmd->resp_type & MMC_RSP_PRESENT))
-		command |= SDHCI_RESP_NONE;
-	else if (cmd->resp_type & MMC_RSP_136)
-		command |= SDHCI_RESP_TYPE_136;
-	else if (cmd->resp_type & MMC_RSP_BUSY)
-		command |= SDHCI_RESP_TYPE_48_BUSY;
-	else
-		command |= SDHCI_RESP_TYPE_48;
-
-	if (cmd->resp_type & MMC_RSP_CRC)
-		command |= SDHCI_CMD_CRC_CHECK_EN;
-	if (cmd->resp_type & MMC_RSP_OPCODE)
-		command |= SDHCI_CMD_INDEX_CHECK_EN;
-
-	if (data)
-		command |= SDHCI_DATA_PRESENT;
-
-	command |= SDHCI_CMD_INDEX(cmd->cmdidx);
+	sdhci_set_cmd_xfer_mode(&host->sdhci, cmd, data, true, &command, &xfer);
 
 	sdhci_write32(&host->sdhci, SDHCI_TRANSFER_MODE__COMMAND,
-		      command << 16 | val);
+		      command << 16 | xfer);
 
 	ret = wait_on_timeout(100 * MSECOND,
 			(val = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS))
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
