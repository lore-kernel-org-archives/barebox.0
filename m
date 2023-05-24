Delivery-date: Thu, 25 May 2023 01:45:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1yAa-00Crix-Mc
	for lore@lore.pengutronix.de; Thu, 25 May 2023 01:45:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1yAU-0007Eq-DF
	for lore@pengutronix.de; Thu, 25 May 2023 01:45:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4EIk6DqwIGjwtRI35ZYTitZjFJfG2PX/tuMII7D/pUM=; b=3IoaA31LAtRnkNZzAvy7Fm1ar1
	Rho8HwC5hazYuBQx3Yrxj7H80Dlcx+AnC9zkUJC2n0QPCKpqL5Hy56a9S57XYSMVVzDotreHEYHQQ
	+vHijnIKVfwkxFv+EMX5wcuaEWvpJo5kablcrFcXO46SvUe1SOuE5RWpsbTCSUjHkj1H81vrj4LWZ
	95wreaz6vsP6Wi/Uz8bRqSda7eVBbHGe77KzUrpeOjgIZ1/BA+vv8uq1dvK2/50OIEy1mdDXBAMe0
	oBYp/02eXuwXtNJyhOtZpl13ebOoq2OxVSQDB33L2yKI6/xTnZi64XvlwuCPWdPHNkWQnbyqlmL7x
	rUM+e6QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1y94-00EzNL-1i;
	Wed, 24 May 2023 23:43:54 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1y8u-00EzIA-1X
	for barebox@lists.infradead.org;
	Wed, 24 May 2023 23:43:49 +0000
