Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSqIU-0001YJ-He
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 20:54:04 +0000
Received: by mail-pg0-x242.google.com with SMTP id c10-v6so138972pgu.9
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2018 13:53:36 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Jun 2018 13:52:22 -0700
Message-Id: <20180612205310.25745-7-andrew.smirnov@gmail.com>
In-Reply-To: <20180612205310.25745-1-andrew.smirnov@gmail.com>
References: <20180612205310.25745-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v5 06/54] mci: imx-esdhc: use dma mapping functions
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Rather than relying on the fact that addresses can be just casted
into DMA addresses use proper DMA mapping functions.

This fixes compiler warnings when we do DMA on this 32bit only device
on aarch64 SoCs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c | 53 ++++++++++++++++++++---------------------
 1 file changed, 26 insertions(+), 27 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index b91f94b99..8929901d4 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -211,18 +211,14 @@ esdhc_pio_read_write(struct mci_host *mci, struct mci_data *data)
 	return 0;
 }
 
-static int esdhc_setup_data(struct mci_host *mci, struct mci_data *data)
+static int esdhc_setup_data(struct mci_host *mci, struct mci_data *data,
+			    dma_addr_t dma)
 {
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
 	void __iomem *regs = host->regs;
 	u32 wml_value;
 
-	if (IS_ENABLED(CONFIG_MCI_IMX_ESDHC_PIO)) {
-		if (!(data->flags & MMC_DATA_READ))
-			esdhc_write32(regs + SDHCI_DMA_ADDRESS, (u32)data->src);
-		else
-			esdhc_write32(regs + SDHCI_DMA_ADDRESS, (u32)data->dest);
-	} else {
+	if (!IS_ENABLED(CONFIG_MCI_IMX_ESDHC_PIO)) {
 		wml_value = data->blocksize/4;
 
 		if (data->flags & MMC_DATA_READ) {
@@ -230,15 +226,14 @@ static int esdhc_setup_data(struct mci_host *mci, struct mci_data *data)
 				wml_value = 0x10;
 
 			esdhc_clrsetbits32(regs + IMX_SDHCI_WML, WML_RD_WML_MASK, wml_value);
-			esdhc_write32(regs + SDHCI_DMA_ADDRESS, (u32)data->dest);
 		} else {
 			if (wml_value > 0x80)
 				wml_value = 0x80;
 
 			esdhc_clrsetbits32(regs + IMX_SDHCI_WML, WML_WR_WML_MASK,
 						wml_value << 16);
-			esdhc_write32(regs + SDHCI_DMA_ADDRESS, (u32)data->src);
 		}
+		esdhc_write32(regs + SDHCI_DMA_ADDRESS, dma);
 	}
 
 	esdhc_write32(regs + SDHCI_BLOCK_SIZE__BLOCK_COUNT, data->blocks << 16 | data->blocksize);
@@ -250,7 +245,6 @@ static int esdhc_do_data(struct mci_host *mci, struct mci_data *data)
 {
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
 	void __iomem *regs = host->regs;
-	unsigned int num_bytes = data->blocks * data->blocksize;
 	u32 irqstat;
 
 	if (IS_ENABLED(CONFIG_MCI_IMX_ESDHC_PIO))
@@ -267,13 +261,6 @@ static int esdhc_do_data(struct mci_host *mci, struct mci_data *data)
 	} while (!(irqstat & IRQSTAT_TC) &&
 		(esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_DLA));
 
-	if (data->flags & MMC_DATA_WRITE)
-		dma_sync_single_for_cpu((unsigned long)data->src,
-					num_bytes, DMA_TO_DEVICE);
-	else
-		dma_sync_single_for_cpu((unsigned long)data->dest,
-					num_bytes, DMA_FROM_DEVICE);
-
 	return 0;
 }
 
@@ -290,6 +277,9 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 	void __iomem *regs = host->regs;
 	unsigned int num_bytes = 0;
 	int ret;
+	void *ptr;
+	enum dma_data_direction dir = 0;
+	dma_addr_t dma = 0;
 
 	esdhc_write32(regs + SDHCI_INT_STATUS, -1);
 
@@ -300,19 +290,25 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 	if (data) {
 		int err;
 
-		err = esdhc_setup_data(mci, data);
-		if(err)
-			return err;
+		if (!IS_ENABLED(CONFIG_MCI_IMX_ESDHC_PIO)) {
+			num_bytes = data->blocks * data->blocksize;
 
-		num_bytes = data->blocks * data->blocksize;
+			if (data->flags & MMC_DATA_WRITE) {
+				ptr = (void *)data->src;
+				dir = DMA_TO_DEVICE;
+			} else {
+				ptr = data->dest;
+				dir = DMA_FROM_DEVICE;
+			}
 
-		if (data->flags & MMC_DATA_WRITE)
-			dma_sync_single_for_device((unsigned long)data->src,
-						   num_bytes, DMA_TO_DEVICE);
-		else
-			dma_sync_single_for_device((unsigned long)data->dest,
-						   num_bytes, DMA_FROM_DEVICE);
+			dma = dma_map_single(host->dev, ptr, num_bytes, dir);
+			if (dma_mapping_error(host->dev, dma))
+				return -EIO;
+		}
 
+		err = esdhc_setup_data(mci, data, dma);
+		if(err)
+			return err;
 	}
 
 	/* Figure out the transfer arguments */
@@ -383,6 +379,9 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 		ret = esdhc_do_data(mci, data);
 		if (ret)
 			return ret;
+
+		if (!IS_ENABLED(CONFIG_MCI_IMX_ESDHC_PIO))
+			dma_unmap_single(host->dev, dma, num_bytes, dir);
 	}
 
 	esdhc_write32(regs + SDHCI_INT_STATUS, -1);
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
