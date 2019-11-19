Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX16L-0006cl-8k
 for barebox@lists.infradead.org; Tue, 19 Nov 2019 10:51:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Nov 2019 11:50:22 +0100
Message-Id: <20191119105036.12300-8-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/21] mci: imx-esdhc: Use 16bit register definitions
To: Barebox List <barebox@lists.infradead.org>

We have some register defines in a 16bit access version and a 32bit
access version. Use the former to get rid of the latter later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 7ae4fb4fd8..11ece677d3 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -100,8 +100,6 @@ struct fsl_esdhc_host {
 
 #define to_fsl_esdhc(mci)	container_of(mci, struct fsl_esdhc_host, mci)
 
-#define  SDHCI_CMD_ABORTCMD (0xC0 << 16)
-
 static inline int esdhc_is_usdhc(struct fsl_esdhc_host *data)
 {
 	return !!(data->socdata->flags & ESDHC_FLAG_USDHC);
@@ -168,9 +166,10 @@ static u32 esdhc_xfertyp(struct fsl_esdhc_host *host,
 			 struct mci_cmd *cmd, struct mci_data *data)
 {
 	u32 xfertyp = 0;
+	u32 command = 0;
 
 	if (data) {
-		xfertyp |= COMMAND_DPSEL;
+		command |= SDHCI_DATA_PRESENT;
 
 		if (!IS_ENABLED(CONFIG_MCI_IMX_ESDHC_PIO))
 			xfertyp |= TRANSFER_MODE_DMAEN;
@@ -185,20 +184,22 @@ static u32 esdhc_xfertyp(struct fsl_esdhc_host *host,
 	}
 
 	if (cmd->resp_type & MMC_RSP_CRC)
-		xfertyp |= COMMAND_CCCEN;
+		command |= SDHCI_CMD_CRC_CHECK_EN;
 	if (cmd->resp_type & MMC_RSP_OPCODE)
-		xfertyp |= COMMAND_CICEN;
+		command |= SDHCI_CMD_INDEX_CHECK_EN;
 	if (cmd->resp_type & MMC_RSP_136)
-		xfertyp |= COMMAND_RSPTYP_136;
+		command |= SDHCI_RESP_TYPE_136;
 	else if (cmd->resp_type & MMC_RSP_BUSY)
-		xfertyp |= COMMAND_RSPTYP_48_BUSY;
+		command |= SDHCI_RESP_TYPE_48_BUSY;
 	else if (cmd->resp_type & MMC_RSP_PRESENT)
-		xfertyp |= COMMAND_RSPTYP_48;
+		command |= SDHCI_RESP_TYPE_48;
 	if ((host->socdata->flags & ESDHC_FLAG_MULTIBLK_NO_INT) &&
 	    (cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION))
-		xfertyp |= SDHCI_CMD_ABORTCMD;
+		command |= SDHCI_COMMAND_CMDTYP_ABORT;
+
+	command |= SDHCI_CMD_INDEX(cmd->cmdidx);
 
-	return COMMAND_CMD(cmd->cmdidx) | xfertyp;
+	return command << 16 | xfertyp;
 }
 
 /*
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
