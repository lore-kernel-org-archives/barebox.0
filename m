Delivery-date: Fri, 18 Aug 2023 16:24:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qX0PJ-009XWB-Im
	for lore@lore.pengutronix.de; Fri, 18 Aug 2023 16:24:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qX0PH-00087r-Bl
	for lore@pengutronix.de; Fri, 18 Aug 2023 16:24:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QFEFGyakJ1SomAlw41/Bn+LNL4CIZ9sMhAgmHJqXV6M=; b=trYwFUQvDny24Hzou+1F9bf4pr
	GjBO71irrCeoB+sgfOWxm6oskO8ID+AmWTN7yrdPbBD24f+cj+BmsjeEi/JK5oEKdbQECV83cHW6+
	0ZMLicLeF6iIgJsZSsh41EL8j8da4XeCTfGXFrRWpPy0DAnS461Go9wtoK9GsUQ5PADkMBmtppIoo
	Fh2wIo8P07Dn48rgUH3x0R76FSvHx5j0eYxzVlthyrIGyt0AJ15blQZsRlBsp0MmBkWMDZN/zHIoO
	JacKnwjll0JCRhvlGC9dpNeaLtaHV+tahYgn80rGR0EWesJPcCRLfh5hsZ/NZRvs2ik6D3NpwXEsI
	Im1HyFBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qX0O6-009USw-2a;
	Fri, 18 Aug 2023 14:23:42 +0000
Received: from relay1-d.mail.gandi.net ([2001:4b98:dc4:8::221])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qX0Nx-009UP6-2x
	for barebox@lists.infradead.org;
	Fri, 18 Aug 2023 14:23:37 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 71C03240003;
	Fri, 18 Aug 2023 14:23:29 +0000 (UTC)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Fri, 18 Aug 2023 16:22:44 +0200
Message-ID: <20230818142244.17157-7-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230818142244.17157-1-jmaselbas@kalray.eu>
References: <20230818142244.17157-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: jmaselbas@zdiv.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230818_072334_230564_70207963 
X-CRM114-Status: GOOD (  25.55  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 7/7] mci: Add dwcmshc-sdhci driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The dwcmshc driver started as a modification of the dove-sdhci driver.
This new dwcmshc driver has been heavily reworked to be closer to the
rockchip-dwcmshc-sdhci driver, both drivers are for the same IP from
Synopsys DesignWare Cores.

This new dwcmshc driver use new features introduced in common sdhci code,
mainly to support v4_mode and 64-bit DMA.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
changes in v3:
 - converted priv_from_mci_host macro to a function
 - use an error code in do_abort_sequence (instead of 1)
 - replaced debug by dev_dbg
 - refactor dwcmshc_mci_send_cmd so the in_abort_sequence field
   isn't needed

changes in v2:
 - squashed both driver commit into one: the driver is introduced after
   the common sdhci code is modified.

 drivers/mci/Kconfig         |   8 +
 drivers/mci/Makefile        |   1 +
 drivers/mci/dwcmshc-sdhci.c | 363 ++++++++++++++++++++++++++++++++++++
 3 files changed, 372 insertions(+)
 create mode 100644 drivers/mci/dwcmshc-sdhci.c

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index bbdca67e9d..1fde0c8ffe 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -58,6 +58,14 @@ config MCI_MMC_GPP_PARTITIONS
 
 comment "--- MCI host drivers ---"
 
+config MCI_DWC_MSHC
+	bool "Synopsys DesignWare Cores MSHC"
+	depends on HAS_DMA
+	select MCI_SDHCI
+	help
+	  This selects support for the Synopsys DesignWare Mobile Storage Host Controller
+	  block (DWC_mshc), this provides host support for SD/eMMC interfaces, in SDMA mode.
+
 config MCI_DW
 	bool "Synopsys DesignWare Memory Card Interface"
 	depends on HAS_DMA
diff --git a/drivers/mci/Makefile b/drivers/mci/Makefile
index e3dc5ad8ae..35d11fb439 100644
--- a/drivers/mci/Makefile
+++ b/drivers/mci/Makefile
@@ -18,6 +18,7 @@ obj-$(CONFIG_MCI_ROCKCHIP_DWCMSHC)	+= rockchip-dwcmshc-sdhci.o
 obj-$(CONFIG_MCI_TEGRA)		+= tegra-sdmmc.o
 obj-$(CONFIG_MCI_SPI)		+= mci_spi.o
 obj-$(CONFIG_MCI_DW)		+= dw_mmc.o
+obj-$(CONFIG_MCI_DWC_MSHC)	+= dwcmshc-sdhci.o
 obj-$(CONFIG_MCI_MMCI)		+= mmci.o
 obj-$(CONFIG_MCI_STM32_SDMMC2)	+= stm32_sdmmc2.o
 obj-pbl-$(CONFIG_MCI_SDHCI)	+= sdhci.o
