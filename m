Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX16H-0006bD-Fl
 for barebox@lists.infradead.org; Tue, 19 Nov 2019 10:51:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Nov 2019 11:50:18 +0100
Message-Id: <20191119105036.12300-4-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/21] mci: imx-esdhc: use sdhci helpers
To: Barebox List <barebox@lists.infradead.org>

To use the sdhci helpers we have to switch to the sdhci accessors.
Also use sdhci_read_response().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/Kconfig     |   1 +
 drivers/mci/imx-esdhc.c | 140 ++++++++++++++++++++++------------------
 2 files changed, 77 insertions(+), 64 deletions(-)

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index c37d40195a..9e7494de96 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -90,6 +90,7 @@ config MCI_IMX
 config MCI_IMX_ESDHC
 	bool "i.MX esdhc"
 	depends on ARCH_IMX || ARCH_LAYERSCAPE
+	select MCI_SDHCI
 	help
 	  Enable this entry to add support to read and write SD cards on a
 	  Freescale i.MX25/35/51 based system.
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index db3450a26d..7ae4fb4fd8 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -95,6 +95,7 @@ struct fsl_esdhc_host {
 	struct device_d		*dev;
 	struct clk		*clk;
 	const struct esdhc_soc_data *socdata;
+	struct sdhci	sdhci;
 };
 
 #define to_fsl_esdhc(mci)	container_of(mci, struct fsl_esdhc_host, mci)
@@ -106,21 +107,37 @@ static inline int esdhc_is_usdhc(struct fsl_esdhc_host *data)
 	return !!(data->socdata->flags & ESDHC_FLAG_USDHC);
 }
 
-static inline u32 esdhc_read32(struct fsl_esdhc_host *host, unsigned int reg)
+static inline struct fsl_esdhc_host *sdhci_to_esdhc(struct sdhci *sdhci)
 {
-	if (host->socdata->flags & ESDHC_FLAG_BIGENDIAN)
-		return in_be32(host->regs + reg);
-	else
-		return readl(host->regs + reg);
+	return container_of(sdhci, struct fsl_esdhc_host, sdhci);
 }
 
