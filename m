Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX15q-0006AL-2a
 for barebox@lists.infradead.org; Tue, 19 Nov 2019 10:50:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Nov 2019 11:50:36 +0100
Message-Id: <20191119105036.12300-22-s.hauer@pengutronix.de>
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
Subject: [PATCH 21/21] mci: add Arasan SDHCI controller driver
To: Barebox List <barebox@lists.infradead.org>
Cc: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>, Michael Tretter <m.tretter@pengutronix.de>

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
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/Kconfig        |   6 +
 drivers/mci/Makefile       |   1 +
 drivers/mci/arasan-sdhci.c | 423 +++++++++++++++++++++++++++++++++++++
 drivers/mci/sdhci.h        |   3 +
 4 files changed, 433 insertions(+)
 create mode 100644 drivers/mci/arasan-sdhci.c

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 526600556b..c269b71e89 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -142,6 +142,12 @@ config MCI_TEGRA
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
index 9efdbd651e..e2e3ba7ef4 100644
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
index 0000000000..b43a4f8ddf
--- /dev/null
+++ b/drivers/mci/arasan-sdhci.c
@@ -0,0 +1,423 @@
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
+#define SDHCI_INT_ADMAE				BIT(29)
+#define SDHCI_ARASAN_INT_DATA_MASK 		SDHCI_INT_XFER_COMPLETE | \
+						SDHCI_INT_DMA | \
+						SDHCI_INT_SPACE_AVAIL | \
+						SDHCI_INT_DATA_AVAIL | \
+						SDHCI_INT_DATA_TIMEOUT | \
+						SDHCI_INT_DATA_CRC | \
+						SDHCI_INT_DATA_END_BIT | \
+						SDHCI_INT_ADMAE
+
+#define SDHCI_ARASAN_INT_CMD_MASK		SDHCI_INT_CMD_COMPLETE | \
+						SDHCI_INT_TIMEOUT | \
+						SDHCI_INT_CRC | \
+						SDHCI_INT_END_BIT | \
+						SDHCI_INT_INDEX
+
+#define SDHCI_ARASAN_BUS_WIDTH			4
+#define TIMEOUT_VAL				0xE
+
+struct arasan_sdhci_host {
+	struct mci_host		mci;
+	struct sdhci		sdhci;
+	void __iomem		*ioaddr;
+	unsigned int		quirks; /* Arasan deviations from spec */
+/* Controller does not have CD wired and will not function normally without */
+#define SDHCI_ARASAN_QUIRK_FORCE_CDTEST		BIT(0)
+#define SDHCI_ARASAN_QUIRK_NO_1_8_V		BIT(1)
+};
+
+
+static inline
+struct arasan_sdhci_host *to_arasan_sdhci_host(struct mci_host *mci)
+{
+	return container_of(mci, struct arasan_sdhci_host, mci);
+}
+
+static inline
+struct arasan_sdhci_host *sdhci_to_arasan(struct sdhci *sdhci)
+{
+	return container_of(sdhci, struct arasan_sdhci_host, sdhci);
+}
+
+static void arasan_sdhci_writel(struct sdhci *sdhci, int reg, u32 val)
+{
+	struct arasan_sdhci_host *p = sdhci_to_arasan(sdhci);
+
+	writel(val, p->ioaddr + reg);
+}
+
+static void arasan_sdhci_writew(struct sdhci *sdhci, int reg, u16 val)
+{
+	struct arasan_sdhci_host *p = sdhci_to_arasan(sdhci);
+
+	writew(val, p->ioaddr + reg);
+}
+
+static void arasan_sdhci_writeb(struct sdhci *sdhci, int reg, u8 val)
+{
+	struct arasan_sdhci_host *p = sdhci_to_arasan(sdhci);
+
+	writeb(val, p->ioaddr + reg);
+}
+
+static u32 arasan_sdhci_readl(struct sdhci *sdhci, int reg)
+{
+	struct arasan_sdhci_host *p = sdhci_to_arasan(sdhci);
+
+	return readl(p->ioaddr + reg);
+}
+
+static u16 arasan_sdhci_readw(struct sdhci *sdhci, int reg)
+{
+	struct arasan_sdhci_host *p = sdhci_to_arasan(sdhci);
+
+	return readw(p->ioaddr + reg);
+}
+
+static u8 arasan_sdhci_readb(struct sdhci *sdhci, int reg)
+{
+	struct arasan_sdhci_host *p = sdhci_to_arasan(sdhci);
+
+	return readb(p->ioaddr + reg);
+}
+
+static int arasan_sdhci_card_present(struct mci_host *mci)
+{
+	struct arasan_sdhci_host *host = to_arasan_sdhci_host(mci);
+
+	return !!(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & SDHCI_CARD_DETECT);
+}
+
+static int arasan_sdhci_card_write_protected(struct mci_host *mci)
+{
+	struct arasan_sdhci_host *host = to_arasan_sdhci_host(mci);
+
+	return !(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & SDHCI_WRITE_PROTECT);
+}
+
+static int arasan_sdhci_reset(struct arasan_sdhci_host *host, u8 mask)
+{
+	sdhci_write8(&host->sdhci, SDHCI_SOFTWARE_RESET, mask);
+
+	/* wait for reset completion */
+	if (wait_on_timeout(100 * MSECOND,
+			!(sdhci_read8(&host->sdhci, SDHCI_SOFTWARE_RESET) & mask))){
+		dev_err(host->mci.hw_dev, "SDHCI reset timeout\n");
+		return -ETIMEDOUT;
+	}
+
+	if (host->quirks & SDHCI_ARASAN_QUIRK_FORCE_CDTEST) {
+		u8 ctrl;
+
+		ctrl = sdhci_read8(&host->sdhci, SDHCI_HOST_CONTROL);
+		ctrl |= SDHCI_CARD_DETECT_TEST_LEVEL | SDHCI_CARD_DETECT_SIGNAL_SELECTION;
+		sdhci_write8(&host->sdhci, ctrl, SDHCI_HOST_CONTROL);
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
+	sdhci_write8(&host->sdhci, SDHCI_POWER_CONTROL,
+			    SDHCI_BUS_VOLTAGE_330 | SDHCI_BUS_POWER_EN);
+	udelay(400);
+
+	sdhci_write32(&host->sdhci, SDHCI_INT_ENABLE,
+			    SDHCI_ARASAN_INT_DATA_MASK |
+			    SDHCI_ARASAN_INT_CMD_MASK);
+	sdhci_write32(&host->sdhci, SDHCI_SIGNAL_ENABLE, 0x00);
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
+	sdhci_write16(&host->sdhci, SDHCI_CLOCK_CONTROL, 0);
+
+	if (ios->clock) {
+		u64 start;
+
+		/* set & start clock */
+		val = arasan_sdhci_get_clock_divider(host, ios->clock);
+		/* Bit 6 & 7 are upperbits of 10bit divider */
+		val = SDHCI_FREQ_SEL(val) | SDHCI_FREQ_SEL_10_BIT(val);
+		val |= SDHCI_INTCLOCK_EN;
+		sdhci_write16(&host->sdhci, SDHCI_CLOCK_CONTROL, val);
+
+		start = get_time_ns();
+		while (!(sdhci_read16(&host->sdhci, SDHCI_CLOCK_CONTROL) &
+			SDHCI_INTCLOCK_STABLE)) {
+			if (is_timeout(start, 20 * MSECOND)) {
+				dev_err(host->mci.hw_dev,
+						"SDHCI clock stable timeout\n");
+				return;
+			}
+		}
+		/* enable bus clock */
+		sdhci_write16(&host->sdhci, SDHCI_CLOCK_CONTROL,
+				    val | SDHCI_SDCLOCK_EN);
+	}
+
+	val = sdhci_read8(&host->sdhci, SDHCI_HOST_CONTROL) &
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
+	sdhci_write8(&host->sdhci, SDHCI_HOST_CONTROL, val);
+}
+
+static int arasan_sdhci_wait_for_done(struct arasan_sdhci_host *host, u32 mask)
+{
+	u64 start = get_time_ns();
+	u16 stat;
+
+	do {
+		stat = sdhci_read16(&host->sdhci, SDHCI_INT_NORMAL_STATUS);
+		if (stat & SDHCI_INT_ERROR) {
+			dev_err(host->mci.hw_dev, "SDHCI_INT_ERROR: 0x%08x\n",
+				sdhci_read16(&host->sdhci, SDHCI_INT_ERROR_STATUS));
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
+		sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE),
+		sdhci_read32(&host->sdhci, SDHCI_INT_NORMAL_STATUS));
+}
+
+static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
+				 struct mci_data *data)
+{
+	struct arasan_sdhci_host *host = to_arasan_sdhci_host(mci);
+	u32 mask, command, xfer;
+	int ret;
+
+	/* Wait for idle before next command */
+	mask = SDHCI_CMD_INHIBIT_CMD;
+	if (cmd->cmdidx != MMC_CMD_STOP_TRANSMISSION)
+		mask |= SDHCI_CMD_INHIBIT_DATA;
+
+	ret = wait_on_timeout(10 * MSECOND,
+			!(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & mask));
+
+	if (ret) {
+		dev_err(host->mci.hw_dev,
+				"SDHCI timeout while waiting for idle\n");
+		return ret;
+	}
+
+	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
+
+	mask = SDHCI_INT_CMD_COMPLETE;
+	if (data)
+		mask |= SDHCI_INT_XFER_COMPLETE;
+
+	sdhci_set_cmd_xfer_mode(&host->sdhci, cmd, data, false, &command, &xfer);
+
+	sdhci_write8(&host->sdhci, SDHCI_TIMEOUT_CONTROL, TIMEOUT_VAL);
+	sdhci_write16(&host->sdhci, SDHCI_TRANSFER_MODE, xfer);
+	sdhci_write16(&host->sdhci, SDHCI_BLOCK_SIZE, SDHCI_DMA_BOUNDARY_512K |
+			    SDHCI_TRANSFER_BLOCK_SIZE(data->blocksize));
+	sdhci_write16(&host->sdhci, SDHCI_BLOCK_COUNT, data->blocks);
+	sdhci_write32(&host->sdhci, SDHCI_ARGUMENT, cmd->cmdarg);
+	sdhci_write16(&host->sdhci, SDHCI_COMMAND, command);
+
+	ret = arasan_sdhci_wait_for_done(host, mask);
+	if (ret == -EPERM)
+		goto error;
+	else if (ret)
+		return ret;
+
+	sdhci_read_response(&host->sdhci, cmd);
+	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, mask);
+
+	if (data)
+		ret = sdhci_transfer_data(&host->sdhci, data);
+
+error:
+	if (ret) {
+		print_error(host, cmd->cmdidx);
+		arasan_sdhci_reset(host, BIT(1)); // SDHCI_RESET_CMD
+		arasan_sdhci_reset(host, BIT(2)); // SDHCI_RESET_DATA
+	}
+
+	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
+	return ret;
+}
+
+
+static void arasan_sdhci_set_mci_caps(struct arasan_sdhci_host *host)
+{
+	u16 caps = sdhci_read16(&host->sdhci, SDHCI_CAPABILITIES_1);
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
+	arasan_sdhci->sdhci.read32 = arasan_sdhci_readl;
+	arasan_sdhci->sdhci.read16 = arasan_sdhci_readw;
+	arasan_sdhci->sdhci.read8 = arasan_sdhci_readb;
+	arasan_sdhci->sdhci.write32 = arasan_sdhci_writel;
+	arasan_sdhci->sdhci.write16 = arasan_sdhci_writew;
+	arasan_sdhci->sdhci.write8 = arasan_sdhci_writeb;
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
index 7071fc8d52..a307dc97cd 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -41,6 +41,7 @@
 #define SDHCI_BUFFER						0x20
 #define SDHCI_PRESENT_STATE					0x24
 #define  SDHCI_WRITE_PROTECT			BIT(19)
+#define  SDHCI_CARD_DETECT			BIT(18)
 #define  SDHCI_BUFFER_READ_ENABLE		BIT(11)
 #define  SDHCI_BUFFER_WRITE_ENABLE		BIT(10)
 #define  SDHCI_DATA_LINE_ACTIVE			BIT(2)
@@ -49,6 +50,8 @@
 #define SDHCI_PRESENT_STATE1					0x26
 #define SDHCI_HOST_CONTROL__POWER_CONTROL__BLOCK_GAP_CONTROL	0x28
 #define SDHCI_HOST_CONTROL					0x28
+#define  SDHCI_CARD_DETECT_SIGNAL_SELECTION	BIT(7)
+#define  SDHCI_CARD_DETECT_TEST_LEVEL		BIT(6)
 #define  SDHCI_DATA_WIDTH_8BIT			BIT(5)
 #define  SDHCI_HIGHSPEED_EN			BIT(2)
 #define  SDHCI_DATA_WIDTH_4BIT			BIT(1)
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
