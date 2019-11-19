Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX15n-00069a-61
 for barebox@lists.infradead.org; Tue, 19 Nov 2019 10:50:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Nov 2019 11:50:25 +0100
Message-Id: <20191119105036.12300-11-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/21] mci: imx-esdhc-pbl: Use 16bit register definitions
To: Barebox List <barebox@lists.infradead.org>

We have some register defines in a 16bit access version and a 32bit
access version. Use the former to get rid of the latter later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc-pbl.c | 23 ++++++++++++++---------
 1 file changed, 14 insertions(+), 9 deletions(-)

diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index f93ddfa0d5..0d15668fbe 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -63,23 +63,28 @@ static void __udelay(int us)
 static u32 esdhc_xfertyp(struct mci_cmd *cmd, struct mci_data *data)
 {
 	u32 xfertyp = 0;
+	u32 command = 0;
 
-	if (data)
-		xfertyp |= COMMAND_DPSEL | TRANSFER_MODE_MSBSEL |
-			TRANSFER_MODE_BCEN |TRANSFER_MODE_DTDSEL;
+	if (data) {
+		command |= SDHCI_DATA_PRESENT;
+		xfertyp |= TRANSFER_MODE_MSBSEL | TRANSFER_MODE_BCEN |
+			   TRANSFER_MODE_DTDSEL;
+	}
 
 	if (cmd->resp_type & MMC_RSP_CRC)
-		xfertyp |= COMMAND_CCCEN;
+		command |= SDHCI_CMD_CRC_CHECK_EN;
 	if (cmd->resp_type & MMC_RSP_OPCODE)
-		xfertyp |= COMMAND_CICEN;
+		xfertyp |= SDHCI_CMD_INDEX_CHECK_EN;
 	if (cmd->resp_type & MMC_RSP_136)
-		xfertyp |= COMMAND_RSPTYP_136;
+		command |= SDHCI_RESP_TYPE_136;
 	else if (cmd->resp_type & MMC_RSP_BUSY)
-		xfertyp |= COMMAND_RSPTYP_48_BUSY;
+		command |= SDHCI_RESP_TYPE_48_BUSY;
 	else if (cmd->resp_type & MMC_RSP_PRESENT)
-		xfertyp |= COMMAND_RSPTYP_48;
+		command |= SDHCI_RESP_TYPE_48;
+
+	command |= SDHCI_CMD_INDEX(cmd->cmdidx);
 
-	return COMMAND_CMD(cmd->cmdidx) | xfertyp;
+	return command << 16 | xfertyp;
 }
 
 static int esdhc_do_data(struct esdhc *esdhc, struct mci_data *data)
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
