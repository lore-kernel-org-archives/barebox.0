Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1grHxU-0001d6-Q8
 for barebox@lists.infradead.org; Wed, 06 Feb 2019 07:49:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 Feb 2019 08:49:19 +0100
Message-Id: <20190206074921.11115-7-s.hauer@pengutronix.de>
In-Reply-To: <20190206074921.11115-1-s.hauer@pengutronix.de>
References: <20190206074921.11115-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/8] mci: imx-esdhc: implement static inline io wrappers
To: Barebox List <barebox@lists.infradead.org>

Layerscape will need accesses in big endian mode. To make this
possible create static inline wrappers for the io accessors.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c | 149 ++++++++++++++++++++++++----------------
 drivers/mci/imx-esdhc.h |   6 --
 2 files changed, 91 insertions(+), 64 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 9ccc34fbd5..b7d5c01fb5 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -106,6 +106,47 @@ static inline int esdhc_is_usdhc(struct fsl_esdhc_host *data)
 	return !!(data->socdata->flags & ESDHC_FLAG_USDHC);
 }
 
+static inline u32 esdhc_read32(struct fsl_esdhc_host *host, unsigned int reg)
+{
+	return readl(host->regs + reg);
+}
+
+static inline void esdhc_write32(struct fsl_esdhc_host *host, unsigned int reg,
+				 u32 val)
+{
+	writel(val, host->regs + reg);
+}
+
+static inline void esdhc_clrsetbits32(struct fsl_esdhc_host *host, unsigned int reg,
+				      u32 clear, u32 set)
+{
+	u32 val;
+
+	val = esdhc_read32(host, reg);
+	val &= ~clear;
+	val |= set;
+	esdhc_write32(host, reg, val);
+}
+
+static inline void esdhc_clrbits32(struct fsl_esdhc_host *host, unsigned int reg,
+				      u32 clear)
+{
+	u32 val;
+
+	val = esdhc_read32(host, reg);
+	val &= ~clear;
+	esdhc_write32(host, reg, val);
+}
+
+static inline void esdhc_setbits32(struct fsl_esdhc_host *host, unsigned int reg,
+				   u32 set)
+{
+	u32 val;
+
+	val = esdhc_read32(host, reg);
+	val |= set;
+	esdhc_write32(host, reg, val);
+}
 
 /* Return the XFERTYP flags for a given command and data packet */
 static u32 esdhc_xfertyp(struct fsl_esdhc_host *host,
@@ -152,7 +193,6 @@ static int
 esdhc_pio_read_write(struct mci_host *mci, struct mci_data *data)
 {
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
-	void __iomem *regs = host->regs;
 	u32 blocks;
 	char *buffer;
 	u32 databuf;
@@ -166,8 +206,8 @@ esdhc_pio_read_write(struct mci_host *mci, struct mci_data *data)
 		while (blocks) {
 			timeout = PIO_TIMEOUT;
 			size = data->blocksize;
-			irqstat = esdhc_read32(regs + SDHCI_INT_STATUS);
-			while (!(esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_BREN)
+			irqstat = esdhc_read32(host, SDHCI_INT_STATUS);
+			while (!(esdhc_read32(host, SDHCI_PRESENT_STATE) & PRSSTAT_BREN)
 				&& --timeout);
 			if (timeout <= 0) {
 				dev_err(host->dev, "Data Read Failed\n");
@@ -175,8 +215,8 @@ esdhc_pio_read_write(struct mci_host *mci, struct mci_data *data)
 			}
 			while (size && (!(irqstat & IRQSTAT_TC))) {
 				udelay(100); /* Wait before last byte transfer complete */
-				irqstat = esdhc_read32(regs + SDHCI_INT_STATUS);
-				databuf = esdhc_read32(regs + SDHCI_BUFFER);
+				irqstat = esdhc_read32(host, SDHCI_INT_STATUS);
+				databuf = esdhc_read32(host, SDHCI_BUFFER);
 				*((u32 *)buffer) = databuf;
 				buffer += 4;
 				size -= 4;
@@ -189,8 +229,8 @@ esdhc_pio_read_write(struct mci_host *mci, struct mci_data *data)
 		while (blocks) {
 			timeout = PIO_TIMEOUT;
 			size = data->blocksize;
-			irqstat = esdhc_read32(regs + SDHCI_INT_STATUS);
-			while (!(esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_BWEN)
+			irqstat = esdhc_read32(host, SDHCI_INT_STATUS);
+			while (!(esdhc_read32(host, SDHCI_PRESENT_STATE) & PRSSTAT_BWEN)
 				&& --timeout);
 			if (timeout <= 0) {
 				dev_err(host->dev, "Data Write Failed\n");
@@ -201,8 +241,8 @@ esdhc_pio_read_write(struct mci_host *mci, struct mci_data *data)
 				databuf = *((u32 *)buffer);
 				buffer += 4;
 				size -= 4;
-				irqstat = esdhc_read32(regs + SDHCI_INT_STATUS);
-				esdhc_write32(regs+ SDHCI_BUFFER, databuf);
+				irqstat = esdhc_read32(host, SDHCI_INT_STATUS);
+				esdhc_write32(host, SDHCI_BUFFER, databuf);
 			}
 			blocks--;
 		}
@@ -215,7 +255,6 @@ static int esdhc_setup_data(struct mci_host *mci, struct mci_data *data,
 			    dma_addr_t dma)
 {
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
-	void __iomem *regs = host->regs;
 	u32 wml_value;
 
 	if (!IS_ENABLED(CONFIG_MCI_IMX_ESDHC_PIO)) {
@@ -225,18 +264,18 @@ static int esdhc_setup_data(struct mci_host *mci, struct mci_data *data,
 			if (wml_value > 0x10)
 				wml_value = 0x10;
 
-			esdhc_clrsetbits32(regs + IMX_SDHCI_WML, WML_RD_WML_MASK, wml_value);
+			esdhc_clrsetbits32(host, IMX_SDHCI_WML, WML_RD_WML_MASK, wml_value);
 		} else {
 			if (wml_value > 0x80)
 				wml_value = 0x80;
 
-			esdhc_clrsetbits32(regs + IMX_SDHCI_WML, WML_WR_WML_MASK,
+			esdhc_clrsetbits32(host, IMX_SDHCI_WML, WML_WR_WML_MASK,
 						wml_value << 16);
 		}
-		esdhc_write32(regs + SDHCI_DMA_ADDRESS, dma);
+		esdhc_write32(host, SDHCI_DMA_ADDRESS, dma);
 	}
 
-	esdhc_write32(regs + SDHCI_BLOCK_SIZE__BLOCK_COUNT, data->blocks << 16 | data->blocksize);
+	esdhc_write32(host, SDHCI_BLOCK_SIZE__BLOCK_COUNT, data->blocks << 16 | data->blocksize);
 
 	return 0;
 }
@@ -244,14 +283,13 @@ static int esdhc_setup_data(struct mci_host *mci, struct mci_data *data,
 static int esdhc_do_data(struct mci_host *mci, struct mci_data *data)
 {
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
-	void __iomem *regs = host->regs;
 	u32 irqstat;
 
 	if (IS_ENABLED(CONFIG_MCI_IMX_ESDHC_PIO))
 		return esdhc_pio_read_write(mci, data);
 
 	do {
-		irqstat = esdhc_read32(regs + SDHCI_INT_STATUS);
+		irqstat = esdhc_read32(host, SDHCI_INT_STATUS);
 
 		if (irqstat & DATA_ERR)
 			return -EIO;
@@ -259,7 +297,7 @@ static int esdhc_do_data(struct mci_host *mci, struct mci_data *data)
 		if (irqstat & IRQSTAT_DTOE)
 			return -ETIMEDOUT;
 	} while (!(irqstat & IRQSTAT_TC) &&
-		(esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_DLA));
+		(esdhc_read32(host, SDHCI_PRESENT_STATE) & PRSSTAT_DLA));
 
 	return 0;
 }
@@ -274,14 +312,13 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 	u32	xfertyp, mixctrl;
 	u32	irqstat;
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
-	void __iomem *regs = host->regs;
 	unsigned int num_bytes = 0;
 	int ret;
 	void *ptr;
 	enum dma_data_direction dir = 0;
 	dma_addr_t dma = 0;
 
-	esdhc_write32(regs + SDHCI_INT_STATUS, -1);
+	esdhc_write32(host, SDHCI_INT_STATUS, -1);
 
 	/* Wait at least 8 SD clock cycles before the next command */
 	udelay(1);
@@ -315,28 +352,28 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 	xfertyp = esdhc_xfertyp(host, cmd, data);
 
 	/* Send the command */
-	esdhc_write32(regs + SDHCI_ARGUMENT, cmd->cmdarg);
+	esdhc_write32(host, SDHCI_ARGUMENT, cmd->cmdarg);
 
 	if (esdhc_is_usdhc(host)) {
 		/* write lower-half of xfertyp to mixctrl */
 		mixctrl = xfertyp & 0xFFFF;
 		/* Keep the bits 22-25 of the register as is */
-		mixctrl |= (esdhc_read32(regs + IMX_SDHCI_MIXCTRL) & (0xF << 22));
-		esdhc_write32(regs + IMX_SDHCI_MIXCTRL, mixctrl);
+		mixctrl |= (esdhc_read32(host, IMX_SDHCI_MIXCTRL) & (0xF << 22));
+		esdhc_write32(host, IMX_SDHCI_MIXCTRL, mixctrl);
 	}
 
-	esdhc_write32(regs + SDHCI_TRANSFER_MODE__COMMAND, xfertyp);
+	esdhc_write32(host, SDHCI_TRANSFER_MODE__COMMAND, xfertyp);
 
 	/* Wait for the command to complete */
 	ret = wait_on_timeout(100 * MSECOND,
-			esdhc_read32(regs + SDHCI_INT_STATUS) & IRQSTAT_CC);
+			esdhc_read32(host, SDHCI_INT_STATUS) & IRQSTAT_CC);
 	if (ret) {
 		dev_dbg(host->dev, "timeout 1\n");
 		return -ETIMEDOUT;
 	}
 
-	irqstat = esdhc_read32(regs + SDHCI_INT_STATUS);
-	esdhc_write32(regs + SDHCI_INT_STATUS, irqstat);
+	irqstat = esdhc_read32(host, SDHCI_INT_STATUS);
+	esdhc_write32(host, SDHCI_INT_STATUS, irqstat);
 
 	if (irqstat & CMD_ERR)
 		return -EIO;
@@ -351,7 +388,7 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 		 * timout / 10 usec since DLA polling can be insecure.
 		 */
 		ret = wait_on_timeout(2500 * MSECOND,
-			(esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_DAT0));
+			(esdhc_read32(host, SDHCI_PRESENT_STATE) & PRSSTAT_DAT0));
 
 		if (ret) {
 			dev_err(host->dev, "timeout PRSSTAT_DAT0\n");
@@ -363,16 +400,16 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 	if (cmd->resp_type & MMC_RSP_136) {
 		u32 cmdrsp3, cmdrsp2, cmdrsp1, cmdrsp0;
 
-		cmdrsp3 = esdhc_read32(regs + SDHCI_RESPONSE_3);
-		cmdrsp2 = esdhc_read32(regs + SDHCI_RESPONSE_2);
-		cmdrsp1 = esdhc_read32(regs + SDHCI_RESPONSE_1);
-		cmdrsp0 = esdhc_read32(regs + SDHCI_RESPONSE_0);
+		cmdrsp3 = esdhc_read32(host, SDHCI_RESPONSE_3);
+		cmdrsp2 = esdhc_read32(host, SDHCI_RESPONSE_2);
+		cmdrsp1 = esdhc_read32(host, SDHCI_RESPONSE_1);
+		cmdrsp0 = esdhc_read32(host, SDHCI_RESPONSE_0);
 		cmd->response[0] = (cmdrsp3 << 8) | (cmdrsp2 >> 24);
 		cmd->response[1] = (cmdrsp2 << 8) | (cmdrsp1 >> 24);
 		cmd->response[2] = (cmdrsp1 << 8) | (cmdrsp0 >> 24);
 		cmd->response[3] = (cmdrsp0 << 8);
 	} else
-		cmd->response[0] = esdhc_read32(regs + SDHCI_RESPONSE_0);
+		cmd->response[0] = esdhc_read32(host, SDHCI_RESPONSE_0);
 
 	/* Wait until all of the blocks are transferred */
 	if (data) {
@@ -384,11 +421,11 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 			dma_unmap_single(host->dev, dma, num_bytes, dir);
 	}
 
-	esdhc_write32(regs + SDHCI_INT_STATUS, -1);
+	esdhc_write32(host, SDHCI_INT_STATUS, -1);
 
 	/* Wait for the bus to be idle */
 	ret = wait_on_timeout(SECOND,
-			!(esdhc_read32(regs + SDHCI_PRESENT_STATE) &
+			!(esdhc_read32(host, SDHCI_PRESENT_STATE) &
 				(PRSSTAT_CICHB | PRSSTAT_CIDHB)));
 	if (ret) {
 		dev_err(host->dev, "timeout 2\n");
@@ -396,7 +433,7 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 	}
 
 	ret = wait_on_timeout(100 * MSECOND,
-			!(esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_DLA));
+			!(esdhc_read32(host, SDHCI_PRESENT_STATE) & PRSSTAT_DLA));
 	if (ret) {
 		dev_err(host->dev, "timeout 3\n");
 		return -ETIMEDOUT;
@@ -409,7 +446,6 @@ static void set_sysctl(struct mci_host *mci, u32 clock)
 {
 	int div, pre_div;
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
-	void __iomem *regs = host->regs;
 	int sdhc_clk = clk_get_rate(host->clk);
 	u32 clk;
 	unsigned long  cur_clock;
@@ -446,43 +482,42 @@ static void set_sysctl(struct mci_host *mci, u32 clock)
 
 	clk = (pre_div << 8) | (div << 4);
 
-	esdhc_clrbits32(regs + SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
+	esdhc_clrbits32(host, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
 			SYSCTL_CKEN);
 
-	esdhc_clrsetbits32(regs + SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
+	esdhc_clrsetbits32(host, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
 			SYSCTL_CLOCK_MASK, clk);
 
 	wait_on_timeout(10 * MSECOND,
-			esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_SDSTB);
+			esdhc_read32(host, SDHCI_PRESENT_STATE) & PRSSTAT_SDSTB);
 
 	clk = SYSCTL_PEREN | SYSCTL_CKEN | SYSCTL_INITA;
 
-	esdhc_setbits32(regs + SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
+	esdhc_setbits32(host, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
 			clk);
 
 	wait_on_timeout(1 * MSECOND,
-			!(esdhc_read32(regs + SDHCI_CLOCK_CONTROL) & SYSCTL_INITA));
+			!(esdhc_read32(host, SDHCI_CLOCK_CONTROL) & SYSCTL_INITA));
 }
 
 static void esdhc_set_ios(struct mci_host *mci, struct mci_ios *ios)
 {
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
-	void __iomem *regs = host->regs;
 
 	/* Set the clock speed */
 	set_sysctl(mci, ios->clock);
 
 	/* Set the bus width */
-	esdhc_clrbits32(regs + SDHCI_HOST_CONTROL__POWER_CONTROL__BLOCK_GAP_CONTROL,
+	esdhc_clrbits32(host, SDHCI_HOST_CONTROL__POWER_CONTROL__BLOCK_GAP_CONTROL,
 			PROCTL_DTW_4 | PROCTL_DTW_8);
 
 	switch (ios->bus_width) {
 	case MMC_BUS_WIDTH_4:
-		esdhc_setbits32(regs + SDHCI_HOST_CONTROL__POWER_CONTROL__BLOCK_GAP_CONTROL,
+		esdhc_setbits32(host, SDHCI_HOST_CONTROL__POWER_CONTROL__BLOCK_GAP_CONTROL,
 				PROCTL_DTW_4);
 		break;
 	case MMC_BUS_WIDTH_8:
-		esdhc_setbits32(regs + SDHCI_HOST_CONTROL__POWER_CONTROL__BLOCK_GAP_CONTROL,
+		esdhc_setbits32(host, SDHCI_HOST_CONTROL__POWER_CONTROL__BLOCK_GAP_CONTROL,
 				PROCTL_DTW_8);
 		break;
 	case MMC_BUS_WIDTH_1:
@@ -496,7 +531,6 @@ static void esdhc_set_ios(struct mci_host *mci, struct mci_ios *ios)
 static int esdhc_card_present(struct mci_host *mci)
 {
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
-	void __iomem *regs = host->regs;
 	struct esdhc_platform_data *pdata = host->dev->platform_data;
 	int ret;
 
@@ -508,7 +542,7 @@ static int esdhc_card_present(struct mci_host *mci)
 	case ESDHC_CD_PERMANENT:
 		return 1;
 	case ESDHC_CD_CONTROLLER:
-		return !(esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_WPSPL);
+		return !(esdhc_read32(host, SDHCI_PRESENT_STATE) & PRSSTAT_WPSPL);
 	case ESDHC_CD_GPIO:
 		ret = gpio_direction_input(pdata->cd_gpio);
 		if (ret)
@@ -521,29 +555,28 @@ static int esdhc_card_present(struct mci_host *mci)
 
 static int esdhc_reset(struct fsl_esdhc_host *host)
 {
-	void __iomem *regs = host->regs;
 	uint64_t start;
 	int val;
 
 	/* reset the controller */
-	esdhc_write32(regs + SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
+	esdhc_write32(host, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
 			SYSCTL_RSTA);
 
 	/* extra register reset for i.MX6 Solo/DualLite */
 	if (esdhc_is_usdhc(host)) {
 		/* reset bit FBCLK_SEL */
-		val = esdhc_read32(regs + IMX_SDHCI_MIXCTRL);
+		val = esdhc_read32(host, IMX_SDHCI_MIXCTRL);
 		val &= ~IMX_SDHCI_MIX_CTRL_FBCLK_SEL;
-		esdhc_write32(regs + IMX_SDHCI_MIXCTRL, val);
+		esdhc_write32(host, IMX_SDHCI_MIXCTRL, val);
 
 		/* reset delay line settings in IMX_SDHCI_DLL_CTRL */
-		esdhc_write32(regs + IMX_SDHCI_DLL_CTRL, 0x0);
+		esdhc_write32(host, IMX_SDHCI_DLL_CTRL, 0x0);
 	}
 
 	start = get_time_ns();
 	/* hardware clears the bit when it is done */
 	while (1) {
-		if (!(esdhc_read32(regs + SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET)
+		if (!(esdhc_read32(host, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET)
 					& SYSCTL_RSTA))
 			break;
 		if (is_timeout(start, 100 * MSECOND)) {
@@ -565,11 +598,11 @@ static int esdhc_init(struct mci_host *mci, struct device_d *dev)
 	if (ret)
 		return ret;
 
-	esdhc_write32(regs + SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
+	esdhc_write32(host, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
 			SYSCTL_HCKEN | SYSCTL_IPGEN);
 
 	/* RSTA doesn't reset MMC_BOOT register, so manually reset it */
-	esdhc_write32(regs + SDHCI_MMC_BOOT, 0);
+	esdhc_write32(host, SDHCI_MMC_BOOT, 0);
 
 	/* Set the initial clock speed */
 	set_sysctl(mci, 400000);
@@ -579,11 +612,11 @@ static int esdhc_init(struct mci_host *mci, struct device_d *dev)
 			IRQSTATEN_DCE | IRQSTATEN_DEBE | IRQSTATEN_DINT, regs + SDHCI_INT_ENABLE);
 
 	/* Put the PROCTL reg back to the default */
-	esdhc_write32(regs + SDHCI_HOST_CONTROL__POWER_CONTROL__BLOCK_GAP_CONTROL,
+	esdhc_write32(host, SDHCI_HOST_CONTROL__POWER_CONTROL__BLOCK_GAP_CONTROL,
 			PROCTL_INIT);
 
 	/* Set timout to the maximum value */
-	esdhc_clrsetbits32(regs + SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
+	esdhc_clrsetbits32(host, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
 			SYSCTL_TIMEOUT_MASK, 14 << 16);
 
 	return ret;
@@ -634,7 +667,7 @@ static int fsl_esdhc_probe(struct device_d *dev)
 		return PTR_ERR(iores);
 	host->regs = IOMEM(iores->start);
 
-	caps = esdhc_read32(host->regs + SDHCI_CAPABILITIES);
+	caps = esdhc_read32(host, SDHCI_CAPABILITIES);
 
 	if (caps & ESDHC_HOSTCAPBLT_VS18)
 		mci->voltages |= MMC_VDD_165_195;
diff --git a/drivers/mci/imx-esdhc.h b/drivers/mci/imx-esdhc.h
index 44aff9dc1e..9003843abb 100644
--- a/drivers/mci/imx-esdhc.h
+++ b/drivers/mci/imx-esdhc.h
@@ -63,10 +63,4 @@ struct fsl_esdhc_cfg {
 	u32	no_snoop;
 };
 
-#define esdhc_read32(a)			readl(a)
-#define esdhc_write32(a, v)		writel(v,a)
-#define esdhc_clrsetbits32(a, c, s)	writel((readl(a) & ~(c)) | (s), (a))
-#define esdhc_clrbits32(a, c)		writel(readl(a) & ~(c), (a))
-#define esdhc_setbits32(a, s)		writel(readl(a) | (s), (a))
-
 #endif  /* __FSL_ESDHC_H__ */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
