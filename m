Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h0nUf-0002DX-6N
 for barebox@lists.infradead.org; Mon, 04 Mar 2019 13:18:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2019 14:18:51 +0100
Message-Id: <20190304131853.30864-4-s.hauer@pengutronix.de>
In-Reply-To: <20190304131853.30864-1-s.hauer@pengutronix.de>
References: <20190304131853.30864-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] esdhc-xload: Use static inline io wrappers
To: Barebox List <barebox@lists.infradead.org>

We'll need big endian support for Layerscape, so put the io accessors
into static inline wrappers.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc-pbl.c | 60 ++++++++++++++++++++-----------------
 1 file changed, 33 insertions(+), 27 deletions(-)

diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index bcb47afcef..72df54d685 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -27,14 +27,21 @@
 
 #define SECTOR_SIZE 512
 
-#define esdhc_read32(a)                    readl(a)
-#define esdhc_write32(a, v)                writel(v,a)
-
 struct esdhc {
 	void __iomem *regs;
 	int is_mx6;
 };
 
+static uint32_t esdhc_read32(struct esdhc *esdhc, int reg)
+{
+	return readl(esdhc->regs + reg);
+}
+
+static void esdhc_write32(struct esdhc *esdhc, int reg, uint32_t val)
+{
+	writel(val, esdhc->regs + reg);
+}
+
 static void __udelay(int us)
 {
 	volatile int i;
@@ -66,7 +73,6 @@ static u32 esdhc_xfertyp(struct mci_cmd *cmd, struct mci_data *data)
 
 static int esdhc_do_data(struct esdhc *esdhc, struct mci_data *data)
 {
-	void __iomem *regs = esdhc->regs;
 	char *buffer;
 	u32 databuf;
 	u32 size;
@@ -78,12 +84,12 @@ static int esdhc_do_data(struct esdhc *esdhc, struct mci_data *data)
 
 	timeout = 1000000;
 	size = data->blocksize * data->blocks;
-	irqstat = esdhc_read32(regs + SDHCI_INT_STATUS);
+	irqstat = esdhc_read32(esdhc, SDHCI_INT_STATUS);
 
 	while (size) {
-		present = esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_BREN;
+		present = esdhc_read32(esdhc, SDHCI_PRESENT_STATE) & PRSSTAT_BREN;
 		if (present) {
-			databuf = esdhc_read32(regs + SDHCI_BUFFER);
+			databuf = esdhc_read32(esdhc, SDHCI_BUFFER);
 			*((u32 *)buffer) = databuf;
 			buffer += 4;
 			size -= 4;
@@ -103,11 +109,10 @@ esdhc_send_cmd(struct esdhc *esdhc, struct mci_cmd *cmd, struct mci_data *data)
 {
 	u32	xfertyp, mixctrl;
 	u32	irqstat;
-	void __iomem *regs = esdhc->regs;
 	int ret;
 	int timeout;
 
-	esdhc_write32(regs + SDHCI_INT_STATUS, -1);
+	esdhc_write32(esdhc, SDHCI_INT_STATUS, -1);
 
 	/* Wait at least 8 SD clock cycles before the next command */
 	__udelay(1);
@@ -119,36 +124,36 @@ esdhc_send_cmd(struct esdhc *esdhc, struct mci_cmd *cmd, struct mci_data *data)
 			return -EINVAL;
 
 		/* Set up for a data transfer if we have one */
-		esdhc_write32(regs + SDHCI_DMA_ADDRESS, (u32)dest);
-		esdhc_write32(regs + SDHCI_BLOCK_SIZE__BLOCK_COUNT, data->blocks << 16 | SECTOR_SIZE);
+		esdhc_write32(esdhc, SDHCI_DMA_ADDRESS, (u32)dest);
+		esdhc_write32(esdhc, SDHCI_BLOCK_SIZE__BLOCK_COUNT, data->blocks << 16 | SECTOR_SIZE);
 	}
 
 	/* Figure out the transfer arguments */
 	xfertyp = esdhc_xfertyp(cmd, data);
 
 	/* Send the command */
-	esdhc_write32(regs + SDHCI_ARGUMENT, cmd->cmdarg);
+	esdhc_write32(esdhc, SDHCI_ARGUMENT, cmd->cmdarg);
 
 	if (esdhc->is_mx6) {
 		/* write lower-half of xfertyp to mixctrl */
 		mixctrl = xfertyp & 0xFFFF;
 		/* Keep the bits 22-25 of the register as is */
-		mixctrl |= (esdhc_read32(regs + IMX_SDHCI_MIXCTRL) & (0xF << 22));
-		esdhc_write32(regs + IMX_SDHCI_MIXCTRL, mixctrl);
+		mixctrl |= (esdhc_read32(esdhc, IMX_SDHCI_MIXCTRL) & (0xF << 22));
+		esdhc_write32(esdhc, IMX_SDHCI_MIXCTRL, mixctrl);
 	}
 
-	esdhc_write32(regs + SDHCI_TRANSFER_MODE__COMMAND, xfertyp);
+	esdhc_write32(esdhc, SDHCI_TRANSFER_MODE__COMMAND, xfertyp);
 
 	/* Wait for the command to complete */
 	timeout = 10000;
-	while (!(esdhc_read32(regs + SDHCI_INT_STATUS) & IRQSTAT_CC)) {
+	while (!(esdhc_read32(esdhc, SDHCI_INT_STATUS) & IRQSTAT_CC)) {
 		__udelay(1);
 		if (!timeout--)
 			return -ETIMEDOUT;
 	}
 
-	irqstat = esdhc_read32(regs + SDHCI_INT_STATUS);
-	esdhc_write32(regs + SDHCI_INT_STATUS, irqstat);
+	irqstat = esdhc_read32(esdhc, SDHCI_INT_STATUS);
+	esdhc_write32(esdhc, SDHCI_INT_STATUS, irqstat);
 
 	if (irqstat & CMD_ERR)
 		return -EIO;
@@ -157,7 +162,7 @@ esdhc_send_cmd(struct esdhc *esdhc, struct mci_cmd *cmd, struct mci_data *data)
 		return -ETIMEDOUT;
 
 	/* Copy the response to the response buffer */
-	cmd->response[0] = esdhc_read32(regs + SDHCI_RESPONSE_0);
+	cmd->response[0] = esdhc_read32(esdhc, SDHCI_RESPONSE_0);
 
 	/* Wait until all of the blocks are transferred */
 	if (data) {
@@ -166,11 +171,11 @@ esdhc_send_cmd(struct esdhc *esdhc, struct mci_cmd *cmd, struct mci_data *data)
 			return ret;
 	}
 
-	esdhc_write32(regs + SDHCI_INT_STATUS, -1);
+	esdhc_write32(esdhc, SDHCI_INT_STATUS, -1);
 
 	/* Wait for the bus to be idle */
 	timeout = 10000;
-	while (esdhc_read32(regs + SDHCI_PRESENT_STATE) &
+	while (esdhc_read32(esdhc, SDHCI_PRESENT_STATE) &
 			(PRSSTAT_CICHB | PRSSTAT_CIDHB | PRSSTAT_DLA)) {
 		__udelay(1);
 		if (!timeout--)
@@ -187,14 +192,15 @@ static int esdhc_read_blocks(struct esdhc *esdhc, void *dst, size_t len)
 	u32 val;
 	int ret;
 
-	writel(IRQSTATEN_CC | IRQSTATEN_TC | IRQSTATEN_CINT | IRQSTATEN_CTOE |
-			IRQSTATEN_CCE | IRQSTATEN_CEBE | IRQSTATEN_CIE |
-			IRQSTATEN_DTOE | IRQSTATEN_DCE | IRQSTATEN_DEBE |
-			IRQSTATEN_DINT, esdhc->regs + SDHCI_INT_ENABLE);
+	esdhc_write32(esdhc, SDHCI_INT_ENABLE,
+		      IRQSTATEN_CC | IRQSTATEN_TC | IRQSTATEN_CINT | IRQSTATEN_CTOE |
+		      IRQSTATEN_CCE | IRQSTATEN_CEBE | IRQSTATEN_CIE |
+		      IRQSTATEN_DTOE | IRQSTATEN_DCE | IRQSTATEN_DEBE |
+		      IRQSTATEN_DINT);
 
-	val = readl(esdhc->regs + SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET);
+	val = esdhc_read32(esdhc, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET);
 	val |= SYSCTL_HCKEN | SYSCTL_IPGEN;
-	writel(val, esdhc->regs + SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET);
+	esdhc_write32(esdhc, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET, val);
 
 	cmd.cmdidx = MMC_CMD_READ_MULTIPLE_BLOCK;
 	cmd.cmdarg = 0;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
