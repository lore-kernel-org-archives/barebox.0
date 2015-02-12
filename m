Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YM1W9-0008JT-Qi
 for barebox@lists.infradead.org; Thu, 12 Feb 2015 21:41:52 +0000
Received: from tellur.intern.lynxeye.de (p57B5FBCA.dip0.t-ipconnect.de
 [87.181.251.202]) by lynxeye.de (Postfix) with ESMTPA id 2CB7926C2009
 for <barebox@lists.infradead.org>; Thu, 12 Feb 2015 22:40:10 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu, 12 Feb 2015 22:39:44 +0100
Message-Id: <1423777200-22965-9-git-send-email-dev@lynxeye.de>
In-Reply-To: <1423777200-22965-1-git-send-email-dev@lynxeye.de>
References: <1423777200-22965-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH RFT 08/24] MCI: imx: convert to streaming DMA ops
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/mci/imx-esdhc.c | 28 +++++++++++++++++-----------
 1 file changed, 17 insertions(+), 11 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 23bdc1f..8b45500 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -22,6 +22,7 @@
  */
 #include <config.h>
 #include <common.h>
+#include <dma.h>
 #include <driver.h>
 #include <init.h>
 #include <of.h>
@@ -31,7 +32,6 @@
 #include <io.h>
 #include <linux/clk.h>
 #include <linux/err.h>
-#include <asm/mmu.h>
 #include <mach/generic.h>
 #include <mach/esdhc.h>
 #include <gpio.h>
@@ -211,6 +211,7 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 	u32	irqstat;
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
 	void __iomem *regs = host->regs;
+	unsigned int num_bytes = 0;
 	int ret;
 
 	esdhc_write32(regs + SDHCI_INT_STATUS, -1);
@@ -225,12 +226,15 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 		err = esdhc_setup_data(mci, data);
 		if(err)
 			return err;
-		if (data->flags & MMC_DATA_WRITE) {
-			dma_flush_range((unsigned long)data->src,
-				(unsigned long)(data->src + data->blocks * 512));
-		} else
-			dma_clean_range((unsigned long)data->src,
-				(unsigned long)(data->src + data->blocks * 512));
+
+		num_bytes = data->blocks * data->blocksize;
+
+		if (data->flags & MMC_DATA_WRITE)
+			dma_sync_single_for_device((unsigned long)data->src,
+						   num_bytes, DMA_TO_DEVICE);
+		else
+			dma_sync_single_for_device((unsigned long)data->dest,
+						   num_bytes, DMA_FROM_DEVICE);
 
 	}
 
@@ -313,10 +317,12 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 		} while (!(irqstat & IRQSTAT_TC) &&
 				(esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_DLA));
 
-		if (data->flags & MMC_DATA_READ) {
-			dma_inv_range((unsigned long)data->dest,
-					(unsigned long)(data->dest + data->blocks * 512));
-		}
+		if (data->flags & MMC_DATA_WRITE)
+			dma_sync_single_for_cpu((unsigned long)data->src,
+						num_bytes, DMA_TO_DEVICE);
+		else
+			dma_sync_single_for_cpu((unsigned long)data->dest,
+						num_bytes, DMA_FROM_DEVICE);
 #endif
 	}
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
