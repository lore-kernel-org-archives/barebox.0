Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOeMR-0000oD-5V
 for barebox@lists.infradead.org; Wed, 15 Apr 2020 09:29:38 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 15 Apr 2020 11:29:16 +0200
Message-Id: <20200415092916.21285-4-a.fatoum@pengutronix.de>
In-Reply-To: <20200415092916.21285-1-a.fatoum@pengutronix.de>
References: <20200415092916.21285-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 4/4] mci: sdhci: add Atmel SDHCI (sama5d2, sam9x60) support
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

We already support Ethernet and QSPI on the SAMA5D2, but MMC was so far
missing. Port over the at91bootstrap driver to barebox. Some parts are
based on the U-Boot and Linux implementations.

To support future use in PBL, the driver model and driver implementation
parts are split into separate files with the latter being compilable for PBL
as well.

Registers, which are found in the common Linux sdhci.h have been added
to the barebox sdhci.h. Registers which appear to be Atmel specific have
been added to atmel-sdhci-common.c instead.

The driver still misses some parts, which will follow later:

  - ADMA is unsupported, PIO only for now
  - Only the SD/MMC controller already enabled by the first stage
    bootloader is supported. Further clocking changes appear
    to be necessary to enable another

Both can be retrofitted later on and don't hold us back from booting
from MMC.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/Kconfig              |   8 +
 drivers/mci/Makefile             |   1 +
 drivers/mci/atmel-sdhci-common.c | 407 +++++++++++++++++++++++++++++++
 drivers/mci/atmel-sdhci.c        | 169 +++++++++++++
 drivers/mci/atmel-sdhci.h        |  28 +++
 drivers/mci/sdhci.h              |  14 ++
 6 files changed, 627 insertions(+)
 create mode 100644 drivers/mci/atmel-sdhci-common.c
 create mode 100644 drivers/mci/atmel-sdhci.c
 create mode 100644 drivers/mci/atmel-sdhci.h

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 80b3a26002b4..50a13f01e841 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -124,6 +124,14 @@ config MCI_ATMEL
 	  Enable this entry to add support to read and write SD cards on a
 	  Atmel AT91.
 
+config MCI_ATMEL_SDHCI
+	bool "ATMEL SDHCI (sama5d2)"
+	select MCI_SDHCI
+	depends on ARCH_AT91
+	help
+	  Enable this entry to add support to read and write SD cards on an
+	  Atmel sama5d2
+
 config MCI_MMCI
 	bool "ARM PL180 MMCI"
 	depends on ARM_AMBA
diff --git a/drivers/mci/Makefile b/drivers/mci/Makefile
index 54eb65978e5d..177483dcfba5 100644
--- a/drivers/mci/Makefile
+++ b/drivers/mci/Makefile
@@ -1,6 +1,7 @@
 obj-$(CONFIG_MCI)		+= mci-core.o
 obj-$(CONFIG_MCI_ARASAN)	+= arasan-sdhci.o
 obj-$(CONFIG_MCI_ATMEL)		+= atmel_mci.o
+obj-$(CONFIG_MCI_ATMEL_SDHCI)	+= atmel-sdhci.o atmel-sdhci-common.o
 obj-$(CONFIG_MCI_BCM283X)	+= mci-bcm2835.o
 obj-$(CONFIG_MCI_BCM283X_SDHOST)	+= bcm2835-sdhost.o
 obj-$(CONFIG_MCI_DOVE)		+= dove-sdhci.o
