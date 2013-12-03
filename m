Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vnw2p-00074v-Uw
 for barebox@lists.infradead.org; Tue, 03 Dec 2013 19:54:12 +0000
Received: from tellur.localdomain (p54831992.dip0.t-ipconnect.de
 [84.131.25.146]) by lynxeye.de (Postfix) with ESMTPA id D7F8818B4268
 for <barebox@lists.infradead.org>; Tue,  3 Dec 2013 20:52:22 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  3 Dec 2013 20:57:00 +0100
Message-Id: <1386100622-8498-8-git-send-email-dev@lynxeye.de>
In-Reply-To: <1386100622-8498-1-git-send-email-dev@lynxeye.de>
References: <1386100622-8498-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 6/8] tegra: add SDMMC controller driver
To: barebox@lists.infradead.org

Confirmed working on Tegra 2, may need some small adjustments for
Tegra 3.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/mci/Kconfig       |   7 +
 drivers/mci/Makefile      |   1 +
 drivers/mci/tegra-sdmmc.c | 465 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 473 insertions(+)
 create mode 100644 drivers/mci/tegra-sdmmc.c

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index bd85424..3c86483 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -107,6 +107,13 @@ config MCI_MMCI
 	  Enable this entry to add support to read and write SD cards on a
 	  ARM AMBA PL180.
 
+config MCI_TEGRA
+	bool "Tegra SD/MMC"
+	depends on ARCH_TEGRA
+	help
+	  Enable this to support SD and MMC card read/write on a Tegra based
+	  systems.
+
 config MCI_SPI
 	bool "MMC/SD over SPI"
 	select CRC7
diff --git a/drivers/mci/Makefile b/drivers/mci/Makefile
index 421ca9f..1e8443c 100644
--- a/drivers/mci/Makefile
+++ b/drivers/mci/Makefile
@@ -7,6 +7,7 @@ obj-$(CONFIG_MCI_MXS)		+= mxs.o
 obj-$(CONFIG_MCI_OMAP_HSMMC)	+= omap_hsmmc.o
 obj-$(CONFIG_MCI_PXA)		+= pxamci.o
 obj-$(CONFIG_MCI_S3C)		+= s3c.o
+obj-$(CONFIG_MCI_TEGRA)		+= tegra-sdmmc.o
 obj-$(CONFIG_MCI_SPI)		+= mci_spi.o
 obj-$(CONFIG_MCI_DW)		+= dw_mmc.o
 obj-$(CONFIG_MCI_MMCI)		+= mmci.o
