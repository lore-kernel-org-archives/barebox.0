Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fkS9E-00084A-Bk
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 10:45:05 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1fkS90-0001C3-O0
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 12:44:46 +0200
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1fkS98-0000eI-Gh
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 12:44:54 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 31 Jul 2018 12:44:24 +0200
Message-Id: <20180731104442.2451-2-s.trumtrar@pengutronix.de>
In-Reply-To: <20180731104442.2451-1-s.trumtrar@pengutronix.de>
References: <20180731104442.2451-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 01/19] mci: dw_mmc: remove device_d pointer
To: Barebox List <barebox@lists.infradead.org>

The pointer to the struct device_d *dev is also saved to the struct mci_host.
Get rid of it.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/mci/dw_mmc.c | 36 +++++++++++++++++-------------------
 1 file changed, 17 insertions(+), 19 deletions(-)

diff --git a/drivers/mci/dw_mmc.c b/drivers/mci/dw_mmc.c
index 27c36a63778d..0dd4c1f44154 100644
--- a/drivers/mci/dw_mmc.c
+++ b/drivers/mci/dw_mmc.c
@@ -147,7 +147,6 @@
 
 struct dwmci_host {
 	struct mci_host mci;
-	struct device_d *dev;
 	struct clk *clk_biu, *clk_ciu;
 	void *ioaddr;
 	unsigned int fifo_size_bytes;
@@ -271,7 +270,7 @@ static int dwmci_prepare_data_dma(struct dwmci_host *host,
 		desc->addr = start_addr + (i * PAGE_SIZE);
 		desc->next_addr = (uint32_t)(desc + 1);
 
-		dev_dbg(host->dev, "desc@ 0x%p 0x%08x 0x%08x 0x%08x 0x%08x\n",
+		dev_dbg(host->mci.hw_dev, "desc@ 0x%p 0x%08x 0x%08x 0x%08x 0x%08x\n",
 				desc, flags, cnt, desc->addr, desc->next_addr);
 		if (blk_cnt < 8)
 			break;
@@ -331,7 +330,7 @@ static int dwmci_read_data_pio(struct dwmci_host *host, struct mci_data *data)
 			status = dwmci_readl(host, DWMCI_STATUS);
 		}
 		if (!timeout) {
-			dev_err(host->dev, "%s: FIFO underflow timeout\n",
+			dev_err(host->mci.hw_dev, "%s: FIFO underflow timeout\n",
 			    __func__);
 			break;
 		}
@@ -360,7 +359,7 @@ static int dwmci_write_data_pio(struct dwmci_host *host, struct mci_data *data)
 			status = dwmci_readl(host, DWMCI_STATUS);
 		}
 		if (!timeout) {
-			dev_err(host->dev, "%s: FIFO overflow timeout\n",
+			dev_err(host->mci.hw_dev, "%s: FIFO overflow timeout\n",
 			    __func__);
 			break;
 		}
@@ -378,7 +377,7 @@ static int dwmci_write_data_pio(struct dwmci_host *host, struct mci_data *data)
 		status = dwmci_readl(host, DWMCI_STATUS);
 	}
 	if (!timeout) {
-		dev_err(host->dev, "%s: FIFO flush timeout\n",
+		dev_err(host->mci.hw_dev, "%s: FIFO flush timeout\n",
 		    __func__);
 		return -EIO;
 	}
@@ -403,7 +402,7 @@ dwmci_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 			break;
 
 		if (is_timeout(start, 100 * MSECOND)) {
-			dev_dbg(host->dev, "Timeout on data busy\n");
+			dev_dbg(host->mci.hw_dev, "Timeout on data busy\n");
 			return -ETIMEDOUT;
 		}
 	}
@@ -449,7 +448,7 @@ dwmci_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 
 	flags |= (cmd->cmdidx | DWMCI_CMD_START | DWMCI_CMD_USE_HOLD_REG);
 
-	dev_dbg(host->dev, "Sending CMD%d\n", cmd->cmdidx);
+	dev_dbg(host->mci.hw_dev, "Sending CMD%d\n", cmd->cmdidx);
 
 	dwmci_writel(host, DWMCI_CMD, flags);
 
@@ -462,16 +461,16 @@ dwmci_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 			break;
 		}
 		if (is_timeout(start, 100 * MSECOND)) {
-			dev_dbg(host->dev, "Send command timeout..\n");
+			dev_dbg(host->mci.hw_dev, "Send command timeout..\n");
 			return -ETIMEDOUT;
 		}
 	}
 
 	if (mask & DWMCI_INTMSK_RTO) {
-		dev_dbg(host->dev, "Response Timeout..\n");
+		dev_dbg(host->mci.hw_dev, "Response Timeout..\n");
 		return -ETIMEDOUT;
 	} else if (mask & DWMCI_INTMSK_RE) {
-		dev_dbg(host->dev, "Response Error..\n");
+		dev_dbg(host->mci.hw_dev, "Response Error..\n");
 		return -EIO;
 	}
 