diff --git a/drivers/mci/atmel-sdhci-common.c b/drivers/mci/atmel-sdhci-common.c
new file mode 100644
index 000000000000..680b1980c020
--- /dev/null
+++ b/drivers/mci/atmel-sdhci-common.c
@@ -0,0 +1,407 @@
+// SPDX-License-Identifier: GPL-2.0-only AND BSD-1-Clause
+/*
+ * Copyright (c) 2015, Atmel Corporation
+ * Copyright (c) 2019, Ahmad Fatoum, Pengutronix
+ *
+ * Atmel's name may not be used to endorse or promote products derived from
+ * this software without specific prior written permission.
+ */
+
+#define pr_fmt(fmt) "atmel-sdhci: " fmt
+
+#include <common.h>
+#include <mci.h>
+
+#include "atmel-sdhci.h"
+
+#define AT91_SDHCI_CA1R		0x44	/* Capabilities 1 Register */
+
+#define AT91_SDHCI_MC1R		0x204
+#define		AT91_SDHCI_MC1_FCD		BIT(7)
+#define AT91_SDHCI_CALCR	0x240
+#define		AT91_SDHCI_CALCR_EN		BIT(0)
+#define		AT91_SDHCI_CALCR_ALWYSON	BIT(4)
+
+static inline struct at91_sdhci *to_priv(struct sdhci *sdhci)
+{
+	return container_of(sdhci, struct at91_sdhci, sdhci);
+}
+
+void at91_sdhci_host_capability(struct at91_sdhci *host,
+				unsigned *voltages)
+{
+	u16 caps;
+
+	caps = sdhci_read16(&host->sdhci, SDHCI_CAPABILITIES_1);
+
+	if (caps & SDHCI_HOSTCAP_VOLTAGE_330)
+		*voltages |= MMC_VDD_32_33 | MMC_VDD_33_34;
+	if (caps & SDHCI_HOSTCAP_VOLTAGE_300)
+		*voltages |= MMC_VDD_29_30 | MMC_VDD_30_31;
+	if (caps & SDHCI_HOSTCAP_VOLTAGE_180)
+		*voltages |= MMC_VDD_165_195;
+}
+
+bool at91_sdhci_is_card_inserted(struct at91_sdhci *host)
+{
+	struct sdhci *sdhci = &host->sdhci;
+	bool is_inserted = false;
+	u32 status_mask, reg;
+	int ret;
+
+	/* Enable (unmask) the Interrupt Status 'card inserted' bit */
+	status_mask = sdhci_read32(sdhci, SDHCI_INT_ENABLE);
+	status_mask |= SDHCI_INT_CARD_INSERT;
+	sdhci_write32(sdhci, SDHCI_INT_ENABLE, status_mask);
+
+	reg = sdhci_read32(sdhci, SDHCI_PRESENT_STATE);
+	if (reg & SDHCI_CARD_PRESENT) {
+		is_inserted = true;
+		goto exit;
+	}
+
+	/*
+	 * Debouncing of the card detect pin is up to 13ms on sama5d2 rev B
+	 * and later.  Try to be safe and wait for up to 50ms.
+	 */
+	ret = sdhci_read32_poll_timeout(sdhci, SDHCI_INT_STATUS, reg,
+					reg & SDHCI_INT_CARD_INSERT,
+					50 * USEC_PER_MSEC);
+	if (ret == 0)
+		is_inserted = true;
+exit:
+	status_mask &= ~SDHCI_INT_CARD_INSERT;
+	sdhci_write32(sdhci, SDHCI_INT_ENABLE, status_mask);
+
+	status_mask = sdhci_read32(sdhci, SDHCI_INT_STATUS);
+	status_mask |= SDHCI_INT_CARD_INSERT;
+	sdhci_write32(sdhci, SDHCI_INT_STATUS, status_mask);
+
+	return is_inserted;
+}
+
+static int at91_sdhci_wait_for_done(struct at91_sdhci *host, u32 mask)
+{
+	struct sdhci *sdhci = &host->sdhci;
+	u16 status;
+	int ret;
+
+	ret = sdhci_read16_poll_timeout(sdhci, SDHCI_INT_NORMAL_STATUS, status,
+					(status & mask) == mask || (status & SDHCI_INT_ERROR),
+					USEC_PER_SEC);
+
+	if (ret < 0) {
+		pr_err("SDHCI timeout while waiting for done\n");
+		return ret;
+	}
+
+	if (status & SDHCI_INT_ERROR) {
+		pr_err("SDHCI_INT_ERROR: 0x%08x\n",
+			sdhci_read16(sdhci, SDHCI_INT_ERROR_STATUS));
+		return -EPERM;
+	}
+
+	return status;
+}
+
+int at91_sdhci_send_command(struct at91_sdhci *host, struct mci_cmd *cmd,
+			    struct mci_data *data)
+{
+	unsigned command, xfer;
+	struct sdhci *sdhci = &host->sdhci;
+	u32 mask, status, state;
+	int ret;
+
+	/* Wait for idle before next command */
+	mask = SDHCI_CMD_INHIBIT_CMD;
+	if (cmd->cmdidx != MMC_CMD_STOP_TRANSMISSION)
+		mask |= SDHCI_CMD_INHIBIT_DATA;
+
+	ret = sdhci_read32_poll_timeout(sdhci, SDHCI_PRESENT_STATE, state,
+					!(state & mask), 100 * USEC_PER_MSEC);
+	if (ret) {
+		pr_err("timeout while waiting for idle\n");
+		return ret;
+	}
+
+	sdhci_write32(sdhci, SDHCI_INT_STATUS, ~0U);
+
+	mask = SDHCI_INT_CMD_COMPLETE;
+
+	sdhci_set_cmd_xfer_mode(sdhci, cmd, data, false, &command, &xfer);
+
+	if (data) {
+		sdhci_write8(sdhci, SDHCI_TIMEOUT_CONTROL, 0xe);
+		sdhci_write16(sdhci, SDHCI_BLOCK_SIZE,
+			      SDHCI_DMA_BOUNDARY_512K
+			      | SDHCI_TRANSFER_BLOCK_SIZE(data->blocksize));
+		sdhci_write16(sdhci, SDHCI_BLOCK_COUNT, data->blocks);
+		sdhci_write16(sdhci, SDHCI_TRANSFER_MODE, xfer);
+		if (cmd->resp_type & MMC_RSP_BUSY)
+			mask |= SDHCI_INT_XFER_COMPLETE;
+	} else if (cmd->resp_type & MMC_RSP_BUSY) {
+		sdhci_write16(sdhci, SDHCI_TIMEOUT_CONTROL, 0xe);
+	}
+
+	sdhci_write32(sdhci, SDHCI_ARGUMENT, cmd->cmdarg);
+	sdhci_write16(sdhci, SDHCI_COMMAND, command);
+
+	status = at91_sdhci_wait_for_done(host, mask);
+	if (status >= 0 && (status & (SDHCI_INT_ERROR | mask)) == mask) {
+		sdhci_read_response(sdhci, cmd);
+		sdhci_write32(sdhci, SDHCI_INT_STATUS, mask);
+
+		if (data)
+			sdhci_transfer_data(sdhci, data);
+
+		udelay(1000);
+
+		status = sdhci_read32(sdhci, SDHCI_INT_STATUS);
+		sdhci_write32(sdhci, SDHCI_INT_STATUS, ~0U);
+
+		return 0;
+	}
+
+	status = sdhci_read32(sdhci, SDHCI_INT_STATUS);
+	sdhci_write32(sdhci, SDHCI_INT_STATUS, ~0U);
+
+	sdhci_reset(sdhci, SDHCI_RESET_CMD);
+	sdhci_reset(sdhci, SDHCI_RESET_DATA);
+
+	return status & SDHCI_INT_TIMEOUT ? -ETIMEDOUT : -ECOMM;
+}
+
+static void at91_sdhci_set_power(struct at91_sdhci *host, unsigned vdd)
+{
+	struct sdhci *sdhci = &host->sdhci;
+	u8 pwr = 0;
+
+	switch (vdd) {
+	case MMC_VDD_165_195:
+		pwr = SDHCI_POWER_180;
+		break;
+	case MMC_VDD_29_30:
+	case MMC_VDD_30_31:
+		pwr = SDHCI_POWER_300;
+		break;
+	case MMC_VDD_32_33:
+	case MMC_VDD_33_34:
+		pwr = SDHCI_POWER_330;
+		break;
+	}
+
+	if (pwr == 0) {
+		sdhci_write8(sdhci, SDHCI_POWER_CONTROL, 0);
+		return;
+	}
+
+	pwr |= SDHCI_BUS_POWER_EN;
+
+	sdhci_write8(sdhci, SDHCI_POWER_CONTROL, pwr);
+}
+
+static int at91_sdhci_set_clock(struct at91_sdhci *host, unsigned clock)
+{
+
+	struct sdhci *sdhci = &host->sdhci;
+	unsigned clk = 0, clk_div;
+	unsigned reg;
+	u32 present_mask, caps, caps_clk_mult;
+	int ret;
+
+	present_mask = SDHCI_CMD_INHIBIT_CMD | SDHCI_CMD_INHIBIT_DATA;
+	ret = sdhci_read32_poll_timeout(sdhci, SDHCI_PRESENT_STATE, reg,
+					!(reg & present_mask),
+					100 * USEC_PER_MSEC);
+	if (ret) {
+		pr_warn("Timeout waiting for CMD and DAT Inhibit bits\n");
+		return ret;
+	}
+
+	sdhci_write16(sdhci, SDHCI_CLOCK_CONTROL, 0);
+
+	if (clock == 0)
+		return 0;
+
+	caps = sdhci_read32(sdhci, AT91_SDHCI_CA1R);
+
+	caps_clk_mult = (caps & SDHCI_CLOCK_MUL_MASK) >> SDHCI_CLOCK_MUL_SHIFT;
+
+	if (caps_clk_mult) {
+		for (clk_div = 1; clk_div <= 1024; clk_div++) {
+			if (host->caps_max_clock / clk_div <= clock)
+				break;
+		}
+		clk = SDHCI_PROG_CLOCK_MODE;
+		clk_div -= 1;
+	} else {
+		/* Version 3.00 divisors must be a multiple of 2. */
+		if (host->caps_max_clock <= clock) {
+			clk_div = 1;
+		} else {
+			for (clk_div = 2; clk_div < 2048; clk_div += 2) {
+				if (host->caps_max_clock / clk_div <= clock)
+					break;
+			}
+		}
+		clk_div >>= 1;
+	}
+
+	clk |= SDHCI_FREQ_SEL(clk_div);
+	clk |= ((clk_div & SDHCI_DIV_HI_MASK) >> SDHCI_DIV_MASK_LEN)
+		<< SDHCI_DIVIDER_HI_SHIFT;
+	clk |= SDHCI_INTCLOCK_EN;
+
+	sdhci_write16(sdhci, SDHCI_CLOCK_CONTROL, clk);
+
+	ret = sdhci_read32_poll_timeout(sdhci, SDHCI_CLOCK_CONTROL, clk,
+					clk & SDHCI_INTCLOCK_STABLE,
+					20 * USEC_PER_MSEC);
+	if (ret) {
+		pr_warn("Timeout waiting for clock stable\n");
+		return ret;
+	}
+
+	clk |= SDHCI_SDCLOCK_EN;
+	sdhci_write16(sdhci, SDHCI_CLOCK_CONTROL, clk);
+
+	reg = sdhci_read8(sdhci, SDHCI_HOST_CONTROL);
+	if (clock > 26000000)
+		reg |= SDHCI_HIGHSPEED_EN;
+	else
+		reg &= ~SDHCI_HIGHSPEED_EN;
+
+	sdhci_write8(sdhci, SDHCI_HOST_CONTROL, reg);
+
+	return 0;
+}
+
+static int at91_sdhci_set_bus_width(struct at91_sdhci *host, unsigned bus_width)
+{
+	struct sdhci *sdhci = &host->sdhci;
+	unsigned reg;
+
+	reg = sdhci_read8(sdhci, SDHCI_HOST_CONTROL);
+
+	switch(bus_width) {
+	case MMC_BUS_WIDTH_8:
+		reg |= SDHCI_DATA_WIDTH_8BIT;
+		break;
+	case MMC_BUS_WIDTH_4:
+		reg &= ~SDHCI_DATA_WIDTH_8BIT;
+		reg |= SDHCI_DATA_WIDTH_4BIT;
+		break;
+	default:
+		reg &= ~SDHCI_DATA_WIDTH_8BIT;
+		reg &= ~SDHCI_DATA_WIDTH_4BIT;
+	}
+
+	sdhci_write8(sdhci, SDHCI_HOST_CONTROL, reg);
+
+	return 0;
+}
+
+int at91_sdhci_set_ios(struct at91_sdhci *host, struct mci_ios *ios)
+{
+	int ret;
+
+	ret = at91_sdhci_set_clock(host, ios->clock);
+	if (ret)
+		return ret;
+
+	return at91_sdhci_set_bus_width(host, ios->bus_width);
+}
+
+int at91_sdhci_init(struct at91_sdhci *host, u32 maxclk,
+		    bool force_cd, bool cal_always_on)
+{
+	struct sdhci *sdhci = &host->sdhci;
+	unsigned status_mask;
+
+	host->caps_max_clock = maxclk;
+
+	at91_sdhci_set_power(host, MMC_VDD_32_33);
+
+	status_mask = SDHCI_INT_CMD_COMPLETE
+		| SDHCI_INT_XFER_COMPLETE
+		| SDHCI_INT_SPACE_AVAIL
+		| SDHCI_INT_DATA_AVAIL;
+
+	status_mask |= SDHCI_INT_TIMEOUT
+		| SDHCI_INT_CRC
+		| SDHCI_INT_END_BIT
+		| SDHCI_INT_INDEX
+		| SDHCI_INT_DATA_TIMEOUT
+		| SDHCI_INT_DATA_CRC
+		| SDHCI_INT_DATA_END_BIT;
+
+	sdhci_write32(sdhci, SDHCI_INT_ENABLE, status_mask);
+
+	sdhci_write32(sdhci, SDHCI_SIGNAL_ENABLE, 0);
+
+	/*
+	 * If the device attached to the mci bus is not removable, it is safer
+	 * to set the Force Card Detect bit. People often don't connect the
+	 * card detect signal and use this pin for another purpose. If the card
+	 * detect pin is not muxed to SDHCI controller, a default value is
+	 * used. This value can be different from a SoC revision to another
+	 * one. Problems come when this default value is not card present. To
+	 * avoid this case, if the device is non removable then the card
+	 * detection procedure using the SDMCC_CD signal is bypassed.
+	 * This bit is reset when a software reset for all command is performed
+	 * so we need to implement our own reset function to set back this bit.
+	 */
+	if (force_cd) {
+		u8 mc1r = sdhci_read8(sdhci, AT91_SDHCI_MC1R);
+		mc1r |= AT91_SDHCI_MC1_FCD;
+		sdhci_write8(sdhci, AT91_SDHCI_MC1R, mc1r);
+	}
+
+	if (cal_always_on) {
+		sdhci_write32(sdhci, AT91_SDHCI_CALCR_ALWYSON | AT91_SDHCI_CALCR_EN,
+			     AT91_SDHCI_CALCR);
+	}
+
+	return 0;
+}
+
+static u32 at91_sdhci_read32(struct sdhci *sdhci, int reg)
+{
+	return readl(to_priv(sdhci)->base + reg);
+}
+
+static void at91_sdhci_write32(struct sdhci *sdhci, int reg, u32 value)
+{
+	writel(value, to_priv(sdhci)->base + reg);
+}
+
+static u16 at91_sdhci_read16(struct sdhci *sdhci, int reg)
+{
+	return readw(to_priv(sdhci)->base + reg);
+}
+
+static void at91_sdhci_write16(struct sdhci *sdhci, int reg, u16 value)
+{
+	writew(value, to_priv(sdhci)->base + reg);
+}
+
+static u8 at91_sdhci_read8(struct sdhci *sdhci, int reg)
+{
+	return readb(to_priv(sdhci)->base + reg);
+}
+
+static void at91_sdhci_write8(struct sdhci *sdhci, int reg, u8 value)
+{
+	writeb(value, to_priv(sdhci)->base + reg);
+}
+
+void at91_sdhci_mmio_init(struct at91_sdhci *host, void __iomem *base)
+{
+	host->base = base;
+	host->sdhci.read8 = at91_sdhci_read8;
+	host->sdhci.read16 = at91_sdhci_read16;
+	host->sdhci.read32 = at91_sdhci_read32;
+	host->sdhci.write8 = at91_sdhci_write8;
+	host->sdhci.write16 = at91_sdhci_write16;
+	host->sdhci.write32 = at91_sdhci_write32;
+}
diff --git a/drivers/mci/atmel-sdhci.c b/drivers/mci/atmel-sdhci.c
new file mode 100644
index 000000000000..635118647676
--- /dev/null
+++ b/drivers/mci/atmel-sdhci.c
@@ -0,0 +1,169 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Atmel SDMMC controller driver.
+ *
+ * Copyright (C) 2015 Atmel,
+ *		 2015 Ludovic Desroches <ludovic.desroches@atmel.com>
+ *		 2020 Ahmad Fatoum <a.fatoum@pengutronix.de>
+ */
+
+#include <common.h>
+#include <init.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <of.h>
+#include <mci.h>
+
+#include "atmel-sdhci.h"
+
+#define ATMEL_SDHC_MIN_FREQ	400000
+#define ATMEL_SDHC_GCK_RATE	240000000
+
+struct at91_sdhci_priv {
+	struct at91_sdhci host;
+	struct mci_host mci;
+	struct clk *hclock, *gck, *mainck;
+	bool cal_always_on;
+	u32 gck_rate;
+};
+
+#define to_priv(h) container_of(h, struct at91_sdhci_priv, mci)
+
+static int at91_sdhci_mci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
+				   struct mci_data *data)
+{
+	return at91_sdhci_send_command(&to_priv(mci)->host, cmd, data);
+}
+
+static void at91_sdhci_mci_set_ios(struct mci_host *mci, struct mci_ios *ios)
+{
+	at91_sdhci_set_ios(&to_priv(mci)->host, ios);
+}
+
+static int at91_sdhci_mci_init(struct mci_host *mci, struct device_d *dev)
+{
+	struct at91_sdhci_priv *priv = to_priv(mci);
+	struct sdhci *sdhci = &priv->host.sdhci;
+	int ret;
+
+	ret = sdhci_reset(sdhci, SDHCI_RESET_ALL);
+	if (ret)
+		return ret;
+
+	return at91_sdhci_init(&priv->host, priv->gck_rate,
+			       priv->mci.non_removable, priv->cal_always_on);
+}
+
+static int at91_sdhci_conf_clks(struct at91_sdhci_priv *priv)
+{
+	unsigned long real_gck_rate;
+	int ret;
+
+	/*
+	 * The mult clock is provided by as a generated clock by the PMC
+	 * controller. In order to set the rate of gck, we have to get the
+	 * base clock rate and the clock mult from capabilities.
+	 */
+	clk_enable(priv->hclock);
+	ret = clk_set_rate(priv->gck, ATMEL_SDHC_GCK_RATE);
+	if (ret < 0) {
+		clk_disable(priv->hclock);
+		return ret;
+	}
+
+	real_gck_rate = clk_get_rate(priv->gck);
+
+	clk_enable(priv->mainck);
+	clk_enable(priv->gck);
+
+	return clamp_t(int, real_gck_rate, ATMEL_SDHC_MIN_FREQ, INT_MAX);
+}
+
+static void at91_sdhci_set_mci_caps(struct at91_sdhci_priv *priv)
+{
+	struct mci_host *mci = &priv->mci;
+	at91_sdhci_host_capability(&priv->host, &mci->voltages);
+
+	if (mci->f_max >= 26000000)
+		mci->host_caps |= MMC_CAP_MMC_HIGHSPEED;
+	if (mci->f_max >= 52000000)
+		mci->host_caps |= MMC_CAP_MMC_HIGHSPEED_52MHZ;
+
+	mci_of_parse(mci);
+}
+
+static int at91_sdhci_card_present(struct mci_host *mci)
+{
+	return at91_sdhci_is_card_inserted(&to_priv(mci)->host);
+}
+
+static int at91_sdhci_probe(struct device_d *dev)
+{
+	struct at91_sdhci_priv *priv;
+	struct resource *iores;
+
+	priv = xzalloc(sizeof(*priv));
+	dev->priv = priv;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores)) {
+		dev_err(dev, "could not get iomem region\n");
+		return PTR_ERR(iores);
+	}
+
+	priv->mainck = clk_get(dev, "baseclk");
+	if (IS_ERR(priv->mainck)) {
+		dev_err(dev, "failed to get baseclk\n");
+		return PTR_ERR(priv->mainck);
+	}
+
+	priv->hclock = clk_get(dev, "hclock");
+	if (IS_ERR(priv->hclock)) {
+		dev_err(dev, "failed to get hclock\n");
+		return PTR_ERR(priv->hclock);
+	}
+
+	priv->gck = clk_get(dev, "multclk");
+	if (IS_ERR(priv->gck)) {
+		dev_err(dev, "failed to get multclk\n");
+		return PTR_ERR(priv->gck);
+	}
+
+	/*
+	 * if SDCAL pin is wrongly connected, we must enable
+	 * the analog calibration cell permanently.
+	 */
+	priv->cal_always_on = of_property_read_bool(dev->device_node,
+						    "microchip,sdcal-inverted");
+
+	at91_sdhci_mmio_init(&priv->host, IOMEM(iores->start));
+
+	priv->gck_rate = at91_sdhci_conf_clks(priv);
+	if (priv->gck_rate < 0)
+		return priv->gck_rate;
+
+	priv->mci.hw_dev = dev;
+	priv->mci.send_cmd = at91_sdhci_mci_send_cmd;
+	priv->mci.set_ios = at91_sdhci_mci_set_ios;
+	priv->mci.init = at91_sdhci_mci_init;
+	priv->mci.f_max = priv->gck_rate;
+	priv->mci.f_min = ATMEL_SDHC_MIN_FREQ;
+	priv->mci.card_present = at91_sdhci_card_present;
+
+	at91_sdhci_set_mci_caps(priv);
+
+	return mci_register(&priv->mci);
+}
+
+static const struct of_device_id at91_sdhci_dt_match[] = {
+	{ .compatible = "atmel,sama5d2-sdhci"  },
+	{ .compatible = "microchip,sam9x60-sdhci" },
+	{ /* sentinel */ }
+};
+
+static struct driver_d at91_sdhci_driver = {
+	.name		= "sdhci-at91",
+	.of_compatible	= DRV_OF_COMPAT(at91_sdhci_dt_match),
+	.probe		= at91_sdhci_probe,
+};
+device_platform_driver(at91_sdhci_driver);
diff --git a/drivers/mci/atmel-sdhci.h b/drivers/mci/atmel-sdhci.h
new file mode 100644
index 000000000000..897ed4e4de86
--- /dev/null
+++ b/drivers/mci/atmel-sdhci.h
@@ -0,0 +1,28 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (c) 2020 Ahmad Fatoum, Pengutronix
+
+#ifndef ATMEL_SDHCI_H_
+#define ATMEL_SDHCI_H_
+
+#include <linux/types.h>
+#include <mci.h>
+
+#include "sdhci.h"
+
+struct at91_sdhci {
+	struct sdhci	sdhci;
+	void __iomem	*base;
+	u32		caps_max_clock;
+};
+
+int at91_sdhci_init(struct at91_sdhci *host, u32 maxclk,
+		    bool force_cd, bool cal_always_on);
+void at91_sdhci_mmio_init(struct at91_sdhci *host, void __iomem *base);
+int at91_sdhci_send_command(struct at91_sdhci *host, struct mci_cmd *sd_cmd,
+			    struct mci_data *data);
+bool at91_sdhci_is_card_inserted(struct at91_sdhci *host);
+void at91_sdhci_host_capability(struct at91_sdhci *host,
+				unsigned int *voltages);
+int at91_sdhci_set_ios(struct at91_sdhci *host, struct mci_ios *ios);
+
+#endif
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index bf0c3e0f6c0c..d75335a8c272 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -44,6 +44,7 @@
 #define SDHCI_PRESENT_STATE					0x24
 #define  SDHCI_WRITE_PROTECT			BIT(19)
 #define  SDHCI_CARD_DETECT			BIT(18)
