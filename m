Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tyl3i-0007nD-Gv
 for barebox@lists.infradead.org; Fri, 25 Jan 2013 15:19:15 +0000
Received: from mail436.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id E52FDDC1C96
 for <barebox@lists.infradead.org>; Fri, 25 Jan 2013 16:29:01 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 25 Jan 2013 16:17:35 +0100
Message-Id: <1359127067-30079-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359127067-30079-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130125151448.GD26329@game.jcrosoft.org>
 <1359127067-30079-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 02/14] atmel_mci: rename atmel_mci_readl/writel to
 atmci_readl/writel
To: barebox@lists.infradead.org

to be consistent with the kernel
This also reduce the ligne length

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mci/atmel_mci.c |   43 +++++++++++++++++++++----------------------
 1 file changed, 21 insertions(+), 22 deletions(-)

diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index d6ac458..ca5cd5c 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -51,12 +51,12 @@ struct atmel_mci {
 				| AT91_MCI_OVRE  \
 				| AT91_MCI_UNRE)
 
-static inline u32 atmel_mci_readl(struct atmel_mci *host, u32 offset)
+static inline u32 atmci_readl(struct atmel_mci *host, u32 offset)
 {
 	return readl(host->base + offset);
 }
 
-static inline void atmel_mci_writel(struct atmel_mci *host, u32 offset,
+static inline void atmci_writel(struct atmel_mci *host, u32 offset,
 				    u32 value)
 {
 	writel(value, host->base + offset);
@@ -64,9 +64,9 @@ static inline void atmel_mci_writel(struct atmel_mci *host, u32 offset,
 
 static void atmel_mci_reset(struct atmel_mci *host)
 {
-	atmel_mci_writel(host, AT91_MCI_CR, AT91_MCI_SWRST | AT91_MCI_MCIDIS);
-	atmel_mci_writel(host, AT91_MCI_DTOR, 0x7f);
-	atmel_mci_writel(host, AT91_MCI_IDR, ~0UL);
+	atmci_writel(host, AT91_MCI_CR, AT91_MCI_SWRST | AT91_MCI_MCIDIS);
+	atmci_writel(host, AT91_MCI_DTOR, 0x7f);
+	atmci_writel(host, AT91_MCI_IDR, ~0UL);
 }
 
 static void atmel_set_clk_rate(struct atmel_mci *host,
@@ -87,7 +87,7 @@ static void atmel_set_clk_rate(struct atmel_mci *host,
 	dev_dbg(host->hw_dev, "atmel_set_clk_rate: clkIn=%d clkIos=%d divider=%d\n",
 		clk_in, clk_ios, divider);
 
-	atmel_mci_writel(host, AT91_MCI_MR, (AT91_MCI_CLKDIV & divider)
+	atmci_writel(host, AT91_MCI_MR, (AT91_MCI_CLKDIV & divider)
 		| AT91_MCI_RDPROOF | AT91_MCI_WRPROOF);
 }
 
@@ -97,7 +97,7 @@ static int atmel_poll_status(struct atmel_mci *host, u32 mask)
 	uint64_t start = get_time_ns();
 
 	do {
-		stat = atmel_mci_readl(host, AT91_MCI_SR);
+		stat = atmci_readl(host, AT91_MCI_SR);
 		if (stat & STATUS_ERROR_MASK)
 			return stat;
 		if (is_timeout(start, SECOND)) {
@@ -119,7 +119,7 @@ static int atmel_pull(struct atmel_mci *host, void *_buf, int bytes)
 		if (stat)
 			return stat;
 
-		*buf++ = atmel_mci_readl(host, AT91_MCI_RDR);
+		*buf++ = atmci_readl(host, AT91_MCI_RDR);
 		bytes -= 4;
 	}
 
@@ -140,7 +140,7 @@ static int atmel_push(struct atmel_mci *host, const void *_buf, int bytes)
 		if (stat)
 			return stat;
 
-		atmel_mci_writel(host, AT91_MCI_TDR, *buf++);
+		atmci_writel(host, AT91_MCI_TDR, *buf++);
 		bytes -= 4;
 	}
 
@@ -228,7 +228,7 @@ static void atmel_setup_data(struct atmel_mci *host, struct mci_data *data)
 	dev_dbg(host->hw_dev, "atmel_setup_data: nob=%d blksz=%d\n",
 		nob, blksz);
 
-	atmel_mci_writel(host, AT91_MCI_BLKR, AT91_MCI_BLKR_BCNT(nob)
+	atmci_writel(host, AT91_MCI_BLKR, AT91_MCI_BLKR_BCNT(nob)
 		| AT91_MCI_BLKR_BLKLEN(blksz));
 
 	host->datasize = datasize;
@@ -254,9 +254,9 @@ static int atmel_read_response(struct atmel_mci *host, unsigned int stat)
 	if (cmd->resp_type & MMC_RSP_PRESENT) {
 		if (cmd->resp_type & MMC_RSP_136) {
 			for (i = 0; i < 4; i++)
-				resp[i] = atmel_mci_readl(host, AT91_MCI_RSPR(0));
+				resp[i] = atmci_readl(host, AT91_MCI_RSPR(0));
 		} else {
-			resp[0] = atmel_mci_readl(host, AT91_MCI_RSPR(0));
+			resp[0] = atmci_readl(host, AT91_MCI_RSPR(0));
 		}
 	}
 
@@ -295,7 +295,7 @@ static int atmel_start_cmd(struct atmel_mci *host, struct mci_cmd *cmd,
 	if (host->cmd != NULL)
 		dev_err(host->hw_dev, "error!\n");
 
-	if ((atmel_mci_readl(host, AT91_MCI_SR) & AT91_MCI_CMDRDY) == 0) {
+	if ((atmci_readl(host, AT91_MCI_SR) & AT91_MCI_CMDRDY) == 0) {
 		dev_err(host->hw_dev, "mci not ready!\n");
 		return -EBUSY;
 	}
@@ -325,8 +325,8 @@ static int atmel_start_cmd(struct atmel_mci *host, struct mci_cmd *cmd,
 	cmdval |= AT91_MCI_RSPTYP & flags;
 	cmdval |= cmdat & ~(AT91_MCI_CMDNB | AT91_MCI_RSPTYP);
 
-	atmel_mci_writel(host, AT91_MCI_ARGR, cmd->cmdarg);
-	atmel_mci_writel(host, AT91_MCI_CMDR, cmdval);
+	atmci_writel(host, AT91_MCI_ARGR, cmd->cmdarg);
+	atmci_writel(host, AT91_MCI_CMDR, cmdval);
 
 	return 0;
 }
@@ -360,26 +360,25 @@ static void mci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 
 	switch (ios->bus_width) {
 	case MMC_BUS_WIDTH_4:
-		atmel_mci_writel(host, AT91_MCI_SDCR, AT91_MCI_SDCBUS_4BIT);
+		atmci_writel(host, AT91_MCI_SDCR, AT91_MCI_SDCBUS_4BIT);
 		break;
 	case MMC_BUS_WIDTH_8:
-		atmel_mci_writel(host, AT91_MCI_SDCR, AT91_MCI_SDCBUS_8BIT);
+		atmci_writel(host, AT91_MCI_SDCR, AT91_MCI_SDCBUS_8BIT);
 		break;
 	case MMC_BUS_WIDTH_1:
-		atmel_mci_writel(host, AT91_MCI_SDCR, AT91_MCI_SDCBUS_1BIT);
+		atmci_writel(host, AT91_MCI_SDCR, AT91_MCI_SDCBUS_1BIT);
 		break;
 	default:
 		return;
 	}
-	atmel_mci_writel(host, AT91_MCI_SDCR, atmel_mci_readl(host, AT91_MCI_SDCR)
+	atmci_writel(host, AT91_MCI_SDCR, atmci_readl(host, AT91_MCI_SDCR)
 		| host->slot_b);
 
 	if (ios->clock) {
 		atmel_set_clk_rate(host, ios->clock);
-		atmel_mci_writel(host, AT91_MCI_CR, AT91_MCI_MCIEN
-		);
+		atmci_writel(host, AT91_MCI_CR, AT91_MCI_MCIEN);
 	} else {
-		atmel_mci_writel(host, AT91_MCI_CR, AT91_MCI_MCIDIS);
+		atmci_writel(host, AT91_MCI_CR, AT91_MCI_MCIDIS);
 	}
 
 	return;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
