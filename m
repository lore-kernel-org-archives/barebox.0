Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXKZN-00015m-Qj
 for barebox@lists.infradead.org; Wed, 20 Nov 2019 07:38:35 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed, 20 Nov 2019 08:38:16 +0100
Message-Id: <20191120073816.16119-1-ahmad@a3f.at>
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
Subject: [PATCH] mci: dove: fix dereference of nullable pointer
To: barebox@lists.infradead.org

data->{blocks, blocksize, flags} are all used outside of the if clause
checking whether data is not NULL.
Fix this to avoid dereferencing null pointers.

Fixes: bdcf89d274 ("mci: add Marvell Dove SDHCI driver")
Cc: Michael Grzeschik <m.grzeschik@pengutronix.de>
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/mci/dove-sdhci.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/mci/dove-sdhci.c b/drivers/mci/dove-sdhci.c
index e71a27ce4f33..bccda5399491 100644
--- a/drivers/mci/dove-sdhci.c
+++ b/drivers/mci/dove-sdhci.c
@@ -116,7 +116,7 @@ static int dove_sdhci_mci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	u32 command, xfer;
 	u64 start;
 	int ret;
-	unsigned int num_bytes = data->blocks * data->blocksize;
+	unsigned int num_bytes = 0;
 	struct dove_sdhci *host = priv_from_mci_host(mci);
 
 	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
@@ -140,6 +140,7 @@ static int dove_sdhci_mci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 
 	/* setup transfer data */
 	if (data) {
+		num_bytes = data->blocks * data->blocksize;
 		if (data->flags & MMC_DATA_READ)
 			sdhci_write32(&host->sdhci, SDHCI_DMA_ADDRESS, (u32)data->dest);
 		else
@@ -178,14 +179,14 @@ static int dove_sdhci_mci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 
 	sdhci_read_response(&host->sdhci, cmd);
 
-	if (data->flags & MMC_DATA_WRITE)
-		dma_sync_single_for_cpu((unsigned long)data->src,
-					 num_bytes, DMA_TO_DEVICE);
-	else
-		dma_sync_single_for_cpu((unsigned long)data->dest,
+	if (data) {
+		if (data->flags & MMC_DATA_WRITE)
+			dma_sync_single_for_cpu((unsigned long)data->src,
+						num_bytes, DMA_TO_DEVICE);
+		else
+			dma_sync_single_for_cpu((unsigned long)data->dest,
 					 num_bytes, DMA_FROM_DEVICE);
 
-	if (data) {
 		ret = dove_sdhci_wait_for_done(host, SDHCI_INT_XFER_COMPLETE);
 		if (ret) {
 			dev_err(host->mci.hw_dev, "error while transfering data for command %d\n",
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
