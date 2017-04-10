Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cxhhM-0003eo-Db
 for barebox@lists.infradead.org; Mon, 10 Apr 2017 22:22:14 +0000
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Tue, 11 Apr 2017 00:21:29 +0200
Message-Id: <20170410222129.2293-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH v1] mci: add Marvell Dove SDHCI driver
To: barebox@lists.infradead.org

From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>

This adds a driver for the SDHCI controller found on Marvell Dove SoCs.
Despite a missing pinctrl driver, corresponding MPP config has to be
set on a per board basis.

This driver was succesfully tested with Solidrun Dove Cubox.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
RFC -> v1: - acknowledging the dma_int status bit to resume xfer
           - added dma_sync_single_for_device where we handover data
	   - rate limited the multiwrite size with an max_req_size
	     and increased the timeout according to the data being
	     handled
---
 arch/arm/configs/mvebu_defconfig |   1 +
 drivers/mci/Kconfig              |   7 +
 drivers/mci/Makefile             |   1 +
 drivers/mci/dove-sdhci.c         | 391 +++++++++++++++++++++++++++++++++++++++
 drivers/mci/sdhci.h              |  59 ++++++
 5 files changed, 459 insertions(+)
 create mode 100644 drivers/mci/dove-sdhci.c

diff --git a/arch/arm/configs/mvebu_defconfig b/arch/arm/configs/mvebu_defconfig
index dab3d7a45e..cfbccb5a14 100644
--- a/arch/arm/configs/mvebu_defconfig
+++ b/arch/arm/configs/mvebu_defconfig
@@ -112,6 +112,7 @@ CONFIG_USB_STORAGE=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_MMC_BOOT_PARTITIONS=y
+CONFIG_MCI_DOVE=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_GPIO_OF=y
diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 0f3504c735..954f957bc7 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -66,6 +66,13 @@ config MCI_BCM283X
 	bool "MCI support for BCM283X"
 	depends on ARCH_BCM283X
 
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
index 88ec456aa3..fe2c8adbac 100644
--- a/drivers/mci/Makefile
+++ b/drivers/mci/Makefile
@@ -1,6 +1,7 @@
 obj-$(CONFIG_MCI)		+= mci-core.o
 obj-$(CONFIG_MCI_ATMEL)		+= atmel_mci.o
 obj-$(CONFIG_MCI_BCM283X)	+= mci-bcm2835.o
+obj-$(CONFIG_MCI_DOVE)		+= dove-sdhci.o
 obj-$(CONFIG_MCI_IMX)		+= imx.o
 obj-$(CONFIG_MCI_IMX_ESDHC)	+= imx-esdhc.o
 obj-$(CONFIG_MCI_MXS)		+= mxs.o
