Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUuDm-0001t2-9Z
 for barebox@lists.infradead.org; Wed, 24 Apr 2013 07:34:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 24 Apr 2013 09:34:19 +0200
Message-Id: <1366788859-11565-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1366788859-11565-1-git-send-email-s.hauer@pengutronix.de>
References: <1366788859-11565-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] mci: imx-esdhc: factor out common sdhci registers
To: barebox@lists.infradead.org

This gives the SDHCI specific registers a common name and moves
them to a separate file for use by other SDHCI like drivers.

The SDHCI spec has some 16bit and 8bit registers. The i.MX accesses
these as 32bit registers. These register defines now are named after
the SDHCI registers they combine into one, for example:

SDHCI_HOST_CONTROL__POWER_CONTROL__BLOCK_GAP_CONTROL

is the 32bit version of the SDHCI registers HOST_CONTROL, POWER_CONTROL
and BLOCK_GAP_CONTROL.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c | 183 +++++++++++++++++++++++-------------------------
 drivers/mci/imx-esdhc.h |  89 -----------------------
 drivers/mci/sdhci.h     |  88 +++++++++++++++++++++++
 3 files changed, 175 insertions(+), 185 deletions(-)
 create mode 100644 drivers/mci/sdhci.h

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index f4fdac8..ae934f4 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -35,37 +35,15 @@
 #include <mach/esdhc.h>
 #include <gpio.h>
 
+#include "sdhci.h"
 #include "imx-esdhc.h"
 
-struct fsl_esdhc {
-	u32	dsaddr;
-	u32	blkattr;
-	u32	cmdarg;
-	u32	xfertyp;
-	u32	cmdrsp0;
-	u32	cmdrsp1;
-	u32	cmdrsp2;
-	u32	cmdrsp3;
-	u32	datport;
-	u32	prsstat;
-	u32	proctl;
-	u32	sysctl;
-	u32	irqstat;
-	u32	irqstaten;
-	u32	irqsigen;
-	u32	autoc12err;
-	u32	hostcapblt;
-	u32	wml;
-	u32	mixctrl;
-	char	reserved1[4];
-	u32	fevt;
-	char	reserved2[168];
-	u32	hostver;
-};
+#define IMX_SDHCI_WML		0x44
+#define IMX_SDHCI_MIXCTRL	0x48
 
 struct fsl_esdhc_host {
 	struct mci_host		mci;
-	struct fsl_esdhc __iomem	*regs;
+	void __iomem		*regs;
 	unsigned long		cur_clock;
 	struct device_d		*dev;
 	struct clk		*clk;
@@ -81,34 +59,34 @@ static u32 esdhc_xfertyp(struct mci_cmd *cmd, struct mci_data *data)
 	u32 xfertyp = 0;
 
 	if (data) {
-		xfertyp |= XFERTYP_DPSEL;
+		xfertyp |= COMMAND_DPSEL;
 #ifndef CONFIG_MCI_IMX_ESDHC_PIO
-		xfertyp |= XFERTYP_DMAEN;
+		xfertyp |= TRANSFER_MODE_DMAEN;
 #endif
 		if (data->blocks > 1) {
-			xfertyp |= XFERTYP_MSBSEL;
-			xfertyp |= XFERTYP_BCEN;
+			xfertyp |= TRANSFER_MODE_MSBSEL;
+			xfertyp |= TRANSFER_MODE_BCEN;
 		}
 
 		if (data->flags & MMC_DATA_READ)
-			xfertyp |= XFERTYP_DTDSEL;
+			xfertyp |= TRANSFER_MODE_DTDSEL;
 	}
 
 	if (cmd->resp_type & MMC_RSP_CRC)
-		xfertyp |= XFERTYP_CCCEN;
+		xfertyp |= COMMAND_CCCEN;
 	if (cmd->resp_type & MMC_RSP_OPCODE)
-		xfertyp |= XFERTYP_CICEN;
+		xfertyp |= COMMAND_CICEN;
 	if (cmd->resp_type & MMC_RSP_136)
-		xfertyp |= XFERTYP_RSPTYP_136;
+		xfertyp |= COMMAND_RSPTYP_136;
 	else if (cmd->resp_type & MMC_RSP_BUSY)
-		xfertyp |= XFERTYP_RSPTYP_48_BUSY;
+		xfertyp |= COMMAND_RSPTYP_48_BUSY;
 	else if (cmd->resp_type & MMC_RSP_PRESENT)
-		xfertyp |= XFERTYP_RSPTYP_48;
+		xfertyp |= COMMAND_RSPTYP_48;
 	if ((cpu_is_mx51() || cpu_is_mx53()) &&
 			cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION)
 		xfertyp |= SDHCI_CMD_ABORTCMD;
 
-	return XFERTYP_CMD(cmd->cmdidx) | xfertyp;
+	return COMMAND_CMD(cmd->cmdidx) | xfertyp;
 }
 
 #ifdef CONFIG_MCI_IMX_ESDHC_PIO
