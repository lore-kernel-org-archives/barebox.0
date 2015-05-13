Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YsQ2d-0001U8-Sn
 for barebox@lists.infradead.org; Wed, 13 May 2015 06:21:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 May 2015 08:20:37 +0200
Message-Id: <1431498037-31789-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] mci: imx-esdhc: Replace printf with dev_*
To: Barebox List <barebox@lists.infradead.org>

This replaces printf with dev_* since a struct device_d * is
available.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c | 29 +++++++++++++++--------------
 1 file changed, 15 insertions(+), 14 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index f310213..6caf165 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -115,7 +115,7 @@ esdhc_pio_read_write(struct mci_host *mci, struct mci_data *data)
 			while (!(esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_BREN)
 				&& --timeout);
 			if (timeout <= 0) {
-				printf("\nData Read Failed in PIO Mode.");
+				dev_err(host->dev, "Data Read Failed\n");
 				return -ETIMEDOUT;
 			}
 			while (size && (!(irqstat & IRQSTAT_TC))) {
@@ -138,7 +138,7 @@ esdhc_pio_read_write(struct mci_host *mci, struct mci_data *data)
 			while (!(esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_BWEN)
 				&& --timeout);
 			if (timeout <= 0) {
-				printf("\nData Write Failed in PIO Mode.");
+				dev_err(host->dev, "Data Write Failed\n");
 				return -ETIMEDOUT;
 			}
 			while (size && (!(irqstat & IRQSTAT_TC))) {
@@ -164,11 +164,8 @@ static int esdhc_setup_data(struct mci_host *mci, struct mci_data *data)
 
 	if (IS_ENABLED(CONFIG_MCI_IMX_ESDHC_PIO)) {
 		if (!(data->flags & MMC_DATA_READ)) {
-			if ((esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_WPSPL) == 0) {
-				printf("\nThe SD card is locked. "
-					"Can not write to a locked card.\n\n");
-				return -ETIMEDOUT;
-			}
+			if ((esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_WPSPL) == 0)
+				goto err_locked;
 			esdhc_write32(regs + SDHCI_DMA_ADDRESS, (u32)data->src);
 		} else {
 			esdhc_write32(regs + SDHCI_DMA_ADDRESS, (u32)data->dest);
@@ -185,10 +182,8 @@ static int esdhc_setup_data(struct mci_host *mci, struct mci_data *data)
 		} else {
 			if (wml_value > 0x80)
 				wml_value = 0x80;
-			if ((esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_WPSPL) == 0) {
-				printf("\nThe SD card is locked. Can not write to a locked card.\n\n");
-				return -ETIMEDOUT;
-			}
+			if ((esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_WPSPL) == 0)
+				goto err_locked;
 
 			esdhc_clrsetbits32(regs + IMX_SDHCI_WML, WML_WR_WML_MASK,
 						wml_value << 16);
@@ -199,6 +194,11 @@ static int esdhc_setup_data(struct mci_host *mci, struct mci_data *data)
 	esdhc_write32(regs + SDHCI_BLOCK_SIZE__BLOCK_COUNT, data->blocks << 16 | data->blocksize);
 
 	return 0;
+
+err_locked:
+	dev_err(host->dev, "Can not write to locked card.\n\n");
+
+	return -ETIMEDOUT;
 }
 
 static int esdhc_do_data(struct mci_host *mci, struct mci_data *data)
@@ -512,8 +512,9 @@ static int esdhc_init(struct mci_host *mci, struct device_d *dev)
 	return ret;
 }
 
-static int esdhc_reset(void __iomem *regs)
+static int esdhc_reset(struct fsl_esdhc_host *host)
 {
+	void __iomem *regs = host->regs;
 	uint64_t start;
 
 	/* reset the controller */
@@ -527,7 +528,7 @@ static int esdhc_reset(void __iomem *regs)
 					& SYSCTL_RSTA))
 			break;
 		if (is_timeout(start, 100 * MSECOND)) {
-			printf("MMC/SD: Reset never completed.\n");
+			dev_err(host->dev, "Reset never completed.\n");
 			return -EIO;
 		}
 	}
@@ -564,7 +565,7 @@ static int fsl_esdhc_probe(struct device_d *dev)
 		return PTR_ERR(host->regs);
 
 	/* First reset the eSDHC controller */
-	ret = esdhc_reset(host->regs);
+	ret = esdhc_reset(host);
 	if (ret) {
 		free(host);
 		return ret;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
