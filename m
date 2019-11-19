Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX165-0006Ou-FD
 for barebox@lists.infradead.org; Tue, 19 Nov 2019 10:51:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Nov 2019 11:50:31 +0100
Message-Id: <20191119105036.12300-17-s.hauer@pengutronix.de>
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
Subject: [PATCH 16/21] mci: imx-esdhc: Use sdhci_set_cmd_xfer_mode()
To: Barebox List <barebox@lists.infradead.org>

Use sdhci_set_cmd_xfer_mode() to share more code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c | 57 ++++++++---------------------------------
 1 file changed, 11 insertions(+), 46 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index c2c9d1e24c..4d23788eec 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -164,47 +164,6 @@ static inline void esdhc_setbits32(struct fsl_esdhc_host *host, unsigned int reg
 	esdhc_clrsetbits32(host, reg, 0, set);
 }
 
-/* Return the XFERTYP flags for a given command and data packet */
-static u32 esdhc_xfertyp(struct fsl_esdhc_host *host,
-			 struct mci_cmd *cmd, struct mci_data *data)
-{
-	u32 xfertyp = 0;
-	u32 command = 0;
-
-	if (data) {
-		command |= SDHCI_DATA_PRESENT;
-
-		if (!IS_ENABLED(CONFIG_MCI_IMX_ESDHC_PIO))
-			xfertyp |= SDHCI_DMA_EN;
-
-		if (data->blocks > 1) {
-			xfertyp |= SDHCI_MULTIPLE_BLOCKS;
-			xfertyp |= SDHCI_BLOCK_COUNT_EN;
-		}
-
-		if (data->flags & MMC_DATA_READ)
-			xfertyp |= SDHCI_DATA_TO_HOST;
-	}
-
-	if (cmd->resp_type & MMC_RSP_CRC)
-		command |= SDHCI_CMD_CRC_CHECK_EN;
-	if (cmd->resp_type & MMC_RSP_OPCODE)
-		command |= SDHCI_CMD_INDEX_CHECK_EN;
-	if (cmd->resp_type & MMC_RSP_136)
-		command |= SDHCI_RESP_TYPE_136;
-	else if (cmd->resp_type & MMC_RSP_BUSY)
-		command |= SDHCI_RESP_TYPE_48_BUSY;
-	else if (cmd->resp_type & MMC_RSP_PRESENT)
-		command |= SDHCI_RESP_TYPE_48;
-	if ((host->socdata->flags & ESDHC_FLAG_MULTIBLK_NO_INT) &&
-	    (cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION))
-		command |= SDHCI_COMMAND_CMDTYP_ABORT;
-
-	command |= SDHCI_CMD_INDEX(cmd->cmdidx);
-
-	return command << 16 | xfertyp;
-}
-
 /*
  * PIO Read/Write Mode reduce the performace as DMA is not used in this mode.
  */
@@ -330,7 +289,7 @@ static int esdhc_do_data(struct mci_host *mci, struct mci_data *data)
 static int
 esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 {
-	u32	xfertyp, mixctrl;
+	u32	xfertyp, mixctrl, command;
 	u32	irqstat;
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
 	unsigned int num_bytes = 0;
@@ -369,21 +328,27 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 			return err;
 	}
 
-	/* Figure out the transfer arguments */
-	xfertyp = esdhc_xfertyp(host, cmd, data);
+	sdhci_set_cmd_xfer_mode(&host->sdhci, cmd, data,
+				!IS_ENABLED(CONFIG_MCI_IMX_ESDHC_PIO), &command,
+				&xfertyp);
+
+	if ((host->socdata->flags & ESDHC_FLAG_MULTIBLK_NO_INT) &&
+	    (cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION))
+		command |= SDHCI_COMMAND_CMDTYP_ABORT;
 
 	/* Send the command */
 	sdhci_write32(&host->sdhci, SDHCI_ARGUMENT, cmd->cmdarg);
 
 	if (esdhc_is_usdhc(host)) {
 		/* write lower-half of xfertyp to mixctrl */
-		mixctrl = xfertyp & 0xFFFF;
+		mixctrl = xfertyp;
 		/* Keep the bits 22-25 of the register as is */
 		mixctrl |= (sdhci_read32(&host->sdhci, IMX_SDHCI_MIXCTRL) & (0xF << 22));
 		sdhci_write32(&host->sdhci, IMX_SDHCI_MIXCTRL, mixctrl);
 	}
 
-	sdhci_write32(&host->sdhci, SDHCI_TRANSFER_MODE__COMMAND, xfertyp);
+	sdhci_write32(&host->sdhci, SDHCI_TRANSFER_MODE__COMMAND,
+		      command << 16 | xfertyp);
 
 	/* Wait for the command to complete */
 	ret = wait_on_timeout(100 * MSECOND,
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
