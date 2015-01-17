Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp03.smtpout.orange.fr ([80.12.242.125]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YCUrd-0004I0-Lu
 for barebox@lists.infradead.org; Sat, 17 Jan 2015 15:00:38 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Sat, 17 Jan 2015 16:00:01 +0100
Message-Id: <1421506801-1506-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH] mtd: nand: fix marvell nand driver
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

This fixes 4 small bugs :

 - too small timings
   The calculated timings should be rounded up, ie. a minimum timing of
   3.2 nand clock cycles should be programmed as a 4 cycles timing, and
   not as 3 nand clock cycles

 - the interrupts should be masked all the time
   Writing 0 to NDCR unmasked interrupts, which is unnecessary and fools
   the linux kernel pxa3xx driver which is not yet hardened enough.

 - the command should only be launched once the controller is ready
   This fixes transient bugs where a command is not actually
   launched. The WRCMDREQ bit is asserted after setting NDCR_ND_RUN bit
   once the NFC is ready to acquire a command.

 - column calculation
   Column number was divided by 2 in 16 bits flash devices. Even if this
   is correct for NAND array addressing, it is incorrect for READID, and
   prevents an ONFI scan identification (as address is 0x10 instead of
   the 0x20 required by ONFI).

All these bugs except the second are drained from the linux kernel driver.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/mtd/nand/nand_mrvl_nfc.c | 57 ++++++++++++++++++++++++++--------------
 1 file changed, 37 insertions(+), 20 deletions(-)

diff --git a/drivers/mtd/nand/nand_mrvl_nfc.c b/drivers/mtd/nand/nand_mrvl_nfc.c
index 7386da0..258ff75 100644
--- a/drivers/mtd/nand/nand_mrvl_nfc.c
+++ b/drivers/mtd/nand/nand_mrvl_nfc.c
@@ -230,9 +230,6 @@ static struct nand_ecclayout ecc_layout_2KB_hwecc = {
 #define NDTR1_tWHR(c)	(min((c), 15) << 4)
 #define NDTR1_tAR(c)	(min((c), 15) << 0)
 
-/* convert nano-seconds to nand flash controller clock cycles */
-#define ns2cycle(ns, clk)	(int)((ns) * (clk / 1000000) / 1000)
-
 #define mtd_info_to_host(mtd) ((struct mrvl_nand_host *) \
 			       (((struct nand_chip *)((mtd)->priv))->priv))
 
@@ -243,6 +240,14 @@ static struct of_device_id mrvl_nand_dt_ids[] = {
 	{}
 };
 
+/* convert nano-seconds to nand flash controller clock cycles */
+static int ns2cycle(int ns, unsigned long clk_rate)
+{
+	int clk_mhz = clk_rate / 1000000;
+
+	return roundup(ns * clk_mhz, 1000) / 1000;
+}
+
 static volatile u32 _nand_readl(const char *func, const int line,
 		       struct mrvl_nand_host *host, int off)
 {
@@ -385,19 +390,26 @@ static void mrvl_nand_start(struct mrvl_nand_host *host)
 	else
 		ndcr &= ~NDCR_SPARE_EN;
 
-	ndcr |= NDCR_ND_RUN;
+	ndcr &= ~NDCR_ND_RUN;
+	ndcr |= NDCR_INT_MASK;
 
 	/* clear status bits and run */
-	nand_writel(host, NDCR, 0);
-	nand_writel(host, NDSR, NDSR_MASK);
 	nand_writel(host, NDCR, ndcr);
+	nand_writel(host, NDSR, NDSR_MASK);
+	nand_writel(host, NDCR, ndcr | NDCR_ND_RUN);
 
-	/*
-	 * Writing 12 bytes to NDBC0 sets NDBC0, NDBC1 and NDBC2 !
-	 */
-	nand_writel(host, NDCB0, host->ndcb0);
-	nand_writel(host, NDCB0, host->ndcb1);
-	nand_writel(host, NDCB0, host->ndcb2);
+	if (wait_on_timeout(host->chip.chip_delay * USECOND,
+			    nand_readl(host, NDSR) & NDSR_WRCMDREQ)) {
+		dev_err(host->dev, "Waiting for command request failed\n");
+	} else {
+		/*
+		 * Writing 12 bytes to NDBC0 sets NDBC0, NDBC1 and NDBC2 !
+		 */
+		nand_writel(host, NDSR, NDSR_WRCMDREQ);
+		nand_writel(host, NDCB0, host->ndcb0);
+		nand_writel(host, NDCB0, host->ndcb1);
+		nand_writel(host, NDCB0, host->ndcb2);
+	}
 }
 
 static void disable_int(struct mrvl_nand_host *host, uint32_t int_mask)
@@ -647,19 +659,23 @@ static void mrvl_data_stage(struct mrvl_nand_host *host)
 	nand_writel(host, NDSR, mask);
 }
 
-static void mrvl_nand_wait_cmd_done(struct mrvl_nand_host *host)
+static void mrvl_nand_wait_cmd_done(struct mrvl_nand_host *host,
+				    unsigned command)
 {
 	unsigned int mask;
+	static unsigned int nb_done;
 
 	if (host->cs == 0)
-		mask = NDSR_CS0_CMDD | NDSR_WRCMDREQ;
+		mask = NDSR_CS0_CMDD;
 	else
-		mask = NDSR_CS1_CMDD | NDSR_WRCMDREQ;
+		mask = NDSR_CS1_CMDD;
 	wait_on_timeout(host->chip.chip_delay * USECOND,
 			(nand_readl(host, NDSR) & mask) == mask);
-	if ((nand_readl(host, NDSR) & mask) != mask)
-		dev_err(host->dev, "Waiting end of command timeout, ndsr=0x%08x\n",
-			nand_readl(host, NDSR) & mask);
+	if ((nand_readl(host, NDSR) & mask) != mask) {
+		dev_err(host->dev, "Waiting end of command %dth %d timeout, ndsr=0x%08x ndcr=0x%08x\n",
+			nb_done++, command, nand_readl(host, NDSR),
+			nand_readl(host, NDCR));
+	}
 }
 
 static void mrvl_nand_cmdfunc(struct mtd_info *mtd, unsigned command,
@@ -674,14 +690,14 @@ static void mrvl_nand_cmdfunc(struct mtd_info *mtd, unsigned command,
 	 */
 	dev_dbg(host->dev, "%s(cmd=%d, col=%d, page=%d)\n", __func__,
 		command, column, page_addr);
-	if (host->reg_ndcr & NDCR_DWIDTH_M)
+	if ((host->reg_ndcr & NDCR_DWIDTH_M) && (command != NAND_CMD_READID))
 		column /= 2;
 
 	prepare_start_command(host, command);
 	if (prepare_set_command(host, command, 0, column, page_addr)) {
 		mrvl_nand_start(host);
 		mrvl_data_stage(host);
-		mrvl_nand_wait_cmd_done(host);
+		mrvl_nand_wait_cmd_done(host, command);
 	}
 }
 
@@ -792,6 +808,7 @@ static void mrvl_nand_config_flash(struct mrvl_nand_host *host)
 	ndcr |= ((mtd->erasesize / mtd->writesize) == 64) ? NDCR_PG_PER_BLK : 0;
 	ndcr |= (mtd->writesize == 2048) ? NDCR_PAGE_SZ : 0;
 
+	ndcr &= ~NDCR_RD_ID_CNT_MASK;
 	ndcr |= NDCR_RD_ID_CNT(host->read_id_bytes);
 	ndcr |= NDCR_SPARE_EN; /* enable spare by default */
 	ndcr &= ~NDCR_DMA_EN;
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
