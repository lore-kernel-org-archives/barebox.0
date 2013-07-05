Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22c.google.com ([2a00:1450:4013:c00::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UvDSr-0006X5-PE
 for barebox@lists.infradead.org; Fri, 05 Jul 2013 21:22:53 +0000
Received: by mail-ee0-f44.google.com with SMTP id c13so1629211eek.3
 for <barebox@lists.infradead.org>; Fri, 05 Jul 2013 14:22:27 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri,  5 Jul 2013 23:22:19 +0200
Message-Id: <1373059339-20513-3-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1373059339-20513-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1373059339-20513-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [RFC 2/2] mci: add Marvell Dove SDHCI driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

This adds a driver for the SDHCI controller found on Marvell Dove SoCs.
Despite a missing pinctrl driver, corresponding MPP config has to be
set on a per board basis.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: barebox@lists.infradead.org
---
 drivers/mci/Kconfig      |    7 +
 drivers/mci/Makefile     |    1 +
 drivers/mci/dove-sdhci.c |  365 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 373 insertions(+)
 create mode 100644 drivers/mci/dove-sdhci.c

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 7aff7df..554ce9e 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -52,6 +52,13 @@ config MCI_BCM2835
 	bool "MCI support for BCM2835"
 	depends on ARCH_BCM2835
 
+config MCI_DOVE
+	bool "Marvell Dove SDHCI"
+	depends on ARCH_DOVE
+	help
+	  Enable this entry to add support to read and write SD cards on a
+	  Marvell Dove SoC based system.
+
 config MCI_IMX
 	bool "i.MX"
 	depends on ARCH_IMX27 || ARCH_IMX31
diff --git a/drivers/mci/Makefile b/drivers/mci/Makefile
index df06a08..59e39cc 100644
--- a/drivers/mci/Makefile
+++ b/drivers/mci/Makefile
@@ -1,6 +1,7 @@
 obj-$(CONFIG_MCI)		+= mci-core.o
 obj-$(CONFIG_MCI_ATMEL)		+= atmel_mci.o
 obj-$(CONFIG_MCI_BCM2835)	+= mci-bcm2835.o
+obj-$(CONFIG_MCI_DOVE)		+= dove-sdhci.o
 obj-$(CONFIG_MCI_IMX)		+= imx.o
 obj-$(CONFIG_MCI_IMX_ESDHC)	+= imx-esdhc.o
 obj-$(CONFIG_MCI_MXS)		+= mxs.o
diff --git a/drivers/mci/dove-sdhci.c b/drivers/mci/dove-sdhci.c
new file mode 100644
index 0000000..91ef8b0
--- /dev/null
+++ b/drivers/mci/dove-sdhci.c
@@ -0,0 +1,365 @@
+/*
+ * Marvell Dove SDHCI MCI driver
+ *
+ * Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <clock.h>
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <malloc.h>
+#include <mci.h>
+#include <linux/err.h>
+
+#include "sdhci.h"
+
+struct dove_sdhci {
+	struct mci_host mci;
+	void __iomem *base;
+};
+
+#define priv_from_mci_host(h)	\
+	container_of(h, struct dove_sdhci, mci);
+
+static inline void dove_sdhci_writel(struct dove_sdhci *p, int reg, u32 val)
+{
+	writel(val, p->base + reg);
+}
+
+static inline void dove_sdhci_writew(struct dove_sdhci *p, int reg, u16 val)
+{
+	writew(val, p->base + reg);
+}
+
+static inline void dove_sdhci_writeb(struct dove_sdhci *p, int reg, u8 val)
+{
+	writeb(val, p->base + reg);
+}
+
+static inline u32 dove_sdhci_readl(struct dove_sdhci *p, int reg)
+{
+	return readl(p->base + reg);
+}
+
+static inline u16 dove_sdhci_readw(struct dove_sdhci *p, int reg)
+{
+	return readw(p->base + reg);
+}
+
+static inline u8 dove_sdhci_readb(struct dove_sdhci *p, int reg)
+{
+	return readb(p->base + reg);
+}
+
+static int dove_sdhci_wait_for_done(struct dove_sdhci *host, u16 mask)
+{
+	u16 status;
+	u64 start;
+
+	start = get_time_ns();
+	while (1) {
+		status = dove_sdhci_readw(host, SDHCI_INT_NORMAL_STATUS);
+		if (status & SDHCI_INT_ERROR)
+			return -EPERM;
+		if (status & mask)
+			break;
+		if (is_timeout(start, 100 * MSECOND)) {
+			dev_err(host->mci.hw_dev, "SDHCI timeout while waiting for done\n");
+			return -ETIMEDOUT;
+		}
+	}
+	return 0;
+}
+
+static int dove_sdhci_mci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
+				struct mci_data *data)
+{
+	u16 val;
+	u64 start;
+	int ret;
+	struct dove_sdhci *host = priv_from_mci_host(mci);
+
+	dove_sdhci_writel(host, SDHCI_INT_STATUS, ~0);
+
+	/* Do not wait for CMD_INHIBIT_DAT on stop commands */
+	if (cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION)
+		val = SDHCI_CMD_INHIBIT_CMD;
+	else
+		val = SDHCI_CMD_INHIBIT_CMD | SDHCI_CMD_INHIBIT_DATA;
+
+	/* Wait for bus idle */
+	start = get_time_ns();
+	while (1) {
+		if (!(dove_sdhci_readw(host, SDHCI_PRESENT_STATE0) & val))
+			break;
+		if (is_timeout(start, 10 * MSECOND)) {
+			dev_err(host->mci.hw_dev, "SDHCI timeout while waiting for idle\n");
+			return -ETIMEDOUT;
+		}
+	}
+
+	/* setup transfer data */
+	if (data) {
+		if (data->flags & MMC_DATA_READ)
+			dove_sdhci_writel(host, SDHCI_DMA_ADDRESS, (u32)data->dest);
+		else
+			dove_sdhci_writel(host, SDHCI_DMA_ADDRESS, (u32)data->src);
+		dove_sdhci_writew(host, SDHCI_BLOCK_SIZE, SDHCI_DMA_BOUNDARY_512K |
+				SDHCI_TRANSFER_BLOCK_SIZE(data->blocksize));
+		dove_sdhci_writew(host, SDHCI_BLOCK_COUNT, data->blocks);
+		dove_sdhci_writeb(host, SDHCI_TIMEOUT_CONTROL, 0xe);
+	}
+
+	/* setup transfer mode */
+	val = 0;
+	if (data) {
+		val |= SDHCI_DMA_EN | SDHCI_BLOCK_COUNT_EN;
+		if (data->blocks > 1)
+			val |= SDHCI_MULTIPLE_BLOCKS;
+		if (data->flags & MMC_DATA_READ)
+			val |= SDHCI_DATA_TO_HOST;
+	}
+	dove_sdhci_writew(host, SDHCI_TRANSFER_MODE, val);
+
+	dove_sdhci_writel(host, SDHCI_ARGUMENT, cmd->cmdarg);
+
+	if (!(cmd->resp_type & MMC_RSP_PRESENT))
+		val = SDHCI_RESP_NONE;
+	else if (cmd->resp_type & MMC_RSP_136)
+		val = SDHCI_RESP_TYPE_136;
+	else if (cmd->resp_type & MMC_RSP_BUSY)
+		val = SDHCI_RESP_TYPE_48_BUSY;
+	else
+		val = SDHCI_RESP_TYPE_48;
+
+	if (cmd->resp_type & MMC_RSP_CRC)
+		val |= SDHCI_CMD_CRC_CHECK_EN;
+	if (cmd->resp_type & MMC_RSP_OPCODE)
+		val |= SDHCI_CMD_INDEX_CHECK_EN;
+	if (data)
+		val |= SDHCI_DATA_PRESENT;
+	val |= SDHCI_CMD_INDEX(cmd->cmdidx);
+
+	dove_sdhci_writew(host, SDHCI_COMMAND, val);
+
+	ret = dove_sdhci_wait_for_done(host, SDHCI_INT_CMD_COMPLETE);
+	if (ret) {
+		dev_err(host->mci.hw_dev, "error on command %d\n", cmd->cmdidx);
+		dev_err(host->mci.hw_dev, "state = %04x %04x, interrupt = %04x %04x\n",
+			dove_sdhci_readw(host, SDHCI_PRESENT_STATE0),
+			dove_sdhci_readw(host, SDHCI_PRESENT_STATE1),
+			dove_sdhci_readw(host, SDHCI_INT_NORMAL_STATUS),
+			dove_sdhci_readw(host, SDHCI_INT_ERROR_STATUS));
+		goto cmd_error;
+	}
+
+	/* CRC is stripped so we need to do some shifting. */
+	if (cmd->resp_type & MMC_RSP_136) {
+		int i;
+		for (i = 0; i < 4; i++) {
+			cmd->response[i] = dove_sdhci_readl(host,
+					SDHCI_RESPONSE_0 + 4*(3-i)) << 8;
+			if (i != 3)
+				cmd->response[i] |= dove_sdhci_readb(host,
+					SDHCI_RESPONSE_0 + 4*(3-i) - 1);
+		}
+	} else
+		cmd->response[0] = dove_sdhci_readl(host, SDHCI_RESPONSE_0);
+
+	if (data) {
+		ret = dove_sdhci_wait_for_done(host, SDHCI_INT_XFER_COMPLETE);
+		if (ret) {
+			dev_err(host->mci.hw_dev, "error while transfering data for command %d\n",
+				cmd->cmdidx);
+			dev_err(host->mci.hw_dev, "state = %04x %04x, interrupt = %04x %04x\n",
+				dove_sdhci_readw(host, SDHCI_PRESENT_STATE0),
+				dove_sdhci_readw(host, SDHCI_PRESENT_STATE1),
+				dove_sdhci_readw(host, SDHCI_INT_NORMAL_STATUS),
+				dove_sdhci_readw(host, SDHCI_INT_ERROR_STATUS));
+			goto cmd_error;
+		}
+	}
+
+cmd_error:
+	dove_sdhci_writel(host, SDHCI_INT_STATUS, ~0);
+	return ret;
+}
+
+static u16 dove_sdhci_get_clock_divider(struct dove_sdhci *host, u32 reqclk)
+{
+	u16 div;
+
+	for (div = 1; div < SDHCI_SPEC_200_MAX_CLK_DIVIDER; div *= 2)
+		if ((host->mci.f_max / div) <= reqclk)
+			break;
+	div /= 2;
+
+	return div;
+}
+
+static void dove_sdhci_mci_set_ios(struct mci_host *mci, struct mci_ios *ios)
+{
+	u16 val;
+	u64 start;
+	struct dove_sdhci *host = priv_from_mci_host(mci);
+
+	debug("%s: clock = %u, bus-width = %d, timing = %02x\n", __func__, ios->clock, ios->bus_width, ios->timing);
+
+	/* disable on zero clock */
+	if (!ios->clock)
+		return;
+
+	/* enable bus power */
+	val = SDHCI_BUS_VOLTAGE_330;
+	dove_sdhci_writeb(host, SDHCI_POWER_CONTROL, val | SDHCI_BUS_POWER_EN);
+	udelay(400);
+
+	/* set bus width */
+	val = dove_sdhci_readb(host, SDHCI_HOST_CONTROL) &
+		~(SDHCI_DATA_WIDTH_4BIT | SDHCI_DATA_WIDTH_8BIT);
+	switch (ios->bus_width) {
+	case MMC_BUS_WIDTH_8:
+		val |= SDHCI_DATA_WIDTH_8BIT;
+		break;
+	case MMC_BUS_WIDTH_4:
+		val |= SDHCI_DATA_WIDTH_4BIT;
+		break;
+	}
+
+	if (ios->clock > 26000000)
+		val |= SDHCI_HIGHSPEED_EN;
+	else
+		val &= ~SDHCI_HIGHSPEED_EN;
+
+	dove_sdhci_writeb(host, SDHCI_HOST_CONTROL, val);
+
+	/* set bus clock */
+	dove_sdhci_writew(host, SDHCI_CLOCK_CONTROL, 0);
+	val = dove_sdhci_get_clock_divider(host, ios->clock);
+	val = SDHCI_INTCLOCK_EN | SDHCI_FREQ_SEL(val);
+	dove_sdhci_writew(host, SDHCI_CLOCK_CONTROL, val);
+
+	/* wait for internal clock stable */
+	start = get_time_ns();
+	while (!(dove_sdhci_readw(host, SDHCI_CLOCK_CONTROL) &
+			SDHCI_INTCLOCK_STABLE)) {
+		if (is_timeout(start, 20 * MSECOND)) {
+			dev_err(host->mci.hw_dev, "SDHCI clock stable timeout\n");
+			return;
+		}
+	}
+
+	/* enable bus clock */
+	dove_sdhci_writew(host, SDHCI_CLOCK_CONTROL, val | SDHCI_SDCLOCK_EN);
+}
+
+static int dove_sdhci_mci_init(struct mci_host *mci, struct device_d *dev)
+{
+	u64 start;
+	struct dove_sdhci *host = priv_from_mci_host(mci);
+
+	/* reset sdhci controller */
+	dove_sdhci_writeb(host, SDHCI_SOFTWARE_RESET, SDHCI_RESET_ALL);
+
+	/* wait for reset completion */
+	start = get_time_ns();
+	while (1) {
+		if ((dove_sdhci_readb(host, SDHCI_SOFTWARE_RESET) &
+				SDHCI_RESET_ALL) == 0)
+			break;
+		if (is_timeout(start, 100 * MSECOND)) {
+			dev_err(dev, "SDHCI reset timeout\n");
+			return -ETIMEDOUT;
+		}
+	}
+
+	dove_sdhci_writel(host, SDHCI_INT_STATUS, ~0);
+	dove_sdhci_writel(host, SDHCI_INT_ENABLE, ~0);
+	dove_sdhci_writel(host, SDHCI_SIGNAL_ENABLE, ~0);
+
+	return 0;
+}
+
+static void dove_sdhci_set_mci_caps(struct dove_sdhci *host)
+{
+	u16 caps[2];
+
+	caps[0] = dove_sdhci_readw(host, SDHCI_CAPABILITIES);
+	caps[1] = dove_sdhci_readw(host, SDHCI_CAPABILITIES_1);
+
+	if (caps[1] & SDHCI_HOSTCAP_VOLTAGE_180)
+		host->mci.voltages |= MMC_VDD_165_195;
+	if (caps[1] & SDHCI_HOSTCAP_VOLTAGE_300)
+		host->mci.voltages |= MMC_VDD_29_30 | MMC_VDD_30_31;
+	if (caps[1] & SDHCI_HOSTCAP_VOLTAGE_330)
+		host->mci.voltages |= MMC_VDD_32_33 | MMC_VDD_33_34;
+
+	if (caps[1] & SDHCI_HOSTCAP_HIGHSPEED)
+		host->mci.host_caps |= (MMC_CAP_MMC_HIGHSPEED_52MHZ |
+					MMC_CAP_MMC_HIGHSPEED |
+					MMC_CAP_SD_HIGHSPEED);
+
+	/* parse board supported bus width capabilities */
+	mci_of_parse(&host->mci);
+
+	/* limit bus widths to controller capabilities */
+	if ((caps[1] & SDHCI_HOSTCAP_8BIT) == 0)
+		host->mci.host_caps &= ~MMC_CAP_8_BIT_DATA;
+}
+
+static int dove_sdhci_detect(struct device_d *dev)
+{
+	struct dove_sdhci *host = dev->priv;
+	return mci_detect_card(&host->mci);
+}
+
+static int dove_sdhci_probe(struct device_d *dev)
+{
+	struct dove_sdhci *host;
+	int ret;
+
+	host = xzalloc(sizeof(*host));
+	host->base = dev_request_mem_region(dev, 0);
+	host->mci.hw_dev = dev;
+	host->mci.send_cmd = dove_sdhci_mci_send_cmd;
+	host->mci.set_ios = dove_sdhci_mci_set_ios;
+	host->mci.init = dove_sdhci_mci_init;
+	host->mci.f_max = 50000000;
+	host->mci.f_min = host->mci.f_max / 256;
+	dev->priv = host;
+	dev->detect = dove_sdhci_detect;
+
+	dove_sdhci_set_mci_caps(host);
+
+	ret = mci_register(&host->mci);
+	if (ret)
+		free(host);
+	return ret;
+}
+
+static struct of_device_id dove_sdhci_dt_ids[] = {
+	{ .compatible = "marvell,dove-sdhci", },
+	{ }
+};
+
+static struct driver_d dove_sdhci_driver = {
+	.name = "dove-sdhci",
+	.probe = dove_sdhci_probe,
+	.of_compatible = DRV_OF_COMPAT(dove_sdhci_dt_ids),
+};
+device_platform_driver(dove_sdhci_driver);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
