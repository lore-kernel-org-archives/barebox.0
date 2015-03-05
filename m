Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YTdgm-0007iA-2O
 for barebox@lists.infradead.org; Thu, 05 Mar 2015 21:52:19 +0000
Received: from tellur.intern.lynxeye.de (p57B5E414.dip0.t-ipconnect.de
 [87.181.228.20]) by lynxeye.de (Postfix) with ESMTPA id 1C1B826C2010
 for <barebox@lists.infradead.org>; Thu,  5 Mar 2015 22:50:30 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu,  5 Mar 2015 22:50:06 +0100
Message-Id: <1425592221-23774-16-git-send-email-dev@lynxeye.de>
In-Reply-To: <1425592221-23774-1-git-send-email-dev@lynxeye.de>
References: <1425592221-23774-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 12/27] MCI: tegra-sdmmc: convert to streaming DMA ops
To: barebox@lists.infradead.org

Move to the common streaming DMA ops in order to get rid of
the direct usage of the ARM MMU functions for the cache
maintenance.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/mci/tegra-sdmmc.c | 26 ++++++++++++++------------
 1 file changed, 14 insertions(+), 12 deletions(-)

diff --git a/drivers/mci/tegra-sdmmc.c b/drivers/mci/tegra-sdmmc.c
index 0e23d6f..670c280 100644
--- a/drivers/mci/tegra-sdmmc.c
+++ b/drivers/mci/tegra-sdmmc.c
@@ -17,10 +17,10 @@
  * along with this program.  If not, see <http://www.gnu.org/licenses/>.
  */
 
-#include <asm/mmu.h>
 #include <common.h>
 #include <clock.h>
 #include <driver.h>
+#include <dma.h>
 #include <gpio.h>
 #include <init.h>
 #include <io.h>
@@ -100,6 +100,7 @@ static int tegra_sdmmc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 				struct mci_data *data)
 {
 	struct tegra_sdmmc_host *host = to_tegra_sdmmc_host(mci);
+	unsigned int num_bytes = 0;
 	u32 val = 0;
 	int ret;
 
@@ -109,15 +110,15 @@ static int tegra_sdmmc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 
 	/* Set up for a data transfer if we have one */
 	if (data) {
+		num_bytes = data->blocks * data->blocksize;
+
 		if (data->flags & MMC_DATA_WRITE) {
-			dma_flush_range((unsigned long)data->src,
-			                (unsigned long)(data->src +
-			                data->blocks * 512));
+			dma_sync_single_for_device((unsigned long)data->src,
+						   num_bytes, DMA_TO_DEVICE);
 			writel((u32)data->src, host->regs + SDHCI_DMA_ADDRESS);
 		} else {
-			dma_clean_range((unsigned long)data->src,
-			                (unsigned long)(data->src +
-			                data->blocks * 512));
+			dma_sync_single_for_device((unsigned long)data->dest,
+						   num_bytes, DMA_FROM_DEVICE);
 			writel((u32)data->dest, host->regs + SDHCI_DMA_ADDRESS);
 		}
 
@@ -255,11 +256,12 @@ static int tegra_sdmmc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 		}
 		writel(val, host->regs + SDHCI_INT_STATUS);
 
-		if (data->flags & MMC_DATA_READ) {
-			dma_inv_range((unsigned long)data->dest,
-			              (unsigned long)(data->dest +
-			              data->blocks * 512));
-		}
+		if (data->flags & MMC_DATA_WRITE)
+			dma_sync_single_for_cpu((unsigned long)data->src,
+						num_bytes, DMA_TO_DEVICE);
+		else
+			dma_sync_single_for_cpu((unsigned long)data->dest,
+						num_bytes, DMA_FROM_DEVICE);
 	}
 
 	return 0;
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
