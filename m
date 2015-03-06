Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward5m.mail.yandex.net ([2a02:6b8:0:2519::3:14])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YTx5b-000211-K3
 for barebox@lists.infradead.org; Fri, 06 Mar 2015 18:35:14 +0000
Received: from smtp4m.mail.yandex.net (smtp4m.mail.yandex.net [77.88.61.131])
 by forward5m.mail.yandex.net (Yandex) with ESMTP id 8F4A429A13CA
 for <barebox@lists.infradead.org>; Fri,  6 Mar 2015 21:34:42 +0300 (MSK)
From: Andrey Panov <rockford@yandex.ru>
Date: Fri,  6 Mar 2015 21:34:21 +0300
Message-Id: <1425666862-8616-1-git-send-email-rockford@yandex.ru>
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
Subject: [PATCH 1/2] MMC: dw_mmc: PIO mode fixes
To: barebox@lists.infradead.org

Simplify PIO mode routines.
Fix a bug when IO is possibly performed twice because of using old
interrupt status.
Support for slow-speed card writes.

Signed-off-by: Andrey Panov <rockford@yandex.ru>
---
 drivers/mci/dw_mmc.c | 129 ++++++++++++++++++++++-----------------------------
 1 file changed, 56 insertions(+), 73 deletions(-)

