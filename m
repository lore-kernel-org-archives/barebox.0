Delivery-date: Mon, 07 Jun 2021 12:53:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqCsp-0006Ab-4U
	for lore@lore.pengutronix.de; Mon, 07 Jun 2021 12:53:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqCsj-0002Wi-Jn
	for lore@pengutronix.de; Mon, 07 Jun 2021 12:53:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tPUvGN2pxhejjBK5TV/BwmBjnbmltCzMZRAATmglcxI=; b=eJTrtIqpPbv2GY
	8JW0pq1BgxPFcS/Ld4s+YxmdatWKzTQFFg4caY1f223uGvYhAQvG6ACq7bZqV3xXmL9G570F1/HxV
	/0zTIhB5zWyPgHCfQ1DjdQDz61aJDm3AHQmm0Ktd2gpmhYI4LtKbZzbmDSvqxC9oCUB7pgKKASdSn
	4o34Ue+DGMYoQT0ZIA6L/XZymGGqu76LhDRQLcQ43St5fsbLCljxQILDLJFK6WnnKQDvkJnf0LOdy
	yjN2eX9s3RsvxNWIIYAPd4oAl3lqWqWbhwvUtDNJLnchvRz60TthYbozP/urMRy0UoJE+w+OPOnjB
	QWX6tM0Wc8/ie6qVZjzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqCqo-0034PW-E6; Mon, 07 Jun 2021 10:51:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqCjx-00322H-FA
 for barebox@lists.infradead.org; Mon, 07 Jun 2021 10:44:23 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqCju-0000dn-PK; Mon, 07 Jun 2021 12:44:14 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqCju-0008MB-3g; Mon, 07 Jun 2021 12:44:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Jun 2021 12:44:11 +0200
Message-Id: <20210607104411.23071-13-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210607104411.23071-1-s.hauer@pengutronix.de>
References: <20210607104411.23071-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_034417_889618_8CB7072F 
X-CRM114-Status: GOOD (  25.31  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 12/12] mci: Add support for Rockchip variant of the dwcmshc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds support for a Rockchip derivation of the DWCMSHC controller
which itself is a SDHCI controller found on some Rockchip SoCs like the
RK3568.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/Kconfig                  |   7 +
 drivers/mci/Makefile                 |   1 +
 drivers/mci/rockchip-dwcmshc-sdhci.c | 382 +++++++++++++++++++++++++++
 3 files changed, 390 insertions(+)
 create mode 100644 drivers/mci/rockchip-dwcmshc-sdhci.c

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 7d4e72138d..e1fcd41271 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -79,6 +79,13 @@ config MCI_MXS
 	  Enable this entry to add support to read and write SD cards on a
 	  i.MX23/i.MX28 based system.
 
+config MCI_ROCKCHIP_DWCMSHC
+	bool "MCI sdhc support for Rockchip SoCs"
+	select MCI_SDHCI
+	help
+	  Enable this entry to add support for a Rockchip derivation of the
+	  DWCMSHC controller found on some Rockchip SoCs like the RK3568.
+
 config MCI_S3C
 	bool "S3C"
 	depends on ARCH_S3C24xx
diff --git a/drivers/mci/Makefile b/drivers/mci/Makefile
index 60dc100c37..b113b1c732 100644
--- a/drivers/mci/Makefile
+++ b/drivers/mci/Makefile
@@ -14,6 +14,7 @@ obj-$(CONFIG_MCI_MXS)		+= mxs.o
 obj-$(CONFIG_MCI_OMAP_HSMMC)	+= omap_hsmmc.o
 obj-$(CONFIG_MCI_PXA)		+= pxamci.o
 obj-$(CONFIG_MCI_S3C)		+= s3c.o
+obj-$(CONFIG_MCI_ROCKCHIP_DWCMSHC)	+= rockchip-dwcmshc-sdhci.o
 obj-$(CONFIG_MCI_TEGRA)		+= tegra-sdmmc.o
 obj-$(CONFIG_MCI_SPI)		+= mci_spi.o
 obj-$(CONFIG_MCI_DW)		+= dw_mmc.o
diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
new file mode 100644
index 0000000000..e44fc16c39
--- /dev/null
+++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
@@ -0,0 +1,382 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#include <clock.h>
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <linux/clk.h>
+#include <mci.h>
+#include <linux/iopoll.h>
+
+#include "sdhci.h"
+
+/* DWCMSHC specific Mode Select value */
+#define DWCMSHC_CTRL_HS400		0x7
+
+#define DWCMSHC_VER_ID			0x500
+#define DWCMSHC_VER_TYPE		0x504
+#define DWCMSHC_HOST_CTRL3		0x508
+#define DWCMSHC_EMMC_CONTROL		0x52c
+#define DWCMSHC_EMMC_ATCTRL		0x540
+
+/* Rockchip specific Registers */
+#define DWCMSHC_EMMC_DLL_CTRL		0x800
+#define DWCMSHC_EMMC_DLL_RXCLK		0x804
+#define DWCMSHC_EMMC_DLL_TXCLK		0x808
+#define DWCMSHC_EMMC_DLL_STRBIN		0x80c
+#define DWCMSHC_EMMC_DLL_STATUS0	0x840
+#define DWCMSHC_EMMC_DLL_START		BIT(0)
+#define DWCMSHC_EMMC_DLL_RXCLK_SRCSEL	29
+#define DWCMSHC_EMMC_DLL_START_POINT	16
+#define DWCMSHC_EMMC_DLL_INC		8
+#define DWCMSHC_EMMC_DLL_DLYENA		BIT(27)
+#define DLL_TXCLK_TAPNUM_DEFAULT	0x8
+#define DLL_STRBIN_TAPNUM_DEFAULT	0x8
+#define DLL_TXCLK_TAPNUM_FROM_SW	BIT(24)
+#define DLL_STRBIN_TAPNUM_FROM_SW	BIT(24)
+#define DWCMSHC_EMMC_DLL_LOCKED		BIT(8)
+#define DWCMSHC_EMMC_DLL_TIMEOUT	BIT(9)
+#define DLL_RXCLK_NO_INVERTER		1
+#define DLL_RXCLK_INVERTER		0
+#define DWCMSHC_ENHANCED_STROBE		BIT(8)
+#define DLL_LOCK_WO_TMOUT(x) \
+	((((x) & DWCMSHC_EMMC_DLL_LOCKED) == DWCMSHC_EMMC_DLL_LOCKED) && \
+	(((x) & DWCMSHC_EMMC_DLL_TIMEOUT) == 0))
+
+#define SDHCI_DWCMSHC_INT_DATA_MASK		SDHCI_INT_XFER_COMPLETE | \
+						SDHCI_INT_DMA | \
+						SDHCI_INT_SPACE_AVAIL | \
+						SDHCI_INT_DATA_AVAIL | \
+						SDHCI_INT_DATA_TIMEOUT | \
+						SDHCI_INT_DATA_CRC | \
+						SDHCI_INT_DATA_END_BIT
+
+#define SDHCI_DWCMSHC_INT_CMD_MASK		SDHCI_INT_CMD_COMPLETE | \
+						SDHCI_INT_TIMEOUT | \
+						SDHCI_INT_CRC | \
+						SDHCI_INT_END_BIT | \
+						SDHCI_INT_INDEX
+
+enum {
+	CLK_CORE,
+	CLK_BUS,
+	CLK_AXI,
+	CLK_BLOCK,
+	CLK_TIMER,
+	CLK_MAX,
+};
+
+struct rk_sdhci_host {
+	struct mci_host		mci;
+	struct sdhci		sdhci;
+	struct clk_bulk_data	clks[CLK_MAX];
+};
+
+
+static inline
+struct rk_sdhci_host *to_rk_sdhci_host(struct mci_host *mci)
+{
+	return container_of(mci, struct rk_sdhci_host, mci);
+}
+
+static int rk_sdhci_card_present(struct mci_host *mci)
+{
+	struct rk_sdhci_host *host = to_rk_sdhci_host(mci);
+
+	return !!(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & SDHCI_CARD_DETECT);
+}
+
+static int rk_sdhci_reset(struct rk_sdhci_host *host, u8 mask)
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
+	return 0;
+}
+
+static int rk_sdhci_init(struct mci_host *mci, struct device_d *dev)
+{
+	struct rk_sdhci_host *host = to_rk_sdhci_host(mci);
+	int ret;
+
+	ret = rk_sdhci_reset(host, SDHCI_RESET_ALL);
+	if (ret)
+		return ret;
+
+	sdhci_write8(&host->sdhci, SDHCI_POWER_CONTROL,
+			    SDHCI_BUS_VOLTAGE_330 | SDHCI_BUS_POWER_EN);
+	udelay(400);
+
+	sdhci_write32(&host->sdhci, SDHCI_INT_ENABLE,
+			    SDHCI_DWCMSHC_INT_DATA_MASK |
+			    SDHCI_DWCMSHC_INT_CMD_MASK);
+	sdhci_write32(&host->sdhci, SDHCI_SIGNAL_ENABLE, 0x00);
+
+	/* Disable cmd conflict check */
+	sdhci_write32(&host->sdhci, DWCMSHC_HOST_CTRL3, 0x0);
+	/* Reset previous settings */
+	sdhci_write32(&host->sdhci, DWCMSHC_EMMC_DLL_TXCLK, 0);
+	sdhci_write32(&host->sdhci, DWCMSHC_EMMC_DLL_STRBIN, 0);
+
+	return 0;
+}
+
+static void rk_sdhci_set_clock(struct rk_sdhci_host *host, unsigned int clock)
+{
+	u32 txclk_tapnum = DLL_TXCLK_TAPNUM_DEFAULT, extra;
+	int err;
+
+	host->mci.clock = 0;
+
+	/* DO NOT TOUCH THIS SETTING */
+	extra = DWCMSHC_EMMC_DLL_DLYENA |
+		DLL_RXCLK_NO_INVERTER << DWCMSHC_EMMC_DLL_RXCLK_SRCSEL;
+	sdhci_write32(&host->sdhci, DWCMSHC_EMMC_DLL_RXCLK, extra);
+
+	if (clock == 0)
+		return;
+
+	/* Rockchip platform only support 375KHz for identify mode */
+	if (clock <= 400000)
+		clock = 375000;
+
+	clk_set_rate(host->clks[CLK_CORE].clk, clock);
+
+	sdhci_set_clock(&host->sdhci, clock, clk_get_rate(host->clks[CLK_CORE].clk));
+
+	if (clock <= 400000)
+		return;
+
+	/* Reset DLL */
+	sdhci_write32(&host->sdhci, DWCMSHC_EMMC_DLL_CTRL, BIT(1));
+	udelay(1);
+	sdhci_write32(&host->sdhci, DWCMSHC_EMMC_DLL_CTRL, 0x0);
+
+	/* Init DLL settings */
+	extra = 0x5 << DWCMSHC_EMMC_DLL_START_POINT |
+		0x2 << DWCMSHC_EMMC_DLL_INC |
+		DWCMSHC_EMMC_DLL_START;
+	sdhci_write32(&host->sdhci, DWCMSHC_EMMC_DLL_CTRL, extra);
+	err = readl_poll_timeout(host->sdhci.base + DWCMSHC_EMMC_DLL_STATUS0,
+				 extra, DLL_LOCK_WO_TMOUT(extra),
+				 500 * USEC_PER_MSEC);
+	if (err) {
+		dev_err(host->mci.hw_dev, "DLL lock timeout!\n");
+		return;
+	}
+
+	/* Disable cmd conflict check */
+	extra = sdhci_read32(&host->sdhci, DWCMSHC_HOST_CTRL3);
+	extra &= ~BIT(0);
+	sdhci_write32(&host->sdhci, DWCMSHC_HOST_CTRL3, extra);
+
+	extra = 0x1 << 16 | /* tune clock stop en */
+		0x2 << 17 | /* pre-change delay */
+		0x3 << 19;  /* post-change delay */
+	sdhci_write32(&host->sdhci, DWCMSHC_EMMC_ATCTRL, extra);
+
+	extra = DWCMSHC_EMMC_DLL_DLYENA |
+		DLL_TXCLK_TAPNUM_FROM_SW |
+		txclk_tapnum;
+	sdhci_write32(&host->sdhci, DWCMSHC_EMMC_DLL_TXCLK, extra);
+
+	extra = DWCMSHC_EMMC_DLL_DLYENA |
+		DLL_STRBIN_TAPNUM_DEFAULT |
+		DLL_STRBIN_TAPNUM_FROM_SW;
+	sdhci_write32(&host->sdhci, DWCMSHC_EMMC_DLL_STRBIN, extra);
+}
+
+static void rk_sdhci_set_ios(struct mci_host *mci, struct mci_ios *ios)
+{
+	struct rk_sdhci_host *host = to_rk_sdhci_host(mci);
+	u16 val;
+
+	/* stop clock */
+	sdhci_write16(&host->sdhci, SDHCI_CLOCK_CONTROL, 0);
+
+	if (ios->clock)
+		rk_sdhci_set_clock(host, ios->clock);
+
+	sdhci_set_bus_width(&host->sdhci, ios->bus_width);
+
+	val = sdhci_read8(&host->sdhci, SDHCI_HOST_CONTROL);
+
+	if (ios->clock > 26000000)
+		val |= SDHCI_CTRL_HISPD;
+	else
+		val &= ~SDHCI_CTRL_HISPD;
+
+	sdhci_write8(&host->sdhci, SDHCI_HOST_CONTROL, val);
+}
+
+static int rk_sdhci_wait_for_done(struct rk_sdhci_host *host, u32 mask)
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
+static void print_error(struct rk_sdhci_host *host, int cmdidx)
+{
+	dev_err(host->mci.hw_dev,
+		"error while transfering data for command %d\n", cmdidx);
+	dev_err(host->mci.hw_dev, "state = 0x%08x , interrupt = 0x%08x\n",
+		sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE),
+		sdhci_read32(&host->sdhci, SDHCI_INT_NORMAL_STATUS));
+}
+
+static int rk_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
+				 struct mci_data *data)
+{
+	struct rk_sdhci_host *host = to_rk_sdhci_host(mci);
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
+		mask |= SDHCI_INT_DATA_AVAIL;
+
+	sdhci_set_cmd_xfer_mode(&host->sdhci, cmd, data, false, &command, &xfer);
+
+	sdhci_write8(&host->sdhci, SDHCI_TIMEOUT_CONTROL, 0xe);
+
+	sdhci_write16(&host->sdhci, SDHCI_TRANSFER_MODE, xfer);
+
+	if (data) {
+		sdhci_write16(&host->sdhci, SDHCI_BLOCK_SIZE, SDHCI_DMA_BOUNDARY_512K |
+			    SDHCI_TRANSFER_BLOCK_SIZE(data->blocksize));
+		sdhci_write16(&host->sdhci, SDHCI_BLOCK_COUNT, data->blocks);
+	}
+
+	sdhci_write32(&host->sdhci, SDHCI_ARGUMENT, cmd->cmdarg);
+	sdhci_write16(&host->sdhci, SDHCI_COMMAND, command);
+
+	ret = rk_sdhci_wait_for_done(host, mask);
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
+		rk_sdhci_reset(host, BIT(1)); /* SDHCI_RESET_CMD */
+		rk_sdhci_reset(host, BIT(2)); /* SDHCI_RESET_DATA */
+	}
+
+	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
+	return ret;
+}
+
+static int rk_sdhci_probe(struct device_d *dev)
+{
+	struct rk_sdhci_host *host;
+	struct resource *iores;
+	struct mci_host *mci;
+	int ret;
+
+	host = xzalloc(sizeof(*host));
+
+	mci = &host->mci;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+
+	host->sdhci.base = IOMEM(iores->start);
+	host->sdhci.mci = mci;
+	mci->send_cmd = rk_sdhci_send_cmd;
+	mci->set_ios = rk_sdhci_set_ios;
+	mci->init = rk_sdhci_init;
+	mci->card_present = rk_sdhci_card_present;
+	mci->hw_dev = dev;
+
+	host->clks[CLK_CORE].id = "core";
+	host->clks[CLK_BUS].id = "bus";
+	host->clks[CLK_AXI].id = "axi";
+	host->clks[CLK_BLOCK].id = "block";
+	host->clks[CLK_TIMER].id = "timer";
+
+	ret = clk_bulk_get(host->mci.hw_dev, CLK_MAX, host->clks);
+	if (ret) {
+		dev_err(host->mci.hw_dev, "failed to get clocks: %s\n",
+			strerror(-ret));
+		return ret;
+	}
+
+	ret = clk_bulk_enable(CLK_MAX, host->clks);
+	if (ret) {
+		dev_err(host->mci.hw_dev, "failed to enable clocks: %s\n",
+			strerror(-ret));
+		return ret;
+	}
+
+	host->sdhci.max_clk = clk_get_rate(host->clks[CLK_CORE].clk);
+
+	mci_of_parse(&host->mci);
+
+	sdhci_setup_host(&host->sdhci);
+
+	dev->priv = host;
+
+	return mci_register(&host->mci);
+}
+
+static __maybe_unused struct of_device_id rk_sdhci_compatible[] = {
+	{
+		.compatible = "rockchip,rk3568-dwcmshc"
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d rk_sdhci_driver = {
+	.name = "rk3568-dwcmshc-sdhci",
+	.probe = rk_sdhci_probe,
+	.of_compatible = DRV_OF_COMPAT(rk_sdhci_compatible),
+};
+device_platform_driver(rk_sdhci_driver);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