Received: (Authenticated sender: jmaselbas@zdiv.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 08E811C0010;
	Wed, 24 May 2023 23:43:39 +0000 (UTC)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Thu, 25 May 2023 01:43:24 +0200
Message-Id: <20230524234328.82741-10-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230524234328.82741-1-jmaselbas@zdiv.net>
References: <20230524234328.82741-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_164344_796773_2010D1D2 
X-CRM114-Status: GOOD (  29.73  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 09/13] mci: Add sunxi-mmc driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This driver is adapted from different sources: Linux, u-boot and p-boot.
The latter, p-boot (forked from u-boot), is a bootloader for pinephones.

It currently only support PIO xfer but could be further improved to also
support DMA xfer. This driver is split in three source file so it can be
used by PBL and barebox proper.

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
rfc->v1:
 - cleanup

 drivers/mci/Kconfig            |   6 +
 drivers/mci/Makefile           |   2 +
 drivers/mci/sunxi-mmc-common.c | 259 +++++++++++++++++++++++++++++++++
 drivers/mci/sunxi-mmc-pbl.c    |  80 ++++++++++
 drivers/mci/sunxi-mmc.c        | 173 ++++++++++++++++++++++
 drivers/mci/sunxi-mmc.h        | 229 +++++++++++++++++++++++++++++
 include/mach/sunxi/xload.h     |  12 ++
 7 files changed, 761 insertions(+)
 create mode 100644 drivers/mci/sunxi-mmc-common.c
 create mode 100644 drivers/mci/sunxi-mmc-pbl.c
 create mode 100644 drivers/mci/sunxi-mmc.c
 create mode 100644 drivers/mci/sunxi-mmc.h
 create mode 100644 include/mach/sunxi/xload.h

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index bbdca67e9d..1de2c8edfa 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -72,6 +72,12 @@ config MCI_DW_PIO
 	help
 	  Use PIO mode (instead of IDMAC) in DW MMC driver.
 
+config MCI_SUNXI_SMHC
+	bool "Allwinner SD-MMC Memory Card Host Controller"
+	help
+	  Enable support for the Allwinner SD-MMC Memory Card Host Controller,
+	  this provides host support for SD and MMC interfaces, in PIO mode.
+
 config MCI_MXS
 	bool "i.MX23/i.MX28"
 	depends on ARCH_MXS
diff --git a/drivers/mci/Makefile b/drivers/mci/Makefile
index e3dc5ad8ae..c17cd41db1 100644
--- a/drivers/mci/Makefile
+++ b/drivers/mci/Makefile
@@ -20,4 +20,6 @@ obj-$(CONFIG_MCI_SPI)		+= mci_spi.o
 obj-$(CONFIG_MCI_DW)		+= dw_mmc.o
 obj-$(CONFIG_MCI_MMCI)		+= mmci.o
 obj-$(CONFIG_MCI_STM32_SDMMC2)	+= stm32_sdmmc2.o
+obj-$(CONFIG_MCI_SUNXI_SMHC)	+= sunxi-mmc.o
+pbl-$(CONFIG_MCI_SUNXI_SMHC)	+= sunxi-mmc-pbl.o
 obj-pbl-$(CONFIG_MCI_SDHCI)	+= sdhci.o
diff --git a/drivers/mci/sunxi-mmc-common.c b/drivers/mci/sunxi-mmc-common.c
new file mode 100644
index 0000000000..845078805b
--- /dev/null
+++ b/drivers/mci/sunxi-mmc-common.c
@@ -0,0 +1,259 @@
+#include "sunxi-mmc.h"
+
+static int sdxc_read_data_pio(struct sunxi_mmc_host *host, struct mci_data *data);
+static int sdxc_write_data_pio(struct sunxi_mmc_host *host, struct mci_data *data);
+static int sunxi_mmc_send_cmd(struct sunxi_mmc_host *host, struct mci_cmd *cmd, struct mci_data *data, const char **why);
+static int sunxi_mmc_set_ios(struct sunxi_mmc_host *host, struct mci_ios *ios);
+static void sunxi_mmc_init(struct sunxi_mmc_host *host);
+
+static int sdxc_read_data_pio(struct sunxi_mmc_host *host, struct mci_data *data)
+{
+	size_t i, len = data->blocks * data->blocksize;
+	u8 *dst = data->dest;
+	u32 reg;
+
+	sdxc_writel(host, SDXC_REG_GCTRL, SDXC_GCTRL_ACCESS_BY_AHB);
+
+	for (i = 0; i < len; i += 4) {
+		if (wait_on_timeout(2000 * MSECOND, !sdxc_is_fifo_empty(host)))
+			return -ETIMEDOUT;
+		reg = sdxc_readl(host, SDXC_REG_FIFO);
+		memcpy(dst + i, &reg, sizeof(reg));
+	}
+
+	return i;
+}
+
+static int sdxc_write_data_pio(struct sunxi_mmc_host *host, struct mci_data *data)
+{
+	size_t i, len = data->blocks * data->blocksize;
+	u32 *pdata = (u32 *)data->src;
+
+	sdxc_writel(host, SDXC_REG_GCTRL, SDXC_GCTRL_ACCESS_BY_AHB);
+
+	for (i = 0; i < len; i += 4, pdata++) {
+		if (wait_on_timeout(2000 * MSECOND, !sdxc_is_fifo_full(host)))
+			return -ETIMEDOUT;
+		sdxc_writel(host, SDXC_REG_FIFO, *pdata);
+	}
+#if 0
+	sdxc_writel(host, SDXC_RINTR, SDXC_INTMSK_TXDR);
+
+	if (wait_on_timeout(2000 * MSECOND, sdxc_is_fifo_empty(host))) {
+		return -EIO;
+	}
+#endif
+	return i;
+}
+
+static int sunxi_mmc_send_cmd(struct sunxi_mmc_host *host, struct mci_cmd *cmd,
+			      struct mci_data *data, const char **why)
+{
+	const char *err_why = "";
+	u32 cmdval = SDXC_CMD_START;
+	int ret;
+
+	if ((cmd->resp_type & MMC_RSP_136) && (cmd->resp_type & MMC_RSP_BUSY))
+		return -EINVAL;
+
+	if (cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION)
+		return 0; /* using ACMD12 */
+	if (cmd->cmdidx == MMC_CMD_GO_IDLE_STATE)
+		cmdval |= SDXC_CMD_SEND_INIT_SEQ;
+
+	if (cmd->resp_type & MMC_RSP_PRESENT)
+		cmdval |= SDXC_CMD_RESP_EXPIRE;
+	if (cmd->resp_type & MMC_RSP_136)
+		cmdval |= SDXC_CMD_LONG_RESPONSE;
+	if (cmd->resp_type & MMC_RSP_CRC)
+		cmdval |= SDXC_CMD_CHK_RESPONSE_CRC;
+
+	/* clear interrupts */
+	sdxc_writel(host, SDXC_REG_RINTR, 0xffffffff);
+
+	if (data) {
+		u32 blksiz = data->blocksize;
+		u32 bytcnt = data->blocks * data->blocksize;
+
+		cmdval |= SDXC_CMD_DATA_EXPIRE;
+		cmdval |= SDXC_CMD_WAIT_PRE_OVER;
+		if (data->flags & MMC_DATA_WRITE)
+			cmdval |= SDXC_CMD_WRITE;
+		if (data->blocks > 1)
+			cmdval |= SDXC_CMD_AUTO_STOP;
+
+		sdxc_writel(host, SDXC_REG_TMOUT, 0xFFFFFF40);
+		sdxc_writel(host, SDXC_REG_BLKSZ, blksiz);
+		sdxc_writel(host, SDXC_REG_BCNTR, bytcnt);
+	}
+
+	sdxc_writel(host, SDXC_REG_CARG, cmd->cmdarg);
+	sdxc_writel(host, SDXC_REG_CMDR, cmdval | cmd->cmdidx);
+	if (data) {
+		if (data->flags & MMC_DATA_WRITE)
+			ret = sdxc_write_data_pio(host, data);
+		else
+			ret = sdxc_read_data_pio(host, data);
+		if (ret < 0) {
+			err_why = "pio error";
+			goto err;
+		}
+	}
+
+	ret = sdxc_xfer_complete(host, 1000 * MSECOND, SDXC_INT_COMMAND_DONE);
+	if (ret) {
+		err_why = "cmd timeout";
+		goto err;
+	}
+
+	if (data) {
+		ret = sdxc_xfer_complete(host, 1000 * MSECOND, data->blocks > 1 ?
+					 SDXC_INT_AUTO_COMMAND_DONE :
+					 SDXC_INT_DATA_OVER);
+		if (ret) {
+			err_why = "data timeout";
+			goto err;
+		}
+	}
+
+	if (cmd->resp_type & MMC_RSP_BUSY) {
+		u32 status;
+		u64 start;
+		start = get_time_ns();
+		do {
+			status = sdxc_readl(host, SDXC_REG_STAS);
+			if (is_timeout(start, 2000 * MSECOND)) {
+				err_why = "resp timeout";
+				ret = -ETIMEDOUT;
+				goto err;
+			}
+		} while (status & SDXC_STATUS_BUSY);
+	}
+
+	if (wait_on_timeout(1000 * MSECOND, !sdxc_is_card_busy(host))) {
+		err_why = "card busy timeout";
+		ret = -ETIMEDOUT;
+		goto err;
+	}
+
+	if (cmd->resp_type & MMC_RSP_136) {
+		cmd->response[0] = sdxc_readl(host, SDXC_REG_RESP3);
+		cmd->response[1] = sdxc_readl(host, SDXC_REG_RESP2);
+		cmd->response[2] = sdxc_readl(host, SDXC_REG_RESP1);
+		cmd->response[3] = sdxc_readl(host, SDXC_REG_RESP0);
+	} else if (cmd->resp_type & MMC_RSP_PRESENT) {
+		cmd->response[0] = sdxc_readl(host, SDXC_REG_RESP0);
+	}
+
+err:
+	if (why)
+		*why = err_why;
+	sdxc_writel(host, SDXC_REG_GCTRL, SDXC_GCTRL_FIFO_RESET);
+	return ret;
+}
+
+static int sunxi_mmc_update_clk(struct sunxi_mmc_host *host)
+{
+	u32 cmdval;
+
+	cmdval = SDXC_CMD_START |
+	         SDXC_CMD_UPCLK_ONLY |
+	         SDXC_CMD_WAIT_PRE_OVER;
+
+	sdxc_writel(host, SDXC_REG_CARG, 0);
+	sdxc_writel(host, SDXC_REG_CMDR, cmdval);
+
+	if (wait_on_timeout(2000 * MSECOND, !(sdxc_readl(host, SDXC_REG_CMDR) & SDXC_CMD_START)))
+		return -ETIMEDOUT;
+
+	return 0;
+}
+
+static int sunxi_mmc_setup_clk(struct sunxi_mmc_host *host, u32 freq)
+{
+	u32 val, div, sclk;
+	int ret;
+
+	sclk = host->clkrate;
+	if (sclk == 0)
+		return -EINVAL;
+
+	sclk /= 2; // WHY ????
+
+	/* disable card clock */
+	val = sdxc_readl(host, SDXC_REG_CLKCR);
+	val &= ~(SDXC_CLK_ENABLE | SDXC_CLK_LOW_POWER_ON);
+	val |= SDXC_CLK_MASK_DATA0;
+	sdxc_writel(host, SDXC_REG_CLKCR, val);
+
+	ret = sunxi_mmc_update_clk(host);
+	if (ret)
+		return ret;
+
+	/*
+	 * Configure the controller to use the new timing mode if needed.
+	 * On controllers that only support the new timing mode, such as
+	 * the eMMC controller on the A64, this register does not exist,
+	 * and any writes to it are ignored.
+	 */
+	if (host->cfg->needs_new_timings) {
+		/* Don't touch the delay bits */
+		val = sdxc_readl(host, SDXC_REG_NTSR);
+		val |= SDXC_NTSR_2X_TIMING_MODE;
+		sdxc_writel(host, SDXC_REG_NTSR, val);
+	}
+
+	/* setup clock rate */
+	div = DIV_ROUND_UP(sclk, freq);
+	if (div > 510)
+		div = 510;
+
+	/* set internal divider */
+	val = sdxc_readl(host, SDXC_REG_CLKCR);
+	val &= ~SDXC_CLK_DIVIDER_MASK;
+	val |= div / 2; /* divisor is multiply by 2 */
+	sdxc_writel(host, SDXC_REG_CLKCR, val);
+
+	/* enable card clock */
+	val = sdxc_readl(host, SDXC_REG_CLKCR);
+	val |= SDXC_CLK_ENABLE;
+	val &= ~SDXC_CLK_MASK_DATA0;
+	sdxc_writel(host, SDXC_REG_CLKCR, val);
+
+	return sunxi_mmc_update_clk(host);
+}
+
+static int sunxi_mmc_set_ios(struct sunxi_mmc_host *host, struct mci_ios *ios)
+{
+	int ret = 0;
+	u32 width;
+
+	switch (ios->bus_width) {
+	case MMC_BUS_WIDTH_8:
+		width = SDXC_WIDTH_8BIT;
+		break;
+	case MMC_BUS_WIDTH_4:
+		width = SDXC_WIDTH_4BIT;
+		break;
+	default:
+		width = SDXC_WIDTH_1BIT;
+		break;
+	}
+	sdxc_writel(host, SDXC_REG_WIDTH, width);
+
+	if (ios->clock)
+		ret = sunxi_mmc_setup_clk(host, ios->clock);
+	return ret;
+}
+
+static void sunxi_mmc_init(struct sunxi_mmc_host *host)
+{
+	/* Reset controller */
+	sdxc_writel(host, SDXC_REG_GCTRL, SDXC_GCTRL_RESET);
+	udelay(1000);
+
+	sdxc_writel(host, SDXC_REG_RINTR, 0xffffffff);
+	sdxc_writel(host, SDXC_REG_IMASK, 0);
+
+	sdxc_writel(host, SDXC_REG_TMOUT, 0xffffff40);
+}
diff --git a/drivers/mci/sunxi-mmc-pbl.c b/drivers/mci/sunxi-mmc-pbl.c
new file mode 100644
index 0000000000..af60e7e355
--- /dev/null
+++ b/drivers/mci/sunxi-mmc-pbl.c
@@ -0,0 +1,80 @@
+#include <common.h>
+
+#include <mach/sunxi/xload.h>
+#include "sunxi-mmc.h"
+#include "sunxi-mmc-common.c"
+
+#define SECTOR_SIZE			512
+#define SUPPORT_MAX_BLOCKS		16U
+
+static int sunxi_mmc_read_block(struct sunxi_mmc_host *host,
+				void *dst, unsigned int blocknum,
+				unsigned int blocks)
+{
+	struct mci_data data;
+	struct mci_cmd cmd = {
+		.cmdidx = (blocks > 1) ? MMC_CMD_READ_MULTIPLE_BLOCK : MMC_CMD_READ_SINGLE_BLOCK,
+		 /* mci->high_capacity ? blocknum : blocknum * mci->read_bl_len, */
+		 /* TODO: figured out how to detect if card is high-capacity */
+//		.cmdarg = blocknum * SECTOR_SIZE,
+		.cmdarg = blocknum,
+		.resp_type = MMC_RSP_R1,
+	};
+	int ret;
+
+	data.dest = dst;
+	data.blocks = blocks;
+	data.blocksize = SECTOR_SIZE; /* compat with MMC/SD */
+	data.flags = MMC_DATA_READ;
+
+	ret = sunxi_mmc_send_cmd(host, &cmd, &data, NULL);
+
+	if (ret || blocks > 1) {
+		cmd.cmdidx = MMC_CMD_STOP_TRANSMISSION;
+		cmd.cmdarg = 0;
+		cmd.resp_type = MMC_RSP_R1b;
+		sunxi_mmc_send_cmd(host, &cmd, NULL, NULL);
+	}
+
+	return ret;
+}
+
+static int sunxi_mmc_bio_read(struct pbl_bio *bio, off_t start,
+				void *buf, unsigned int nblocks)
+{
+	struct sunxi_mmc_host *host = bio->priv;
+	unsigned int count = 0;
+	unsigned int block_len = SECTOR_SIZE;
+	int ret;
+
+	while (count < nblocks) {
+		unsigned int n = min_t(unsigned int, nblocks - count, SUPPORT_MAX_BLOCKS);
+
+		ret = sunxi_mmc_read_block(host, buf, start, n);
+		if (ret < 0)
+			return ret;
+
+		count += n;
+		start += n;
+		buf += n * block_len;
+	}
+
+	return count;
+}
+
+int sunxi_mmc_bio_init(struct pbl_bio *bio, void __iomem *base,
+		       unsigned int clock, unsigned int slot)
+{
+	static struct sunxi_mmc_host host;
+	struct mci_ios ios = { .bus_width = MMC_BUS_WIDTH_4, .clock = 400000 };
+
+	host.base = base;
+	host.clkrate = clock;
+	bio->priv = &host;
+	bio->read = sunxi_mmc_bio_read;
+
+	sunxi_mmc_init(&host);
+	sunxi_mmc_set_ios(&host, &ios);
+
+	return 0;
+}
diff --git a/drivers/mci/sunxi-mmc.c b/drivers/mci/sunxi-mmc.c
new file mode 100644
index 0000000000..a537ea1a55
--- /dev/null
+++ b/drivers/mci/sunxi-mmc.c
@@ -0,0 +1,173 @@
+//#define DEBUG
+// SPDX-License-Identifier: GPL-2.0-or-later
+// derived from: linux/drivers/mmc/host/sunxi-mmc.c
+
+#define pr_fmt(fmt) "sunxi-mmc: " fmt
+
+#include <common.h>
+#include <driver.h>
+#include <malloc.h>
+#include <init.h>
+#include <mci.h>
+
+#include <gpio.h>
+#include <of_gpio.h>
+#include <linux/reset.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <errno.h>
+#include <dma.h>
+
+#include "sunxi-mmc.h"
+#include "sunxi-mmc-common.c"
+
+static int sdxc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
+{
+	struct sunxi_mmc_host *host = to_sunxi_mmc_host(mci);
+	struct device *dev = mci->hw_dev;
+	const char *why;
+	int ret;
+
+	ret = sunxi_mmc_send_cmd(host, cmd, data, &why);
+	if (ret)
+		dev_err(dev, "error %s CMD%d (%d)\n", why, cmd->cmdidx, ret);
+
+	return ret;
+}
+
+static void sdxc_set_ios(struct mci_host *mci, struct mci_ios *ios)
+{
+	struct sunxi_mmc_host *host = to_sunxi_mmc_host(mci);
+	struct device *dev = mci->hw_dev;
+
+	dev_dbg(dev, "buswidth = %d, clock: %d\n", ios->bus_width, ios->clock);
+	sunxi_mmc_set_ios(host, ios);
+}
+
+static int sdxc_card_present(struct mci_host *mci)
+{
+	struct sunxi_mmc_host *host = to_sunxi_mmc_host(mci);
+	struct device *dev = mci->hw_dev;
+	int ret;
+
+	/* No gpio, assume card is present */
+	if (!gpio_is_valid(host->gpio_cd)) {
+		dev_err(dev, "%s gpio not valid\n", __func__);
+		return 1;
+	}
+
+	ret = gpio_get_value(host->gpio_cd);
+	dev_dbg(dev, "%s gpio: %d\n", __func__, ret);
+
+	return ret == 0 ? 1 : 0;
+}
+
+static int sdxc_init(struct mci_host *mci, struct device *dev)
+{
+	struct sunxi_mmc_host *host = to_sunxi_mmc_host(mci);
+
+	sunxi_mmc_init(host);
+
+	return 0;
+}
+
+static int sunxi_mmc_probe(struct device *dev)
+{
+	struct device_node *np = dev->of_node;
+	struct resource *iores;
+	struct sunxi_mmc_host *host;
+	unsigned int f_min, f_max;
+	int ret;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+	host = xzalloc(sizeof(*host));
+	host->base = IOMEM(iores->start);
+	dma_set_mask(dev, DMA_BIT_MASK(32));
+	host->cfg = device_get_match_data(dev);
+
+	host->gpio_cd = of_get_named_gpio(np, "cd-gpios", 0);
+
+	host->clk_ahb = clk_get(dev, "ahb");
+	if (IS_ERR(host->clk_ahb)) {
+		ret = PTR_ERR(host->clk_ahb);
+		goto err;
+	}
+
+	host->clk_mmc = clk_get(dev, "mmc");
+	if (IS_ERR(host->clk_mmc)) {
+		ret = PTR_ERR(host->clk_mmc);
+		goto err;
+	}
+
+	clk_enable(host->clk_ahb);
+	clk_enable(host->clk_mmc);
+
+	host->mci.hw_dev = dev;
+	host->mci.send_cmd = sdxc_send_cmd;
+	host->mci.set_ios = sdxc_set_ios;
+	host->mci.init = sdxc_init;
+	host->mci.card_present = sdxc_card_present;
+	host->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
+	host->mci.host_caps = MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA
+		| MMC_CAP_MMC_HIGHSPEED | MMC_CAP_SD_HIGHSPEED
+		| MMC_CAP_MMC_HIGHSPEED_52MHZ;
+
+	host->clkrate = clk_get_rate(host->clk_mmc);
+	f_min = host->clkrate / 510;
+	f_max = host->clkrate;
+	/* clock must at least support freq as low as 400K, and reach 52M */
+	if (400000 < f_min || f_max < 52000000) {
+		/* if not, try to get a better clock */
+		clk_set_rate(host->clk_mmc, clk_round_rate(host->clk_mmc, 52000000));
+		host->clkrate = clk_get_rate(host->clk_mmc);
+		f_min = host->clkrate / 510;
+		f_max = host->clkrate;
+	}
+	dev_dbg(dev, "freq: min %d max %d\n", f_min, f_max);
+	mci_of_parse(&host->mci);
+
+	f_min = min_t(unsigned int, 400000, f_min);
+	f_max = min_t(unsigned int, 52000000, f_max);
+	host->mci.f_min = max_t(unsigned int, host->mci.f_min, f_min);
+	host->mci.f_max = min_t(unsigned int, host->mci.f_max, f_max);
+
+	return mci_register(&host->mci);
+err:
+	if (host->clk_mmc)
+		clk_put(host->clk_mmc);
+	if (host->clk_ahb)
+		clk_put(host->clk_ahb);
+	free(host);
+	release_region(iores);
+	return ret;
+}
+
+static const struct sunxi_mmc_cfg sun50i_a64_cfg = {
+	.idma_des_size_bits = 16,
+	.clk_delays = NULL,
+	.can_calibrate = true,
+	.mask_data0 = true,
+	.needs_new_timings = true,
+};
+
+static const struct sunxi_mmc_cfg sun50i_a64_emmc_cfg = {
+	.idma_des_size_bits = 13,
+	.clk_delays = NULL,
+	.can_calibrate = true,
+	.needs_new_timings = true,
+};
+
+static __maybe_unused struct of_device_id sunxi_mmc_compatible[] = {
+	{ .compatible = "allwinner,sun50i-a64-mmc", .data = &sun50i_a64_cfg },
+	{ .compatible = "allwinner,sun50i-a64-emmc", .data = &sun50i_a64_emmc_cfg },
+	{ /* sentinel */ }
+};
+
+static struct driver sunxi_mmc_driver = {
+	.name  = "sunxi-mmc",
+	.probe = sunxi_mmc_probe,
+	.of_compatible = DRV_OF_COMPAT(sunxi_mmc_compatible),
+};
+device_platform_driver(sunxi_mmc_driver);
diff --git a/drivers/mci/sunxi-mmc.h b/drivers/mci/sunxi-mmc.h
new file mode 100644
index 0000000000..edfa5d853c
--- /dev/null
+++ b/drivers/mci/sunxi-mmc.h
@@ -0,0 +1,229 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/* SPDX-FileCopyrightText: 2023 Jules Maselbas  */
+/* derived from: linux/drivers/mmc/host/sunxi-mmc.c */
+
+#ifndef SUNXI_MMC_H
+#define	SUNXI_MMC_H
+
+#include <io.h>
+#include <linux/bitops.h>
+#include <clock.h>
+#include <mci.h>
+
+#define SDXC_REG_GCTRL	(0x00) /* Global Control */
+#define SDXC_REG_CLKCR	(0x04) /* Clock Control */
+#define SDXC_REG_TMOUT	(0x08) /* Time Out */
+#define SDXC_REG_WIDTH	(0x0C) /* Bus Width */
+#define SDXC_REG_BLKSZ	(0x10) /* Block Size */
+#define SDXC_REG_BCNTR	(0x14) /* Byte Count */
+#define SDXC_REG_CMDR	(0x18) /* Command */
+#define SDXC_REG_CARG	(0x1C) /* Argument */
+#define SDXC_REG_RESP0	(0x20) /* Response 0 */
+#define SDXC_REG_RESP1	(0x24) /* Response 1 */
+#define SDXC_REG_RESP2	(0x28) /* Response 2 */
+#define SDXC_REG_RESP3	(0x2C) /* Response 3 */
+#define SDXC_REG_IMASK	(0x30) /* Interrupt Mask */
+#define SDXC_REG_MISTA	(0x34) /* Masked Interrupt Status */
+#define SDXC_REG_RINTR	(0x38) /* Raw Interrupt Status */
+#define SDXC_REG_STAS	(0x3C) /* Status */
+#define SDXC_REG_FTRGL	(0x40) /* FIFO Threshold Watermark */
+#define SDXC_REG_FUNS	(0x44) /* Function Select */
+#define SDXC_REG_CBCR	(0x48) /* CIU Byte Count */
+#define SDXC_REG_BBCR	(0x4C) /* BIU Byte Count */
+#define SDXC_REG_DBGC	(0x50) /* Debug Enable */
+#define SDXC_REG_A12A	(0x58) /* Auto Command 12 Argument */
+#define SDXC_REG_NTSR	(0x5C) /* SMC New Timing Set Register */
+#define SDXC_REG_HWRST	(0x78) /* Card Hardware Reset */
+#define SDXC_REG_DMAC	(0x80) /* IDMAC Control */
+#define SDXC_REG_DLBA	(0x84) /* IDMAC Descriptor List Base Addresse */
+#define SDXC_REG_IDST	(0x88) /* IDMAC Status */
+#define SDXC_REG_IDIE	(0x8C) /* IDMAC Interrupt Enable */
+#define SDXC_REG_CHDA	(0x90)
+#define SDXC_REG_CBDA	(0x94)
+
+#define SDXC_REG_DRV_DL		0x140 /* Drive Delay Control Register */
+#define SDXC_REG_SAMP_DL_REG	0x144 /* SMC sample delay control */
+#define SDXC_REG_DS_DL_REG	0x148 /* SMC data strobe delay control */
+
+#define SDXC_REG_FIFO	(0x200) /* FIFO */
+
+#define SDXC_GCTRL_SOFT_RESET		BIT(0)
+#define SDXC_GCTRL_FIFO_RESET		BIT(1)
+#define SDXC_GCTRL_DMA_RESET		BIT(2)
+#define SDXC_GCTRL_RESET \
+	(SDXC_GCTRL_SOFT_RESET | SDXC_GCTRL_FIFO_RESET | SDXC_GCTRL_DMA_RESET)
+#define SDXC_GCTRL_DMA_ENABLE		BIT(5)
+#define SDXC_GCTRL_ACCESS_BY_AHB	BIT(31)
+
+#define SDXC_CMD_RESP_EXPIRE		BIT(6)
+#define SDXC_CMD_LONG_RESPONSE		BIT(7)
+#define SDXC_CMD_CHK_RESPONSE_CRC	BIT(8)
+#define SDXC_CMD_DATA_EXPIRE		BIT(9)
+#define SDXC_CMD_WRITE			BIT(10)
+#define SDXC_CMD_AUTO_STOP		BIT(12)
+#define SDXC_CMD_WAIT_PRE_OVER		BIT(13)
+#define SDXC_CMD_ABORT_STOP		BIT(14)
+#define SDXC_CMD_SEND_INIT_SEQ		BIT(15)
+#define SDXC_CMD_UPCLK_ONLY		BIT(21)
+#define SDXC_CMD_START			BIT(31)
+
+#define SDXC_NTSR_2X_TIMING_MODE	BIT(31)
+
+/* clock control bits */
+#define SDXC_CLK_MASK_DATA0	BIT(31)
+#define SDXC_CLK_LOW_POWER_ON	BIT(17)
+#define SDXC_CLK_ENABLE		BIT(16)
+#define SDXC_CLK_DIVIDER_MASK	(0xff)
+
+/* bus width */
+#define SDXC_WIDTH_1BIT	0
+#define SDXC_WIDTH_4BIT	BIT(0)
+#define SDXC_WIDTH_8BIT	BIT(1)
+
+/* interrupt bits */
+#define SDXC_INT_RESP_ERROR		BIT(1)
+#define SDXC_INT_COMMAND_DONE		BIT(2)
+#define SDXC_INT_DATA_OVER		BIT(3)
+#define SDXC_INT_TX_DATA_REQUEST	BIT(4)
+#define SDXC_INT_RX_DATA_REQUEST	BIT(5)
+#define SDXC_INT_RESP_CRC_ERROR		BIT(6)
+#define SDXC_INT_DATA_CRC_ERROR		BIT(7)
+#define SDXC_INT_RESP_TIMEOUT		BIT(8)
+#define SDXC_INT_DATA_TIMEOUT		BIT(9)
+#define SDXC_INT_VOLTAGE_CHANGE_DONE	BIT(10)
+#define SDXC_INT_FIFO_RUN_ERROR		BIT(11)
+#define SDXC_INT_HARD_WARE_LOCKED	BIT(12)
+#define SDXC_INT_START_BIT_ERROR	BIT(13)
+#define SDXC_INT_AUTO_COMMAND_DONE	BIT(14)
+#define SDXC_INT_END_BIT_ERROR		BIT(15)
+#define SDXC_INT_SDIO_INTERRUPT		BIT(16)
+#define SDXC_INT_CARD_INSERT		BIT(30)
+#define SDXC_INT_CARD_REMOVE		BIT(31)
+//	 SDXC_INT_FIFO_RUN_ERROR  |
+#define SDXC_INTERRUPT_ERROR_BIT	\
+	(SDXC_INT_RESP_ERROR |		\
+	 SDXC_INT_RESP_CRC_ERROR |	\
+	 SDXC_INT_DATA_CRC_ERROR |	\
+	 SDXC_INT_RESP_TIMEOUT |	\
+	 SDXC_INT_DATA_TIMEOUT |	\
+	 SDXC_INT_HARD_WARE_LOCKED |	\
+	 SDXC_INT_START_BIT_ERROR |	\
+	 SDXC_INT_END_BIT_ERROR)
+
+#define SDXC_INTERRUPT_DONE_BIT		\
+	(SDXC_INT_AUTO_COMMAND_DONE |	\
+	 SDXC_INT_DATA_OVER |		\
+	 SDXC_INT_COMMAND_DONE |	\
+	 SDXC_INT_VOLTAGE_CHANGE_DONE)
+
+/* status */
+#define SDXC_STATUS_FIFO_EMPTY		BIT(2)
+#define SDXC_STATUS_FIFO_FULL		BIT(3)
+#define SDXC_STATUS_CARD_PRESENT	BIT(8)
+#define SDXC_STATUS_BUSY		BIT(9)
+
+struct sunxi_mmc_clk_delay {
+	u32 output;
+	u32 sample;
+};
+
+struct sunxi_mmc_cfg {
+	u32 idma_des_size_bits;
+	u32 idma_des_shift;
+	const struct sunxi_mmc_clk_delay *clk_delays;
+
+	/* does the IP block support autocalibration? */
+	bool can_calibrate;
+
+	/* Does DATA0 needs to be masked while the clock is updated */
+	bool mask_data0;
+
+	/*
+	 * hardware only supports new timing mode, either due to lack of
+	 * a mode switch in the clock controller, or the mmc controller
+	 * is permanently configured in the new timing mode, without the
+	 * NTSR mode switch.
+	 */
+	bool needs_new_timings;
+
+	/* clock hardware can switch between old and new timing modes */
+	bool ccu_has_timings_switch;
+};
+
+struct sunxi_mmc_host {
+	struct mci_host mci;
+	struct device *dev;
+	struct clk *clk_ahb, *clk_mmc;
+	void __iomem *base;
+	int gpio_cd;
+
+	const struct sunxi_mmc_cfg *cfg;
+	u32 clkrate;
+};
+
+static inline struct sunxi_mmc_host *to_sunxi_mmc_host(struct mci_host *mci)
+{
+	return container_of(mci, struct sunxi_mmc_host, mci);
+}
+
+static inline u32 sdxc_readl(struct sunxi_mmc_host *host, u32 reg)
+{
+	return readl(host->base + reg);
+}
+
+static inline void sdxc_writel(struct sunxi_mmc_host *host, u32 reg, u32 val)
+{
+	writel(val, host->base + reg);
+}
+
+static inline int sdxc_is_fifo_empty(struct sunxi_mmc_host *host)
+{
+	return sdxc_readl(host, SDXC_REG_STAS) & SDXC_STATUS_FIFO_EMPTY;
+}
+
+static inline int sdxc_is_fifo_full(struct sunxi_mmc_host *host)
+{
+	return sdxc_readl(host, SDXC_REG_STAS) & SDXC_STATUS_FIFO_FULL;
+}
+
+static inline int sdxc_is_card_busy(struct sunxi_mmc_host *host)
+{
+	return sdxc_readl(host, SDXC_REG_STAS) & SDXC_STATUS_BUSY;
+}
+
+#ifdef __PBL__
+#if 0 /* TODO: test this */
+#include <asm/system.h>
+/* TODO: test this ! */
+#define get_time_ns()		get_cntpct()
+#define is_timeout(s, t)	(s + (t * get_cntfrq() / 1000000) < get_cntpct())
+#else
+/*
+ * Stubs to make timeout logic below work in PBL
+ */
+#define get_time_ns()		0
+/*
+ * Use time in us as a busy counter timeout value
+ */
+#define is_timeout(s, t)	((s)++ > ((t) / 1000))
+#endif
+#endif
+
+static inline int sdxc_xfer_complete(struct sunxi_mmc_host *host, u64 timeout, u32 flags)
+{
+	u64 start;
+	u32 rint;
+
+	start = get_time_ns();
+	do {
+		rint = sdxc_readl(host, SDXC_REG_RINTR);
+		if (rint & SDXC_INTERRUPT_ERROR_BIT)
+			break;
+		if (rint & flags)
+			return 0;
+	} while (!is_timeout(start, timeout));
+
+	return -ETIMEDOUT;
+}
+
+#endif
diff --git a/include/mach/sunxi/xload.h b/include/mach/sunxi/xload.h
new file mode 100644
index 0000000000..f978db4951
--- /dev/null
+++ b/include/mach/sunxi/xload.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __MACH_XLOAD_H
+#define __MACH_XLOAD_H
+
+#include <linux/compiler.h>
+#include <pbl/bio.h>
+
+int sunxi_mmc_bio_init(struct pbl_bio *bio, void __iomem *base,
+		       unsigned int clock, unsigned int slot);
+
+#endif
-- 
2.40.1



