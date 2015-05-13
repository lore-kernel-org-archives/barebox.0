Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YsQ2Y-0001RY-TF
 for barebox@lists.infradead.org; Wed, 13 May 2015 06:21:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 May 2015 08:20:36 +0200
Message-Id: <1431498037-31789-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1431498037-31789-1-git-send-email-s.hauer@pengutronix.de>
References: <1431498037-31789-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/3] mci: imx-esdhc: Check for errors in esdhc_pio_read_write
To: Barebox List <barebox@lists.infradead.org>

esdhc_pio_read_write can fail, so let it return an error code
rather than void.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 178967a..f310213 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -93,7 +93,7 @@ static u32 esdhc_xfertyp(struct mci_cmd *cmd, struct mci_data *data)
 /*
  * PIO Read/Write Mode reduce the performace as DMA is not used in this mode.
  */
-static void
+static int
 esdhc_pio_read_write(struct mci_host *mci, struct mci_data *data)
 {
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
@@ -116,7 +116,7 @@ esdhc_pio_read_write(struct mci_host *mci, struct mci_data *data)
 				&& --timeout);
 			if (timeout <= 0) {
 				printf("\nData Read Failed in PIO Mode.");
-				return;
+				return -ETIMEDOUT;
 			}
 			while (size && (!(irqstat & IRQSTAT_TC))) {
 				udelay(100); /* Wait before last byte transfer complete */
@@ -139,7 +139,7 @@ esdhc_pio_read_write(struct mci_host *mci, struct mci_data *data)
 				&& --timeout);
 			if (timeout <= 0) {
 				printf("\nData Write Failed in PIO Mode.");
-				return;
+				return -ETIMEDOUT;
 			}
 			while (size && (!(irqstat & IRQSTAT_TC))) {
 				udelay(100); /* Wait before last byte transfer complete */
@@ -152,6 +152,8 @@ esdhc_pio_read_write(struct mci_host *mci, struct mci_data *data)
 			blocks--;
 		}
 	}
+
+	return 0;
 }
 
 static int esdhc_setup_data(struct mci_host *mci, struct mci_data *data)
@@ -206,10 +208,8 @@ static int esdhc_do_data(struct mci_host *mci, struct mci_data *data)
 	unsigned int num_bytes = data->blocks * data->blocksize;
 	u32 irqstat;
 
-	if (IS_ENABLED(CONFIG_MCI_IMX_ESDHC_PIO)) {
-		esdhc_pio_read_write(mci, data);
-		return 0;
-	}
+	if (IS_ENABLED(CONFIG_MCI_IMX_ESDHC_PIO))
+		return esdhc_pio_read_write(mci, data);
 
 	do {
 		irqstat = esdhc_read32(regs + SDHCI_INT_STATUS);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