diff --git a/drivers/mci/dw_mmc.c b/drivers/mci/dw_mmc.c
index 076f99d..f8ceeba 100644
--- a/drivers/mci/dw_mmc.c
+++ b/drivers/mci/dw_mmc.c
@@ -320,44 +320,27 @@ static int dwmci_read_data_pio(struct dwmci_host *host, struct mci_data *data)
 {
 	u32 *pdata = (u32 *)data->dest;
 	u32 val, status, timeout;
-	u32 fcnt, bcnt, rcnt, rlen = 0;
-
-	timeout = 100;
-	status = dwmci_readl(host, DWMCI_RINTSTS);
-	while (--timeout && !(status & DWMCI_INTMSK_RXDR))
-		status = dwmci_readl(host, DWMCI_RINTSTS);
-
-	if (!timeout) {
-		dev_err(host->dev, "%s: RX ready wait timeout\n", __func__);
-		return 0;
-	}
-
-	fcnt = data->blocksize;
-	bcnt = data->blocks;
-
-	do {
-		for (rcnt = fcnt>>2; rcnt; rcnt--) {
-			timeout = 20000;
+	u32 rcnt, rlen = 0;
+
+	for (rcnt = (data->blocksize * data->blocks)>>2; rcnt; rcnt--) {
+		timeout = 20000;
+		status = dwmci_readl(host, DWMCI_STATUS);
+		while (--timeout
+		    && (status & DWMCI_STATUS_FIFO_EMPTY)) {
+			udelay(200);
 			status = dwmci_readl(host, DWMCI_STATUS);
-			while (--timeout
-			    && (status & DWMCI_STATUS_FIFO_EMPTY)) {
-				udelay(200);
-				status = dwmci_readl(host, DWMCI_STATUS);
-			}
-			if (!timeout) {
-				dev_err(host->dev, "%s: FIFO underflow timeout\n",
-				    __func__);
-				break;
-			}
-
-			val = dwmci_readl(host, DWMCI_DATA);
-
-			*pdata++ = val;
-			rlen += 4;
 		}
-		status = dwmci_readl(host, DWMCI_RINTSTS);
-		dwmci_writel(host, DWMCI_RINTSTS, DWMCI_INTMSK_RXDR);
-	} while (--bcnt && (status & DWMCI_INTMSK_RXDR));
+		if (!timeout) {
+			dev_err(host->dev, "%s: FIFO underflow timeout\n",
+			    __func__);
+			break;
+		}
+
+		val = dwmci_readl(host, DWMCI_DATA);
+		*pdata++ = val;
+		rlen += 4;
+	}
+	dwmci_writel(host, DWMCI_RINTSTS, DWMCI_INTMSK_RXDR);
 
 	return rlen;
 }
@@ -366,43 +349,39 @@ static int dwmci_write_data_pio(struct dwmci_host *host, struct mci_data *data)
 {
 	u32 *pdata = (u32 *)data->src;
 	u32 status, timeout;
-	u32 fcnt, bcnt, wcnt, wlen = 0;
-
-	fcnt = host->fifo_size_bytes;
-
-	bcnt = (data->blocks*data->blocksize)/fcnt;
-
-	timeout = 100;
-	status = dwmci_readl(host, DWMCI_RINTSTS);
-
-	while (--timeout && !(status & DWMCI_INTMSK_TXDR))
-		status = dwmci_readl(host, DWMCI_RINTSTS);
-
-	if (!timeout) {
-		dev_err(host->dev, "%s: TX ready wait timeout\n", __func__);
-		return 0;
-	}
-
-	do {
-		for (wcnt = fcnt>>2; wcnt; wcnt--) {
-			timeout = 20000;
+	u32 wcnt, wlen = 0;
+
+	for (wcnt = (data->blocksize * data->blocks)>>2; wcnt; wcnt--) {
+		timeout = 20000;
+		status = dwmci_readl(host, DWMCI_STATUS);
+		while (--timeout
+		    && (status & DWMCI_STATUS_FIFO_FULL)) {
+			udelay(200);
 			status = dwmci_readl(host, DWMCI_STATUS);
-			while (--timeout
-			    && (status & DWMCI_STATUS_FIFO_FULL)) {
-				udelay(200);
-				status = dwmci_readl(host, DWMCI_STATUS);
-			}
-			if (!timeout) {
-				dev_err(host->dev, "%s: FIFO overflow timeout\n",
-				    __func__);
-				break;
-			}
-			dwmci_writel(host, DWMCI_DATA, *pdata++);
-			wlen += 4;
 		}
-		status = dwmci_readl(host, DWMCI_RINTSTS);
-		dwmci_writel(host, DWMCI_RINTSTS, DWMCI_INTMSK_TXDR);
-	} while (--bcnt && (status & DWMCI_INTMSK_TXDR));
+		if (!timeout) {
+			dev_err(host->dev, "%s: FIFO overflow timeout\n",
+			    __func__);
+			break;
+		}
+		dwmci_writel(host, DWMCI_DATA, *pdata++);
+		wlen += 4;
+	}
+	dwmci_writel(host, DWMCI_RINTSTS, DWMCI_INTMSK_TXDR);
+
+	/* Wait for FIFO is flushed for slow-speed cards */
+	timeout = 20000;
+	status = dwmci_readl(host, DWMCI_STATUS);
+	while (--timeout
+	    && !(status & DWMCI_STATUS_FIFO_EMPTY)) {
+		udelay(10);
+		status = dwmci_readl(host, DWMCI_STATUS);
+	}
+	if (!timeout) {
+		dev_err(host->dev, "%s: FIFO flush timeout\n",
+		    __func__);
+		return -EIO;
+	}
 
 	return wlen;
 }
@@ -528,10 +507,14 @@ dwmci_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 				return -ETIMEDOUT;
 			}
 
-			if (dwmci_use_pio(host) && (mask & DWMCI_INTMSK_RXDR))
+			if (dwmci_use_pio(host) && (mask & DWMCI_INTMSK_RXDR)) {
 				dwmci_read_data_pio(host, data);
-			if (dwmci_use_pio(host) && (mask & DWMCI_INTMSK_TXDR))
+				mask = dwmci_readl(host, DWMCI_RINTSTS);
+			}
+			if (dwmci_use_pio(host) && (mask & DWMCI_INTMSK_TXDR)) {
 				dwmci_write_data_pio(host, data);
+				mask = dwmci_readl(host, DWMCI_RINTSTS);
+			}
 		} while (!(mask & DWMCI_INTMSK_DTO));
 
 		dwmci_writel(host, DWMCI_RINTSTS, mask);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
