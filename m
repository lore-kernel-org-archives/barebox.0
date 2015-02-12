Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YM1W9-0008JW-Qo
 for barebox@lists.infradead.org; Thu, 12 Feb 2015 21:41:54 +0000
Received: from tellur.intern.lynxeye.de (p57B5FBCA.dip0.t-ipconnect.de
 [87.181.251.202]) by lynxeye.de (Postfix) with ESMTPA id D7C9026C2002
 for <barebox@lists.infradead.org>; Thu, 12 Feb 2015 22:40:09 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu, 12 Feb 2015 22:39:43 +0100
Message-Id: <1423777200-22965-8-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH RFT 07/24] MCI: dw-mmc: convert to streaming DMA ops
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/mci/Kconfig  |  2 +-
 drivers/mci/dw_mmc.c | 24 ++++++++++++------------
 2 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index dbcc38d..a5cf2fe 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -36,7 +36,7 @@ comment "--- MCI host drivers ---"
 
 config MCI_DW
 	bool "Synopsys DesignWare Memory Card Interface"
-	depends on ARM
+	depends on HAS_DMA
 	help
 	  This selects support for the Synopsys DesignWare Mobile Storage IP
 	  block, this provides host support for SD and MMC interfaces, in both
diff --git a/drivers/mci/dw_mmc.c b/drivers/mci/dw_mmc.c
index 3992815..f02ea62 100644
--- a/drivers/mci/dw_mmc.c
+++ b/drivers/mci/dw_mmc.c
@@ -29,7 +29,6 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <asm-generic/errno.h>
-#include <asm/mmu.h>
 
 #define DWMCI_CTRL		0x000
 #define	DWMCI_PWREN		0x004
@@ -282,7 +281,6 @@ dwmci_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 	uint64_t start;
 	int ret;
 	unsigned int num_bytes = 0;
-	const void *writebuf = NULL;
 
 	start = get_time_ns();
 	while (1) {
@@ -300,12 +298,12 @@ dwmci_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 	if (data) {
 		num_bytes = data->blocks * data->blocksize;
 
-		if (data->flags & MMC_DATA_WRITE) {
-			dma_flush_range((unsigned long)data->src,
-				(unsigned long)(data->src + data->blocks * 512));
-
-			writebuf = data->src;
-		}
+		if (data->flags & MMC_DATA_WRITE)
+			dma_sync_single_for_device((unsigned long)data->src,
+						   num_bytes, DMA_TO_DEVICE);
+		else
+			dma_sync_single_for_device((unsigned long)data->dest,
+						   num_bytes, DMA_FROM_DEVICE);
 
 		ret = dwmci_prepare_data(host, data);
 		if (ret)
@@ -389,10 +387,12 @@ dwmci_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 		ctrl &= ~(DWMCI_DMA_EN);
 		dwmci_writel(host, DWMCI_CTRL, ctrl);
 
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
 	}
 
 	udelay(100);
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
