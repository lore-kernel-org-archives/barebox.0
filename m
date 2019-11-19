Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX16X-0006pf-GV
 for barebox@lists.infradead.org; Tue, 19 Nov 2019 10:51:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Nov 2019 11:50:20 +0100
Message-Id: <20191119105036.12300-6-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/21] mci: tegra: use sdhci helpers
To: Barebox List <barebox@lists.infradead.org>

To use the sdhci helpers we have to switch to the sdhci accessors.
Also use sdhci_read_response().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/Kconfig       |   1 +
 drivers/mci/tegra-sdmmc.c | 122 ++++++++++++++++++++------------------
 2 files changed, 65 insertions(+), 58 deletions(-)

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 23a38721aa..7c5310deaf 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -136,6 +136,7 @@ config MCI_MMCI
 config MCI_TEGRA
 	bool "Tegra SD/MMC"
 	depends on ARCH_TEGRA
+	select MCI_SDHCI
 	help
 	  Enable this to support SD and MMC card read/write on a Tegra based
 	  systems.
diff --git a/drivers/mci/tegra-sdmmc.c b/drivers/mci/tegra-sdmmc.c
index 4c47918076..7618d831b1 100644
--- a/drivers/mci/tegra-sdmmc.c
+++ b/drivers/mci/tegra-sdmmc.c
@@ -74,9 +74,24 @@ struct tegra_sdmmc_host {
 	struct clk		*clk;
 	struct reset_control	*reset;
 	int			gpio_cd, gpio_pwr;
+	struct sdhci		sdhci;
 };
 #define to_tegra_sdmmc_host(mci) container_of(mci, struct tegra_sdmmc_host, mci)
 
+static u32 tegra_sdmmc_read32(struct sdhci *sdhci, int reg)
+{
+	struct tegra_sdmmc_host *host = container_of(sdhci, struct tegra_sdmmc_host, sdhci);
+
+	return readl(host->regs + reg);
+}
+
+static void tegra_sdmmc_write32(struct sdhci *sdhci, int reg, u32 val)
+{
+	struct tegra_sdmmc_host *host = container_of(sdhci, struct tegra_sdmmc_host, sdhci);
+
+	writel(val, host->regs + reg);
+}
+
 static int tegra_sdmmc_wait_inhibit(struct tegra_sdmmc_host *host,
 				    struct mci_cmd *cmd, struct mci_data *data,
 				    unsigned int timeout)
@@ -91,7 +106,7 @@ static int tegra_sdmmc_wait_inhibit(struct tegra_sdmmc_host *host,
 		val |= TEGRA_SDMMC_PRESENT_STATE_CMD_INHIBIT_DAT;
 
 	wait_on_timeout(timeout * MSECOND,
-	                !(readl(host->regs + TEGRA_SDMMC_PRESENT_STATE) & val));
+	                !(sdhci_read32(&host->sdhci, TEGRA_SDMMC_PRESENT_STATE) & val));
 
 	return 0;
 }
@@ -115,18 +130,18 @@ static int tegra_sdmmc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 		if (data->flags & MMC_DATA_WRITE) {
 			dma_sync_single_for_device((unsigned long)data->src,
 						   num_bytes, DMA_TO_DEVICE);
-			writel((u32)data->src, host->regs + SDHCI_DMA_ADDRESS);
+			sdhci_write32(&host->sdhci, SDHCI_DMA_ADDRESS, (u32)data->src);
 		} else {
 			dma_sync_single_for_device((unsigned long)data->dest,
 						   num_bytes, DMA_FROM_DEVICE);
-			writel((u32)data->dest, host->regs + SDHCI_DMA_ADDRESS);
+			sdhci_write32(&host->sdhci, SDHCI_DMA_ADDRESS, (u32)data->dest);
 		}
 
-		writel((7 << 12) | data->blocks << 16 | data->blocksize,
-		       host->regs + SDHCI_BLOCK_SIZE__BLOCK_COUNT);
+		sdhci_write32(&host->sdhci, SDHCI_BLOCK_SIZE__BLOCK_COUNT,
+			      (7 << 12) | data->blocks << 16 | data->blocksize);
 	}
 
-	writel(cmd->cmdarg, host->regs + SDHCI_ARGUMENT);
+	sdhci_write32(&host->sdhci, SDHCI_ARGUMENT, cmd->cmdarg);
 
 	if ((cmd->resp_type & MMC_RSP_136) && (cmd->resp_type & MMC_RSP_BUSY))
 		return -1;
@@ -158,59 +173,48 @@ static int tegra_sdmmc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	if (data)
 		val |= COMMAND_DPSEL;
 