@@ -492,17 +491,17 @@ dwmci_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 			mask = dwmci_readl(host, DWMCI_RINTSTS);
 
 			if (mask & (DWMCI_DATA_ERR)) {
-				dev_dbg(host->dev, "DATA ERROR!\n");
+				dev_dbg(host->mci.hw_dev, "DATA ERROR!\n");
 				return -EIO;
 			}
 
 			if (!dwmci_use_pio(host) && (mask & DWMCI_DATA_TOUT)) {
-				dev_dbg(host->dev, "DATA TIMEOUT!\n");
+				dev_dbg(host->mci.hw_dev, "DATA TIMEOUT!\n");
 				return -EIO;
 			}
 
 			if (is_timeout(start, SECOND * 10)) {
-				dev_dbg(host->dev, "Data timeout\n");
+				dev_dbg(host->mci.hw_dev, "Data timeout\n");
 				return -ETIMEDOUT;
 			}
 
@@ -552,7 +551,7 @@ static int dwmci_send_cmd(struct dwmci_host *host, u32 cmd, u32 arg)
 			return 0;
 
 		if (is_timeout(start, 100 * MSECOND)) {
-			dev_err(host->dev, "TIMEOUT error!!\n");
+			dev_err(host->mci.hw_dev, "TIMEOUT error!!\n");
 			return -ETIMEDOUT;
 		}
 	}
@@ -590,7 +589,7 @@ static void dwmci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 	struct dwmci_host *host = to_dwmci_host(mci);
 	uint32_t ctype;
 
-	dev_dbg(host->dev, "Buswidth = %d, clock: %d\n", ios->bus_width, ios->clock);
+	dev_dbg(host->mci.hw_dev, "Buswidth = %d, clock: %d\n", ios->bus_width, ios->clock);
 
 	if (ios->clock)
 		dwmci_setup_bus(host, ios->clock);
@@ -623,7 +622,7 @@ static int dwmci_init(struct mci_host *mci, struct device_d *dev)
 	dwmci_writel(host, DWMCI_PWREN, host->pwren_value);
 
 	if (dwmci_wait_reset(host, DWMCI_RESET_ALL)) {
-		dev_err(host->dev, "reset failed\n");
+		dev_err(host->mci.hw_dev, "reset failed\n");
 		return -EIO;
 	}
 
@@ -647,10 +646,10 @@ static int dwmci_init(struct mci_host *mci, struct device_d *dev)
 	/*
 	 * If fifo-depth property is set, use this value
 	 */
-	if (!of_property_read_u32(host->dev->device_node,
+	if (!of_property_read_u32(host->mci.hw_dev->device_node,
 		    "fifo-depth", &fifo_size)) {
 		host->fifo_size_bytes = fifo_size;
-		dev_dbg(host->dev, "Using fifo-depth=%u\n",
+		dev_dbg(host->mci.hw_dev, "Using fifo-depth=%u\n",
 		    host->fifo_size_bytes);
 	}
 
@@ -692,7 +691,6 @@ static int dw_mmc_probe(struct device_d *dev)
 	clk_enable(host->clk_biu);
 	clk_enable(host->clk_ciu);
 
-	host->dev = dev;
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
