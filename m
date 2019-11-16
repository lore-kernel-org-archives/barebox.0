Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVzL1-0004YJ-US
 for barebox@lists.infradead.org; Sat, 16 Nov 2019 14:46:14 +0000
Received: from astat.fritz.box (a89-183-55-231.net-htp.de [89.183.55.231])
 by lynxeye.de (Postfix) with ESMTPA id C315AE74217
 for <barebox@lists.infradead.org>; Sat, 16 Nov 2019 15:45:37 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sat, 16 Nov 2019 15:45:34 +0100
Message-Id: <20191116144534.145961-1-dev@lynxeye.de>
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
Subject: [PATCH] mci: add Arasan SDHCI controller driver
To: barebox@lists.infradead.org

From: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>

This adds support for the Arasan SDHCI controller, which is found on
the Xilinx Zynq 7000 and ZynqMP SoCs. This just adds very basic
PIO read/write support.

This submission is also missing the tap delay configuration, which is
required for the high speed modes on the ZynqMP, but this can be
added in a separate patch once it is clear how the interface for this
feature should look like.

The driver skeleton was provided by Michael, most of the actual driver
porting work was done by Thomas and some coding style fixes and write
support bug fixes added by Lucas.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
Signed-off-by: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>
Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/mci/Kconfig        |   6 +
 drivers/mci/Makefile       |   1 +
 drivers/mci/arasan-sdhci.c | 512 +++++++++++++++++++++++++++++++++++++
 drivers/mci/sdhci.h        |   3 +
 4 files changed, 522 insertions(+)
 create mode 100644 drivers/mci/arasan-sdhci.c

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 08c8c84e8cf1..20d3b3781773 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -135,6 +135,12 @@ config MCI_TEGRA
 	  Enable this to support SD and MMC card read/write on a Tegra based
 	  systems.
 
+config MCI_ARASAN
+	bool "Arasan SDHCI Controller"
+	help
+	  Enable this to support SD and MMC card read/write on systems with
+	  the Arasan SD3.0 / SDIO3.0 / eMMC4.51 host controller.
+
 config MCI_SPI
 	bool "MMC/SD over SPI"
 	select CRC7
diff --git a/drivers/mci/Makefile b/drivers/mci/Makefile
index 25a1d073dc27..b11961376aef 100644
--- a/drivers/mci/Makefile
+++ b/drivers/mci/Makefile
@@ -1,4 +1,5 @@
 obj-$(CONFIG_MCI)		+= mci-core.o
+obj-$(CONFIG_MCI_ARASAN)	+= arasan-sdhci.o
 obj-$(CONFIG_MCI_ATMEL)		+= atmel_mci.o
 obj-$(CONFIG_MCI_BCM283X)	+= mci-bcm2835.o
 obj-$(CONFIG_MCI_BCM283X_SDHOST)	+= bcm2835-sdhost.o
diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
new file mode 100644
index 000000000000..d55fe406fe47
--- /dev/null
+++ b/drivers/mci/arasan-sdhci.c
@@ -0,0 +1,512 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#include <clock.h>
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <linux/clk.h>
+#include <mci.h>
+
+#include "sdhci.h"
+
+#define SDHCI_ARASAN_HCAP_CLK_FREQ_MASK		0xFF00
+#define SDHCI_ARASAN_HCAP_CLK_FREQ_SHIFT	8
+#define SDHCI_ARASAN_INT_DATA_MASK 		IRQSTATEN_TC | \
+						IRQSTATEN_DINT | \
+						IRQSTATEN_BWR | \
+						IRQSTATEN_BRR | \
+						IRQSTATEN_DTOE | \
+						IRQSTATEN_DCE | \
+						IRQSTATEN_DEBE | \
+						IRQSTATEN_ADMAE
+
+#define SDHCI_ARASAN_INT_CMD_MASK		IRQSTATEN_CC | \
+						IRQSTATEN_CTOE | \
+						IRQSTATEN_CCE | \
+						IRQSTATEN_CEBE | \
+						IRQSTATEN_CIE
+
+#define SDHCI_ARASAN_BUS_WIDTH			4
+#define TIMEOUT_VAL				0xE
+
+struct arasan_sdhci_host {
+	struct mci_host		mci;
+	void __iomem		*ioaddr;
+	unsigned int		quirks; /* Arasan deviations from spec */
+/* Controller does not have CD wired and will not function normally without */
+#define SDHCI_ARASAN_QUIRK_FORCE_CDTEST		BIT(0)
+#define SDHCI_ARASAN_QUIRK_NO_1_8_V		BIT(1)
+};
+
+static inline
+struct arasan_sdhci_host *to_arasan_sdhci_host(struct mci_host *mci)
+{
+	return container_of(mci, struct arasan_sdhci_host, mci);
+}
+
+static inline void arasan_sdhci_writel(struct arasan_sdhci_host *p, int reg,
+		u32 val)
+{
+	writel(val, p->ioaddr + reg);
+}
+
+static inline void arasan_sdhci_writew(struct arasan_sdhci_host *p, int reg,
+		u16 val)
+{
+	writew(val, p->ioaddr + reg);
+}
+
+static inline void arasan_sdhci_writeb(struct arasan_sdhci_host *p, int reg,
+		u8 val)
+{
+	writeb(val, p->ioaddr + reg);
+}
+
+static inline u32 arasan_sdhci_readl(struct arasan_sdhci_host *p, int reg)
+{
+	return readl(p->ioaddr + reg);
+}
+
+static inline u16 arasan_sdhci_readw(struct arasan_sdhci_host *p, int reg)
+{
+	return readw(p->ioaddr + reg);
+}
+
+static inline u8 arasan_sdhci_readb(struct arasan_sdhci_host *p, int reg)
+{
+	return readb(p->ioaddr + reg);
+}
+
+static int arasan_sdhci_card_present(struct mci_host *mci)
+{
+	struct arasan_sdhci_host *host = to_arasan_sdhci_host(mci);
+
+	return !!(arasan_sdhci_readl(host, SDHCI_PRESENT_STATE) & PRSSTAT_CDPL);
+}
+
+static int arasan_sdhci_card_write_protected(struct mci_host *mci)
+{
+	struct arasan_sdhci_host *host = to_arasan_sdhci_host(mci);
+
+	return !(arasan_sdhci_readl(host, SDHCI_PRESENT_STATE) & PRSSTAT_WPSPL);
+}
+
+static int arasan_sdhci_reset(struct arasan_sdhci_host *host, u8 mask)
+{
+	arasan_sdhci_writeb(host, SDHCI_SOFTWARE_RESET, mask);
+
+	/* wait for reset completion */
+	if(wait_on_timeout(100 *MSECOND,
+			!(arasan_sdhci_readb(host, SDHCI_SOFTWARE_RESET) & mask))){
+		dev_err(host->mci.hw_dev, "SDHCI reset timeout\n");
+		return -ETIMEDOUT;
+	}
+
+	if (host->quirks & SDHCI_ARASAN_QUIRK_FORCE_CDTEST) {
+		u8 ctrl;
+
+		ctrl = arasan_sdhci_readb(host, SDHCI_HOST_CONTROL);
+		ctrl |= SDHCI_CDTEST_INS | SDHCI_CDTEST_EN;
+		arasan_sdhci_writeb(host, ctrl, SDHCI_HOST_CONTROL);
+	}
+
+	return 0;
+}
+
+static int arasan_sdhci_init(struct mci_host *mci, struct device_d *dev)
+{
+	struct arasan_sdhci_host *host = to_arasan_sdhci_host(mci);
+	int ret;
+
+	ret = arasan_sdhci_reset(host, SDHCI_RESET_ALL);
+	if (ret)
+		return ret;
+
+	arasan_sdhci_writeb(host, SDHCI_POWER_CONTROL,
+			    SDHCI_BUS_VOLTAGE_330 | SDHCI_BUS_POWER_EN);
+	udelay(400);
+
+	arasan_sdhci_writel(host, SDHCI_INT_ENABLE,
+			    SDHCI_ARASAN_INT_DATA_MASK |
+			    SDHCI_ARASAN_INT_CMD_MASK);
+	arasan_sdhci_writel(host, SDHCI_SIGNAL_ENABLE, 0x00);
+
+	return 0;
+}
+
+#define SDHCI_MAX_DIV_SPEC_300		2046
+
+static u16 arasan_sdhci_get_clock_divider(struct arasan_sdhci_host *host,
+					  unsigned int reqclk)
+{
+	u16 div;
+
+	for (div = 1; div < SDHCI_MAX_DIV_SPEC_300; div += 2)
+		if ((host->mci.f_max / div) <= reqclk)
+			break;
+	div /= 2;
+
+	return div;
+}
+
+#define SDHCI_FREQ_SEL_10_BIT(x)	(((x) & 0x300) >> 2)
+
+static void arasan_sdhci_set_ios(struct mci_host *mci, struct mci_ios *ios)
+{
+	struct arasan_sdhci_host *host = to_arasan_sdhci_host(mci);
+	u16 val;
+
+	/* stop clock */
+	arasan_sdhci_writew(host, SDHCI_CLOCK_CONTROL, 0);
+
+	if (ios->clock) {
+		u64 start;
+
+		/* set & start clock */
+		val = arasan_sdhci_get_clock_divider(host, ios->clock);
+		/* Bit 6 & 7 are upperbits of 10bit divider */
+		val = SDHCI_FREQ_SEL(val) | SDHCI_FREQ_SEL_10_BIT(val);
+		val |= SDHCI_INTCLOCK_EN;
+		arasan_sdhci_writew(host, SDHCI_CLOCK_CONTROL, val);
+
+		start = get_time_ns();
+		while (!(arasan_sdhci_readw(host, SDHCI_CLOCK_CONTROL) &
+			SDHCI_INTCLOCK_STABLE)) {
+			if (is_timeout(start, 20 * MSECOND)) {
+				dev_err(host->mci.hw_dev,
+						"SDHCI clock stable timeout\n");
+				return;
+			}
+		}
+		/* enable bus clock */
+		arasan_sdhci_writew(host, SDHCI_CLOCK_CONTROL,
+				    val | SDHCI_SDCLOCK_EN);
+	}
+
+	val = arasan_sdhci_readb(host, SDHCI_HOST_CONTROL) &
+			~(SDHCI_DATA_WIDTH_4BIT | SDHCI_DATA_WIDTH_8BIT);
+
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
+	arasan_sdhci_writeb(host, SDHCI_HOST_CONTROL, val);
+}
+
+static int arasan_sdhci_wait_for_done(struct arasan_sdhci_host *host, u32 mask)
+{
+	u64 start = get_time_ns();
+	u16 stat;
+
+	do {
+		stat = arasan_sdhci_readw(host, SDHCI_INT_NORMAL_STATUS);
+		if (stat & SDHCI_INT_ERROR) {
+			dev_err(host->mci.hw_dev, "SDHCI_INT_ERROR: 0x%08x\n",
+				arasan_sdhci_readw(host, SDHCI_INT_ERROR_STATUS));
+			return -EPERM;
+		}
+
+		if (is_timeout(start, 1000 * MSECOND)) {
+			dev_err(host->mci.hw_dev,
+					"SDHCI timeout while waiting for done\n");
+			return -ETIMEDOUT;
+		}
+	} while ((stat & mask) != mask);
+
+	return 0;
+}
+
+static void print_error(struct arasan_sdhci_host *host, int cmdidx)
+{
+	dev_err(host->mci.hw_dev,
+		"error while transfering data for command %d\n", cmdidx);
+	dev_err(host->mci.hw_dev, "state = 0x%08x , interrupt = 0x%08x\n",
+		arasan_sdhci_readl(host, SDHCI_PRESENT_STATE),
+		arasan_sdhci_readl(host, SDHCI_INT_NORMAL_STATUS));
+}
+
+static void arasan_sdhci_cmd_done(struct arasan_sdhci_host *host,
+				  struct mci_cmd *cmd)
+{
+	if (cmd->resp_type & MMC_RSP_136) {
+		int i;
+
+		for (i = 0; i < 4; i++) {
+			cmd->response[i] = arasan_sdhci_readl(host,
+			SDHCI_RESPONSE_0 + 4 * (3 - i)) << 8;
+			if (i != 3)
+				cmd->response[i] |= arasan_sdhci_readb(host,
+				SDHCI_RESPONSE_0 + 4 * (3 - i) - 1);
+		}
+	} else {
+		cmd->response[0] = arasan_sdhci_readl(host, SDHCI_RESPONSE_0);
+	}
+
+}
+
+static void set_tranfer_mode(struct arasan_sdhci_host *host,
+			     struct mci_data *data)
+{
+	u16 transfer_mode = 0;
+
+	if(!data)
+		goto out;
+
+	transfer_mode = SDHCI_BLOCK_COUNT_EN;
+
+	if (data->flags & MMC_DATA_READ)
+		transfer_mode |= SDHCI_DATA_TO_HOST;
+	if (data->blocks > 1)
+		transfer_mode |= SDHCI_MULTIPLE_BLOCKS;
+
+	arasan_sdhci_writew(host, SDHCI_BLOCK_SIZE, SDHCI_DMA_BOUNDARY_512K |
+			    SDHCI_TRANSFER_BLOCK_SIZE(data->blocksize));
+	arasan_sdhci_writew(host, SDHCI_BLOCK_COUNT, data->blocks);
+
+out:
+	arasan_sdhci_writew(host, SDHCI_TRANSFER_MODE, transfer_mode);
+}
+
+static void arasan_sdhci_transfer_pio(struct arasan_sdhci_host *host,
+				      struct mci_data *data, unsigned int block,
+				      bool is_read)
+{
+	u32 *buf = is_read ? (u32 *)data->dest : (u32 *)data->src;
+	int i;
+
+	buf += (block * data->blocksize / sizeof(u32));
+
+	for (i = 0; i < data->blocksize; i += 4, buf++) {
+		if (is_read)
+			*buf = arasan_sdhci_readl(host, SDHCI_BUFFER);
+		else
+			arasan_sdhci_writel(host, SDHCI_BUFFER, *buf);
+	}
+}
+
+static int arasan_sdhci_tranfer_data(struct arasan_sdhci_host *host,
+				     struct mci_data *data)
+{
+	unsigned int transfer_done = 0, block = 0, timeout = 1000000;
+	u16 stat;
+
+	do {
+		stat = arasan_sdhci_readl(host, SDHCI_INT_STATUS);
+		if (stat & SDHCI_INT_ERROR)
+			return -EIO;
+
+		if (!transfer_done && (stat & (BIT(4) | BIT(5)))) {
+			if (!(arasan_sdhci_readl(host, SDHCI_PRESENT_STATE) &
+			     (BIT(10) | BIT(11))))
+				continue;
+			arasan_sdhci_writel(host, SDHCI_INT_STATUS, BIT(4) | BIT(5));
+			arasan_sdhci_transfer_pio(host, data, block,
+					!!(data->flags & MMC_DATA_READ));
+
+			if (++block >= data->blocks) {
+				/* Keep looping until the SDHCI_INT_DATA_END is
+				 * cleared, even if we finished sending all the
+				 * blocks.
+				 */
+				transfer_done = 1;
+				continue;
+			}
+		}
+
+		if (timeout-- > 0)
+			udelay(10);
+		else
+			return -ETIMEDOUT;
+
+	} while (!(stat & SDHCI_INT_XFER_COMPLETE));
+
+	return 0;
+}
+
+static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
+				 struct mci_data *data)
+{
+	struct arasan_sdhci_host *host = to_arasan_sdhci_host(mci);
+	u32 mask, flags;
+	int ret;
+
+	/* Wait for idle before next command */
+	mask = SDHCI_CMD_INHIBIT_CMD;
+	if (cmd->cmdidx != MMC_CMD_STOP_TRANSMISSION)
+		mask |= SDHCI_CMD_INHIBIT_DATA;
+
+	ret = wait_on_timeout(10 * MSECOND,
+			!(arasan_sdhci_readl(host, SDHCI_PRESENT_STATE) & mask));
+
+	if (ret) {
+		dev_err(host->mci.hw_dev,
+				"SDHCI timeout while waiting for idle\n");
+		return ret;
+	}
+
+	arasan_sdhci_writel(host, SDHCI_INT_STATUS, ~0);
+
+	mask = SDHCI_INT_CMD_COMPLETE;
+	if (!(cmd->resp_type & MMC_RSP_PRESENT))
+		flags = SDHCI_RESP_NONE;
+	else if (cmd->resp_type & MMC_RSP_136)
+		flags = SDHCI_RESP_TYPE_136;
+	else if (cmd->resp_type & MMC_RSP_BUSY) {
+		flags = SDHCI_RESP_TYPE_48_BUSY;
+		if (data)
+			mask |= SDHCI_INT_XFER_COMPLETE;
+	} else {
+		flags = SDHCI_RESP_TYPE_48;
+	}
+
+	if (cmd->resp_type & MMC_RSP_CRC)
+		flags |= SDHCI_CMD_CRC_CHECK_EN;
+
+	if (cmd->resp_type & MMC_RSP_OPCODE)
+		flags |= SDHCI_CMD_INDEX_CHECK_EN;
+
+	arasan_sdhci_writeb(host, SDHCI_TIMEOUT_CONTROL, TIMEOUT_VAL);
+
+	if (data)
+		flags |= SDHCI_DATA_PRESENT;
+
+	set_tranfer_mode(host, data);
+	arasan_sdhci_writel(host, SDHCI_ARGUMENT, cmd->cmdarg);
+	arasan_sdhci_writew(host, SDHCI_COMMAND,
+			SDHCI_CMD_INDEX(cmd->cmdidx) | flags);
+
+	ret = arasan_sdhci_wait_for_done(host, mask);
+	if (ret == -EPERM)
+		goto error;
+	else if (ret)
+		return ret;
+
+	arasan_sdhci_cmd_done(host, cmd);
+	arasan_sdhci_writel(host, SDHCI_INT_STATUS, mask);
+
+	if(data)
+		ret = arasan_sdhci_tranfer_data(host, data);
+
+error:
+	if(ret) {
+		print_error(host, cmd->cmdidx);
+		arasan_sdhci_reset(host, BIT(1)); // SDHCI_RESET_CMD
+		arasan_sdhci_reset(host, BIT(2)); // SDHCI_RESET_DATA
+	}
+
+	arasan_sdhci_writel(host, SDHCI_INT_STATUS, ~0);
+	return ret;
+}
+
+
+static void arasan_sdhci_set_mci_caps(struct arasan_sdhci_host *host)
+{
+	u16 caps = arasan_sdhci_readw(host, SDHCI_CAPABILITIES_1);
+
+	if ((caps & SDHCI_HOSTCAP_VOLTAGE_180) &&
+	    !(host->quirks & SDHCI_ARASAN_QUIRK_NO_1_8_V))
+		host->mci.voltages |= MMC_VDD_165_195;
+	if (caps & SDHCI_HOSTCAP_VOLTAGE_300)
+		host->mci.voltages |= MMC_VDD_29_30 | MMC_VDD_30_31;
+	if (caps & SDHCI_HOSTCAP_VOLTAGE_330)
+		host->mci.voltages |= MMC_VDD_32_33 | MMC_VDD_33_34;
+
+	if (caps & SDHCI_HOSTCAP_HIGHSPEED)
+		host->mci.host_caps |= (MMC_CAP_MMC_HIGHSPEED_52MHZ |
+					MMC_CAP_MMC_HIGHSPEED |
+					MMC_CAP_SD_HIGHSPEED);
+
+	/* parse board supported bus width capabilities */
+	mci_of_parse(&host->mci);
+
+	/* limit bus widths to controller capabilities */
+	if (!(caps & SDHCI_HOSTCAP_8BIT))
+		host->mci.host_caps &= ~MMC_CAP_8_BIT_DATA;
+}
+
+static int arasan_sdhci_probe(struct device_d *dev)
+{
+	struct device_node *np = dev->device_node;
+	struct arasan_sdhci_host *arasan_sdhci;
+	struct clk *clk_xin, *clk_ahb;
+	struct resource *iores;
+	struct mci_host *mci;
+	int ret;
+
+	arasan_sdhci = xzalloc(sizeof(*arasan_sdhci));
+
+	mci = &arasan_sdhci->mci;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+	arasan_sdhci->ioaddr = IOMEM(iores->start);
+
+	clk_ahb = clk_get(dev, "clk_ahb");
+	if (IS_ERR(clk_ahb)) {
+		dev_err(dev, "clk_ahb clock not found.\n");
+		return PTR_ERR(clk_ahb);
+	}
+
+	clk_xin = clk_get(dev, "clk_xin");
+	if (IS_ERR(clk_xin)) {
+		dev_err(dev, "clk_xin clock not found.\n");
+		return PTR_ERR(clk_xin);
+	}
+	ret = clk_enable(clk_ahb);
+	if (ret) {
+		dev_err(dev, "Failed to enable AHB clock: %s\n",
+			strerror(ret));
+		return ret;
+	}
+
+	ret = clk_enable(clk_xin);
+	if (ret) {
+		dev_err(dev, "Failed to enable SD clock: %s\n", strerror(ret));
+		return ret;
+	}
+
+	if (of_property_read_bool(np, "xlnx,fails-without-test-cd"))
+		arasan_sdhci->quirks |= SDHCI_ARASAN_QUIRK_FORCE_CDTEST;
+
+	if (of_property_read_bool(np, "no-1-8-v"))
+		arasan_sdhci->quirks |= SDHCI_ARASAN_QUIRK_NO_1_8_V;
+
+	mci->send_cmd = arasan_sdhci_send_cmd;
+	mci->set_ios = arasan_sdhci_set_ios;
+	mci->init = arasan_sdhci_init;
+	mci->card_present = arasan_sdhci_card_present;
+	mci->card_write_protected = arasan_sdhci_card_write_protected;
+	mci->hw_dev = dev;
+
+	mci->f_max = clk_get_rate(clk_xin);
+	mci->f_min = 50000000 / 256;
+
+	arasan_sdhci_set_mci_caps(arasan_sdhci);
+
+	dev->priv = arasan_sdhci;
+
+	return mci_register(&arasan_sdhci->mci);
+}
+
+static __maybe_unused struct of_device_id arasan_sdhci_compatible[] = {
+	{ .compatible = "arasan,sdhci-8.9a" },
+	{ /* sentinel */ }
+};
+
+static struct driver_d arasan_sdhci_driver = {
+	.name = "arasan-sdhci",
+	.probe = arasan_sdhci_probe,
+	.of_compatible = DRV_OF_COMPAT(arasan_sdhci_compatible),
+};
+device_platform_driver(arasan_sdhci_driver);
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index 90595e643362..ad517ae0a799 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -42,6 +42,8 @@
 #define SDHCI_PRESENT_STATE1					0x26
 #define SDHCI_HOST_CONTROL__POWER_CONTROL__BLOCK_GAP_CONTROL	0x28
 #define SDHCI_HOST_CONTROL					0x28
+#define  SDHCI_CDTEST_EN			BIT(7)
+#define  SDHCI_CDTEST_INS			BIT(6)
 #define  SDHCI_DATA_WIDTH_8BIT			BIT(5)
 #define  SDHCI_HIGHSPEED_EN			BIT(2)
 #define  SDHCI_DATA_WIDTH_4BIT			BIT(1)
@@ -118,6 +120,7 @@
 #define IRQSTAT_TC		0x00000002
 #define IRQSTAT_CC		0x00000001
 
+#define IRQSTATEN_ADMAE		0x20000000
 #define IRQSTATEN_DMAE		0x10000000
 #define IRQSTATEN_AC12E		0x01000000
 #define IRQSTATEN_DEBE		0x00400000
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