-	writel(COMMAND_CMD(cmd->cmdidx) | val,
-		host->regs + SDHCI_TRANSFER_MODE__COMMAND);
+	sdhci_write32(&host->sdhci, SDHCI_TRANSFER_MODE__COMMAND,
+		      COMMAND_CMD(cmd->cmdidx) | val);
 
 	ret = wait_on_timeout(100 * MSECOND,
-			(val = readl(host->regs + SDHCI_INT_STATUS))
+			(val = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS))
 			& IRQSTAT_CC);
 
 	if (ret) {
-		writel(val, host->regs + SDHCI_INT_STATUS);
+		sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, val);
 		return ret;
 	}
 
 	if ((val & IRQSTAT_CC) && !data)
-		writel(val, host->regs + SDHCI_INT_STATUS);
+		sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, val);
 
 	if (val & TEGRA_SDMMC_INTERRUPT_STATUS_CMD_TIMEOUT) {
 		/* Timeout Error */
 		dev_dbg(mci->hw_dev, "timeout: %08x cmd %d\n", val, cmd->cmdidx);
-		writel(val, host->regs + SDHCI_INT_STATUS);
+		sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, val);
 		return -ETIMEDOUT;
 	} else if (val & TEGRA_SDMMC_INTERRUPT_STATUS_ERR_INTERRUPT) {
 		/* Error Interrupt */
 		dev_dbg(mci->hw_dev, "error: %08x cmd %d\n", val, cmd->cmdidx);
-		writel(val, host->regs + SDHCI_INT_STATUS);
+		sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, val);
 		return -EIO;
 	}
 
 	if (cmd->resp_type & MMC_RSP_PRESENT) {
-		if (cmd->resp_type & MMC_RSP_136) {
-			u32 cmdrsp[4];
-
-			cmdrsp[3] = readl(host->regs + SDHCI_RESPONSE_3);
-			cmdrsp[2] = readl(host->regs + SDHCI_RESPONSE_2);
-			cmdrsp[1] = readl(host->regs + SDHCI_RESPONSE_1);
-			cmdrsp[0] = readl(host->regs + SDHCI_RESPONSE_0);
-			cmd->response[0] = (cmdrsp[3] << 8) | (cmdrsp[2] >> 24);
-			cmd->response[1] = (cmdrsp[2] << 8) | (cmdrsp[1] >> 24);
-			cmd->response[2] = (cmdrsp[1] << 8) | (cmdrsp[0] >> 24);
-			cmd->response[3] = (cmdrsp[0] << 8);
-		} else if (cmd->resp_type & MMC_RSP_BUSY) {
+		sdhci_read_response(&host->sdhci, cmd);
+
+		if (cmd->resp_type & MMC_RSP_BUSY) {
 			ret = wait_on_timeout(100 * MSECOND,
-				readl(host->regs + TEGRA_SDMMC_PRESENT_STATE)
+				sdhci_read32(&host->sdhci, TEGRA_SDMMC_PRESENT_STATE)
 				& (1 << 20));
 
 			if (ret) {
 				dev_err(mci->hw_dev, "card is still busy\n");
-				writel(val, host->regs + SDHCI_INT_STATUS);
+				sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, val);
 				return ret;
 			}
 
-			cmd->response[0] = readl(host->regs + SDHCI_RESPONSE_0);
-		} else {
-			cmd->response[0] = readl(host->regs + SDHCI_RESPONSE_0);
+			cmd->response[0] = sdhci_read32(&host->sdhci, SDHCI_RESPONSE_0);
 		}
 	}
 
@@ -218,11 +222,11 @@ static int tegra_sdmmc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 		uint64_t start = get_time_ns();
 
 		while (1) {
-			val = readl(host->regs + SDHCI_INT_STATUS);
+			val = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS);
 
 			if (val & TEGRA_SDMMC_INTERRUPT_STATUS_ERR_INTERRUPT) {
 				/* Error Interrupt */
-				writel(val, host->regs + SDHCI_INT_STATUS);
+				sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, val);
 				dev_err(mci->hw_dev,
 					"error during transfer: 0x%08x\n", val);
 				return -EIO;
@@ -234,27 +238,26 @@ static int tegra_sdmmc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 				u32 address = readl(host->regs +
 						    SDHCI_DMA_ADDRESS);
 