+#define  SDHCI_CARD_PRESENT			BIT(16)
 #define  SDHCI_BUFFER_READ_ENABLE		BIT(11)
 #define  SDHCI_BUFFER_WRITE_ENABLE		BIT(10)
 #define  SDHCI_DATA_LINE_ACTIVE			BIT(2)
@@ -58,12 +59,20 @@
 #define  SDHCI_HIGHSPEED_EN			BIT(2)
 #define  SDHCI_DATA_WIDTH_4BIT			BIT(1)
 #define SDHCI_POWER_CONTROL					0x29
+#define  SDHCI_POWER_ON				0x01
+#define  SDHCI_POWER_180			0x0A
+#define  SDHCI_POWER_300			0x0C
+#define  SDHCI_POWER_330			0x0E
 #define  SDHCI_BUS_VOLTAGE_330			SDHCI_BUS_VOLTAGE(7)
 #define  SDHCI_BUS_VOLTAGE(v)			((v) << 1)
 #define  SDHCI_BUS_POWER_EN			BIT(0)
 #define SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET	0x2c
 #define SDHCI_CLOCK_CONTROL					0x2c
+#define  SDHCI_DIVIDER_HI_SHIFT			6
+#define  SDHCI_DIV_HI_MASK			0x300
+#define  SDHCI_DIV_MASK_LEN			8
 #define  SDHCI_FREQ_SEL(x)			(((x) & 0xff) << 8)