diff --git a/drivers/mci/tegra-sdmmc.c b/drivers/mci/tegra-sdmmc.c
new file mode 100644
index 0000000..7f4fa87
--- /dev/null
+++ b/drivers/mci/tegra-sdmmc.c
@@ -0,0 +1,465 @@
+/*
+ * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
+ *
+ * Partly based on code (C) Copyright 2010-2013
+ * NVIDIA Corporation <www.nvidia.com>
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#include <asm/mmu.h>
+#include <common.h>
+#include <clock.h>
+#include <driver.h>
+#include <gpio.h>
+#include <init.h>
+#include <io.h>
+#include <malloc.h>
+#include <mci.h>
+#include <of_gpio.h>
+#include <linux/clk.h>
+
+#include "sdhci.h"
+
+#define TEGRA_SDMMC_PRESENT_STATE			0x024
+#define  TEGRA_SDMMC_PRESENT_STATE_CMD_INHIBIT_CMD	(1 << 0)
+#define  TEGRA_SDMMC_PRESENT_STATE_CMD_INHIBIT_DAT	(1 << 1)
+
+#define TEGRA_SDMMC_PWR_CNTL				0x028
+#define  TEGRA_SDMMC_PWR_CNTL_SD_BUS			(1 << 8)
+#define  TEGRA_SDMMC_PWR_CNTL_33_V			(7 << 9)
+
+#define TEGRA_SDMMC_CLK_CNTL				0x02c
+#define  TEGRA_SDMMC_CLK_CNTL_SW_RESET_FOR_ALL		(1 << 24)
+#define  TEGRA_SDMMC_CLK_CNTL_SD_CLOCK_EN		(1 << 2)
+#define  TEGRA_SDMMC_CLK_INTERNAL_CLOCK_STABLE		(1 << 1)
+#define  TEGRA_SDMMC_CLK_CNTL_INTERNAL_CLOCK_EN		(1 << 0)
+
+#define  TEGRA_SDMMC_INTERRUPT_STATUS_ERR_INTERRUPT	(1 << 15)
+#define  TEGRA_SDMMC_INTERRUPT_STATUS_CMD_TIMEOUT	(1 << 16)
+
+#define TEGRA_SDMMC_INT_STAT_EN				0x034
+#define  TEGRA_SDMMC_INT_STAT_EN_CMD_COMPLETE		(1 << 0)
+#define  TEGRA_SDMMC_INT_STAT_EN_XFER_COMPLETE		(1 << 1)
+#define  TEGRA_SDMMC_INT_STAT_EN_DMA_INTERRUPT		(1 << 3)
+#define  TEGRA_SDMMC_INT_STAT_EN_BUFFER_WRITE_READY	(1 << 4)
+#define  TEGRA_SDMMC_INT_STAT_EN_BUFFER_READ_READY	(1 << 5)
+
+#define TEGRA_SDMMC_INT_SIG_EN				0x038
+#define  TEGRA_SDMMC_INT_SIG_EN_XFER_COMPLETE		(1 << 1)
+
+struct tegra_sdmmc_host {
+	struct mci_host		mci;
+	void __iomem		*regs;
+	struct clk		*clk;
+	int			gpio_cd, gpio_pwr;
+};
+#define to_tegra_sdmmc_host(mci) container_of(mci, struct tegra_sdmmc_host, mci)
+
+static int tegra_sdmmc_wait_inhibit(struct tegra_sdmmc_host *host,
+				    struct mci_cmd *cmd, struct mci_data *data,
+				    unsigned int timeout)
+{
+	u32 val = TEGRA_SDMMC_PRESENT_STATE_CMD_INHIBIT_CMD;
+
+	/*
+	 * We shouldn't wait for data inhibit for stop commands, even
+	 * though they might use busy signaling
+	 */
+	if ((data == NULL) && (cmd->resp_type & MMC_RSP_BUSY))
+		val |= TEGRA_SDMMC_PRESENT_STATE_CMD_INHIBIT_DAT;
+
+	wait_on_timeout(timeout * MSECOND,
+	                !(readl(host->regs + TEGRA_SDMMC_PRESENT_STATE) & val));
+
+	return 0;
+}
+
+static int tegra_sdmmc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
+				struct mci_data *data)
+{
+	struct tegra_sdmmc_host *host = to_tegra_sdmmc_host(mci);
+	u32 val = 0;
+	int ret;
+
+	ret = tegra_sdmmc_wait_inhibit(host, cmd, data, 10);
+	if (ret < 0)
+		return ret;
+
+	/* Set up for a data transfer if we have one */
+	if (data) {
+		if (data->flags & MMC_DATA_WRITE) {
+			dma_flush_range((unsigned long)data->src,
+			                (unsigned long)(data->src +
+			                data->blocks * 512));
+			writel((u32)data->src, host->regs + SDHCI_DMA_ADDRESS);
+		} else {
+			dma_clean_range((unsigned long)data->src,
+			                (unsigned long)(data->src +
+			                data->blocks * 512));
+			writel((u32)data->dest, host->regs + SDHCI_DMA_ADDRESS);
+		}
+
+		writel((7 << 12) | data->blocks << 16 | data->blocksize,
+		       host->regs + SDHCI_BLOCK_SIZE__BLOCK_COUNT);
+	}
+
+	writel(cmd->cmdarg, host->regs + SDHCI_ARGUMENT);
+
+	if ((cmd->resp_type & MMC_RSP_136) && (cmd->resp_type & MMC_RSP_BUSY))
+		return -1;
+
+	if (data) {
+		if (data->blocks > 1)
+			val |= TRANSFER_MODE_MSBSEL;
+
+		if (data->flags & MMC_DATA_READ)
+			val |= TRANSFER_MODE_DTDSEL;
+
+		val |= TRANSFER_MODE_DMAEN | TRANSFER_MODE_BCEN;
+	}
+
+	if (!(cmd->resp_type & MMC_RSP_PRESENT))
+		val |= COMMAND_RSPTYP_NONE;
+	else if (cmd->resp_type & MMC_RSP_136)
+		val |= COMMAND_RSPTYP_136;
+	else if (cmd->resp_type & MMC_RSP_BUSY)
+		val |= COMMAND_RSPTYP_48_BUSY;
+	else
+		val |= COMMAND_RSPTYP_48;
+
+	if (cmd->resp_type & MMC_RSP_CRC)
+		val |= COMMAND_CCCEN;
+	if (cmd->resp_type & MMC_RSP_OPCODE)
+		val |= COMMAND_CICEN;
+
+	if (data)
+		val |= COMMAND_DPSEL;
+
+	writel(COMMAND_CMD(cmd->cmdidx) | val,
+		host->regs + SDHCI_TRANSFER_MODE__COMMAND);
+
+	ret = wait_on_timeout(100 * MSECOND,
+			(val = readl(host->regs + SDHCI_INT_STATUS))
+			& IRQSTAT_CC);
+
+	if (ret) {
+		writel(val, host->regs + SDHCI_INT_STATUS);
+		return ret;
+	}
+
+	if ((val & IRQSTAT_CC) && !data)
+		writel(val, host->regs + SDHCI_INT_STATUS);
+
+
+	if (val & TEGRA_SDMMC_INTERRUPT_STATUS_CMD_TIMEOUT) {
+		/* Timeout Error */
+		pr_debug("timeout: %08x cmd %d\n", val, cmd->cmdidx);
+		writel(val, host->regs + SDHCI_INT_STATUS);
+		return -ETIMEDOUT;
+	} else if (val & TEGRA_SDMMC_INTERRUPT_STATUS_ERR_INTERRUPT) {
+		/* Error Interrupt */
+		pr_debug("error: %08x cmd %d\n", val, cmd->cmdidx);
+		writel(val, host->regs + SDHCI_INT_STATUS);
+		return -1;
+	}
+
+	if (cmd->resp_type & MMC_RSP_PRESENT) {
+		if (cmd->resp_type & MMC_RSP_136) {
+			u32 cmdrsp[4];
+
+			cmdrsp[3] = readl(host->regs + SDHCI_RESPONSE_3);
+			cmdrsp[2] = readl(host->regs + SDHCI_RESPONSE_2);
+			cmdrsp[1] = readl(host->regs + SDHCI_RESPONSE_1);
+			cmdrsp[0] = readl(host->regs + SDHCI_RESPONSE_0);
+			cmd->response[0] = (cmdrsp[3] << 8) | (cmdrsp[2] >> 24);
+			cmd->response[1] = (cmdrsp[2] << 8) | (cmdrsp[1] >> 24);
+			cmd->response[2] = (cmdrsp[1] << 8) | (cmdrsp[0] >> 24);
+			cmd->response[3] = (cmdrsp[0] << 8);
+		} else if (cmd->resp_type & MMC_RSP_BUSY) {
+			ret = wait_on_timeout(100 * MSECOND,
+				readl(host->regs + TEGRA_SDMMC_PRESENT_STATE)
+				& (1 << 20));
+
+			if (ret) {
+				pr_err("ard is still busy\n");
+				writel(val, host->regs + SDHCI_INT_STATUS);
+				return ret;
+			}
+
+			cmd->response[0] = readl(host->regs + SDHCI_RESPONSE_0);
+		} else {
+			cmd->response[0] = readl(host->regs + SDHCI_RESPONSE_0);
+		}
+	}
+
+	if (data) {
+		uint64_t start = get_time_ns();
+
+		while (1) {
+			val = readl(host->regs + SDHCI_INT_STATUS);
+
+			if (val & TEGRA_SDMMC_INTERRUPT_STATUS_ERR_INTERRUPT) {
+				/* Error Interrupt */
+				writel(val, host->regs + SDHCI_INT_STATUS);
+				dev_err(mci->hw_dev,
+					"error during transfer: 0x%08x\n", val);
+				return -1;
+			} else if (val & IRQSTAT_DINT) {
+				/*
+				 * DMA Interrupt, restart the transfer where
+				 * it was interrupted.
+				 */
+				u32 address = readl(host->regs +
+						    SDHCI_DMA_ADDRESS);
+
+				writel(IRQSTAT_DINT,
+				       host->regs + SDHCI_INT_STATUS);
+				writel(address, host->regs + SDHCI_DMA_ADDRESS);
+			} else if (val & IRQSTAT_TC) {
+				/* Transfer Complete */;
+				break;
+			} else if (is_timeout(start, 2 * SECOND)) {
+				writel(val, host->regs + SDHCI_INT_STATUS);
+				dev_err(mci->hw_dev, "MMC Timeout\n"
+					"    Interrupt status        0x%08x\n"
+					"    Interrupt status enable 0x%08x\n"
+					"    Interrupt signal enable 0x%08x\n"
+					"    Present status          0x%08x\n",
+					val,
+					readl(host->regs + SDHCI_INT_ENABLE),
+					readl(host->regs + SDHCI_SIGNAL_ENABLE),
+					readl(host->regs + SDHCI_PRESENT_STATE));
+				return -1;
+			}
+		}
+		writel(val, host->regs + SDHCI_INT_STATUS);
+
+		if (data->flags & MMC_DATA_READ) {
+			dma_inv_range((unsigned long)data->dest,
+			              (unsigned long)(data->dest +
+			              data->blocks * 512));
+		}
+	}
+
+	return 0;
+}
+
+static void tegra_sdmmc_set_clock(struct tegra_sdmmc_host *host, u32 clock)
+{
+	u32 prediv = 1, adjusted_clock = clock, val;
+
+	while (adjusted_clock < 3200000) {
+		prediv *= 2;
+		adjusted_clock = clock * prediv * 2;
+	}
+
+	/* clear clock related bits */
+	val = readl(host->regs + TEGRA_SDMMC_CLK_CNTL);
+	val &= 0xffff0000;
+	writel(val, host->regs + TEGRA_SDMMC_CLK_CNTL);
+
+	/* set new frequency */
+	val |= prediv << 8;
+	val |= TEGRA_SDMMC_CLK_CNTL_INTERNAL_CLOCK_EN;
+	writel(val, host->regs + TEGRA_SDMMC_CLK_CNTL);
+
+	clk_set_rate(host->clk, adjusted_clock);
+
+	/* wait for controller to settle */
+	wait_on_timeout(10 * MSECOND,
+			!(readl(host->regs + TEGRA_SDMMC_CLK_CNTL) &
+			  TEGRA_SDMMC_CLK_INTERNAL_CLOCK_STABLE));
+
+	/* enable card clock */
+	val |= TEGRA_SDMMC_CLK_CNTL_SD_CLOCK_EN;
+	writel(val, host->regs + TEGRA_SDMMC_CLK_CNTL);
+}
+
+static void tegra_sdmmc_set_ios(struct mci_host *mci, struct mci_ios *ios)
+{
+	struct tegra_sdmmc_host *host = to_tegra_sdmmc_host(mci);
+	u32 val;
+
+	/* set clock */
+	if (ios->clock)
+		tegra_sdmmc_set_clock(host, ios->clock);
+
+	/* set bus width */
+	val = readl(host->regs + TEGRA_SDMMC_PWR_CNTL);
+	val &= ~(0x21);
+
+	if (ios->bus_width == MMC_BUS_WIDTH_8)
+		val |= (1 << 5);
+	else if (ios->bus_width == MMC_BUS_WIDTH_4)
+		val |= (1 << 1);
+
+	writel(val, host->regs + TEGRA_SDMMC_PWR_CNTL);
+}
+
+static int tegra_sdmmc_init(struct mci_host *mci, struct device_d *dev)
+{
+	struct tegra_sdmmc_host *host = to_tegra_sdmmc_host(mci);
+	void __iomem *regs = host->regs;
+	u32 val;
+	int ret;
+
+	/* reset controller */
+	writel(TEGRA_SDMMC_CLK_CNTL_SW_RESET_FOR_ALL,
+		regs + TEGRA_SDMMC_CLK_CNTL);
+
+	ret = wait_on_timeout(100 * MSECOND,
+			!(readl(regs + TEGRA_SDMMC_CLK_CNTL) &
+			 TEGRA_SDMMC_CLK_CNTL_SW_RESET_FOR_ALL));
+	if (ret) {
+		dev_err(dev, "timeout while reset\n");
+		return ret;
+	}
+
+	/* set power */
+	val = readl(regs + TEGRA_SDMMC_PWR_CNTL);
+	val &= ~(0xff << 8);
+	val |= TEGRA_SDMMC_PWR_CNTL_33_V | TEGRA_SDMMC_PWR_CNTL_SD_BUS;
+	writel(val, regs + TEGRA_SDMMC_PWR_CNTL);
+
+	/* setup signaling */
+	writel(0xffffffff, regs + TEGRA_SDMMC_INT_STAT_EN);
+	writel(0xffffffff, regs + TEGRA_SDMMC_INT_SIG_EN);
+
+	writel(0xe << 16, regs + TEGRA_SDMMC_CLK_CNTL);
+
+	val = readl(regs + TEGRA_SDMMC_INT_STAT_EN);
+	val &= ~(0xffff);
+	val = (TEGRA_SDMMC_INT_STAT_EN_CMD_COMPLETE |
+		TEGRA_SDMMC_INT_STAT_EN_XFER_COMPLETE |
+		TEGRA_SDMMC_INT_STAT_EN_DMA_INTERRUPT |
+		TEGRA_SDMMC_INT_STAT_EN_BUFFER_WRITE_READY |
+		TEGRA_SDMMC_INT_STAT_EN_BUFFER_READ_READY);
+	writel(val, regs + TEGRA_SDMMC_INT_STAT_EN);
+
+	val = readl(regs + TEGRA_SDMMC_INT_SIG_EN);
+	val &= ~(0xffff);
+	val = TEGRA_SDMMC_INT_SIG_EN_XFER_COMPLETE;
+	writel(val, regs + TEGRA_SDMMC_INT_SIG_EN);
+
+	tegra_sdmmc_set_clock(host, 400000);
+
+	return 0;
+}
+
+static int tegra_sdmmc_card_present(struct mci_host *mci)
+{
+	struct tegra_sdmmc_host *host = to_tegra_sdmmc_host(mci);
+	int ret;
+
+	if (gpio_is_valid(host->gpio_cd)) {
+		ret = gpio_direction_input(host->gpio_cd);
+		if (ret)
+			return 0;
+		return gpio_get_value(host->gpio_cd) ? 0 : 1;
+	}
+
+	return !(readl(host->regs + SDHCI_PRESENT_STATE) & PRSSTAT_WPSPL);
+}
+
+static int tegra_sdmmc_detect(struct device_d *dev)
+{
+	struct tegra_sdmmc_host *host = dev->priv;
+
+	return mci_detect_card(&host->mci);
+}
+
+static void tegra_sdmmc_parse_dt(struct tegra_sdmmc_host *host)
+{
+	struct device_node *np = host->mci.hw_dev->device_node;
+
+	host->gpio_cd = of_get_named_gpio(np, "cd-gpios", 0);
+	host->gpio_pwr = of_get_named_gpio(np, "power-gpios", 0);
+	mci_of_parse(&host->mci);
+}
+
+static int tegra_sdmmc_probe(struct device_d *dev)
+{
+	struct tegra_sdmmc_host *host;
+	struct mci_host *mci;
+	int ret;
+
+	host = xzalloc(sizeof(*host));
+	mci = &host->mci;
+
+	host->clk = clk_get(dev, NULL);
+	if (IS_ERR(host->clk))
+		return PTR_ERR(host->clk);
+
+	host->regs = dev_request_mem_region(dev, 0);
+	if (!host->regs) {
+		dev_err(dev, "could not get iomem region\n");
+		return -ENODEV;
+	}
+
+	mci->hw_dev = dev;
+	mci->f_max = 48000000;
+	mci->f_min = 375000;
+	tegra_sdmmc_parse_dt(host);
+
+	if (gpio_is_valid(host->gpio_pwr)) {
+		ret = gpio_request(host->gpio_pwr, "tegra_sdmmc_power");
+		if (ret) {
+			dev_err(dev, "failed to allocate power gpio\n");
+			return -ENODEV;
+		}
+		gpio_direction_output(host->gpio_pwr, 1);
+	}
+
+	if (gpio_is_valid(host->gpio_cd)) {
+		ret = gpio_request(host->gpio_cd, "tegra_sdmmc_cd");
+		if (ret) {
+			dev_err(dev, "failed to allocate cd gpio\n");
+			return -ENODEV;
+		}
+		gpio_direction_input(host->gpio_cd);
+	}
+
+	clk_enable(host->clk);
+
+	mci->init = tegra_sdmmc_init;
+	mci->card_present = tegra_sdmmc_card_present;
+	mci->set_ios = tegra_sdmmc_set_ios;
+	mci->send_cmd = tegra_sdmmc_send_cmd;
+	mci->voltages = MMC_VDD_32_33 | MMC_VDD_33_34 | MMC_VDD_165_195;
+	mci->host_caps |= MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA |
+	                  MMC_CAP_MMC_HIGHSPEED | MMC_CAP_MMC_HIGHSPEED_52MHZ |
+	                  MMC_CAP_SD_HIGHSPEED;
+
+	dev->priv = host;
+	dev->detect = tegra_sdmmc_detect;
+
+	return mci_register(&host->mci);
+}
+
+static __maybe_unused struct of_device_id tegra_sdmmc_compatible[] = {
+	{
+		.compatible = "nvidia,tegra30-sdhci",
+	}, {
+		.compatible = "nvidia,tegra20-sdhci",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d tegra_sdmmc_driver = {
+	.name  = "tegra-sdmmc",
+	.probe = tegra_sdmmc_probe,
+	.of_compatible = DRV_OF_COMPAT(tegra_sdmmc_compatible),
+};
+device_platform_driver(tegra_sdmmc_driver);
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