-				writel(IRQSTAT_DINT,
-				       host->regs + SDHCI_INT_STATUS);
-				writel(address, host->regs + SDHCI_DMA_ADDRESS);
+				sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, IRQSTAT_DINT);
+				sdhci_write32(&host->sdhci, SDHCI_DMA_ADDRESS, address);
 			} else if (val & IRQSTAT_TC) {
 				/* Transfer Complete */;
 				break;
 			} else if (is_timeout(start, 2 * SECOND)) {
-				writel(val, host->regs + SDHCI_INT_STATUS);
+				sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, val);
 				dev_err(mci->hw_dev, "MMC Timeout\n"
 					"    Interrupt status        0x%08x\n"
 					"    Interrupt status enable 0x%08x\n"
 					"    Interrupt signal enable 0x%08x\n"
 					"    Present status          0x%08x\n",
 					val,
-					readl(host->regs + SDHCI_INT_ENABLE),
-					readl(host->regs + SDHCI_SIGNAL_ENABLE),
-					readl(host->regs + SDHCI_PRESENT_STATE));
+					sdhci_read32(&host->sdhci, SDHCI_INT_ENABLE),
+					sdhci_read32(&host->sdhci, SDHCI_SIGNAL_ENABLE),
+					sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE));
 				return -ETIMEDOUT;
 			}
 		}
-		writel(val, host->regs + SDHCI_INT_STATUS);
+		sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, val);
 
 		if (data->flags & MMC_DATA_WRITE)
 			dma_sync_single_for_cpu((unsigned long)data->src,
@@ -277,25 +280,25 @@ static void tegra_sdmmc_set_clock(struct tegra_sdmmc_host *host, u32 clock)
 	}
 
 	/* clear clock related bits */
-	val = readl(host->regs + TEGRA_SDMMC_CLK_CNTL);
+	val = sdhci_read32(&host->sdhci, TEGRA_SDMMC_CLK_CNTL);
 	val &= 0xffff0000;
-	writel(val, host->regs + TEGRA_SDMMC_CLK_CNTL);
+	sdhci_write32(&host->sdhci, TEGRA_SDMMC_CLK_CNTL, val);
 
 	/* set new frequency */
 	val |= prediv << 8;
 	val |= TEGRA_SDMMC_CLK_CNTL_INTERNAL_CLOCK_EN;
-	writel(val, host->regs + TEGRA_SDMMC_CLK_CNTL);
+	sdhci_write32(&host->sdhci, TEGRA_SDMMC_CLK_CNTL, val);
 
 	clk_set_rate(host->clk, adjusted_clock);
 
 	/* wait for controller to settle */
 	wait_on_timeout(10 * MSECOND,
-			!(readl(host->regs + TEGRA_SDMMC_CLK_CNTL) &
+			!(sdhci_read32(&host->sdhci, TEGRA_SDMMC_CLK_CNTL) &
 			  TEGRA_SDMMC_CLK_INTERNAL_CLOCK_STABLE));
 
 	/* enable card clock */
 	val |= TEGRA_SDMMC_CLK_CNTL_SD_CLOCK_EN;
-	writel(val, host->regs + TEGRA_SDMMC_CLK_CNTL);
+	sdhci_write32(&host->sdhci, TEGRA_SDMMC_CLK_CNTL, val);
 }
 
 static void tegra_sdmmc_set_ios(struct mci_host *mci, struct mci_ios *ios)
@@ -308,7 +311,7 @@ static void tegra_sdmmc_set_ios(struct mci_host *mci, struct mci_ios *ios)
 		tegra_sdmmc_set_clock(host, ios->clock);
 
 	/* set bus width */
-	val = readl(host->regs + TEGRA_SDMMC_PWR_CNTL);
+	val = sdhci_read32(&host->sdhci, TEGRA_SDMMC_PWR_CNTL);
 	val &= ~(0x21);
 
 	if (ios->bus_width == MMC_BUS_WIDTH_8)
@@ -316,7 +319,7 @@ static void tegra_sdmmc_set_ios(struct mci_host *mci, struct mci_ios *ios)
 	else if (ios->bus_width == MMC_BUS_WIDTH_4)
 		val |= (1 << 1);
 
-	writel(val, host->regs + TEGRA_SDMMC_PWR_CNTL);
+	sdhci_write32(&host->sdhci, TEGRA_SDMMC_PWR_CNTL, val);
 }
 
 static int tegra_sdmmc_init(struct mci_host *mci, struct device_d *dev)
@@ -327,8 +330,8 @@ static int tegra_sdmmc_init(struct mci_host *mci, struct device_d *dev)
 	int ret;
 
 	/* reset controller */
