Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YsQ2U-0001PK-DT
 for barebox@lists.infradead.org; Wed, 13 May 2015 06:21:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 May 2015 08:20:35 +0200
Message-Id: <1431498037-31789-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] mci: imx-esdhc: Use IS_ENABLED() instead of #ifdef
To: Barebox List <barebox@lists.infradead.org>

To get rid of some #ifdefery.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c | 124 +++++++++++++++++++++++++++---------------------
 1 file changed, 69 insertions(+), 55 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 8b45500..178967a 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -60,9 +60,10 @@ static u32 esdhc_xfertyp(struct mci_cmd *cmd, struct mci_data *data)
 
 	if (data) {
 		xfertyp |= COMMAND_DPSEL;
-#ifndef CONFIG_MCI_IMX_ESDHC_PIO
-		xfertyp |= TRANSFER_MODE_DMAEN;
-#endif
+
+		if (!IS_ENABLED(CONFIG_MCI_IMX_ESDHC_PIO))
+			xfertyp |= TRANSFER_MODE_DMAEN;
+
 		if (data->blocks > 1) {
 			xfertyp |= TRANSFER_MODE_MSBSEL;
 			xfertyp |= TRANSFER_MODE_BCEN;
@@ -89,7 +90,6 @@ static u32 esdhc_xfertyp(struct mci_cmd *cmd, struct mci_data *data)
 	return COMMAND_CMD(cmd->cmdidx) | xfertyp;
 }
 
-#ifdef CONFIG_MCI_IMX_ESDHC_PIO
 /*
  * PIO Read/Write Mode reduce the performace as DMA is not used in this mode.
  */
@@ -153,52 +153,84 @@ esdhc_pio_read_write(struct mci_host *mci, struct mci_data *data)
 		}
 	}
 }
-#endif
 
 static int esdhc_setup_data(struct mci_host *mci, struct mci_data *data)
 {
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
 	void __iomem *regs = host->regs;
-#ifndef CONFIG_MCI_IMX_ESDHC_PIO
 	u32 wml_value;
 
-	wml_value = data->blocksize/4;
-
-	if (data->flags & MMC_DATA_READ) {
-		if (wml_value > 0x10)
-			wml_value = 0x10;
-
-		esdhc_clrsetbits32(regs + IMX_SDHCI_WML, WML_RD_WML_MASK, wml_value);
-		esdhc_write32(regs + SDHCI_DMA_ADDRESS, (u32)data->dest);
-	} else {
-		if (wml_value > 0x80)
-			wml_value = 0x80;
-		if ((esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_WPSPL) == 0) {
-			printf("\nThe SD card is locked. Can not write to a locked card.\n\n");
-			return -ETIMEDOUT;
+	if (IS_ENABLED(CONFIG_MCI_IMX_ESDHC_PIO)) {
+		if (!(data->flags & MMC_DATA_READ)) {
+			if ((esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_WPSPL) == 0) {
+				printf("\nThe SD card is locked. "
+					"Can not write to a locked card.\n\n");
+				return -ETIMEDOUT;
+			}
+			esdhc_write32(regs + SDHCI_DMA_ADDRESS, (u32)data->src);
+		} else {
+			esdhc_write32(regs + SDHCI_DMA_ADDRESS, (u32)data->dest);
 		}
+	} else {
+		wml_value = data->blocksize/4;
+
+		if (data->flags & MMC_DATA_READ) {
+			if (wml_value > 0x10)
+				wml_value = 0x10;
+
+			esdhc_clrsetbits32(regs + IMX_SDHCI_WML, WML_RD_WML_MASK, wml_value);
+			esdhc_write32(regs + SDHCI_DMA_ADDRESS, (u32)data->dest);
+		} else {
+			if (wml_value > 0x80)
+				wml_value = 0x80;
+			if ((esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_WPSPL) == 0) {
+				printf("\nThe SD card is locked. Can not write to a locked card.\n\n");
+				return -ETIMEDOUT;
+			}
 
-		esdhc_clrsetbits32(regs + IMX_SDHCI_WML, WML_WR_WML_MASK,
-					wml_value << 16);
-		esdhc_write32(regs + SDHCI_DMA_ADDRESS, (u32)data->src);
-	}
-#else	/* CONFIG_MCI_IMX_ESDHC_PIO */
-	if (!(data->flags & MMC_DATA_READ)) {
-		if ((esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_WPSPL) == 0) {
-			printf("\nThe SD card is locked. "
-				"Can not write to a locked card.\n\n");
-			return -ETIMEDOUT;
+			esdhc_clrsetbits32(regs + IMX_SDHCI_WML, WML_WR_WML_MASK,
+						wml_value << 16);
+			esdhc_write32(regs + SDHCI_DMA_ADDRESS, (u32)data->src);
 		}
-		esdhc_write32(regs + SDHCI_DMA_ADDRESS, (u32)data->src);
-	} else
-		esdhc_write32(regs + SDHCI_DMA_ADDRESS, (u32)data->dest);
-#endif	/* CONFIG_MCI_IMX_ESDHC_PIO */
+	}
 
 	esdhc_write32(regs + SDHCI_BLOCK_SIZE__BLOCK_COUNT, data->blocks << 16 | data->blocksize);
 
 	return 0;
 }
 
+static int esdhc_do_data(struct mci_host *mci, struct mci_data *data)
+{
+	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
+	void __iomem *regs = host->regs;
+	unsigned int num_bytes = data->blocks * data->blocksize;
+	u32 irqstat;
+
+	if (IS_ENABLED(CONFIG_MCI_IMX_ESDHC_PIO)) {
+		esdhc_pio_read_write(mci, data);
+		return 0;
+	}
+
+	do {
+		irqstat = esdhc_read32(regs + SDHCI_INT_STATUS);
+
+		if (irqstat & DATA_ERR)
+			return -EIO;
+
+		if (irqstat & IRQSTAT_DTOE)
+			return -ETIMEDOUT;
+	} while (!(irqstat & IRQSTAT_TC) &&
+		(esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_DLA));
+
+	if (data->flags & MMC_DATA_WRITE)
+		dma_sync_single_for_cpu((unsigned long)data->src,
+					num_bytes, DMA_TO_DEVICE);
+	else
+		dma_sync_single_for_cpu((unsigned long)data->dest,
+					num_bytes, DMA_FROM_DEVICE);
+
+	return 0;
+}
 
 /*
  * Sends a command out on the bus.  Takes the mci pointer,
@@ -303,27 +335,9 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 
 	/* Wait until all of the blocks are transferred */
 	if (data) {
-#ifdef CONFIG_MCI_IMX_ESDHC_PIO
-		esdhc_pio_read_write(mci, data);
-#else
-		do {
-			irqstat = esdhc_read32(regs + SDHCI_INT_STATUS);
-
-			if (irqstat & DATA_ERR)
-				return -EIO;
-
-			if (irqstat & IRQSTAT_DTOE)
-				return -ETIMEDOUT;
-		} while (!(irqstat & IRQSTAT_TC) &&
-				(esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_DLA));
-
-		if (data->flags & MMC_DATA_WRITE)
-			dma_sync_single_for_cpu((unsigned long)data->src,
-						num_bytes, DMA_TO_DEVICE);
-		else
-			dma_sync_single_for_cpu((unsigned long)data->dest,
-						num_bytes, DMA_FROM_DEVICE);
-#endif
+		ret = esdhc_do_data(mci, data);
+		if (ret)
+			return ret;
 	}
 
 	esdhc_write32(regs + SDHCI_INT_STATUS, -1);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