-static inline void esdhc_write32(struct fsl_esdhc_host *host, unsigned int reg,
-				 u32 val)
+static u32 esdhc_op_read32_le(struct sdhci *sdhci, int reg)
 {
-	if (host->socdata->flags & ESDHC_FLAG_BIGENDIAN)
-		out_be32(host->regs + reg, val);
-	else
-		writel(val, host->regs + reg);
+	struct fsl_esdhc_host *host = sdhci_to_esdhc(sdhci);
+
+	return readl(host->regs + reg);
+}
+
+static u32 esdhc_op_read32_be(struct sdhci *sdhci, int reg)
+{
+	struct fsl_esdhc_host *host = sdhci_to_esdhc(sdhci);
+
+	return in_be32(host->regs + reg);
+}
+
+static void esdhc_op_write32_le(struct sdhci *sdhci, int reg, u32 val)
+{
+	struct fsl_esdhc_host *host = sdhci_to_esdhc(sdhci);
+
+	writel(val, host->regs + reg);
+}
+
+static void esdhc_op_write32_be(struct sdhci *sdhci, int reg, u32 val)
+{
+	struct fsl_esdhc_host *host = sdhci_to_esdhc(sdhci);
+
+	out_be32(host->regs + reg, val);
 }
 
 static inline void esdhc_clrsetbits32(struct fsl_esdhc_host *host, unsigned int reg,
@@ -128,10 +145,10 @@ static inline void esdhc_clrsetbits32(struct fsl_esdhc_host *host, unsigned int
 {
 	u32 val;
 
-	val = esdhc_read32(host, reg);
+	val = sdhci_read32(&host->sdhci, reg);
 	val &= ~clear;
 	val |= set;
-	esdhc_write32(host, reg, val);
+	sdhci_write32(&host->sdhci, reg, val);
 }
 
 static inline void esdhc_clrbits32(struct fsl_esdhc_host *host, unsigned int reg,
@@ -204,8 +221,8 @@ esdhc_pio_read_write(struct mci_host *mci, struct mci_data *data)
 		while (blocks) {
 			timeout = PIO_TIMEOUT;
 			size = data->blocksize;
-			irqstat = esdhc_read32(host, SDHCI_INT_STATUS);
-			while (!(esdhc_read32(host, SDHCI_PRESENT_STATE) & PRSSTAT_BREN)
+			irqstat = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS);
+			while (!(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & PRSSTAT_BREN)
 				&& --timeout);
 			if (timeout <= 0) {
 				dev_err(host->dev, "Data Read Failed\n");
@@ -213,8 +230,8 @@ esdhc_pio_read_write(struct mci_host *mci, struct mci_data *data)
 			}
 			while (size && (!(irqstat & IRQSTAT_TC))) {
 				udelay(100); /* Wait before last byte transfer complete */
-				irqstat = esdhc_read32(host, SDHCI_INT_STATUS);
-				databuf = esdhc_read32(host, SDHCI_BUFFER);
+				irqstat = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS);
+				databuf = sdhci_read32(&host->sdhci, SDHCI_BUFFER);
 				*((u32 *)buffer) = databuf;
 				buffer += 4;
 				size -= 4;
@@ -227,8 +244,8 @@ esdhc_pio_read_write(struct mci_host *mci, struct mci_data *data)
 		while (blocks) {
 			timeout = PIO_TIMEOUT;
 			size = data->blocksize;
-			irqstat = esdhc_read32(host, SDHCI_INT_STATUS);
-			while (!(esdhc_read32(host, SDHCI_PRESENT_STATE) & PRSSTAT_BWEN)
+			irqstat = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS);
+			while (!(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & PRSSTAT_BWEN)
 				&& --timeout);
 			if (timeout <= 0) {
 				dev_err(host->dev, "Data Write Failed\n");
@@ -239,8 +256,8 @@ esdhc_pio_read_write(struct mci_host *mci, struct mci_data *data)
 				databuf = *((u32 *)buffer);
 				buffer += 4;
 				size -= 4;
-				irqstat = esdhc_read32(host, SDHCI_INT_STATUS);
-				esdhc_write32(host, SDHCI_BUFFER, databuf);
+				irqstat = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS);
+				sdhci_write32(&host->sdhci, SDHCI_BUFFER, databuf);
 			}
 			blocks--;
 		}
@@ -270,10 +287,10 @@ static int esdhc_setup_data(struct mci_host *mci, struct mci_data *data,
 			esdhc_clrsetbits32(host, IMX_SDHCI_WML, WML_WR_WML_MASK,
 						wml_value << 16);
 		}
-		esdhc_write32(host, SDHCI_DMA_ADDRESS, dma);
+		sdhci_write32(&host->sdhci, SDHCI_DMA_ADDRESS, dma);
 	}
 
-	esdhc_write32(host, SDHCI_BLOCK_SIZE__BLOCK_COUNT, data->blocks << 16 | data->blocksize);
+	sdhci_write32(&host->sdhci, SDHCI_BLOCK_SIZE__BLOCK_COUNT, data->blocks << 16 | data->blocksize);
 
 	return 0;
 }
@@ -287,7 +304,7 @@ static int esdhc_do_data(struct mci_host *mci, struct mci_data *data)
 		return esdhc_pio_read_write(mci, data);
 
 	do {
-		irqstat = esdhc_read32(host, SDHCI_INT_STATUS);
+		irqstat = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS);
 
 		if (irqstat & DATA_ERR)
 			return -EIO;
@@ -295,7 +312,7 @@ static int esdhc_do_data(struct mci_host *mci, struct mci_data *data)
 		if (irqstat & IRQSTAT_DTOE)
 			return -ETIMEDOUT;
 	} while (!(irqstat & IRQSTAT_TC) &&
-		(esdhc_read32(host, SDHCI_PRESENT_STATE) & PRSSTAT_DLA));
+		(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & PRSSTAT_DLA));
 
 	return 0;
 }
@@ -316,7 +333,7 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 	enum dma_data_direction dir = 0;
 	dma_addr_t dma = 0;
 
-	esdhc_write32(host, SDHCI_INT_STATUS, -1);
+	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, -1);
 
 	/* Wait at least 8 SD clock cycles before the next command */
 	udelay(1);
@@ -350,28 +367,28 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 	xfertyp = esdhc_xfertyp(host, cmd, data);
 
 	/* Send the command */
-	esdhc_write32(host, SDHCI_ARGUMENT, cmd->cmdarg);
+	sdhci_write32(&host->sdhci, SDHCI_ARGUMENT, cmd->cmdarg);
 
 	if (esdhc_is_usdhc(host)) {
 		/* write lower-half of xfertyp to mixctrl */
 		mixctrl = xfertyp & 0xFFFF;
 		/* Keep the bits 22-25 of the register as is */
-		mixctrl |= (esdhc_read32(host, IMX_SDHCI_MIXCTRL) & (0xF << 22));
-		esdhc_write32(host, IMX_SDHCI_MIXCTRL, mixctrl);
+		mixctrl |= (sdhci_read32(&host->sdhci, IMX_SDHCI_MIXCTRL) & (0xF << 22));
+		sdhci_write32(&host->sdhci, IMX_SDHCI_MIXCTRL, mixctrl);
 	}
 
