Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX15x-0006Fl-59
 for barebox@lists.infradead.org; Tue, 19 Nov 2019 10:50:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Nov 2019 11:50:34 +0100
Message-Id: <20191119105036.12300-20-s.hauer@pengutronix.de>
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
Subject: [PATCH 19/21] mci: imx-esdhci: Use generic PIO transfer function
To: Barebox List <barebox@lists.infradead.org>

Use sdhci_transfer_data() in PIO mode to share mode code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c | 69 +----------------------------------------
 1 file changed, 1 insertion(+), 68 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 4d23788eec..bebc36d0b6 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -164,73 +164,6 @@ static inline void esdhc_setbits32(struct fsl_esdhc_host *host, unsigned int reg
 	esdhc_clrsetbits32(host, reg, 0, set);
 }
 
-/*
- * PIO Read/Write Mode reduce the performace as DMA is not used in this mode.
- */
-static int
-esdhc_pio_read_write(struct mci_host *mci, struct mci_data *data)
-{
-	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
-	u32 blocks;
-	char *buffer;
-	u32 databuf;
-	u32 size;
-	u32 irqstat;
-	u32 timeout;
-
-	if (data->flags & MMC_DATA_READ) {
-		blocks = data->blocks;
-		buffer = data->dest;
-		while (blocks) {
-			timeout = PIO_TIMEOUT;
-			size = data->blocksize;
-			irqstat = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS);
-			while (!(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) &
-					SDHCI_BUFFER_READ_ENABLE)
-				&& --timeout);
-			if (timeout <= 0) {
-				dev_err(host->dev, "Data Read Failed\n");
-				return -ETIMEDOUT;
-			}
-			while (size && (!(irqstat & SDHCI_INT_XFER_COMPLETE))) {
-				udelay(100); /* Wait before last byte transfer complete */
-				irqstat = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS);
-				databuf = sdhci_read32(&host->sdhci, SDHCI_BUFFER);
-				*((u32 *)buffer) = databuf;
-				buffer += 4;
-				size -= 4;
-			}
-			blocks--;
-		}
-	} else {
-		blocks = data->blocks;
-		buffer = (char *)data->src;
-		while (blocks) {
-			timeout = PIO_TIMEOUT;
-			size = data->blocksize;
-			irqstat = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS);
-			while (!(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) &
-					SDHCI_BUFFER_WRITE_ENABLE)
-				&& --timeout);
-			if (timeout <= 0) {
-				dev_err(host->dev, "Data Write Failed\n");
-				return -ETIMEDOUT;
-			}
-			while (size && (!(irqstat & SDHCI_INT_XFER_COMPLETE))) {
-				udelay(100); /* Wait before last byte transfer complete */
-				databuf = *((u32 *)buffer);
-				buffer += 4;
-				size -= 4;
-				irqstat = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS);
-				sdhci_write32(&host->sdhci, SDHCI_BUFFER, databuf);
-			}
-			blocks--;
-		}
-	}
-
-	return 0;
-}
-
 static int esdhc_setup_data(struct mci_host *mci, struct mci_data *data,
 			    dma_addr_t dma)
 {
@@ -266,7 +199,7 @@ static int esdhc_do_data(struct mci_host *mci, struct mci_data *data)
 	u32 irqstat;
 
 	if (IS_ENABLED(CONFIG_MCI_IMX_ESDHC_PIO))
-		return esdhc_pio_read_write(mci, data);
+		return sdhci_transfer_data(&host->sdhci, data);
 
 	do {
 		irqstat = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS);
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