@@ -119,7 +97,7 @@ static void
 esdhc_pio_read_write(struct mci_host *mci, struct mci_data *data)
 {
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
-	struct fsl_esdhc *regs = host->regs;
+	void __iomem *regs = host->regs;
 	u32 blocks;
 	char *buffer;
 	u32 databuf;
@@ -133,8 +111,8 @@ esdhc_pio_read_write(struct mci_host *mci, struct mci_data *data)
 		while (blocks) {
 			timeout = PIO_TIMEOUT;
 			size = data->blocksize;
-			irqstat = esdhc_read32(&regs->irqstat);
-			while (!(esdhc_read32(&regs->prsstat) & PRSSTAT_BREN)
+			irqstat = esdhc_read32(regs + SDHCI_INT_STATUS);
+			while (!(esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_BREN)
 				&& --timeout);
 			if (timeout <= 0) {
 				printf("\nData Read Failed in PIO Mode.");
@@ -142,8 +120,8 @@ esdhc_pio_read_write(struct mci_host *mci, struct mci_data *data)
 			}
 			while (size && (!(irqstat & IRQSTAT_TC))) {
 				udelay(100); /* Wait before last byte transfer complete */
-				irqstat = esdhc_read32(&regs->irqstat);
-				databuf = esdhc_read32(&regs->datport);
+				irqstat = esdhc_read32(regs + SDHCI_INT_STATUS);
+				databuf = esdhc_read32(regs + SDHCI_BUFFER);
 				*((u32 *)buffer) = databuf;
 				buffer += 4;
 				size -= 4;
@@ -156,8 +134,8 @@ esdhc_pio_read_write(struct mci_host *mci, struct mci_data *data)
 		while (blocks) {
 			timeout = PIO_TIMEOUT;
 			size = data->blocksize;
-			irqstat = esdhc_read32(&regs->irqstat);
-			while (!(esdhc_read32(&regs->prsstat) & PRSSTAT_BWEN)
+			irqstat = esdhc_read32(regs + SDHCI_INT_STATUS);
+			while (!(esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_BWEN)
 				&& --timeout);
 			if (timeout <= 0) {
 				printf("\nData Write Failed in PIO Mode.");
@@ -168,8 +146,8 @@ esdhc_pio_read_write(struct mci_host *mci, struct mci_data *data)
 				databuf = *((u32 *)buffer);
 				buffer += 4;
 				size -= 4;
-				irqstat = esdhc_read32(&regs->irqstat);
-				esdhc_write32(&regs->datport, databuf);
+				irqstat = esdhc_read32(regs + SDHCI_INT_STATUS);
+				esdhc_write32(regs+ SDHCI_BUFFER, databuf);
 			}
 			blocks--;
 		}
@@ -180,7 +158,7 @@ esdhc_pio_read_write(struct mci_host *mci, struct mci_data *data)
 static int esdhc_setup_data(struct mci_host *mci, struct mci_data *data)
 {
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
-	struct fsl_esdhc __iomem *regs = host->regs;
+	void __iomem *regs = host->regs;
 #ifndef CONFIG_MCI_IMX_ESDHC_PIO
 	u32 wml_value;
 
@@ -190,33 +168,33 @@ static int esdhc_setup_data(struct mci_host *mci, struct mci_data *data)
 		if (wml_value > 0x10)
 			wml_value = 0x10;
 
-		esdhc_clrsetbits32(&regs->wml, WML_RD_WML_MASK, wml_value);
-		esdhc_write32(&regs->dsaddr, (u32)data->dest);
+		esdhc_clrsetbits32(regs + IMX_SDHCI_WML, WML_RD_WML_MASK, wml_value);
+		esdhc_write32(regs + SDHCI_DMA_ADDRESS, (u32)data->dest);
 	} else {
 		if (wml_value > 0x80)
 			wml_value = 0x80;
-		if ((esdhc_read32(&regs->prsstat) & PRSSTAT_WPSPL) == 0) {
+		if ((esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_WPSPL) == 0) {
 			printf("\nThe SD card is locked. Can not write to a locked card.\n\n");
 			return -ETIMEDOUT;
 		}
 
-		esdhc_clrsetbits32(&regs->wml, WML_WR_WML_MASK,
+		esdhc_clrsetbits32(regs + IMX_SDHCI_WML, WML_WR_WML_MASK,
 					wml_value << 16);
-		esdhc_write32(&regs->dsaddr, (u32)data->src);
+		esdhc_write32(regs + SDHCI_DMA_ADDRESS, (u32)data->src);
 	}
 #else	/* CONFIG_MCI_IMX_ESDHC_PIO */
 	if (!(data->flags & MMC_DATA_READ)) {
-		if ((esdhc_read32(&regs->prsstat) & PRSSTAT_WPSPL) == 0) {
+		if ((esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_WPSPL) == 0) {
 			printf("\nThe SD card is locked. "
 				"Can not write to a locked card.\n\n");
 			return -ETIMEDOUT;
 		}
-		esdhc_write32(&regs->dsaddr, (u32)data->src);
+		esdhc_write32(regs + SDHCI_DMA_ADDRESS, (u32)data->src);
 	} else
-		esdhc_write32(&regs->dsaddr, (u32)data->dest);
+		esdhc_write32(regs + SDHCI_DMA_ADDRESS, (u32)data->dest);
 #endif	/* CONFIG_MCI_IMX_ESDHC_PIO */
 
-	esdhc_write32(&regs->blkattr, data->blocks << 16 | data->blocksize);
+	esdhc_write32(regs + SDHCI_BLOCK_SIZE__BLOCK_COUNT, data->blocks << 16 | data->blocksize);
 
 	return 0;
 }
@@ -232,10 +210,10 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 	u32	xfertyp, mixctrl;
 	u32	irqstat;
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
-	struct fsl_esdhc __iomem *regs = host->regs;
+	void __iomem *regs = host->regs;
 	int ret;
 
-	esdhc_write32(&regs->irqstat, -1);
+	esdhc_write32(regs + SDHCI_INT_STATUS, -1);
 
 	/* Wait at least 8 SD clock cycles before the next command */
 	udelay(1);
@@ -260,28 +238,28 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 	xfertyp = esdhc_xfertyp(cmd, data);
 
 	/* Send the command */
-	esdhc_write32(&regs->cmdarg, cmd->cmdarg);
+	esdhc_write32(regs + SDHCI_ARGUMENT, cmd->cmdarg);
 
 	if (cpu_is_mx6()) {
 		/* write lower-half of xfertyp to mixctrl */
 		mixctrl = xfertyp & 0xFFFF;
 		/* Keep the bits 22-25 of the register as is */
-		mixctrl |= (esdhc_read32(&regs->mixctrl) & (0xF << 22));
-		esdhc_write32(&regs->mixctrl, mixctrl);
+		mixctrl |= (esdhc_read32(regs + IMX_SDHCI_MIXCTRL) & (0xF << 22));
+		esdhc_write32(regs + IMX_SDHCI_MIXCTRL, mixctrl);
 	}
 
-	esdhc_write32(&regs->xfertyp, xfertyp);
+	esdhc_write32(regs + SDHCI_TRANSFER_MODE__COMMAND, xfertyp);
 
 	/* Wait for the command to complete */
 	ret = wait_on_timeout(100 * MSECOND,
-			esdhc_read32(&regs->irqstat) & IRQSTAT_CC);
+			esdhc_read32(regs + SDHCI_INT_STATUS) & IRQSTAT_CC);
 	if (ret) {
 		dev_dbg(host->dev, "timeout 1\n");
 		return -ETIMEDOUT;
 	}
 
-	irqstat = esdhc_read32(&regs->irqstat);
-	esdhc_write32(&regs->irqstat, irqstat);
+	irqstat = esdhc_read32(regs + SDHCI_INT_STATUS);
+	esdhc_write32(regs + SDHCI_INT_STATUS, irqstat);
 
 	if (irqstat & CMD_ERR)
 		return -EIO;
@@ -293,16 +271,16 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 	if (cmd->resp_type & MMC_RSP_136) {
 		u32 cmdrsp3, cmdrsp2, cmdrsp1, cmdrsp0;
 
-		cmdrsp3 = esdhc_read32(&regs->cmdrsp3);
-		cmdrsp2 = esdhc_read32(&regs->cmdrsp2);
-		cmdrsp1 = esdhc_read32(&regs->cmdrsp1);
-		cmdrsp0 = esdhc_read32(&regs->cmdrsp0);
+		cmdrsp3 = esdhc_read32(regs + SDHCI_RESPONSE_3);
+		cmdrsp2 = esdhc_read32(regs + SDHCI_RESPONSE_2);
+		cmdrsp1 = esdhc_read32(regs + SDHCI_RESPONSE_1);
+		cmdrsp0 = esdhc_read32(regs + SDHCI_RESPONSE_0);
 		cmd->response[0] = (cmdrsp3 << 8) | (cmdrsp2 >> 24);
 		cmd->response[1] = (cmdrsp2 << 8) | (cmdrsp1 >> 24);
 		cmd->response[2] = (cmdrsp1 << 8) | (cmdrsp0 >> 24);
 		cmd->response[3] = (cmdrsp0 << 8);
 	} else
-		cmd->response[0] = esdhc_read32(&regs->cmdrsp0);
+		cmd->response[0] = esdhc_read32(regs + SDHCI_RESPONSE_0);
 
 	/* Wait until all of the blocks are transferred */
 	if (data) {
@@ -310,7 +288,7 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 		esdhc_pio_read_write(mci, data);
 #else
 		do {
-			irqstat = esdhc_read32(&regs->irqstat);
+			irqstat = esdhc_read32(regs + SDHCI_INT_STATUS);
 
 			if (irqstat & DATA_ERR)
 				return -EIO;
@@ -318,7 +296,7 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 			if (irqstat & IRQSTAT_DTOE)
 				return -ETIMEDOUT;
 		} while (!(irqstat & IRQSTAT_TC) &&
-				(esdhc_read32(&regs->prsstat) & PRSSTAT_DLA));
+				(esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_DLA));
 
 		if (data->flags & MMC_DATA_READ) {
 			dma_inv_range((unsigned long)data->dest,
@@ -327,11 +305,11 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 #endif
 	}
 
-	esdhc_write32(&regs->irqstat, -1);
+	esdhc_write32(regs + SDHCI_INT_STATUS, -1);
 
 	/* Wait for the bus to be idle */
 	ret = wait_on_timeout(SECOND,
-			!(esdhc_read32(&regs->prsstat) &
+			!(esdhc_read32(regs + SDHCI_PRESENT_STATE) &
 				(PRSSTAT_CICHB | PRSSTAT_CIDHB)));
 	if (ret) {
 		dev_err(host->dev, "timeout 2\n");
@@ -339,7 +317,7 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 	}
 
 	ret = wait_on_timeout(100 * MSECOND,
-			!(esdhc_read32(&regs->prsstat) & PRSSTAT_DLA));
+			!(esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_DLA));
 	if (ret) {
 		dev_err(host->dev, "timeout 3\n");
 		return -ETIMEDOUT;
@@ -352,7 +330,7 @@ static void set_sysctl(struct mci_host *mci, u32 clock)
 {
 	int div, pre_div;
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
-	struct fsl_esdhc __iomem *regs = host->regs;
+	void __iomem *regs = host->regs;
 	int sdhc_clk = clk_get_rate(host->clk);
 	u32 clk;
 
@@ -381,34 +359,40 @@ static void set_sysctl(struct mci_host *mci, u32 clock)
 
 	clk = (pre_div << 8) | (div << 4);
 
-	esdhc_clrbits32(&regs->sysctl, SYSCTL_CKEN);
+	esdhc_clrbits32(regs + SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
+			SYSCTL_CKEN);
 
-	esdhc_clrsetbits32(&regs->sysctl, SYSCTL_CLOCK_MASK, clk);
+	esdhc_clrsetbits32(regs + SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
+			SYSCTL_CLOCK_MASK, clk);
 
 	udelay(10000);
 
 	clk = SYSCTL_PEREN | SYSCTL_CKEN;
 
-	esdhc_setbits32(&regs->sysctl, clk);
+	esdhc_setbits32(regs + SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
+			clk);
 }
 
 static void esdhc_set_ios(struct mci_host *mci, struct mci_ios *ios)
 {
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
-	struct fsl_esdhc __iomem *regs = host->regs;
+	void __iomem *regs = host->regs;
 
 	/* Set the clock speed */
 	set_sysctl(mci, ios->clock);
 
 	/* Set the bus width */
-	esdhc_clrbits32(&regs->proctl, PROCTL_DTW_4 | PROCTL_DTW_8);
+	esdhc_clrbits32(regs + SDHCI_HOST_CONTROL__POWER_CONTROL__BLOCK_GAP_CONTROL,
+			PROCTL_DTW_4 | PROCTL_DTW_8);
 
 	switch (ios->bus_width) {
 	case MMC_BUS_WIDTH_4:
-		esdhc_setbits32(&regs->proctl, PROCTL_DTW_4);
+		esdhc_setbits32(regs + SDHCI_HOST_CONTROL__POWER_CONTROL__BLOCK_GAP_CONTROL,
+				PROCTL_DTW_4);
 		break;
 	case MMC_BUS_WIDTH_8:
-		esdhc_setbits32(&regs->proctl, PROCTL_DTW_8);
+		esdhc_setbits32(regs + SDHCI_HOST_CONTROL__POWER_CONTROL__BLOCK_GAP_CONTROL,
+				PROCTL_DTW_8);
 		break;
 	case MMC_BUS_WIDTH_1:
 		break;
@@ -421,7 +405,7 @@ static void esdhc_set_ios(struct mci_host *mci, struct mci_ios *ios)
 static int esdhc_card_present(struct mci_host *mci)
 {
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
-	struct fsl_esdhc __iomem *regs = host->regs;
+	void __iomem *regs = host->regs;
 	struct esdhc_platform_data *pdata = host->dev->platform_data;
 	int ret;
 
@@ -433,7 +417,7 @@ static int esdhc_card_present(struct mci_host *mci)
 	case ESDHC_CD_PERMANENT:
 		return 1;
 	case ESDHC_CD_CONTROLLER:
-		return !(esdhc_read32(&regs->prsstat) & PRSSTAT_WPSPL);
+		return !(esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_WPSPL);
 	case ESDHC_CD_GPIO:
 		ret = gpio_direction_input(pdata->cd_gpio);
 		if (ret)
@@ -447,45 +431,52 @@ static int esdhc_card_present(struct mci_host *mci)
 static int esdhc_init(struct mci_host *mci, struct device_d *dev)
 {
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
-	struct fsl_esdhc __iomem *regs = host->regs;
+	void __iomem *regs = host->regs;
 	int timeout = 1000;
 	int ret = 0;
 
 	/* Reset the entire host controller */
-	esdhc_write32(&regs->sysctl, SYSCTL_RSTA);
+	esdhc_write32(regs + SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
+			SYSCTL_RSTA);
 
 	/* Wait until the controller is available */
-	while ((esdhc_read32(&regs->sysctl) & SYSCTL_RSTA) && --timeout)
+	while ((esdhc_read32(regs + SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET)
+				& SYSCTL_RSTA) && --timeout)
 		udelay(1000);
 
-	esdhc_write32(&regs->sysctl, SYSCTL_HCKEN | SYSCTL_IPGEN);
+	esdhc_write32(regs + SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
+			SYSCTL_HCKEN | SYSCTL_IPGEN);
 
 	/* Set the initial clock speed */
 	set_sysctl(mci, 400000);
 
 	/* Disable the BRR and BWR bits in IRQSTAT */
-	esdhc_clrbits32(&regs->irqstaten, IRQSTATEN_BRR | IRQSTATEN_BWR);
+	esdhc_clrbits32(regs + SDHCI_INT_ENABLE, IRQSTATEN_BRR | IRQSTATEN_BWR);
 
 	/* Put the PROCTL reg back to the default */
-	esdhc_write32(&regs->proctl, PROCTL_INIT);
+	esdhc_write32(regs + SDHCI_HOST_CONTROL__POWER_CONTROL__BLOCK_GAP_CONTROL,
+			PROCTL_INIT);
 
 	/* Set timout to the maximum value */
-	esdhc_clrsetbits32(&regs->sysctl, SYSCTL_TIMEOUT_MASK, 14 << 16);
+	esdhc_clrsetbits32(regs + SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
+			SYSCTL_TIMEOUT_MASK, 14 << 16);
 
 	return ret;
 }
 
-static int esdhc_reset(struct fsl_esdhc __iomem *regs)
+static int esdhc_reset(void __iomem *regs)
 {
 	uint64_t start;
 
 	/* reset the controller */
-	esdhc_write32(&regs->sysctl, SYSCTL_RSTA);
+	esdhc_write32(regs + SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
+			SYSCTL_RSTA);
 
 	start = get_time_ns();
 	/* hardware clears the bit when it is done */
 	while (1) {
-		if (!(esdhc_read32(&regs->sysctl) & SYSCTL_RSTA))
+		if (!(esdhc_read32(regs + SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET)
+					& SYSCTL_RSTA))
 			break;
 		if (is_timeout(start, 100 * MSECOND)) {
 			printf("MMC/SD: Reset never completed.\n");
@@ -522,7 +513,7 @@ static int fsl_esdhc_probe(struct device_d *dev)
 		return ret;
 	}
 
-	caps = esdhc_read32(&host->regs->hostcapblt);
+	caps = esdhc_read32(host->regs + SDHCI_CAPABILITIES);
 
 	if (caps & ESDHC_HOSTCAPBLT_VS18)
 		mci->voltages |= MMC_VDD_165_195;
diff --git a/drivers/mci/imx-esdhc.h b/drivers/mci/imx-esdhc.h
index 2be63a5..ea1cb31 100644
--- a/drivers/mci/imx-esdhc.h
+++ b/drivers/mci/imx-esdhc.h
@@ -25,8 +25,6 @@
 #include <errno.h>
 #include <asm/byteorder.h>
 
-/* FSL eSDHC-specific constants */
-#define SYSCTL			0x0002e02c
 #define SYSCTL_INITA		0x08000000
 #define SYSCTL_TIMEOUT_MASK	0x000f0000
 #define SYSCTL_CLOCK_MASK	0x0000fff0
@@ -36,104 +34,17 @@
 #define SYSCTL_HCKEN		0x00000002
 #define SYSCTL_IPGEN		0x00000001
 
-#define IRQSTAT			0x0002e030
-#define IRQSTAT_DMAE		(0x10000000)
-#define IRQSTAT_AC12E		(0x01000000)
-#define IRQSTAT_DEBE		(0x00400000)
-#define IRQSTAT_DCE		(0x00200000)
-#define IRQSTAT_DTOE		(0x00100000)
-#define IRQSTAT_CIE		(0x00080000)
-#define IRQSTAT_CEBE		(0x00040000)
-#define IRQSTAT_CCE		(0x00020000)
-#define IRQSTAT_CTOE		(0x00010000)
-#define IRQSTAT_CINT		(0x00000100)
-#define IRQSTAT_CRM		(0x00000080)
-#define IRQSTAT_CINS		(0x00000040)
-#define IRQSTAT_BRR		(0x00000020)
-#define IRQSTAT_BWR		(0x00000010)
-#define IRQSTAT_DINT		(0x00000008)
-#define IRQSTAT_BGE		(0x00000004)
-#define IRQSTAT_TC		(0x00000002)
-#define IRQSTAT_CC		(0x00000001)
-
 #define CMD_ERR		(IRQSTAT_CIE | IRQSTAT_CEBE | IRQSTAT_CCE)
 #define DATA_ERR	(IRQSTAT_DEBE | IRQSTAT_DCE | IRQSTAT_DTOE)
 
-#define IRQSTATEN		0x0002e034
-#define IRQSTATEN_DMAE		(0x10000000)
-#define IRQSTATEN_AC12E		(0x01000000)
-#define IRQSTATEN_DEBE		(0x00400000)
-#define IRQSTATEN_DCE		(0x00200000)
-#define IRQSTATEN_DTOE		(0x00100000)
-#define IRQSTATEN_CIE		(0x00080000)
-#define IRQSTATEN_CEBE		(0x00040000)
-#define IRQSTATEN_CCE		(0x00020000)
-#define IRQSTATEN_CTOE		(0x00010000)
-#define IRQSTATEN_CINT		(0x00000100)
-#define IRQSTATEN_CRM		(0x00000080)
-#define IRQSTATEN_CINS		(0x00000040)
-#define IRQSTATEN_BRR		(0x00000020)
-#define IRQSTATEN_BWR		(0x00000010)
-#define IRQSTATEN_DINT		(0x00000008)
-#define IRQSTATEN_BGE		(0x00000004)
-#define IRQSTATEN_TC		(0x00000002)
-#define IRQSTATEN_CC		(0x00000001)
-
-#define PRSSTAT			0x0002e024
-#define PRSSTAT_CLSL		(0x00800000)
-#define PRSSTAT_WPSPL		(0x00080000)
-#define PRSSTAT_CDPL		(0x00040000)
-#define PRSSTAT_CINS		(0x00010000)
-#define PRSSTAT_BREN		(0x00000800)
-#define PRSSTAT_BWEN		(0x00000400)
-#define PRSSTAT_DLA		(0x00000004)
-#define PRSSTAT_CICHB		(0x00000002)
-#define PRSSTAT_CIDHB		(0x00000001)
-
-#define PROCTL			0x0002e028
 #define PROCTL_INIT		0x00000020
 #define PROCTL_DTW_4		0x00000002
 #define PROCTL_DTW_8		0x00000004
 
-#define CMDARG			0x0002e008
-
-#define XFERTYP			0x0002e00c
-#define XFERTYP_CMD(x)		((x & 0x3f) << 24)
-#define XFERTYP_CMDTYP_NORMAL	0x0
-#define XFERTYP_CMDTYP_SUSPEND	0x00400000
-#define XFERTYP_CMDTYP_RESUME	0x00800000
-#define XFERTYP_CMDTYP_ABORT	0x00c00000
-#define XFERTYP_DPSEL		0x00200000
-#define XFERTYP_CICEN		0x00100000
-#define XFERTYP_CCCEN		0x00080000
-#define XFERTYP_RSPTYP_NONE	0
-#define XFERTYP_RSPTYP_136	0x00010000
-#define XFERTYP_RSPTYP_48	0x00020000
-#define XFERTYP_RSPTYP_48_BUSY	0x00030000
-#define XFERTYP_MSBSEL		0x00000020
-#define XFERTYP_DTDSEL		0x00000010
-#define XFERTYP_AC12EN		0x00000004
-#define XFERTYP_BCEN		0x00000002
-#define XFERTYP_DMAEN		0x00000001
-
-#define CINS_TIMEOUT		1000
-#define PIO_TIMEOUT		100000
-
-#define DSADDR		0x2e004
-
-#define CMDRSP0		0x2e010
-#define CMDRSP1		0x2e014
-#define CMDRSP2		0x2e018
-#define CMDRSP3		0x2e01c
-
-#define DATPORT		0x2e020
-
-#define WML		0x2e044
 #define WML_WRITE	0x00010000
 #define WML_RD_WML_MASK	0xff
 #define WML_WR_WML_MASK	0xff0000
 
-#define BLKATTR		0x2e004
 #define BLKATTR_CNT(x)	((x & 0xffff) << 16)
 #define BLKATTR_SIZE(x)	(x & 0x1fff)
 #define MAX_BLK_CNT	0x7fff	/* so malloc will have enough room with 32M */
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
new file mode 100644
index 0000000..5f69edf
--- /dev/null
+++ b/drivers/mci/sdhci.h
@@ -0,0 +1,88 @@
+#ifndef __MCI_SDHCI_H
+#define __MCI_SDHCI_H
+
+#define SDHCI_DMA_ADDRESS					0x00
+#define SDHCI_BLOCK_SIZE__BLOCK_COUNT				0x04
+#define SDHCI_ARGUMENT						0x08
+#define SDHCI_TRANSFER_MODE__COMMAND				0x0c
+#define SDHCI_RESPONSE_0					0x10
+#define SDHCI_RESPONSE_1					0x14
+#define SDHCI_RESPONSE_2					0x18
+#define SDHCI_RESPONSE_3					0x1c
+#define SDHCI_BUFFER						0x20
+#define SDHCI_PRESENT_STATE					0x24
+#define SDHCI_HOST_CONTROL__POWER_CONTROL__BLOCK_GAP_CONTROL	0x28
+#define SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET	0x2c
+#define SDHCI_INT_STATUS					0x30
+#define SDHCI_INT_ENABLE					0x34
+#define SDHCI_SIGNAL_ENABLE					0x38
+#define SDHCI_ACMD12_ERR__HOST_CONTROL2				0x3C
+#define SDHCI_CAPABILITIES					0x40
+
+#define COMMAND_CMD(x)		((x & 0x3f) << 24)
+#define COMMAND_CMDTYP_NORMAL	0x0
+#define COMMAND_CMDTYP_SUSPEND	0x00400000
+#define COMMAND_CMDTYP_RESUME	0x00800000
+#define COMMAND_CMDTYP_ABORT	0x00c00000
+#define COMMAND_DPSEL		0x00200000
+#define COMMAND_CICEN		0x00100000
+#define COMMAND_CCCEN		0x00080000
+#define COMMAND_RSPTYP_NONE	0
+#define COMMAND_RSPTYP_136	0x00010000
+#define COMMAND_RSPTYP_48	0x00020000
+#define COMMAND_RSPTYP_48_BUSY	0x00030000
+#define TRANSFER_MODE_MSBSEL	0x00000020
+#define TRANSFER_MODE_DTDSEL	0x00000010
+#define TRANSFER_MODE_AC12EN	0x00000004
+#define TRANSFER_MODE_BCEN	0x00000002
+#define TRANSFER_MODE_DMAEN	0x00000001
+
+#define IRQSTAT_DMAE		0x10000000
+#define IRQSTAT_AC12E		0x01000000
+#define IRQSTAT_DEBE		0x00400000
+#define IRQSTAT_DCE		0x00200000
+#define IRQSTAT_DTOE		0x00100000
+#define IRQSTAT_CIE		0x00080000
+#define IRQSTAT_CEBE		0x00040000
+#define IRQSTAT_CCE		0x00020000
+#define IRQSTAT_CTOE		0x00010000
+#define IRQSTAT_CINT		0x00000100
+#define IRQSTAT_CRM		0x00000080
+#define IRQSTAT_CINS		0x00000040
+#define IRQSTAT_BRR		0x00000020
+#define IRQSTAT_BWR		0x00000010
+#define IRQSTAT_DINT		0x00000008
+#define IRQSTAT_BGE		0x00000004
+#define IRQSTAT_TC		0x00000002
+#define IRQSTAT_CC		0x00000001
+
+#define IRQSTATEN_DMAE		0x10000000
+#define IRQSTATEN_AC12E		0x01000000
+#define IRQSTATEN_DEBE		0x00400000
+#define IRQSTATEN_DCE		0x00200000
+#define IRQSTATEN_DTOE		0x00100000
+#define IRQSTATEN_CIE		0x00080000
+#define IRQSTATEN_CEBE		0x00040000
+#define IRQSTATEN_CCE		0x00020000
+#define IRQSTATEN_CTOE		0x00010000
+#define IRQSTATEN_CINT		0x00000100
+#define IRQSTATEN_CRM		0x00000080
+#define IRQSTATEN_CINS		0x00000040
+#define IRQSTATEN_BRR		0x00000020
+#define IRQSTATEN_BWR		0x00000010
+#define IRQSTATEN_DINT		0x00000008
+#define IRQSTATEN_BGE		0x00000004
+#define IRQSTATEN_TC		0x00000002
+#define IRQSTATEN_CC		0x00000001
+
+#define PRSSTAT_CLSL		0x00800000
+#define PRSSTAT_WPSPL		0x00080000
+#define PRSSTAT_CDPL		0x00040000
+#define PRSSTAT_CINS		0x00010000
+#define PRSSTAT_BREN		0x00000800
+#define PRSSTAT_BWEN		0x00000400
+#define PRSSTAT_DLA		0x00000004
+#define PRSSTAT_CICHB		0x00000002
+#define PRSSTAT_CIDHB		0x00000001
+
+#endif /* __MCI_SDHCI_H */
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