-	writel(TEGRA_SDMMC_CLK_CNTL_SW_RESET_FOR_ALL,
-		regs + TEGRA_SDMMC_CLK_CNTL);
+	sdhci_write32(&host->sdhci, TEGRA_SDMMC_CLK_CNTL,
+		      TEGRA_SDMMC_CLK_CNTL_SW_RESET_FOR_ALL);
 
 	ret = wait_on_timeout(100 * MSECOND,
 			!(readl(regs + TEGRA_SDMMC_CLK_CNTL) &
@@ -342,7 +345,7 @@ static int tegra_sdmmc_init(struct mci_host *mci, struct device_d *dev)
 	val = readl(regs + TEGRA_SDMMC_PWR_CNTL);
 	val &= ~(0xff << 8);
 	val |= TEGRA_SDMMC_PWR_CNTL_33_V | TEGRA_SDMMC_PWR_CNTL_SD_BUS;
-	writel(val, regs + TEGRA_SDMMC_PWR_CNTL);
+	sdhci_write32(&host->sdhci, TEGRA_SDMMC_PWR_CNTL, val);
 
 	/* sdmmc1 and sdmmc3 on T30 need a bit of padctrl init */
 	if (of_device_is_compatible(mci->hw_dev->device_node,
@@ -351,21 +354,21 @@ static int tegra_sdmmc_init(struct mci_host *mci, struct device_d *dev)
 		val = readl(regs + TEGRA_SDMMC_SDMEMCOMPPADCTRL);
 		val &= 0xfffffff0;
 		val |= 0x7 << TEGRA_SDMMC_SDMEMCOMPPADCTRL_VREF_SEL_SHIFT;
-		writel(val, regs + TEGRA_SDMMC_SDMEMCOMPPADCTRL);
+		sdhci_write32(&host->sdhci, TEGRA_SDMMC_SDMEMCOMPPADCTRL, val);
 
 		val = readl(regs + TEGRA_SDMMC_AUTO_CAL_CONFIG);
 		val &= 0xffff0000;
 		val |= (0x62 << TEGRA_SDMMC_AUTO_CAL_CONFIG_PU_OFFSET_SHIFT) |
 		       (0x70 << TEGRA_SDMMC_AUTO_CAL_CONFIG_PD_OFFSET_SHIFT) |
 		       TEGRA_SDMMC_AUTO_CAL_CONFIG_ENABLE;
-		writel(val, regs + TEGRA_SDMMC_AUTO_CAL_CONFIG);
+		sdhci_write32(&host->sdhci, TEGRA_SDMMC_AUTO_CAL_CONFIG, val);
 	}
 
 	/* setup signaling */
-	writel(0xffffffff, regs + TEGRA_SDMMC_INT_STAT_EN);
-	writel(0xffffffff, regs + TEGRA_SDMMC_INT_SIG_EN);
+	sdhci_write32(&host->sdhci, TEGRA_SDMMC_INT_STAT_EN, 0xffffffff);
+	sdhci_write32(&host->sdhci, TEGRA_SDMMC_INT_SIG_EN, 0xffffffff);
 
-	writel(0xe << 16, regs + TEGRA_SDMMC_CLK_CNTL);
+	sdhci_write32(&host->sdhci, TEGRA_SDMMC_CLK_CNTL, 0xe << 16);
 
 	val = readl(regs + TEGRA_SDMMC_INT_STAT_EN);
 	val &= ~(0xffff);
@@ -374,12 +377,12 @@ static int tegra_sdmmc_init(struct mci_host *mci, struct device_d *dev)
 		TEGRA_SDMMC_INT_STAT_EN_DMA_INTERRUPT |
 		TEGRA_SDMMC_INT_STAT_EN_BUFFER_WRITE_READY |
 		TEGRA_SDMMC_INT_STAT_EN_BUFFER_READ_READY);
-	writel(val, regs + TEGRA_SDMMC_INT_STAT_EN);
+	sdhci_write32(&host->sdhci, TEGRA_SDMMC_INT_STAT_EN, val);
 
 	val = readl(regs + TEGRA_SDMMC_INT_SIG_EN);
 	val &= ~(0xffff);
 	val |= TEGRA_SDMMC_INT_SIG_EN_XFER_COMPLETE;
-	writel(val, regs + TEGRA_SDMMC_INT_SIG_EN);
+	sdhci_write32(&host->sdhci, TEGRA_SDMMC_INT_SIG_EN, val);
 
 	tegra_sdmmc_set_clock(host, 400000);
 
@@ -398,7 +401,7 @@ static int tegra_sdmmc_card_present(struct mci_host *mci)
 		return gpio_get_value(host->gpio_cd) ? 0 : 1;
 	}
 
-	return !(readl(host->regs + SDHCI_PRESENT_STATE) & PRSSTAT_WPSPL);
+	return !(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & PRSSTAT_WPSPL);
 }
 
 static int tegra_sdmmc_detect(struct device_d *dev)
@@ -442,6 +445,9 @@ static int tegra_sdmmc_probe(struct device_d *dev)
 	}
 	host->regs = IOMEM(iores->start);
 
+	host->sdhci.read32 = tegra_sdmmc_read32;
+	host->sdhci.write32 = tegra_sdmmc_write32;
+
 	mci->hw_dev = dev;
 	mci->f_max = 48000000;
 	mci->f_min = 375000;
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