-	esdhc_write32(host, SDHCI_TRANSFER_MODE__COMMAND, xfertyp);
+	sdhci_write32(&host->sdhci, SDHCI_TRANSFER_MODE__COMMAND, xfertyp);
 
 	/* Wait for the command to complete */
 	ret = wait_on_timeout(100 * MSECOND,
-			esdhc_read32(host, SDHCI_INT_STATUS) & IRQSTAT_CC);
+			sdhci_read32(&host->sdhci, SDHCI_INT_STATUS) & IRQSTAT_CC);
 	if (ret) {
 		dev_dbg(host->dev, "timeout 1\n");
 		return -ETIMEDOUT;
 	}
 
-	irqstat = esdhc_read32(host, SDHCI_INT_STATUS);
-	esdhc_write32(host, SDHCI_INT_STATUS, irqstat);
+	irqstat = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS);
+	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, irqstat);
 
 	if (irqstat & CMD_ERR)
 		return -EIO;
@@ -386,7 +403,7 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 		 * timout / 10 usec since DLA polling can be insecure.
 		 */
 		ret = wait_on_timeout(2500 * MSECOND,
-			(esdhc_read32(host, SDHCI_PRESENT_STATE) & PRSSTAT_DAT0));
+			(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & PRSSTAT_DAT0));
 
 		if (ret) {
 			dev_err(host->dev, "timeout PRSSTAT_DAT0\n");
@@ -394,20 +411,7 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 		}
 	}
 
-	/* Copy the response to the response buffer */
-	if (cmd->resp_type & MMC_RSP_136) {
-		u32 cmdrsp3, cmdrsp2, cmdrsp1, cmdrsp0;
-
-		cmdrsp3 = esdhc_read32(host, SDHCI_RESPONSE_3);
-		cmdrsp2 = esdhc_read32(host, SDHCI_RESPONSE_2);
-		cmdrsp1 = esdhc_read32(host, SDHCI_RESPONSE_1);
-		cmdrsp0 = esdhc_read32(host, SDHCI_RESPONSE_0);
-		cmd->response[0] = (cmdrsp3 << 8) | (cmdrsp2 >> 24);
-		cmd->response[1] = (cmdrsp2 << 8) | (cmdrsp1 >> 24);
-		cmd->response[2] = (cmdrsp1 << 8) | (cmdrsp0 >> 24);
-		cmd->response[3] = (cmdrsp0 << 8);
-	} else
-		cmd->response[0] = esdhc_read32(host, SDHCI_RESPONSE_0);
+	sdhci_read_response(&host->sdhci, cmd);
 
 	/* Wait until all of the blocks are transferred */
 	if (data) {
@@ -419,11 +423,11 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 			dma_unmap_single(host->dev, dma, num_bytes, dir);
 	}
 
-	esdhc_write32(host, SDHCI_INT_STATUS, -1);
+	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, -1);
 
 	/* Wait for the bus to be idle */
 	ret = wait_on_timeout(SECOND,
-			!(esdhc_read32(host, SDHCI_PRESENT_STATE) &
+			!(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) &
 				(PRSSTAT_CICHB | PRSSTAT_CIDHB)));
 	if (ret) {
 		dev_err(host->dev, "timeout 2\n");
@@ -431,7 +435,7 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 	}
 
 	ret = wait_on_timeout(100 * MSECOND,
-			!(esdhc_read32(host, SDHCI_PRESENT_STATE) & PRSSTAT_DLA));
+			!(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & PRSSTAT_DLA));
 	if (ret) {
 		dev_err(host->dev, "timeout 3\n");
 		return -ETIMEDOUT;
@@ -487,7 +491,7 @@ static void set_sysctl(struct mci_host *mci, u32 clock)
 			SYSCTL_CLOCK_MASK, clk);
 
 	wait_on_timeout(10 * MSECOND,
-			esdhc_read32(host, SDHCI_PRESENT_STATE) & PRSSTAT_SDSTB);
+			sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & PRSSTAT_SDSTB);
 
 	clk = SYSCTL_PEREN | SYSCTL_CKEN | SYSCTL_INITA;
 
@@ -495,7 +499,7 @@ static void set_sysctl(struct mci_host *mci, u32 clock)
 			clk);
 
 	wait_on_timeout(1 * MSECOND,
-			!(esdhc_read32(host, SDHCI_CLOCK_CONTROL) & SYSCTL_INITA));
+			!(sdhci_read32(&host->sdhci, SDHCI_CLOCK_CONTROL) & SYSCTL_INITA));
 }
 
 static void esdhc_set_ios(struct mci_host *mci, struct mci_ios *ios)
@@ -540,7 +544,7 @@ static int esdhc_card_present(struct mci_host *mci)
 	case ESDHC_CD_PERMANENT:
 		return 1;
 	case ESDHC_CD_CONTROLLER:
-		return !(esdhc_read32(host, SDHCI_PRESENT_STATE) & PRSSTAT_WPSPL);
+		return !(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & PRSSTAT_WPSPL);
 	case ESDHC_CD_GPIO:
 		ret = gpio_direction_input(pdata->cd_gpio);
 		if (ret)
@@ -557,24 +561,24 @@ static int esdhc_reset(struct fsl_esdhc_host *host)
 	int val;
 
 	/* reset the controller */
-	esdhc_write32(host, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
+	sdhci_write32(&host->sdhci, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
 			SYSCTL_RSTA);
 
 	/* extra register reset for i.MX6 Solo/DualLite */
 	if (esdhc_is_usdhc(host)) {
 		/* reset bit FBCLK_SEL */
-		val = esdhc_read32(host, IMX_SDHCI_MIXCTRL);
+		val = sdhci_read32(&host->sdhci, IMX_SDHCI_MIXCTRL);
 		val &= ~IMX_SDHCI_MIX_CTRL_FBCLK_SEL;
-		esdhc_write32(host, IMX_SDHCI_MIXCTRL, val);
+		sdhci_write32(&host->sdhci, IMX_SDHCI_MIXCTRL, val);
 
 		/* reset delay line settings in IMX_SDHCI_DLL_CTRL */
-		esdhc_write32(host, IMX_SDHCI_DLL_CTRL, 0x0);
+		sdhci_write32(&host->sdhci, IMX_SDHCI_DLL_CTRL, 0x0);
 	}
 
 	start = get_time_ns();
 	/* hardware clears the bit when it is done */
 	while (1) {
-		if (!(esdhc_read32(host, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET)
+		if (!(sdhci_read32(&host->sdhci, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET)
 					& SYSCTL_RSTA))
 			break;
 		if (is_timeout(start, 100 * MSECOND)) {
@@ -595,11 +599,11 @@ static int esdhc_init(struct mci_host *mci, struct device_d *dev)
 	if (ret)
 		return ret;
 
-	esdhc_write32(host, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
+	sdhci_write32(&host->sdhci, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
 			SYSCTL_HCKEN | SYSCTL_IPGEN);
 
 	/* RSTA doesn't reset MMC_BOOT register, so manually reset it */
-	esdhc_write32(host, SDHCI_MMC_BOOT, 0);
+	sdhci_write32(&host->sdhci, SDHCI_MMC_BOOT, 0);
 
 	/* Enable cache snooping */
 	if (host->socdata->flags & ESDHC_FLAG_CACHE_SNOOPING)
@@ -608,13 +612,13 @@ static int esdhc_init(struct mci_host *mci, struct device_d *dev)
 	/* Set the initial clock speed */
 	set_sysctl(mci, 400000);
 
-	esdhc_write32(host, SDHCI_INT_ENABLE, IRQSTATEN_CC | IRQSTATEN_TC |
+	sdhci_write32(&host->sdhci, SDHCI_INT_ENABLE, IRQSTATEN_CC | IRQSTATEN_TC |
 			IRQSTATEN_CINT | IRQSTATEN_CTOE | IRQSTATEN_CCE |
 			IRQSTATEN_CEBE | IRQSTATEN_CIE | IRQSTATEN_DTOE |
 			IRQSTATEN_DCE | IRQSTATEN_DEBE | IRQSTATEN_DINT);
 
 	/* Put the PROCTL reg back to the default */
-	esdhc_write32(host, SDHCI_HOST_CONTROL__POWER_CONTROL__BLOCK_GAP_CONTROL,
+	sdhci_write32(&host->sdhci, SDHCI_HOST_CONTROL__POWER_CONTROL__BLOCK_GAP_CONTROL,
 			PROCTL_INIT);
 
 	/* Set timout to the maximum value */
@@ -673,7 +677,15 @@ static int fsl_esdhc_probe(struct device_d *dev)
 	}
 	host->regs = IOMEM(iores->start);
 
-	caps = esdhc_read32(host, SDHCI_CAPABILITIES);
+	if (host->socdata->flags & ESDHC_FLAG_BIGENDIAN) {
+		host->sdhci.read32 = esdhc_op_read32_be;
+		host->sdhci.write32 = esdhc_op_write32_be;
+	} else {
+		host->sdhci.read32 = esdhc_op_read32_le;
+		host->sdhci.write32 = esdhc_op_write32_le;
+	}
+
+	caps = sdhci_read32(&host->sdhci, SDHCI_CAPABILITIES);
 
 	if (caps & ESDHC_HOSTCAPBLT_VS18)
 		mci->voltages |= MMC_VDD_165_195;
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
