Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibnUx-0004j5-FF
 for barebox@lists.infradead.org; Mon, 02 Dec 2019 15:20:29 +0000
Received: by mail-pj1-x1042.google.com with SMTP id ca19so7447349pjb.8
 for <barebox@lists.infradead.org>; Mon, 02 Dec 2019 07:20:27 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  2 Dec 2019 07:19:51 -0800
Message-Id: <20191202151954.16032-10-andrew.smirnov@gmail.com>
In-Reply-To: <20191202151954.16032-1-andrew.smirnov@gmail.com>
References: <20191202151954.16032-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 09/12] mci: imx-esdhc-pbl: Use sdhci_set_cmd_xfer_mode()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Drop extra code by converting imx-esdhc-pbl.c to use
sdhci_set_cmd_xfer_mode().

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mci/imx-esdhc-pbl.c | 41 +++++++++----------------------------
 1 file changed, 10 insertions(+), 31 deletions(-)

diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index b61cba2ba..43e0093cd 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -37,33 +37,6 @@ static void __udelay(int us)
 	for (i = 0; i < us * 4; i++);
 }
 
-static u32 esdhc_xfertyp(struct mci_cmd *cmd, struct mci_data *data)
-{
-	u32 xfertyp = 0;
-	u32 command = 0;
-
-	if (data) {
-		command |= SDHCI_DATA_PRESENT;
-		xfertyp |= SDHCI_MULTIPLE_BLOCKS | SDHCI_BLOCK_COUNT_EN |
-			   SDHCI_DATA_TO_HOST;
-	}
-
-	if (cmd->resp_type & MMC_RSP_CRC)
-		command |= SDHCI_CMD_CRC_CHECK_EN;
-	if (cmd->resp_type & MMC_RSP_OPCODE)
-		xfertyp |= SDHCI_CMD_INDEX_CHECK_EN;
-	if (cmd->resp_type & MMC_RSP_136)
-		command |= SDHCI_RESP_TYPE_136;
-	else if (cmd->resp_type & MMC_RSP_BUSY)
-		command |= SDHCI_RESP_TYPE_48_BUSY;
-	else if (cmd->resp_type & MMC_RSP_PRESENT)
-		command |= SDHCI_RESP_TYPE_48;
-
-	command |= SDHCI_CMD_INDEX(cmd->cmdidx);
-
-	return command << 16 | xfertyp;
-}
-
 static int esdhc_do_data(struct fsl_esdhc_host *host, struct mci_data *data)
 {
 	return sdhci_transfer_data(&host->sdhci, data);
@@ -72,7 +45,7 @@ static int esdhc_do_data(struct fsl_esdhc_host *host, struct mci_data *data)
 static int
 esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd, struct mci_data *data)
 {
-	u32	xfertyp, mixctrl;
+	u32	xfertyp, mixctrl, command;
 	u32	irqstat;
 	int ret;
 	int timeout;
@@ -87,8 +60,12 @@ esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd, struct mci_data
 		sdhci_write32(&host->sdhci, SDHCI_BLOCK_SIZE__BLOCK_COUNT, data->blocks << 16 | SECTOR_SIZE);
 	}
 
-	/* Figure out the transfer arguments */
-	xfertyp = esdhc_xfertyp(cmd, data);
+	sdhci_set_cmd_xfer_mode(&host->sdhci, cmd, data,
+				false, &command, &xfertyp);
+
+	if ((host->socdata->flags & ESDHC_FLAG_MULTIBLK_NO_INT) &&
+	    (cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION))
+		command |= SDHCI_COMMAND_CMDTYP_ABORT;
 
 	/* Send the command */
 	sdhci_write32(&host->sdhci, SDHCI_ARGUMENT, cmd->cmdarg);
@@ -101,7 +78,9 @@ esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd, struct mci_data
 		sdhci_write32(&host->sdhci, IMX_SDHCI_MIXCTRL, mixctrl);
 	}
 
-	sdhci_write32(&host->sdhci, SDHCI_TRANSFER_MODE__COMMAND, xfertyp);
+
+	sdhci_write32(&host->sdhci, SDHCI_TRANSFER_MODE__COMMAND,
+		      command << 16 | xfertyp);
 
 	/* Wait for the command to complete */
 	timeout = 10000;
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
