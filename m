Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX16b-0006td-CB
 for barebox@lists.infradead.org; Tue, 19 Nov 2019 10:51:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Nov 2019 11:50:35 +0100
Message-Id: <20191119105036.12300-21-s.hauer@pengutronix.de>
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
Subject: [PATCH 20/21] mci: mci-bcm2835: Use generic PIO transfer function
To: Barebox List <barebox@lists.infradead.org>

Use sdhci_transfer_data() to share more code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-bcm2835.c | 92 ++++-----------------------------------
 1 file changed, 8 insertions(+), 84 deletions(-)

diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
index f17bae7c8d..b18d681870 100644
--- a/drivers/mci/mci-bcm2835.c
+++ b/drivers/mci/mci-bcm2835.c
@@ -67,10 +67,13 @@ static void bcm2835_sdhci_write32(struct sdhci *sdhci, int reg, u32 val)
 	 * too)
 	 */
 
-	if (host->last_write != 0)
-		while ((get_time_ns() - host->last_write) < twoticks_delay)
-			;
-	host->last_write = get_time_ns();
+	if (reg != SDHCI_BUFFER) {
+		if (host->last_write != 0)
+			while ((get_time_ns() - host->last_write) < twoticks_delay)
+				;
+		host->last_write = get_time_ns();
+	}
+
 	writel(val, host->regs + reg);
 }
 
@@ -81,85 +84,6 @@ static u32 bcm2835_sdhci_read32(struct sdhci *sdhci, int reg)
 	return readl(host->regs + reg);
 }
 
-/* Create special write data function since the data
- * register is not affected by the twoticks_delay bug
- * and we can thus get better speed here
- */
-static void sdhci_write32_data(struct bcm2835_mci_host *host, u32 *p)
-{
-	writel(*p, host->regs + SDHCI_BUFFER);
-}
-
-/* Make a read data functions as well just to keep structure */
-static void sdhci_read32_data(struct bcm2835_mci_host *host, u32 *p)
-{
-	*p = readl(host->regs + SDHCI_BUFFER);
-}
-
-static int bcm2835_mci_transfer_data(struct bcm2835_mci_host *host,
-		struct mci_cmd *cmd, struct mci_data *data) {
-	u32 *p;
-	u32 data_size, status, intr_status = 0;
-	u32 data_ready_intr_mask;
-	u32 data_ready_status_mask;
-	int i = 0;
-	void (*read_write_func)(struct bcm2835_mci_host*, u32*);
-
-	data_size = data->blocksize * data->blocks;
-
-	if (data->flags & MMC_DATA_READ) {
-		p = (u32 *) data->dest;
-		data_ready_intr_mask = SDHCI_INT_DATA_AVAIL;
-		data_ready_status_mask = SDHCI_BUFFER_READ_ENABLE;
-		read_write_func = &sdhci_read32_data;
-	} else {
-		p = (u32 *) data->src;
-		data_ready_intr_mask = SDHCI_INT_SPACE_AVAIL;
-		data_ready_status_mask = SDHCI_BUFFER_WRITE_ENABLE;
-		read_write_func = &sdhci_write32_data;
-	}
-	do {
-		intr_status = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS);
-		if (intr_status & SDHCI_INT_INDEX) {
-			dev_err(host->hw_dev,
-					"Error occured while transferring data: 0x%X\n",
-					intr_status);
-			return -EPERM;
-		}
-		if (intr_status & data_ready_intr_mask) {
-			status = sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE);
-			if ((status & data_ready_status_mask) == 0)
-				continue;
-			/*Clear latest int and transfer one block size of data*/
-			sdhci_write32(&host->sdhci, SDHCI_INT_STATUS,
-					data_ready_intr_mask);
-			for (i = 0; i < data->blocksize; i += 4) {
-				read_write_func(host, p);
-				p++;
-				data_size -= 4;
-			}
-		}
-	} while ((intr_status & SDHCI_INT_XFER_COMPLETE) == 0);
-
-	if (data_size != 0) {
-		if (data->flags & MMC_DATA_READ)
-			dev_err(host->hw_dev, "Error while reading:\n");
-		else
-			dev_err(host->hw_dev, "Error while writing:\n");
-
-		dev_err(host->hw_dev, "Transferred %d bytes of data, wanted %d\n",
-				(data->blocksize * data->blocks) - data_size,
-				data->blocksize * data->blocks);
-
-		dev_err(host->hw_dev, "Status: 0x%X, Interrupt: 0x%X\n",
-				sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE),
-				sdhci_read32(&host->sdhci, SDHCI_INT_STATUS));
-
-		return -EPERM;
-	}
-	return 0;
-}
-
 static u32 bcm2835_mci_wait_command_done(struct bcm2835_mci_host *host)
 {
 	u32 interrupt = 0;
@@ -248,7 +172,7 @@ static int bcm2835_mci_request(struct mci_host *mci, struct mci_cmd *cmd,
 	}
 
 	if (!ret && data)
-		ret = bcm2835_mci_transfer_data(host, cmd, data);
+		ret = sdhci_transfer_data(&host->sdhci, data);
 
 	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, 0xFFFFFFFF);
 	if (ret) {
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