+#define  SDHCI_PROG_CLOCK_MODE			BIT(5)
 #define  SDHCI_SDCLOCK_EN			BIT(2)
 #define  SDHCI_INTCLOCK_STABLE			BIT(1)
 #define  SDHCI_INTCLOCK_EN			BIT(0)
@@ -83,6 +92,7 @@
 #define  SDHCI_INT_TIMEOUT			BIT(16)
 #define  SDHCI_INT_ERROR			BIT(15)
 #define  SDHCI_INT_CARD_INT			BIT(8)
+#define  SDHCI_INT_CARD_INSERT			BIT(6)
 #define  SDHCI_INT_DATA_AVAIL			BIT(5)
 #define  SDHCI_INT_SPACE_AVAIL			BIT(4)
 #define  SDHCI_INT_DMA				BIT(3)
@@ -90,6 +100,7 @@
 #define  SDHCI_INT_CMD_COMPLETE			BIT(0)
 #define SDHCI_INT_ERROR_STATUS					0x32
 #define SDHCI_INT_ENABLE					0x34
+#define SDHCI_INT_ERROR_ENABLE					0x36
 #define SDHCI_SIGNAL_ENABLE					0x38
 #define SDHCI_ACMD12_ERR__HOST_CONTROL2				0x3C
 #define SDHCI_CAPABILITIES					0x40
@@ -100,6 +111,9 @@
 #define  SDHCI_HOSTCAP_HIGHSPEED		BIT(5)
 #define  SDHCI_HOSTCAP_8BIT			BIT(2)
 
+#define  SDHCI_CLOCK_MUL_MASK	0x00FF0000
+#define  SDHCI_CLOCK_MUL_SHIFT	16
+
 #define SDHCI_SPEC_200_MAX_CLK_DIVIDER	256
 #define SDHCI_MMC_BOOT						0xC4
 
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