diff --git a/drivers/mci/dove-sdhci.c b/drivers/mci/dove-sdhci.c
new file mode 100644
index 0000000000..82188960c6
--- /dev/null
+++ b/drivers/mci/dove-sdhci.c
@@ -0,0 +1,391 @@
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
+#include <dma.h>
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
+		/* this special quirk is necessary, as the dma
+		 * engine stops on dma boundary and will only
+		 * restart after acknowledging it this way.
+		 */
+		if (status & SDHCI_INT_DMA) {
+			u32 addr = dove_sdhci_readl(host, SDHCI_DMA_ADDRESS);
+			dove_sdhci_writel(host, SDHCI_DMA_ADDRESS, addr);
+		}
+		if (status & mask)
+			break;
+		if (is_timeout(start, 1000 * MSECOND)) {
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
+	unsigned int num_bytes = data->blocks * data->blocksize;
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
+		if (!(dove_sdhci_readw(host, SDHCI_PRESENT_STATE) & val))
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
+
+
+		if (data->flags & MMC_DATA_WRITE)
+			dma_sync_single_for_device((unsigned long)data->src,
+						    num_bytes, DMA_TO_DEVICE);
+		else
+			dma_sync_single_for_device((unsigned long)data->dest,
+						    num_bytes, DMA_FROM_DEVICE);
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
+			dove_sdhci_readw(host, SDHCI_PRESENT_STATE),
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
+	if (data->flags & MMC_DATA_WRITE)
+		dma_sync_single_for_cpu((unsigned long)data->src,
+					 num_bytes, DMA_TO_DEVICE);
+	else
+		dma_sync_single_for_cpu((unsigned long)data->dest,
+					 num_bytes, DMA_FROM_DEVICE);
+
+	if (data) {
+		ret = dove_sdhci_wait_for_done(host, SDHCI_INT_XFER_COMPLETE);
+		if (ret) {
+			dev_err(host->mci.hw_dev, "error while transfering data for command %d\n",
+				cmd->cmdidx);
+			dev_err(host->mci.hw_dev, "state = %04x %04x, interrupt = %04x %04x\n",
+				dove_sdhci_readw(host, SDHCI_PRESENT_STATE),
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
+	host->mci.max_req_size = 0x8000;
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
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index 82a692e732..90595e6433 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -3,21 +3,80 @@
 
 #define SDHCI_DMA_ADDRESS					0x00
 #define SDHCI_BLOCK_SIZE__BLOCK_COUNT				0x04
+#define SDHCI_BLOCK_SIZE					0x04
+#define  SDHCI_DMA_BOUNDARY_512K		SDHCI_DMA_BOUNDARY(7)
+#define  SDHCI_DMA_BOUNDARY_256K		SDHCI_DMA_BOUNDARY(6)
+#define  SDHCI_DMA_BOUNDARY_128K		SDHCI_DMA_BOUNDARY(5)
+#define  SDHCI_DMA_BOUNDARY_64K			SDHCI_DMA_BOUNDARY(4)
+#define  SDHCI_DMA_BOUNDARY_32K			SDHCI_DMA_BOUNDARY(3)
+#define  SDHCI_DMA_BOUNDARY_16K			SDHCI_DMA_BOUNDARY(2)
+#define  SDHCI_DMA_BOUNDARY_8K			SDHCI_DMA_BOUNDARY(1)
+#define  SDHCI_DMA_BOUNDARY_4K			SDHCI_DMA_BOUNDARY(0)
+#define  SDHCI_DMA_BOUNDARY(x)			(((x) & 0x7) << 12)
+#define  SDHCI_TRANSFER_BLOCK_SIZE(x)		((x) & 0xfff)
+#define SDHCI_BLOCK_COUNT					0x06
 #define SDHCI_ARGUMENT						0x08
 #define SDHCI_TRANSFER_MODE__COMMAND				0x0c
+#define SDHCI_TRANSFER_MODE					0x0c
+#define  SDHCI_MULTIPLE_BLOCKS			BIT(5)
+#define  SDHCI_DATA_TO_HOST			BIT(4)
+#define  SDHCI_BLOCK_COUNT_EN			BIT(1)
+#define  SDHCI_DMA_EN				BIT(0)
+#define SDHCI_COMMAND						0x0e
+#define  SDHCI_CMD_INDEX(c)			(((c) & 0x3f) << 8)
+#define  SDHCI_DATA_PRESENT			BIT(5)
+#define  SDHCI_CMD_INDEX_CHECK_EN		BIT(4)
+#define  SDHCI_CMD_CRC_CHECK_EN			BIT(3)
+#define  SDHCI_RESP_TYPE_48_BUSY		3
+#define  SDHCI_RESP_TYPE_48			2
+#define  SDHCI_RESP_TYPE_136			1
+#define  SDHCI_RESP_NONE			0
 #define SDHCI_RESPONSE_0					0x10
 #define SDHCI_RESPONSE_1					0x14
 #define SDHCI_RESPONSE_2					0x18
 #define SDHCI_RESPONSE_3					0x1c
 #define SDHCI_BUFFER						0x20
 #define SDHCI_PRESENT_STATE					0x24
+#define  SDHCI_CMD_INHIBIT_DATA			BIT(1)
+#define  SDHCI_CMD_INHIBIT_CMD			BIT(0)
+#define SDHCI_PRESENT_STATE1					0x26
 #define SDHCI_HOST_CONTROL__POWER_CONTROL__BLOCK_GAP_CONTROL	0x28
+#define SDHCI_HOST_CONTROL					0x28
+#define  SDHCI_DATA_WIDTH_8BIT			BIT(5)
+#define  SDHCI_HIGHSPEED_EN			BIT(2)
+#define  SDHCI_DATA_WIDTH_4BIT			BIT(1)
+#define SDHCI_POWER_CONTROL					0x29
+#define  SDHCI_BUS_VOLTAGE_330			SDHCI_BUS_VOLTAGE(7)
+#define  SDHCI_BUS_VOLTAGE(v)			((v) << 1)
+#define  SDHCI_BUS_POWER_EN			BIT(0)
 #define SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET	0x2c
+#define SDHCI_CLOCK_CONTROL					0x2c
+#define  SDHCI_FREQ_SEL(x)			(((x) & 0xff) << 8)
+#define  SDHCI_SDCLOCK_EN			BIT(2)
+#define  SDHCI_INTCLOCK_STABLE			BIT(1)
+#define  SDHCI_INTCLOCK_EN			BIT(0)
+#define SDHCI_TIMEOUT_CONTROL					0x2e
+#define SDHCI_SOFTWARE_RESET					0x2f
+#define  SDHCI_RESET_ALL			BIT(0)
 #define SDHCI_INT_STATUS					0x30
+#define SDHCI_INT_NORMAL_STATUS					0x30
+#define  SDHCI_INT_ERROR			BIT(15)
+#define  SDHCI_INT_DMA				BIT(3)
+#define  SDHCI_INT_XFER_COMPLETE		BIT(1)
+#define  SDHCI_INT_CMD_COMPLETE			BIT(0)
+#define SDHCI_INT_ERROR_STATUS					0x32
 #define SDHCI_INT_ENABLE					0x34
 #define SDHCI_SIGNAL_ENABLE					0x38
 #define SDHCI_ACMD12_ERR__HOST_CONTROL2				0x3C
 #define SDHCI_CAPABILITIES					0x40
+#define SDHCI_CAPABILITIES_1					0x42
+#define  SDHCI_HOSTCAP_VOLTAGE_180		BIT(10)
+#define  SDHCI_HOSTCAP_VOLTAGE_300		BIT(9)
+#define  SDHCI_HOSTCAP_VOLTAGE_330		BIT(8)
+#define  SDHCI_HOSTCAP_HIGHSPEED		BIT(5)
+#define  SDHCI_HOSTCAP_8BIT			BIT(2)
+
+#define SDHCI_SPEC_200_MAX_CLK_DIVIDER	256
 #define SDHCI_MMC_BOOT						0xC4
 
 #define COMMAND_CMD(x)		((x & 0x3f) << 24)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