diff --git a/drivers/mci/dwcmshc-sdhci.c b/drivers/mci/dwcmshc-sdhci.c
new file mode 100644
index 0000000000..0251a83a02
--- /dev/null
+++ b/drivers/mci/dwcmshc-sdhci.c
@@ -0,0 +1,363 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2019 Yann Sionneau, Kalray Inc.
+// SPDX-FileCopyrightText: 2023 Jules Maselbas, Kalray Inc.
+
+#include <clock.h>
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <dma.h>
+#include <malloc.h>
+#include <mci.h>
+#include <linux/err.h>
+#include <linux/clk.h>
+
+#include "sdhci.h"
+
+#define CARD_STATUS_MASK (0x1e00)
+#define CARD_STATUS_TRAN (4 << 9)
+
+static int do_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data);
+
+struct dwcmshc_host {
+	struct mci_host mci;
+	struct sdhci sdhci;
+};
+
+static inline struct dwcmshc_host *priv_from_mci_host(struct mci_host *h)
+{
+	return container_of(h, struct dwcmshc_host, mci);
+}
+
+static void mci_setup_cmd(struct mci_cmd *p, unsigned int cmd, unsigned int arg,
+			  unsigned int response)
+{
+	p->cmdidx = cmd;
+	p->cmdarg = arg;
+	p->resp_type = response;
+}
+
+static int do_abort_sequence(struct mci_host *mci, struct mci_cmd *current_cmd)
+{
+	int ret = 0;
+	struct dwcmshc_host *host = priv_from_mci_host(mci);
+	struct mci_cmd cmd;
+	u64 start;
+
+	mci_setup_cmd(&cmd, MMC_CMD_STOP_TRANSMISSION, 0, MMC_RSP_R1b);
+	ret = do_send_cmd(mci, &cmd, NULL);
+	if (ret) {
+		dev_err(host->mci.hw_dev, "Abort failed at first cmd12!\n");
+		goto out;
+	}
+	mci_setup_cmd(&cmd, MMC_CMD_SEND_STATUS, mci->mci->rca << 16,
+		      MMC_RSP_R1);
+	ret = do_send_cmd(mci, &cmd, NULL);
+	if (ret) {
+		dev_err(host->mci.hw_dev, "Abort failed at first cmd13!\n");
+		goto out;
+	}
+
+	if ((cmd.response[0] & CARD_STATUS_MASK) == CARD_STATUS_TRAN)
+		goto out; /* All is OK! */
+
+	mci_setup_cmd(&cmd, MMC_CMD_STOP_TRANSMISSION, 0, MMC_RSP_R1b);
+	ret = do_send_cmd(mci, &cmd, NULL);
+	if (ret) {
+		dev_err(host->mci.hw_dev, "Abort failed at second cmd12!\n");
+		goto out;
+	}
+
+	mci_setup_cmd(&cmd, MMC_CMD_SEND_STATUS, mci->mci->rca << 16,
+		      MMC_RSP_R1);
+	ret = do_send_cmd(mci, &cmd, NULL);
+	if (ret) {
+		dev_err(host->mci.hw_dev, "Abort failed at second cmd13!\n");
+		goto out;
+	}
+
+	if ((cmd.response[0] & CARD_STATUS_MASK) != CARD_STATUS_TRAN) {
+		dev_err(host->mci.hw_dev,
+			"Abort sequence failed to put card in TRAN state!\n");
+		ret = -EIO;
+		goto out;
+	}
+
+out:
+	/* Perform SW reset if in abort sequence */
+	sdhci_write8(&host->sdhci, SDHCI_SOFTWARE_RESET,
+		       SDHCI_RESET_DATA | SDHCI_RESET_CMD);
+	start = get_time_ns();
+	while (sdhci_read8(&host->sdhci, SDHCI_SOFTWARE_RESET) != 0) {
+		if (is_timeout(start, 50 * MSECOND)) {
+			dev_err(host->mci.hw_dev,
+				"SDHCI data reset timeout\n");
+			break;
+		}
+	}
+
+	return ret;
+}
+
+static int dwcmshc_mci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
+				struct mci_data *data)
+{
+	if (cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION)
+		return do_abort_sequence(mci, cmd);
+	return do_send_cmd(mci, cmd, data);
+}
+
+static int do_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
+		       struct mci_data *data)
+{
+	struct dwcmshc_host *host = priv_from_mci_host(mci);
+	dma_addr_t dma = SDHCI_NO_DMA;
+	u32 mask, command, xfer;
+	int ret;
+
+	/* Do not wait for CMD_INHIBIT_DAT on stop commands */
+	mask = SDHCI_CMD_INHIBIT_CMD;
+	if (cmd->cmdidx != MMC_CMD_STOP_TRANSMISSION)
+		mask |= SDHCI_CMD_INHIBIT_DATA;
+
+	/* Wait for bus idle */
+	ret = wait_on_timeout(50 * MSECOND,
+			      !(sdhci_read16(&host->sdhci, SDHCI_PRESENT_STATE) & mask));
+	if (ret) {
+		dev_err(host->mci.hw_dev, "SDHCI timeout while waiting for idle\n");
+		return -ETIMEDOUT;
+	}
+
+	if (data)
+		dev_dbg(host->mci.hw_dev, "cmd %d arg %d bcnt %d bsize %d\n",
+			cmd->cmdidx, cmd->cmdarg, data->blocks, data->blocksize);
+	else
+		dev_dbg(host->mci.hw_dev, "cmd %d arg %d\n", cmd->cmdidx, cmd->cmdarg);
+
+	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
+
+	sdhci_setup_data_dma(&host->sdhci, data, &dma);
+
+	sdhci_write8(&host->sdhci, SDHCI_TIMEOUT_CONTROL, 0xe);
+
+	sdhci_set_cmd_xfer_mode(&host->sdhci, cmd, data,
+				dma == SDHCI_NO_DMA ? false : true,
+				&command, &xfer);
+
+	sdhci_write16(&host->sdhci, SDHCI_TRANSFER_MODE, xfer);
+
+	sdhci_write32(&host->sdhci, SDHCI_ARGUMENT, cmd->cmdarg);
+	sdhci_write16(&host->sdhci, SDHCI_COMMAND, command);
+
+	ret = sdhci_wait_for_done(&host->sdhci, SDHCI_INT_CMD_COMPLETE);
+	if (ret)
+		goto error;
+
+	sdhci_read_response(&host->sdhci, cmd);
+
+	ret = sdhci_transfer_data(&host->sdhci, data, dma);
+error:
+	if (ret) {
+		sdhci_reset(&host->sdhci, SDHCI_RESET_CMD);
+		sdhci_reset(&host->sdhci, SDHCI_RESET_DATA);
+	}
+
+	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
+	return ret;
+}
+
+static u16 dwcmshc_get_clock_divider(struct dwcmshc_host *host, u32 reqclk)
+{
+	u16 div;
+
+	for (div = 1; div < SDHCI_MAX_DIV_SPEC_300; div += 2)
+		if ((host->sdhci.max_clk / div) <= reqclk)
+			break;
+	div /= 2;
+
+	return div;
+}
+
+static void dwcmshc_mci_set_ios(struct mci_host *mci, struct mci_ios *ios)
+{
+	struct dwcmshc_host *host = priv_from_mci_host(mci);
+	u16 val;
+
+	dev_dbg(host->mci.hw_dev,
+		"%s: clock = %u, bus-width = %d, timing = %02x\n",
+		__func__, ios->clock, ios->bus_width, ios->timing);
+
+	/* stop clock */
+	sdhci_write16(&host->sdhci, SDHCI_CLOCK_CONTROL, 0);
+
+	if (!ios->clock)
+		return;
+
+	/* enable bus power */
+	val = SDHCI_BUS_VOLTAGE_330;
+	sdhci_write8(&host->sdhci, SDHCI_POWER_CONTROL, val | SDHCI_BUS_POWER_EN);
+	udelay(400);
+
+	/* set bus width */
+	sdhci_set_bus_width(&host->sdhci, ios->bus_width);
+
+	val = sdhci_read8(&host->sdhci, SDHCI_HOST_CONTROL);
+	if (ios->clock > 26000000)
+		val |= SDHCI_CTRL_HISPD;
+	else
+		val &= ~SDHCI_CTRL_HISPD;
+	sdhci_write8(&host->sdhci, SDHCI_HOST_CONTROL, val);
+
+	/* set bus clock */
+	sdhci_write16(&host->sdhci, SDHCI_CLOCK_CONTROL, 0);
+	val = dwcmshc_get_clock_divider(host, ios->clock);
+	val = SDHCI_CLOCK_INT_EN | SDHCI_FREQ_SEL(val) | ((val & 0x300) >> 2);
+	sdhci_write16(&host->sdhci, SDHCI_CLOCK_CONTROL, val);
+
+	/* wait for internal clock stable */
+	if (wait_on_timeout(20 * MSECOND,
+			sdhci_read16(&host->sdhci, SDHCI_CLOCK_CONTROL)
+			& SDHCI_CLOCK_INT_STABLE)) {
+		dev_err(host->mci.hw_dev, "SDHCI clock stable timeout\n");
+		return;
+	}
+
+	/* enable bus clock */
+	sdhci_write16(&host->sdhci, SDHCI_CLOCK_CONTROL, val | SDHCI_CLOCK_CARD_EN);
+}
+
+static int dwcmshc_mci_init(struct mci_host *mci, struct device *dev)
+{
+	struct dwcmshc_host *host = priv_from_mci_host(mci);
+	u16 ctrl2;
+
+	/* reset mshci controller */
+	sdhci_write8(&host->sdhci, SDHCI_SOFTWARE_RESET, SDHCI_RESET_ALL);
+
+	/* wait for reset completion */
+	if (wait_on_timeout(100 * MSECOND,
+			    (sdhci_read8(&host->sdhci, SDHCI_SOFTWARE_RESET)
+			     & SDHCI_RESET_ALL) == 0)) {
+		dev_err(dev, "SDHCI reset timeout\n");
+		return -ETIMEDOUT;
+	}
+
+	sdhci_write16(&host->sdhci, SDHCI_INT_ERROR_ENABLE, ~0);
+	sdhci_write16(&host->sdhci, SDHCI_INT_ENABLE, ~0);
+	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
+	sdhci_write32(&host->sdhci, SDHCI_SIGNAL_ENABLE, ~0);
+
+	sdhci_enable_v4_mode(&host->sdhci);
+
+	dev_dbg(host->mci.hw_dev, "host version4: %s\n",
+		ctrl2 & SDHCI_CTRL_V4_MODE ? "enabled" : "disabled");
+
+	return 0;
+}
+
+static int dwcmshc_detect(struct device *dev)
+{
+	struct dwcmshc_host *host = dev->priv;
+
+	return mci_detect_card(&host->mci);
+}
+
+static int dwcmshc_mci_card_present(struct mci_host *mci)
+{
+	struct dwcmshc_host *host = priv_from_mci_host(mci);
+	u32 pstate;
+
+	pstate = sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE);
+	return pstate & SDHCI_CARD_PRESENT;
+}
+
+static void dwcmshc_set_dma_mask(struct device *dev)
+{
+	struct dwcmshc_host *host = dev->priv;
+
+	if (host->sdhci.caps & SDHCI_CAN_64BIT_V4)
+		dma_set_mask(dev, DMA_BIT_MASK(64));
+	else
+		dma_set_mask(dev, DMA_BIT_MASK(32));
+}
+
+static int dwcmshc_probe(struct device *dev)
+{
+	struct dwcmshc_host *host;
+	struct resource *iores;
+	struct mci_host *mci;
+	struct clk *clk;
+	int ret;
+
+	host = xzalloc(sizeof(*host));
+	mci = &host->mci;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores)) {
+		ret = PTR_ERR(iores);
+		goto err_mem_req;
+	}
+
+	clk = clk_get(dev, NULL);
+	if (IS_ERR(clk)) {
+		ret = PTR_ERR(clk);
+		goto err_clk_get;
+	}
+	clk_enable(clk);
+
+	host->sdhci.base = IOMEM(iores->start);
+	host->sdhci.mci = mci;
+	host->sdhci.max_clk = clk_get_rate(clk);
+
+	mci->hw_dev = dev;
+	mci->init = dwcmshc_mci_init;
+	mci->set_ios = dwcmshc_mci_set_ios;
+	mci->send_cmd = dwcmshc_mci_send_cmd;
+	mci->card_present = dwcmshc_mci_card_present;
+
+	mci_of_parse(&host->mci);
+
+	/* Enable host_version4 */
+	sdhci_enable_v4_mode(&host->sdhci);
+	sdhci_setup_host(&host->sdhci);
+
+	mci->max_req_size = 0x8000;
+	mci->f_max = clk_get_rate(clk);
+	mci->f_min = mci->f_max / SDHCI_MAX_DIV_SPEC_300;
+
+	dev->priv = host;
+	dev->detect = dwcmshc_detect;
+
+	dwcmshc_set_dma_mask(dev);
+
+	dev_dbg(host->mci.hw_dev, "host controller version: %u\n",
+		host->sdhci.version);
+
+	ret = mci_register(&host->mci);
+	if (ret)
+		goto err_register;
+
+	return ret;
+
+err_register:
+	clk_disable(clk);
+	clk_put(clk);
+err_clk_get:
+	release_region(iores);
+err_mem_req:
+	free(host);
+
+	return ret;
+}
+
+static struct of_device_id dwcmshc_dt_ids[] = {
+	{ .compatible = "snps,dwcmshc-sdhci", },
+	{ }
+};
+
+static struct driver dwcmshc_driver = {
+	.name = "dwcmshc-sdhci",
+	.probe = dwcmshc_probe,
+	.of_compatible = DRV_OF_COMPAT(dwcmshc_dt_ids),
+};
+device_platform_driver(dwcmshc_driver);
-- 
2.41.0



