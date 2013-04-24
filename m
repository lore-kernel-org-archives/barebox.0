Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo4.mail-out.ovh.net ([178.33.253.54]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUvlk-0003p4-Jm
 for barebox@lists.infradead.org; Wed, 24 Apr 2013 09:13:44 +0000
Received: from mail177.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 62062104EDB0
 for <barebox@lists.infradead.org>; Wed, 24 Apr 2013 11:13:38 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 24 Apr 2013 11:09:07 +0200
Message-Id: <1366794547-29296-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] mci: add Secure Digital Host Controller Interface support
To: barebox@lists.infradead.org

as today more and more hw use it so import a sdhci implemetation based on
linux.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mci/Kconfig  |   12 +
 drivers/mci/Makefile |    1 +
 drivers/mci/sdhci.c  |  829 ++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/mci/sdhci.h  |  358 ++++++++++++++++++++++
 include/mci/sdhci.h  |  135 ++++++++
 5 files changed, 1335 insertions(+)
 create mode 100644 drivers/mci/sdhci.c
 create mode 100644 drivers/mci/sdhci.h
 create mode 100644 include/mci/sdhci.h

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 9558f28..c3db45b 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -45,6 +45,18 @@ config MCI_S3C
 	  Enable this entry to add support to read and write SD cards on a
 	  Samsung S3C24xx based system.
 
+config MCI_SDHCI
+	bool "Secure Digital Host Controller Interface support"
+	help
+	  This selects the generic Secure Digital Host Controller Interface.
+	  It is used by manufacturers such as Texas Instruments(R), Ricoh(R)
+	  and Toshiba(R). Most controllers found in laptops are of this type.
+
+	  If you have a controller with this interface, say Y or M here. You
+	  also need to enable an appropriate bus interface.
+
+	  If unsure, say N.
+
 config MCI_IMX
 	bool "i.MX"
 	depends on ARCH_IMX27 || ARCH_IMX31
diff --git a/drivers/mci/Makefile b/drivers/mci/Makefile
index d46d5f5..1a027e1 100644
--- a/drivers/mci/Makefile
+++ b/drivers/mci/Makefile
@@ -1,6 +1,7 @@
 obj-$(CONFIG_MCI)	+= mci-core.o
 obj-$(CONFIG_MCI_MXS) += mxs.o
 obj-$(CONFIG_MCI_S3C) += s3c.o
+obj-$(CONFIG_MCI_SDHCI) += sdhci.o
 obj-$(CONFIG_MCI_IMX) += imx.o
 obj-$(CONFIG_MCI_IMX_ESDHC) += imx-esdhc.o
 obj-$(CONFIG_MCI_OMAP_HSMMC) += omap_hsmmc.o
diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
new file mode 100644
index 0000000..658a887
--- /dev/null
+++ b/drivers/mci/sdhci.c
@@ -0,0 +1,829 @@
+/*
+ *  Copyright (C) 2005-2008 Pierre Ossman, All Rights Reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or (at
+ * your option) any later version.
+ */
+
+#include <common.h>
+#include <malloc.h>
+#include <mci.h>
+#include <clock.h>
+#include <asm/mmu.h>
+
+#include <linux/log2.h>
+
+#include "sdhci.h"
+
+static void sdhci_dumpregs(struct sdhci_host *host)
+{
+	struct device_d *dev = host->mci.hw_dev;
+
+	dev_dbg(dev, ": =========== REGISTER DUMP ===========\n");
+
+	dev_dbg(dev, ": Sys addr: 0x%08x | Version:  0x%08x\n",
+		sdhci_readl(host, SDHCI_DMA_ADDRESS),
+		sdhci_readw(host, SDHCI_HOST_VERSION));
+	dev_dbg(dev, ": Blk size: 0x%08x | Blk cnt:  0x%08x\n",
+		sdhci_readw(host, SDHCI_BLOCK_SIZE),
+		sdhci_readw(host, SDHCI_BLOCK_COUNT));
+	dev_dbg(dev, ": Argument: 0x%08x | Trn mode: 0x%08x\n",
+		sdhci_readl(host, SDHCI_ARGUMENT),
+		sdhci_readw(host, SDHCI_TRANSFER_MODE));
+	dev_dbg(dev, ": Present:  0x%08x | Host ctl: 0x%08x\n",
+		sdhci_readl(host, SDHCI_PRESENT_STATE),
+		sdhci_readb(host, SDHCI_HOST_CONTROL));
+	dev_dbg(dev, ": Power:    0x%08x | Blk gap:  0x%08x\n",
+		sdhci_readb(host, SDHCI_POWER_CONTROL),
+		sdhci_readb(host, SDHCI_BLOCK_GAP_CONTROL));
+	dev_dbg(dev, ": Wake-up:  0x%08x | Clock:    0x%08x\n",
+		sdhci_readb(host, SDHCI_WAKE_UP_CONTROL),
+		sdhci_readw(host, SDHCI_CLOCK_CONTROL));
+	dev_dbg(dev, ": Timeout:  0x%08x | Int stat: 0x%08x\n",
+		sdhci_readb(host, SDHCI_TIMEOUT_CONTROL),
+		sdhci_readl(host, SDHCI_INT_STATUS));
+	dev_dbg(dev, ": Int enab: 0x%08x | Sig enab: 0x%08x\n",
+		sdhci_readl(host, SDHCI_INT_ENABLE),
+		sdhci_readl(host, SDHCI_SIGNAL_ENABLE));
+	dev_dbg(dev, ": AC12 err: 0x%08x | Slot int: 0x%08x\n",
+		sdhci_readw(host, SDHCI_ACMD12_ERR),
+		sdhci_readw(host, SDHCI_SLOT_INT_STATUS));
+	dev_dbg(dev, ": Caps:     0x%08x | Caps_1:   0x%08x\n",
+		sdhci_readl(host, SDHCI_CAPABILITIES),
+		sdhci_readl(host, SDHCI_CAPABILITIES_1));
+	dev_dbg(dev, ": Cmd:      0x%08x | Max curr: 0x%08x\n",
+		sdhci_readw(host, SDHCI_COMMAND),
+		sdhci_readl(host, SDHCI_MAX_CURRENT));
+	dev_dbg(dev, ": Host ctl2: 0x%08x\n",
+		sdhci_readw(host, SDHCI_HOST_CONTROL2));
+
+	if (host->flags & SDHCI_USE_ADMA)
+		dev_dbg(dev, ": ADMA Err: 0x%08x | ADMA Ptr: 0x%08x\n",
+		       readl(host->ioaddr + SDHCI_ADMA_ERROR),
+		       readl(host->ioaddr + SDHCI_ADMA_ADDRESS));
+
+	dev_dbg(dev, ": ===========================================\n");
+}
+
+static void sdhci_reset(struct sdhci_host *host, u8 mask)
+{
+	struct device_d *dev = host->mci.hw_dev;
+	int ret;
+
+	if (host->quirks & SDHCI_QUIRK_NO_CARD_NO_RESET) {
+		if (!(sdhci_readl(host, SDHCI_PRESENT_STATE) &
+			SDHCI_CARD_PRESENT))
+			return;
+	}
+
+	if (host->ops->platform_reset_enter)
+		host->ops->platform_reset_enter(host, mask);
+
+	sdhci_writeb(host, mask, SDHCI_SOFTWARE_RESET);
+
+	if (mask & SDHCI_RESET_ALL)
+		host->clock = 0;
+
+	/* Wait max 100 ms */
+	ret = wait_on_timeout(100 * MSECOND,
+			!(sdhci_readb(host, SDHCI_SOFTWARE_RESET) & mask));
+
+	if (ret) {
+		dev_err(dev, "Reset 0x%x never completed.\n", (int)mask);
+		sdhci_dumpregs(host);
+		return;
+	}
+
+	if (host->ops->platform_reset_exit)
+		host->ops->platform_reset_exit(host, mask);
+
+	if (host->flags & (SDHCI_USE_SDMA | SDHCI_USE_ADMA)) {
+		if ((host->ops->enable_dma) && (mask & SDHCI_RESET_ALL))
+			host->ops->enable_dma(host);
+	}
+}
+
+static void sdhci_activate_led(struct sdhci_host *host)
+{
+	u8 ctrl;
+
+	if (host->led_activate)
+		return;
+
+	host->led_activate = true;
+
+	ctrl = sdhci_readb(host, SDHCI_HOST_CONTROL);
+	ctrl |= SDHCI_CTRL_LED;
+	sdhci_writeb(host, ctrl, SDHCI_HOST_CONTROL);
+}
+
+static void sdhci_deactivate_led(struct sdhci_host *host)
+{
+	u8 ctrl;
+
+	if (!host->led_activate)
+		return;
+
+	host->led_activate = false;
+
+	ctrl = sdhci_readb(host, SDHCI_HOST_CONTROL);
+	ctrl &= ~SDHCI_CTRL_LED;
+	sdhci_writeb(host, ctrl, SDHCI_HOST_CONTROL);
+}
+
+static void sdhci_cmd_done(struct sdhci_host *host, struct mci_cmd *cmd)
+{
+	int i;
+
+	if (cmd->resp_type & MMC_RSP_136) {
+		/* CRC is stripped so we need to do some shifting. */
+		for (i = 0; i < 4; i++) {
+			cmd->response[i] = sdhci_readl(host,
+					SDHCI_RESPONSE + (3-i)*4) << 8;
+			if (i != 3)
+				cmd->response[i] |= sdhci_readb(host,
+						SDHCI_RESPONSE + (3-i)*4-1);
+		}
+	} else {
+		cmd->response[0] = sdhci_readl(host, SDHCI_RESPONSE);
+	}
+}
+
+static void sdhci_read_block_pio(struct sdhci_host *host, struct mci_data *data)
+{
+
+	int len = data->blocksize / 4;
+	uint32_t *buf = (uint32_t*)data->src;
+
+	while (len) {
+		*buf = sdhci_readl(host, SDHCI_BUFFER);
+		len--;
+		buf++;
+	}
+}
+
+static void sdhci_write_block_pio(struct sdhci_host *host, struct mci_data *data)
+{
+	int len = data->blocksize / 4;
+	uint32_t *buf = (uint32_t*)data->dest;
+
+	while (len) {
+		sdhci_writel(host, *buf, SDHCI_BUFFER);
+		len--;
+		buf++;
+	}
+}
+
+static void sdhci_transfer_pio(struct sdhci_host *host, struct mci_data *data)
+{
+	if (host->quirks & SDHCI_QUIRK_PIO_NEEDS_DELAY)
+		udelay(100);
+
+	if (data->flags &= MMC_DATA_READ)
+		sdhci_read_block_pio(host, data);
+	else
+		sdhci_write_block_pio(host, data);
+}
+
+static int sdhci_transfer_data(struct sdhci_host *host, struct mci_data *data)
+{
+	struct device_d *dev = host->mci.hw_dev;
+	u32 mask, stat, stat_mask;
+	u32 blocks = data->blocks;
+	uint64_t start = get_time_ns();
+
+	if (data->flags &= MMC_DATA_READ) {
+		mask = SDHCI_DATA_AVAILABLE;
+		stat_mask = SDHCI_INT_DATA_AVAIL;
+	} else {
+		mask = SDHCI_SPACE_AVAILABLE;
+		stat_mask = SDHCI_INT_SPACE_AVAIL;
+	}
+
+	/*
+	 * Some controllers (JMicron JMB38x) mess up the buffer bits
+	 * for transfers < 4 bytes. As long as it is just one block,
+	 * we can ignore the bits.
+	 */
+	if ((host->quirks & SDHCI_QUIRK_BROKEN_SMALL_PIO) &&
+		(data->blocks == 1))
+		mask = ~0;
+
+	do {
+		stat = sdhci_readl(host, SDHCI_INT_STATUS);
+		if (stat & SDHCI_INT_ERROR) {
+			dev_err(dev, "Error detected in status(0x%X)!\n", stat);
+			return -EIO;
+		}
+
+		if (stat & stat_mask) {
+			if (!(sdhci_readl(host, SDHCI_PRESENT_STATE) & mask))
+				continue;
+			sdhci_writel(host, stat_mask, SDHCI_INT_STATUS);
+			sdhci_transfer_pio(host, data);
+			data->dest += data->blocksize;
+			blocks--;
+			if (blocks == 0)
+				break;
+		}
+
+		if (host->flags & SDHCI_USE_SDMA) {
+			if (stat & SDHCI_INT_DMA_END) {
+				u32 dma_addr = (u32)data->dest;
+
+				sdhci_writel(host, SDHCI_INT_DMA_END, SDHCI_INT_STATUS);
+				dma_addr &= ~(SDHCI_DEFAULT_BOUNDARY_SIZE - 1);
+				dma_addr += SDHCI_DEFAULT_BOUNDARY_SIZE;
+				sdhci_writel(host, dma_addr, SDHCI_DMA_ADDRESS);
+			}
+		}
+
+		if (is_timeout(start, SECOND)) {
+			dev_err(dev, "Transfer data timeout\n");
+			return -ETIMEDOUT;
+		}
+	} while (!(stat & SDHCI_INT_DATA_END));
+
+	return 0;
+}
+
+static void sdhci_prepare_data(struct sdhci_host *host, struct mci_cmd *cmd,
+		       struct mci_data *data)
+{
+	if (data || (cmd->resp_type & MMC_RSP_BUSY))
+		sdhci_writeb(host, 0xe, SDHCI_TIMEOUT_CONTROL);
+
+	if (!data)
+		return;
+
+	/* Sanity checks */
+	BUG_ON(data->blocksize * data->blocks > 524288);
+	BUG_ON(data->blocks > 65535);
+
+	if (host->flags & (SDHCI_USE_SDMA | SDHCI_USE_ADMA))
+		host->flags |= SDHCI_REQ_USE_DMA;
+
+	if (host->flags & SDHCI_REQ_USE_DMA) {
+		int broken = 0;
+
+		if (host->flags & SDHCI_USE_ADMA) {
+			if (host->quirks & SDHCI_QUIRK_32BIT_ADMA_SIZE)
+				broken = 1;
+		} else {
+			if (host->quirks & SDHCI_QUIRK_32BIT_DMA_SIZE)
+				broken = 1;
+		}
+
+		if (unlikely(broken))
+			host->flags &= ~SDHCI_REQ_USE_DMA;
+	}
+
+	if (host->flags & SDHCI_REQ_USE_DMA) {
+		if (data->flags & MMC_DATA_WRITE) {
+			dma_flush_range((unsigned long)data->src,
+				(unsigned long)(data->src + data->blocks * data->blocksize));
+		} else
+			dma_clean_range((unsigned long)data->src,
+				(unsigned long)(data->src + data->blocks * data->blocksize));
+
+		sdhci_writel(host, (unsigned long)data->src, SDHCI_DMA_ADDRESS);
+	}
+
+	/* Set the DMA boundary value and block size */
+	sdhci_writew(host, SDHCI_MAKE_BLKSZ(SDHCI_DEFAULT_BOUNDARY_ARG,
+			data->blocksize),
+			SDHCI_BLOCK_SIZE);
+	sdhci_writew(host, data->blocks, SDHCI_BLOCK_COUNT);
+}
+
+static void sdhci_set_transfer_mode(struct sdhci_host *host, struct mci_data *data)
+{
+	u16 mode;
+
+	if (!data)
+		return;
+
+	mode = SDHCI_TRNS_BLK_CNT_EN;
+	if (data->blocks > 1)
+		mode |= SDHCI_TRNS_MULTI;
+
+	if (data->flags & MMC_DATA_READ)
+		mode |= SDHCI_TRNS_READ;
+	if (host->flags & SDHCI_REQ_USE_DMA)
+		mode |= SDHCI_TRNS_DMA;
+
+	sdhci_writew(host, mode, SDHCI_TRANSFER_MODE);
+}
+
+static int sdhci_check_ro(struct sdhci_host *host)
+{
+	int is_readonly;
+
+	if (host->flags & SDHCI_DEVICE_DEAD)
+		is_readonly = 0;
+	else if (host->ops->get_ro)
+		is_readonly = host->ops->get_ro(host);
+	else
+		is_readonly = !(sdhci_readl(host, SDHCI_PRESENT_STATE)
+				& SDHCI_WRITE_PROTECT);
+
+	/* This quirk needs to be replaced by a callback-function later */
+	return host->quirks & SDHCI_QUIRK_INVERTED_WRITE_PROTECT ?
+		!is_readonly : is_readonly;
+}
+
+#define SAMPLE_COUNT	5
+
+static int sdhci_get_ro(struct sdhci_host *host)
+{
+	int i, ro_count;
+
+	if (!(host->quirks & SDHCI_QUIRK_UNSTABLE_RO_DETECT))
+		return sdhci_check_ro(host);
+
+	ro_count = 0;
+	for (i = 0; i < SAMPLE_COUNT; i++) {
+		if (sdhci_check_ro(host)) {
+			if (++ro_count > SAMPLE_COUNT / 2)
+				return 1;
+		}
+		mdelay(30);
+	}
+	return 0;
+}
+
+static int sdhci_send_command(struct sdhci_host *host, struct mci_cmd *cmd,
+		       struct mci_data *data)
+{
+	struct device_d *dev = host->mci.hw_dev;
+	u32 mask, flags;
+	int ret;
+	u32 stat = 0;
+
+	if (!(sdhci_readl(host, SDHCI_PRESENT_STATE) & SDHCI_CARD_PRESENT)) {
+		dev_err(dev, "Card not present.\n");
+		sdhci_deactivate_led(host);
+		return -ENOMEDIUM;
+	}
+
+	sdhci_activate_led(host);
+
+	sdhci_writel(host, SDHCI_INT_ALL_MASK, SDHCI_INT_STATUS);
+
+	mask = SDHCI_CMD_INHIBIT;
+	if (!data || (cmd->resp_type & MMC_RSP_BUSY))
+		mask |= SDHCI_DATA_INHIBIT;
+
+	/* We shouldn't wait for data inihibit for stop commands, even
+	   though they might use busy signaling */
+	if (cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION)
+		mask &= ~SDHCI_DATA_INHIBIT;
+
+	/* Wait max 10 ms */
+	ret = wait_on_timeout(10 * MSECOND,
+			!(sdhci_readl(host, SDHCI_PRESENT_STATE) & mask));
+	if (ret) {
+		dev_err(dev, "Controller never released inhibit bit(s).\n");
+		sdhci_dumpregs(host);
+		return -EIO;
+	}
+
+	if (data && (data->flags & MMC_DATA_WRITE) && sdhci_get_ro(host)) {
+		dev_err(dev, "Card Read-Only\n");
+		return -EROFS;
+	}
+
+	sdhci_prepare_data(host, cmd, data);
+
+	sdhci_writel(host, cmd->cmdarg, SDHCI_ARGUMENT);
+
+	sdhci_set_transfer_mode(host, data);
+
+	if ((cmd->resp_type & MMC_RSP_136) && (cmd->resp_type & MMC_RSP_BUSY)) {
+		dev_err(dev, "Unsupported response type!\n");
+		return -EINVAL;
+	}
+
+	mask = SDHCI_INT_RESPONSE;
+	if (!(cmd->resp_type & MMC_RSP_PRESENT))
+		flags = SDHCI_CMD_RESP_NONE;
+	else if (cmd->resp_type & MMC_RSP_136)
+		flags = SDHCI_CMD_RESP_LONG;
+	else if (cmd->resp_type & MMC_RSP_BUSY) {
+		flags = SDHCI_CMD_RESP_SHORT_BUSY;
+		mask |= SDHCI_INT_DATA_END;
+	} else
+		flags = SDHCI_CMD_RESP_SHORT;
+
+	if (cmd->resp_type & MMC_RSP_CRC)
+		flags |= SDHCI_CMD_CRC;
+	if (cmd->resp_type & MMC_RSP_OPCODE)
+		flags |= SDHCI_CMD_INDEX;
+
+	if (data)
+		flags |= SDHCI_CMD_DATA;
+
+	sdhci_writew(host, SDHCI_MAKE_CMD(cmd->cmdidx, flags), SDHCI_COMMAND);
+
+	ret = wait_on_timeout(100 * MSECOND,
+			sdhci_readl(host, SDHCI_INT_STATUS) & SDHCI_INT_RESPONSE);
+	if (ret) {
+		dev_err(dev, "timeout on send command\n");
+		return -ETIMEDOUT;
+	}
+
+	stat = sdhci_readl(host, SDHCI_INT_STATUS);
+	sdhci_writel(host, stat, SDHCI_INT_STATUS);
+
+	if (stat & (SDHCI_INT_INDEX | SDHCI_INT_END_BIT | SDHCI_INT_CRC))
+		return -EIO;
+
+	if (stat & SDHCI_INT_TIMEOUT)
+		return -ETIMEDOUT;
+
+	return 0;
+}
+
+static int sdhci_request(struct mci_host *mci, struct mci_cmd *cmd,
+		       struct mci_data *data)
+{
+	struct sdhci_host *host = to_mci_host(mci);
+	int ret;
+	unsigned int stat = 0;
+
+	ret = sdhci_send_command(host, cmd, data);
+	if (ret)
+		goto err;
+
+	sdhci_cmd_done(host, cmd);
+
+	if (data) {
+		ret = sdhci_transfer_data(host, data);
+		if (ret)
+			goto err;
+	}
+
+	sdhci_writel(host, SDHCI_INT_ALL_MASK, SDHCI_INT_STATUS);
+
+	return 0;
+
+err:
+	stat = sdhci_readl(host, SDHCI_INT_STATUS);
+
+	sdhci_reset(host, SDHCI_RESET_CMD);
+	sdhci_reset(host, SDHCI_RESET_DATA);
+	return ret;
+}
+
+static int sdhci_set_clock(struct mci_host *mci, unsigned int clock)
+{
+	struct sdhci_host *host = to_mci_host(mci);
+	struct device_d *dev = mci->hw_dev;
+	int div = 0; /* Initialized for compiler warning */
+	int real_div = div, clk_mul = 1;
+	u16 clk = 0;
+	int ret;
+
+	if (host->ops->set_clock) {
+		host->ops->set_clock(host, clock);
+		if (host->quirks & SDHCI_QUIRK_NONSTANDARD_CLOCK)
+			return 0;
+	}
+
+	sdhci_writew(host, 0, SDHCI_CLOCK_CONTROL);
+
+	if (clock == 0)
+		goto out;
+
+	if (host->version >= SDHCI_SPEC_300) {
+		/*
+		 * Check if the Host Controller supports Programmable Clock
+		 * Mode.
+		 */
+		if (host->clk_mul) {
+			u16 ctrl;
+
+			/*
+			 * We need to figure out whether the Host Driver needs
+			 * to select Programmable Clock Mode, or the value can
+			 * be set automatically by the Host Controller based on
+			 * the Preset Value registers.
+			 */
+			ctrl = sdhci_readw(host, SDHCI_HOST_CONTROL2);
+			if (!(ctrl & SDHCI_CTRL_PRESET_VAL_ENABLE)) {
+				for (div = 1; div <= 1024; div++) {
+					if (((host->max_clk * host->clk_mul) /
+					      div) <= clock)
+						break;
+				}
+				/*
+				 * Set Programmable Clock Mode in the Clock
+				 * Control register.
+				 */
+				clk = SDHCI_PROG_CLOCK_MODE;
+				real_div = div;
+				clk_mul = host->clk_mul;
+				div--;
+			}
+		} else {
+			/* Version 3.00 divisors must be a multiple of 2. */
+			if (host->max_clk <= clock)
+				div = 1;
+			else {
+				for (div = 2; div < SDHCI_MAX_DIV_SPEC_300;
+				     div += 2) {
+					if ((host->max_clk / div) <= clock)
+						break;
+				}
+			}
+			real_div = div;
+			div >>= 1;
+		}
+	} else {
+		/* Version 2.00 divisors must be a power of 2. */
+		for (div = 1; div < SDHCI_MAX_DIV_SPEC_200; div *= 2) {
+			if ((host->max_clk / div) <= clock)
+				break;
+		}
+		real_div = div;
+		div >>= 1;
+	}
+
+	if (real_div)
+		mci->clock = (host->max_clk * clk_mul) / real_div;
+
+	clk = (div & SDHCI_DIV_MASK) << SDHCI_DIVIDER_SHIFT;
+	clk |= ((div & SDHCI_DIV_HI_MASK) >> SDHCI_DIV_MASK_LEN)
+		<< SDHCI_DIVIDER_HI_SHIFT;
+	clk |= SDHCI_CLOCK_INT_EN;
+	sdhci_writew(host, clk, SDHCI_CLOCK_CONTROL);
+
+	/* Wait max 20 ms */
+	ret = wait_on_timeout(20 * MSECOND,
+			sdhci_readw(host, SDHCI_CLOCK_CONTROL) & SDHCI_CLOCK_INT_STABLE);
+	if (ret) {
+		dev_err(dev, "Internal clock never stabilised.\n");
+		sdhci_dumpregs(host);
+		return -ETIMEDOUT;
+	}
+
+	clk = sdhci_readw(host, SDHCI_CLOCK_CONTROL);
+	clk |= SDHCI_CLOCK_CARD_EN;
+	sdhci_writew(host, clk, SDHCI_CLOCK_CONTROL);
+
+out:
+	host->clock = clock;
+	return 0;
+}
+
+static int sdhci_set_power(struct sdhci_host *host, unsigned short power)
+{
+	u8 pwr = 0;
+
+	if (power != (unsigned short)-1) {
+		switch (1 << power) {
+		case MMC_VDD_165_195:
+			pwr = SDHCI_POWER_180;
+			break;
+		case MMC_VDD_29_30:
+		case MMC_VDD_30_31:
+			pwr = SDHCI_POWER_300;
+			break;
+		case MMC_VDD_32_33:
+		case MMC_VDD_33_34:
+			pwr = SDHCI_POWER_330;
+			break;
+		}
+	}
+
+	if (host->pwr == pwr)
+		return -1;
+
+	if (pwr == 0) {
+		sdhci_writeb(host, 0, SDHCI_POWER_CONTROL);
+		return 0;
+	}
+
+	/*
+	 * Spec says that we should clear the power reg before setting
+	 * a new value. Some controllers don't seem to like this though.
+	 */
+	if (!(host->quirks & SDHCI_QUIRK_SINGLE_POWER_WRITE))
+		sdhci_writeb(host, 0, SDHCI_POWER_CONTROL);
+
+	/*
+	 * At least the Marvell CaFe chip gets confused if we set the voltage
+	 * and set turn on power at the same time, so set the voltage first.
+	 */
+	if (host->quirks & SDHCI_QUIRK_NO_SIMULT_VDD_AND_POWER)
+		sdhci_writeb(host, pwr, SDHCI_POWER_CONTROL);
+
+	pwr |= SDHCI_POWER_ON;
+
+	sdhci_writeb(host, pwr, SDHCI_POWER_CONTROL);
+
+	/*
+	 * Some controllers need an extra 10ms delay of 10ms before they
+	 * can apply clock after applying power
+	 */
+	if (host->quirks & SDHCI_QUIRK_DELAY_AFTER_POWER)
+		mdelay(10);
+
+	return power;
+}
+
+void sdhci_set_ios(struct mci_host *mci, struct mci_ios *ios)
+{
+	u32 ctrl;
+	struct sdhci_host *host = to_mci_host(mci);
+
+	if (ios->clock != host->clock)
+		sdhci_set_clock(mci, ios->clock);
+
+	/*
+	 * If your platform has 8-bit width support but is not a v3 controller,
+	 * or if it requires special setup code, you should implement that in
+	 * platform_8bit_width().
+	 */
+	if (host->ops->platform_8bit_width)
+		host->ops->platform_8bit_width(host, ios->bus_width);
+	else {
+		ctrl = sdhci_readb(host, SDHCI_HOST_CONTROL);
+		if (ios->bus_width == 8) {
+			ctrl &= ~SDHCI_CTRL_4BITBUS;
+			if (host->version >= SDHCI_SPEC_300)
+				ctrl |= SDHCI_CTRL_8BITBUS;
+		} else {
+			if (host->version >= SDHCI_SPEC_300)
+				ctrl &= ~SDHCI_CTRL_8BITBUS;
+			if (ios->bus_width == 4)
+				ctrl |= SDHCI_CTRL_4BITBUS;
+			else
+				ctrl &= ~SDHCI_CTRL_4BITBUS;
+		}
+	}
+
+	ctrl = sdhci_readb(host, SDHCI_HOST_CONTROL);
+
+	if (mci->clock > 26000000 && !(host->quirks & SDHCI_QUIRK_NO_HISPD_BIT))
+		ctrl |= SDHCI_CTRL_HISPD;
+	else
+		ctrl &= ~SDHCI_CTRL_HISPD;
+
+	sdhci_writeb(host, ctrl, SDHCI_HOST_CONTROL);
+
+	/*
+	 * Some (ENE) controllers go apeshit on some ios operation,
+	 * signalling timeout and CRC errors even on CMD0. Resetting
+	 * it on each ios seems to solve the problem.
+	 */
+	if(host->quirks & SDHCI_QUIRK_RESET_CMD_DATA_ON_IOS)
+		sdhci_reset(host, SDHCI_RESET_CMD | SDHCI_RESET_DATA);
+}
+
+int sdhci_init(struct mci_host *mci, struct device_d *mci_dev)
+{
+	struct sdhci_host *host = to_mci_host(mci);
+
+	/* Eable all state */
+	sdhci_writel(host, SDHCI_INT_ALL_MASK, SDHCI_INT_ENABLE);
+	sdhci_writel(host, SDHCI_INT_ALL_MASK, SDHCI_SIGNAL_ENABLE);
+
+	sdhci_set_power(host, fls(mci->voltages) - 1);
+
+	return 0;
+}
+
+int sdhci_add_host(struct sdhci_host *host)
+{
+	struct device_d *dev = host->mci.hw_dev;
+	struct mci_host		*mci;
+	u32 caps[2] = {0, 0};
+
+	mci = &host->mci;
+
+	mci->send_cmd = sdhci_request;
+	mci->set_ios = sdhci_set_ios;
+	mci->init = sdhci_init;
+
+	sdhci_reset(host, SDHCI_RESET_ALL);
+
+	host->version = sdhci_readw(host, SDHCI_HOST_VERSION);
+	host->version = (host->version & SDHCI_SPEC_VER_MASK)
+				>> SDHCI_SPEC_VER_SHIFT;
+
+	if (host->version > SDHCI_SPEC_300) {
+		dev_err(dev, "Unknown controller version (%d). "
+			"You may experience problems.\n",
+			host->version);
+	}
+
+	caps[0] = (host->quirks & SDHCI_QUIRK_MISSING_CAPS) ? host->caps :
+		sdhci_readl(host, SDHCI_CAPABILITIES);
+
+	if (host->version >= SDHCI_SPEC_300)
+		caps[1] = (host->quirks & SDHCI_QUIRK_MISSING_CAPS) ?
+			host->caps1 :
+			sdhci_readl(host, SDHCI_CAPABILITIES_1);
+
+	if (host->quirks & SDHCI_QUIRK_FORCE_DMA)
+		host->flags |= SDHCI_USE_SDMA;
+	else if (!(caps[0] & SDHCI_CAN_DO_SDMA))
+		dev_dbg(dev, "Controller doesn't have SDMA capability\n");
+	else
+		host->flags |= SDHCI_USE_SDMA;
+
+	if ((host->quirks & SDHCI_QUIRK_BROKEN_DMA) &&
+		(host->flags & SDHCI_USE_SDMA)) {
+		dev_dbg(dev, "Disabling DMA as it is marked broken\n");
+		host->flags &= ~SDHCI_USE_SDMA;
+	}
+
+	if ((host->version >= SDHCI_SPEC_200) &&
+		(caps[0] & SDHCI_CAN_DO_ADMA2))
+		host->flags |= SDHCI_USE_ADMA;
+
+	if ((host->quirks & SDHCI_QUIRK_BROKEN_ADMA) &&
+		(host->flags & SDHCI_USE_ADMA)) {
+		dev_dbg(dev, "Disabling ADMA as it is marked broken\n");
+		host->flags &= ~SDHCI_USE_ADMA;
+	}
+
+	if (host->flags & (SDHCI_USE_SDMA | SDHCI_USE_ADMA)) {
+		if (host->ops->enable_dma) {
+			if (host->ops->enable_dma(host)) {
+				dev_warn(dev, "No suitable DMA available. Falling back to PIO.\n");
+				host->flags &=
+					~(SDHCI_USE_SDMA | SDHCI_USE_ADMA);
+			}
+		}
+	}
+
+	if (host->version >= SDHCI_SPEC_300)
+		host->max_clk = (caps[0] & SDHCI_CLOCK_V3_BASE_MASK)
+			>> SDHCI_CLOCK_BASE_SHIFT;
+	else
+		host->max_clk = (caps[0] & SDHCI_CLOCK_BASE_MASK)
+			>> SDHCI_CLOCK_BASE_SHIFT;
+	host->max_clk *= 1000000;
+
+	if (host->max_clk == 0 || host->quirks &
+			SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN) {
+		if (!host->ops->get_max_clock) {
+			dev_err(dev, "Hardware doesn't specify base clock frequency.\n");
+			return -ENODEV;
+		}
+		host->max_clk = host->ops->get_max_clock(host);
+	}
+
+	/*
+	 * In case of Host Controller v3.00, find out whether clock
+	 * multiplier is supported.
+	 */
+	host->clk_mul = (caps[1] & SDHCI_CLOCK_MUL_MASK) >>
+			SDHCI_CLOCK_MUL_SHIFT;
+
+	/*
+	 * In case the value in Clock Multiplier is 0, then programmable
+	 * clock mode is not supported, otherwise the actual clock
+	 * multiplier is one more than the value of Clock Multiplier
+	 * in the Capabilities Register.
+	 */
+	if (host->clk_mul)
+		host->clk_mul += 1;
+
+	mci->f_max = host->max_clk;
+	if (host->ops->get_min_clock)
+		mci->f_min = host->ops->get_min_clock(host);
+	else if (host->version >= SDHCI_SPEC_300) {
+		if (host->clk_mul) {
+			mci->f_min = (host->max_clk * host->clk_mul) / 1024;
+			mci->f_max = host->max_clk * host->clk_mul;
+		} else {
+			mci->f_min = host->max_clk / SDHCI_MAX_DIV_SPEC_300;
+		}
+	} else {
+		mci->f_min = host->max_clk / SDHCI_MAX_DIV_SPEC_200;
+	}
+
+	mci->voltages = 0;
+	if (caps[0] & SDHCI_CAN_VDD_330)
+		mci->voltages |= MMC_VDD_32_33 | MMC_VDD_33_34;
+	if (caps[0] & SDHCI_CAN_VDD_300)
+		mci->voltages |= MMC_VDD_29_30 | MMC_VDD_30_31;
+	if (caps[0] & SDHCI_CAN_VDD_180)
+		mci->voltages |= MMC_VDD_165_195;
+
+	if (host->ocr_avail)
+		mci->voltages &= host->ocr_avail;
+
+	mci->host_caps = MMC_MODE_HS | MMC_MODE_HS_52MHz | MMC_MODE_4BIT;
+	if (caps[0] & SDHCI_CAN_DO_8BIT)
+		mci->host_caps |= MMC_MODE_8BIT;
+
+	mci_register(mci);
+
+	return 0;
+}
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
new file mode 100644
index 0000000..43dfc56
--- /dev/null
+++ b/drivers/mci/sdhci.h
@@ -0,0 +1,358 @@
+/*
+ * Header file for Host Controller registers and I/O accessors.
+ *
+ *  Copyright (C) 2005-2008 Pierre Ossman, All Rights Reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or (at
+ * your option) any later version.
+ */
+#ifndef __SDHCI_HW_H
+#define __SDHCI_HW_H
+
+#include <io.h>
+
+#include <mci/sdhci.h>
+
+/*
+ * Controller registers
+ */
+
+#define SDHCI_DMA_ADDRESS	0x00
+#define SDHCI_ARGUMENT2		SDHCI_DMA_ADDRESS
+
+#define SDHCI_BLOCK_SIZE	0x04
+#define  SDHCI_MAKE_BLKSZ(dma, blksz) (((dma & 0x7) << 12) | (blksz & 0xFFF))
+
+#define SDHCI_BLOCK_COUNT	0x06
+
+#define SDHCI_ARGUMENT		0x08
+
+#define SDHCI_TRANSFER_MODE	0x0C
+#define  SDHCI_TRNS_DMA		0x01
+#define  SDHCI_TRNS_BLK_CNT_EN	0x02
+#define  SDHCI_TRNS_AUTO_CMD12	0x04
+#define  SDHCI_TRNS_AUTO_CMD23	0x08
+#define  SDHCI_TRNS_READ	0x10
+#define  SDHCI_TRNS_MULTI	0x20
+
+#define SDHCI_COMMAND		0x0E
+#define  SDHCI_CMD_RESP_MASK	0x03
+#define  SDHCI_CMD_CRC		0x08
+#define  SDHCI_CMD_INDEX	0x10
+#define  SDHCI_CMD_DATA		0x20
+#define  SDHCI_CMD_ABORTCMD	0xC0
+
+#define  SDHCI_CMD_RESP_NONE	0x00
+#define  SDHCI_CMD_RESP_LONG	0x01
+#define  SDHCI_CMD_RESP_SHORT	0x02
+#define  SDHCI_CMD_RESP_SHORT_BUSY 0x03
+
+#define SDHCI_MAKE_CMD(c, f) (((c & 0xff) << 8) | (f & 0xff))
+#define SDHCI_GET_CMD(c) ((c>>8) & 0x3f)
+
+#define SDHCI_RESPONSE		0x10
+
+#define SDHCI_BUFFER		0x20
+
+#define SDHCI_PRESENT_STATE	0x24
+#define  SDHCI_CMD_INHIBIT	0x00000001
+#define  SDHCI_DATA_INHIBIT	0x00000002
+#define  SDHCI_DOING_WRITE	0x00000100
+#define  SDHCI_DOING_READ	0x00000200
+#define  SDHCI_SPACE_AVAILABLE	0x00000400
+#define  SDHCI_DATA_AVAILABLE	0x00000800
+#define  SDHCI_CARD_PRESENT	0x00010000
+#define  SDHCI_WRITE_PROTECT	0x00080000
+#define  SDHCI_DATA_LVL_MASK	0x00F00000
+#define   SDHCI_DATA_LVL_SHIFT	20
+
+#define SDHCI_HOST_CONTROL	0x28
+#define  SDHCI_CTRL_LED		0x01
+#define  SDHCI_CTRL_4BITBUS	0x02
+#define  SDHCI_CTRL_HISPD	0x04
+#define  SDHCI_CTRL_DMA_MASK	0x18
+#define   SDHCI_CTRL_SDMA	0x00
+#define   SDHCI_CTRL_ADMA1	0x08
+#define   SDHCI_CTRL_ADMA32	0x10
+#define   SDHCI_CTRL_ADMA64	0x18
+#define   SDHCI_CTRL_8BITBUS	0x20
+
+#define SDHCI_POWER_CONTROL	0x29
+#define  SDHCI_POWER_ON		0x01
+#define  SDHCI_POWER_180	0x0A
+#define  SDHCI_POWER_300	0x0C
+#define  SDHCI_POWER_330	0x0E
+
+#define SDHCI_BLOCK_GAP_CONTROL	0x2A
+
+#define SDHCI_WAKE_UP_CONTROL	0x2B
+#define  SDHCI_WAKE_ON_INT	0x01
+#define  SDHCI_WAKE_ON_INSERT	0x02
+#define  SDHCI_WAKE_ON_REMOVE	0x04
+
+#define SDHCI_CLOCK_CONTROL	0x2C
+#define  SDHCI_DIVIDER_SHIFT	8
+#define  SDHCI_DIVIDER_HI_SHIFT	6
+#define  SDHCI_DIV_MASK	0xFF
+#define  SDHCI_DIV_MASK_LEN	8
+#define  SDHCI_DIV_HI_MASK	0x300
+#define  SDHCI_PROG_CLOCK_MODE	0x0020
+#define  SDHCI_CLOCK_CARD_EN	0x0004
+#define  SDHCI_CLOCK_INT_STABLE	0x0002
+#define  SDHCI_CLOCK_INT_EN	0x0001
+
+#define SDHCI_TIMEOUT_CONTROL	0x2E
+
+#define SDHCI_SOFTWARE_RESET	0x2F
+#define  SDHCI_RESET_ALL	0x01
+#define  SDHCI_RESET_CMD	0x02
+#define  SDHCI_RESET_DATA	0x04
+
+#define SDHCI_INT_STATUS	0x30
+#define SDHCI_INT_ENABLE	0x34
+#define SDHCI_SIGNAL_ENABLE	0x38
+#define  SDHCI_INT_RESPONSE	0x00000001
+#define  SDHCI_INT_DATA_END	0x00000002
+#define  SDHCI_INT_DMA_END	0x00000008
+#define  SDHCI_INT_SPACE_AVAIL	0x00000010
+#define  SDHCI_INT_DATA_AVAIL	0x00000020
+#define  SDHCI_INT_CARD_INSERT	0x00000040
+#define  SDHCI_INT_CARD_REMOVE	0x00000080
+#define  SDHCI_INT_CARD_INT	0x00000100
+#define  SDHCI_INT_ERROR	0x00008000
+#define  SDHCI_INT_TIMEOUT	0x00010000
+#define  SDHCI_INT_CRC		0x00020000
+#define  SDHCI_INT_END_BIT	0x00040000
+#define  SDHCI_INT_INDEX	0x00080000
+#define  SDHCI_INT_DATA_TIMEOUT	0x00100000
+#define  SDHCI_INT_DATA_CRC	0x00200000
+#define  SDHCI_INT_DATA_END_BIT	0x00400000
+#define  SDHCI_INT_BUS_POWER	0x00800000
+#define  SDHCI_INT_ACMD12ERR	0x01000000
+#define  SDHCI_INT_ADMA_ERROR	0x02000000
+
+#define  SDHCI_INT_NORMAL_MASK	0x00007FFF
+#define  SDHCI_INT_ERROR_MASK	0xFFFF8000
+
+#define  SDHCI_INT_CMD_MASK	(SDHCI_INT_RESPONSE | SDHCI_INT_TIMEOUT | \
+		SDHCI_INT_CRC | SDHCI_INT_END_BIT | SDHCI_INT_INDEX)
+#define  SDHCI_INT_DATA_MASK	(SDHCI_INT_DATA_END | SDHCI_INT_DMA_END | \
+		SDHCI_INT_DATA_AVAIL | SDHCI_INT_SPACE_AVAIL | \
+		SDHCI_INT_DATA_TIMEOUT | SDHCI_INT_DATA_CRC | \
+		SDHCI_INT_DATA_END_BIT | SDHCI_INT_ADMA_ERROR)
+#define SDHCI_INT_ALL_MASK	((unsigned int)-1)
+
+#define SDHCI_ACMD12_ERR	0x3C
+
+#define SDHCI_HOST_CONTROL2		0x3E
+#define  SDHCI_CTRL_UHS_MASK		0x0007
+#define   SDHCI_CTRL_UHS_SDR12		0x0000
+#define   SDHCI_CTRL_UHS_SDR25		0x0001
+#define   SDHCI_CTRL_UHS_SDR50		0x0002
+#define   SDHCI_CTRL_UHS_SDR104		0x0003
+#define   SDHCI_CTRL_UHS_DDR50		0x0004
+#define   SDHCI_CTRL_HS_SDR200		0x0005 /* reserved value in SDIO spec */
+#define  SDHCI_CTRL_VDD_180		0x0008
+#define  SDHCI_CTRL_DRV_TYPE_MASK	0x0030
+#define   SDHCI_CTRL_DRV_TYPE_B		0x0000
+#define   SDHCI_CTRL_DRV_TYPE_A		0x0010
+#define   SDHCI_CTRL_DRV_TYPE_C		0x0020
+#define   SDHCI_CTRL_DRV_TYPE_D		0x0030
+#define  SDHCI_CTRL_EXEC_TUNING		0x0040
+#define  SDHCI_CTRL_TUNED_CLK		0x0080
+#define  SDHCI_CTRL_PRESET_VAL_ENABLE	0x8000
+
+#define SDHCI_CAPABILITIES	0x40
+#define  SDHCI_TIMEOUT_CLK_MASK	0x0000003F
+#define  SDHCI_TIMEOUT_CLK_SHIFT 0
+#define  SDHCI_TIMEOUT_CLK_UNIT	0x00000080
+#define  SDHCI_CLOCK_BASE_MASK	0x00003F00
+#define  SDHCI_CLOCK_V3_BASE_MASK	0x0000FF00
+#define  SDHCI_CLOCK_BASE_SHIFT	8
+#define  SDHCI_MAX_BLOCK_MASK	0x00030000
+#define  SDHCI_MAX_BLOCK_SHIFT  16
+#define  SDHCI_CAN_DO_8BIT	0x00040000
+#define  SDHCI_CAN_DO_ADMA2	0x00080000
+#define  SDHCI_CAN_DO_ADMA1	0x00100000
+#define  SDHCI_CAN_DO_HISPD	0x00200000
+#define  SDHCI_CAN_DO_SDMA	0x00400000
+#define  SDHCI_CAN_VDD_330	0x01000000
+#define  SDHCI_CAN_VDD_300	0x02000000
+#define  SDHCI_CAN_VDD_180	0x04000000
+#define  SDHCI_CAN_64BIT	0x10000000
+
+#define  SDHCI_SUPPORT_SDR50	0x00000001
+#define  SDHCI_SUPPORT_SDR104	0x00000002
+#define  SDHCI_SUPPORT_DDR50	0x00000004
+#define  SDHCI_DRIVER_TYPE_A	0x00000010
+#define  SDHCI_DRIVER_TYPE_C	0x00000020
+#define  SDHCI_DRIVER_TYPE_D	0x00000040
+#define  SDHCI_RETUNING_TIMER_COUNT_MASK	0x00000F00
+#define  SDHCI_RETUNING_TIMER_COUNT_SHIFT	8
+#define  SDHCI_USE_SDR50_TUNING			0x00002000
+#define  SDHCI_RETUNING_MODE_MASK		0x0000C000
+#define  SDHCI_RETUNING_MODE_SHIFT		14
+#define  SDHCI_CLOCK_MUL_MASK	0x00FF0000
+#define  SDHCI_CLOCK_MUL_SHIFT	16
+
+#define SDHCI_CAPABILITIES_1	0x44
+
+#define SDHCI_MAX_CURRENT		0x48
+#define  SDHCI_MAX_CURRENT_LIMIT	0xFF
+#define  SDHCI_MAX_CURRENT_330_MASK	0x0000FF
+#define  SDHCI_MAX_CURRENT_330_SHIFT	0
+#define  SDHCI_MAX_CURRENT_300_MASK	0x00FF00
+#define  SDHCI_MAX_CURRENT_300_SHIFT	8
+#define  SDHCI_MAX_CURRENT_180_MASK	0xFF0000
+#define  SDHCI_MAX_CURRENT_180_SHIFT	16
+#define   SDHCI_MAX_CURRENT_MULTIPLIER	4
+
+/* 4C-4F reserved for more max current */
+
+#define SDHCI_SET_ACMD12_ERROR	0x50
+#define SDHCI_SET_INT_ERROR	0x52
+
+#define SDHCI_ADMA_ERROR	0x54
+
+/* 55-57 reserved */
+
+#define SDHCI_ADMA_ADDRESS	0x58
+
+/* 60-FB reserved */
+
+#define SDHCI_SLOT_INT_STATUS	0xFC
+
+#define SDHCI_HOST_VERSION	0xFE
+#define  SDHCI_VENDOR_VER_MASK	0xFF00
+#define  SDHCI_VENDOR_VER_SHIFT	8
+#define  SDHCI_SPEC_VER_MASK	0x00FF
+#define  SDHCI_SPEC_VER_SHIFT	0
+#define   SDHCI_SPEC_100	0
+#define   SDHCI_SPEC_200	1
+#define   SDHCI_SPEC_300	2
+
+/*
+ * End of controller registers.
+ */
+
+#define SDHCI_MAX_DIV_SPEC_200	256
+#define SDHCI_MAX_DIV_SPEC_300	2046
+
+/*
+ * Host SDMA buffer boundary. Valid values from 4K to 512K in powers of 2.
+ */
+#define SDHCI_DEFAULT_BOUNDARY_SIZE  (512 * 1024)
+#define SDHCI_DEFAULT_BOUNDARY_ARG   (ilog2(SDHCI_DEFAULT_BOUNDARY_SIZE) - 12)
+
+struct sdhci_ops {
+#ifdef CONFIG_MMC_SDHCI_IO_ACCESSORS
+	u32		(*read_l)(struct sdhci_host *host, int reg);
+	u16		(*read_w)(struct sdhci_host *host, int reg);
+	u8		(*read_b)(struct sdhci_host *host, int reg);
+	void		(*write_l)(struct sdhci_host *host, u32 val, int reg);
+	void		(*write_w)(struct sdhci_host *host, u16 val, int reg);
+	void		(*write_b)(struct sdhci_host *host, u8 val, int reg);
+#endif
+
+	void	(*set_clock)(struct sdhci_host *host, unsigned int clock);
+
+	int		(*enable_dma)(struct sdhci_host *host);
+	unsigned int	(*get_max_clock)(struct sdhci_host *host);
+	unsigned int	(*get_min_clock)(struct sdhci_host *host);
+	int		(*platform_8bit_width)(struct sdhci_host *host,
+					       int width);
+	unsigned int    (*get_ro)(struct sdhci_host *host);
+	void	(*platform_reset_enter)(struct sdhci_host *host, u8 mask);
+	void	(*platform_reset_exit)(struct sdhci_host *host, u8 mask);
+	void	(*hw_reset)(struct sdhci_host *host);
+};
+
+#ifdef CONFIG_MMC_SDHCI_IO_ACCESSORS
+
+static inline void sdhci_writel(struct sdhci_host *host, u32 val, int reg)
+{
+	if (unlikely(host->ops->write_l))
+		host->ops->write_l(host, val, reg);
+	else
+		writel(val, host->ioaddr + reg);
+}
+
+static inline void sdhci_writew(struct sdhci_host *host, u16 val, int reg)
+{
+	if (unlikely(host->ops->write_w))
+		host->ops->write_w(host, val, reg);
+	else
+		writew(val, host->ioaddr + reg);
+}
+
+static inline void sdhci_writeb(struct sdhci_host *host, u8 val, int reg)
+{
+	if (unlikely(host->ops->write_b))
+		host->ops->write_b(host, val, reg);
+	else
+		writeb(val, host->ioaddr + reg);
+}
+
+static inline u32 sdhci_readl(struct sdhci_host *host, int reg)
+{
+	if (unlikely(host->ops->read_l))
+		return host->ops->read_l(host, reg);
+	else
+		return readl(host->ioaddr + reg);
+}
+
+static inline u16 sdhci_readw(struct sdhci_host *host, int reg)
+{
+	if (unlikely(host->ops->read_w))
+		return host->ops->read_w(host, reg);
+	else
+		return readw(host->ioaddr + reg);
+}
+
+static inline u8 sdhci_readb(struct sdhci_host *host, int reg)
+{
+	if (unlikely(host->ops->read_b))
+		return host->ops->read_b(host, reg);
+	else
+		return readb(host->ioaddr + reg);
+}
+
+#else
+
+static inline void sdhci_writel(struct sdhci_host *host, u32 val, int reg)
+{
+	writel(val, host->ioaddr + reg);
+}
+
+static inline void sdhci_writew(struct sdhci_host *host, u16 val, int reg)
+{
+	writew(val, host->ioaddr + reg);
+}
+
+static inline void sdhci_writeb(struct sdhci_host *host, u8 val, int reg)
+{
+	writeb(val, host->ioaddr + reg);
+}
+
+static inline u32 sdhci_readl(struct sdhci_host *host, int reg)
+{
+	return readl(host->ioaddr + reg);
+}
+
+static inline u16 sdhci_readw(struct sdhci_host *host, int reg)
+{
+	return readw(host->ioaddr + reg);
+}
+
+static inline u8 sdhci_readb(struct sdhci_host *host, int reg)
+{
+	return readb(host->ioaddr + reg);
+}
+
+#endif /* CONFIG_MMC_SDHCI_IO_ACCESSORS */
+
+extern int sdhci_add_host(struct sdhci_host *host);
+
+#endif /* __SDHCI_HW_H */
diff --git a/include/mci/sdhci.h b/include/mci/sdhci.h
new file mode 100644
index 0000000..b25affd
--- /dev/null
+++ b/include/mci/sdhci.h
@@ -0,0 +1,135 @@
+/*
+ *  linux/include/linux/mmc/sdhci.h - Secure Digital Host Controller Interface
+ *
+ *  Copyright (C) 2005-2008 Pierre Ossman, All Rights Reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or (at
+ * your option) any later version.
+ */
+#ifndef LINUX_MMC_SDHCI_H
+#define LINUX_MMC_SDHCI_H
+
+#include <io.h>
+#include <mci.h>
+
+struct sdhci_host {
+	/* Data set by hardware interface driver */
+	const char *hw_name;	/* Hardware bus name */
+
+	unsigned int quirks;	/* Deviations from spec. */
+
+/* Controller doesn't honor resets unless we touch the clock register */
+#define SDHCI_QUIRK_CLOCK_BEFORE_RESET			(1<<0)
+/* Controller has bad caps bits, but really supports DMA */
+#define SDHCI_QUIRK_FORCE_DMA				(1<<1)
+/* Controller doesn't like to be reset when there is no card inserted. */
+#define SDHCI_QUIRK_NO_CARD_NO_RESET			(1<<2)
+/* Controller doesn't like clearing the power reg before a change */
+#define SDHCI_QUIRK_SINGLE_POWER_WRITE			(1<<3)
+/* Controller has flaky internal state so reset it on each ios change */
+#define SDHCI_QUIRK_RESET_CMD_DATA_ON_IOS		(1<<4)
+/* Controller has an unusable DMA engine */
+#define SDHCI_QUIRK_BROKEN_DMA				(1<<5)
+/* Controller has an unusable ADMA engine */
+#define SDHCI_QUIRK_BROKEN_ADMA				(1<<6)
+/* Controller can only DMA from 32-bit aligned addresses */
+#define SDHCI_QUIRK_32BIT_DMA_ADDR			(1<<7)
+/* Controller can only DMA chunk sizes that are a multiple of 32 bits */
+#define SDHCI_QUIRK_32BIT_DMA_SIZE			(1<<8)
+/* Controller can only ADMA chunks that are a multiple of 32 bits */
+#define SDHCI_QUIRK_32BIT_ADMA_SIZE			(1<<9)
+/* Controller needs to be reset after each request to stay stable */
+#define SDHCI_QUIRK_RESET_AFTER_REQUEST			(1<<10)
+/* Controller needs voltage and power writes to happen separately */
+#define SDHCI_QUIRK_NO_SIMULT_VDD_AND_POWER		(1<<11)
+/* Controller provides an incorrect timeout value for transfers */
+#define SDHCI_QUIRK_BROKEN_TIMEOUT_VAL			(1<<12)
+/* Controller has an issue with buffer bits for small transfers */
+#define SDHCI_QUIRK_BROKEN_SMALL_PIO			(1<<13)
+/* Controller does not provide transfer-complete interrupt when not busy */
+#define SDHCI_QUIRK_NO_BUSY_IRQ				(1<<14)
+/* Controller has unreliable card detection */
+#define SDHCI_QUIRK_BROKEN_CARD_DETECTION		(1<<15)
+/* Controller reports inverted write-protect state */
+#define SDHCI_QUIRK_INVERTED_WRITE_PROTECT		(1<<16)
+/* Controller has nonstandard clock management */
+#define SDHCI_QUIRK_NONSTANDARD_CLOCK			(1<<17)
+/* Controller does not like fast PIO transfers */
+#define SDHCI_QUIRK_PIO_NEEDS_DELAY			(1<<18)
+/* Controller losing signal/interrupt enable states after reset */
+#define SDHCI_QUIRK_RESTORE_IRQS_AFTER_RESET		(1<<19)
+/* Controller has to be forced to use block size of 2048 bytes */
+#define SDHCI_QUIRK_FORCE_BLK_SZ_2048			(1<<20)
+/* Controller cannot do multi-block transfers */
+#define SDHCI_QUIRK_NO_MULTIBLOCK			(1<<21)
+/* Controller can only handle 1-bit data transfers */
+#define SDHCI_QUIRK_FORCE_1_BIT_DATA			(1<<22)
+/* Controller needs 10ms delay between applying power and clock */
+#define SDHCI_QUIRK_DELAY_AFTER_POWER			(1<<23)
+/* Controller uses SDCLK instead of TMCLK for data timeouts */
+#define SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK		(1<<24)
+/* Controller reports wrong base clock capability */
+#define SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN		(1<<25)
+/* Controller cannot support End Attribute in NOP ADMA descriptor */
+#define SDHCI_QUIRK_NO_ENDATTR_IN_NOPDESC		(1<<26)
+/* Controller is missing device caps. Use caps provided by host */
+#define SDHCI_QUIRK_MISSING_CAPS			(1<<27)
+/* Controller uses Auto CMD12 command to stop the transfer */
+#define SDHCI_QUIRK_MULTIBLOCK_READ_ACMD12		(1<<28)
+/* Controller doesn't have HISPD bit field in HI-SPEED SD card */
+#define SDHCI_QUIRK_NO_HISPD_BIT			(1<<29)
+/* Controller treats ADMA descriptors with length 0000h incorrectly */
+#define SDHCI_QUIRK_BROKEN_ADMA_ZEROLEN_DESC		(1<<30)
+/* The read-only detection via SDHCI_PRESENT_STATE register is unstable */
+#define SDHCI_QUIRK_UNSTABLE_RO_DETECT			(1<<31)
+
+	unsigned int quirks2;	/* More deviations from spec. */
+
+#define SDHCI_QUIRK2_HOST_OFF_CARD_ON			(1<<0)
+
+	void __iomem *ioaddr;	/* Mapped address */
+
+	const struct sdhci_ops *ops;	/* Low level hw interface */
+
+	/* Internal data */
+	struct mci_host mci;	/* MMC structure */
+
+	int flags;		/* Host attributes */
+#define SDHCI_USE_SDMA		(1<<0)	/* Host is SDMA capable */
+#define SDHCI_USE_ADMA		(1<<1)	/* Host is ADMA capable */
+#define SDHCI_REQ_USE_DMA	(1<<2)	/* Use DMA for this req. */
+#define SDHCI_DEVICE_DEAD	(1<<3)	/* Device unresponsive */
+#define SDHCI_SDR50_NEEDS_TUNING (1<<4)	/* SDR50 needs tuning */
+#define SDHCI_NEEDS_RETUNING	(1<<5)	/* Host needs retuning */
+#define SDHCI_AUTO_CMD12	(1<<6)	/* Auto CMD12 support */
+#define SDHCI_AUTO_CMD23	(1<<7)	/* Auto CMD23 support */
+#define SDHCI_PV_ENABLED	(1<<8)	/* Preset value enabled */
+#define SDHCI_SDIO_IRQ_ENABLED	(1<<9)	/* SDIO irq enabled */
+#define SDHCI_HS200_NEEDS_TUNING (1<<10)	/* HS200 needs tuning */
+#define SDHCI_USING_RETUNING_TIMER (1<<11)	/* Host is using a retuning timer for the card */
+
+	unsigned int version;	/* SDHCI spec. version */
+
+	unsigned int max_clk;	/* Max possible freq (MHz) */
+	unsigned int timeout_clk;	/* Timeout freq (KHz) */
+	unsigned int clk_mul;	/* Clock Muliplier value */
+
+	unsigned int clock;	/* Current clock (MHz) */
+	u8 pwr;			/* Current voltage */
+
+	struct mci_cmd *cmd;	/* Current command */
+	struct mci_data *data;	/* Current data request */
+
+	unsigned int caps;	/* Alternative CAPABILITY_0 */
+	unsigned int caps1;	/* Alternative CAPABILITY_1 */
+
+	unsigned int ocr_avail;
+
+	bool led_activate;
+};
+
+#define to_mci_host(mci)	container_of(mci, struct sdhci_host, mci)
+
+#endif /* LINUX_MMC_SDHCI_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
