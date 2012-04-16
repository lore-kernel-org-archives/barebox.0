Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SJrtn-0001rQ-7v
 for barebox@lists.infradead.org; Mon, 16 Apr 2012 19:47:44 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Mon, 16 Apr 2012 21:47:13 +0200
Message-Id: <1334605638-23095-2-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1334605638-23095-1-git-send-email-robert.jarzmik@free.fr>
References: <1334605638-23095-1-git-send-email-robert.jarzmik@free.fr>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/6] mci: pxamci define timeouts
To: barebox@lists.infradead.org

Instead of using hard encoded values in the code, use defines to setup
the timeouts of reads/writes/commands.
Fix the read timeout as defined in the PXA Developer Manual.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/mci/pxamci.c |   21 +++++++++++++--------
 1 files changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/mci/pxamci.c b/drivers/mci/pxamci.c
index 239b46a..ee2f08c 100644
--- a/drivers/mci/pxamci.c
+++ b/drivers/mci/pxamci.c
@@ -25,6 +25,10 @@
 
 #define DRIVER_NAME	"pxa-mmc"
 
+#define RX_TIMEOUT (100 * MSECOND)
+#define TX_TIMEOUT (250 * MSECOND)
+#define CMD_TIMEOUT (100 * MSECOND)
+
 static void clk_enable(void)
 {
 	CKEN |= CKEN_MMC;
@@ -54,7 +58,7 @@ static void pxamci_stop_clock(struct pxamci_host *host)
 	stat = mmc_readl(MMC_STAT);
 	if (stat & STAT_CLK_EN)
 		writel(STOP_CLOCK, host->base + MMC_STRPCL);
-	while (!is_timeout(start, 10 * MSECOND) && stat & STAT_CLK_EN)
+	while (!is_timeout(start, CMD_TIMEOUT) && stat & STAT_CLK_EN)
 		stat = mmc_readl(MMC_STAT);
 
 	if (stat & STAT_CLK_EN)
@@ -63,12 +67,12 @@ static void pxamci_stop_clock(struct pxamci_host *host)
 
 static void pxamci_setup_data(struct pxamci_host *host, struct mci_data *data)
 {
-	static const unsigned int timeout = 100000000; /* 10ms */
+	static const unsigned int timeout_ns = 1000 * MSECOND; /* 1000 ms */
 
 	mci_dbg("nbblocks=%d, blocksize=%d\n", data->blocks, data->blocksize);
 	mmc_writel(data->blocks, MMC_NOB);
 	mmc_writel(data->blocksize, MMC_BLKLEN);
-	mmc_writel((timeout + 255) / 256, MMC_RDTO);
+	mmc_writel(DIV_ROUND_UP(timeout_ns, 13128), MMC_RDTO);
 }
 
 static int pxamci_read_data(struct pxamci_host *host, unsigned char *dst,
@@ -83,9 +87,10 @@ static int pxamci_read_data(struct pxamci_host *host, unsigned char *dst,
 		trf_len = min_t(int, len, MMC_FIFO_LENGTH);
 
 		for (start = get_time_ns(), ret = -ETIMEDOUT;
-		     ret && !is_timeout(start, 10 * MSECOND);)
+		     ret && !is_timeout(start, RX_TIMEOUT);)
 			if (mmc_readl(MMC_I_REG) & RXFIFO_RD_REQ)
 				ret = 0;
+
 		trf_len1 = trf_len % 4;
 		trf_len4 = trf_len / 4;
 		for (dst4 = (u32 *)dst; !ret && trf_len4 > 0; trf_len4--)
@@ -97,7 +102,7 @@ static int pxamci_read_data(struct pxamci_host *host, unsigned char *dst,
 
 	if (!ret)
 		for (start = get_time_ns(), ret = -ETIMEDOUT;
-		     ret && !is_timeout(start, 10 * MSECOND);)
+		     ret && !is_timeout(start, RX_TIMEOUT);)
 			if (mmc_readl(MMC_STAT) & STAT_DATA_TRAN_DONE)
 				ret = 0;
 	mci_dbg("ret=%d, remain=%d, stat=%x, mmc_i_reg=%x\n",
@@ -118,7 +123,7 @@ static int pxamci_write_data(struct pxamci_host *host, const unsigned char *src,
 		partial = trf_len < MMC_FIFO_LENGTH;
 
 		for (start = get_time_ns(), ret = -ETIMEDOUT;
-		     ret && !is_timeout(start, 10 * MSECOND);)
+		     ret && !is_timeout(start, TX_TIMEOUT);)
 			if (mmc_readl(MMC_I_REG) & TXFIFO_WR_REQ)
 				ret = 0;
 		for (; !ret && trf_len > 0; trf_len--, len--)
@@ -129,7 +134,7 @@ static int pxamci_write_data(struct pxamci_host *host, const unsigned char *src,
 
 	if (!ret)
 		for (start = get_time_ns(), ret = -ETIMEDOUT;
-		     ret && !is_timeout(start, 100 * MSECOND);)  {
+		     ret && !is_timeout(start, TX_TIMEOUT);)  {
 			stat = mmc_readl(MMC_STAT);
 			stat &= STAT_DATA_TRAN_DONE | STAT_PRG_DONE;
 			if (stat == (STAT_DATA_TRAN_DONE | STAT_PRG_DONE))
@@ -236,7 +241,7 @@ static int pxamci_mmccmd(struct pxamci_host *host, struct mci_cmd *cmd,
 
 	pxamci_start_cmd(host, cmd, cmddat);
 	for (start = get_time_ns(), ret = -ETIMEDOUT;
-	     ret && !is_timeout(start, 10 * MSECOND);)
+	     ret && !is_timeout(start, CMD_TIMEOUT);)
 		if (mmc_readl(MMC_STAT) & STAT_END_CMD_RES)
 			ret = 0;
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
