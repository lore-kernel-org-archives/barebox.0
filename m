Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo6.mail-out.ovh.net ([87.98.184.159]
 helo=mo6.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VYd23-0004s0-RW
 for barebox@lists.infradead.org; Tue, 22 Oct 2013 14:34:08 +0000
Received: from mail630.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo6.mail-out.ovh.net (Postfix) with SMTP id 54333FFA8F2
 for <barebox@lists.infradead.org>; Tue, 22 Oct 2013 16:34:03 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 22 Oct 2013 16:35:24 +0200
Message-Id: <1382452525-26955-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1382452525-26955-1-git-send-email-plagnioj@jcrosoft.com>
References: <20131022143339.GC26639@ns203013.ovh.net>
 <1382452525-26955-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/3] add: mmci drivers
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mci/Kconfig       |   6 +
 drivers/mci/Makefile      |   1 +
 drivers/mci/mmci.c        | 690 ++++++++++++++++++++++++++++++++++++++++++++++
 drivers/mci/mmci.h        | 167 +++++++++++
 include/linux/amba/mmci.h |  42 +++
 5 files changed, 906 insertions(+)
 create mode 100644 drivers/mci/mmci.c
 create mode 100644 drivers/mci/mmci.h
 create mode 100644 include/linux/amba/mmci.h

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index f34c119..bd85424 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -101,6 +101,12 @@ config MCI_ATMEL
 	  Enable this entry to add support to read and write SD cards on a
 	  Atmel AT91.
 
+config MCI_MMCI
+	bool "ARM PL180 MMCI"
+	help
+	  Enable this entry to add support to read and write SD cards on a
+	  ARM AMBA PL180.
+
 config MCI_SPI
 	bool "MMC/SD over SPI"
 	select CRC7
diff --git a/drivers/mci/Makefile b/drivers/mci/Makefile
index c13dad3..421ca9f 100644
--- a/drivers/mci/Makefile
+++ b/drivers/mci/Makefile
@@ -9,3 +9,4 @@ obj-$(CONFIG_MCI_PXA)		+= pxamci.o
 obj-$(CONFIG_MCI_S3C)		+= s3c.o
 obj-$(CONFIG_MCI_SPI)		+= mci_spi.o
 obj-$(CONFIG_MCI_DW)		+= dw_mmc.o
+obj-$(CONFIG_MCI_MMCI)		+= mmci.o
diff --git a/drivers/mci/mmci.c b/drivers/mci/mmci.c
new file mode 100644
index 0000000..66ca450
--- /dev/null
+++ b/drivers/mci/mmci.c
@@ -0,0 +1,690 @@
+/*
+ * ARM PrimeCell MultiMedia Card Interface - PL180
+ *
+ * Copyright (C) ST-Ericsson SA 2010
+ *
+ * Author: Ulf Hansson <ulf.hansson@stericsson.com>
+ * Author: Martin Lundholm <martin.xa.lundholm@stericsson.com>
+ * Ported to drivers/mmc/ by: Matt Waddel <matt.waddel@linaro.org>
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <init.h>
+#include <mci.h>
+#include <io.h>
+#include <linux/err.h>
+#include <linux/clk.h>
+#include <errno.h>
+#include <malloc.h>
+#include <mmci.h>
+#include <linux/amba/bus.h>
+#include <linux/amba/mmci.h>
+
+#include "mmci.h"
+
+#define DRIVER_NAME "mmci-pl18x"
+
+static unsigned long fmax = 515633;
+
+/**
+ * struct variant_data - MMCI variant-specific quirks
+ * @clkreg: default value for MCICLOCK register
+ * @clkreg_enable: enable value for MMCICLOCK register
+ * @datalength_bits: number of bits in the MMCIDATALENGTH register
+ * @fifosize: number of bytes that can be written when MMCI_TXFIFOEMPTY
+ *	      is asserted (likewise for RX)
+ * @fifohalfsize: number of bytes that can be written when MCI_TXFIFOHALFEMPTY
+ *		  is asserted (likewise for RX)
+ * @sdio: variant supports SDIO
+ * @st_clkdiv: true if using a ST-specific clock divider algorithm
+ * @blksz_datactrl16: true if Block size is at b16..b30 position in datactrl register
+ * @pwrreg_powerup: power up value for MMCIPOWER register
+ * @signal_direction: input/out direction of bus signals can be indicated
+ */
+struct variant_data {
+	unsigned int		clkreg;
+	unsigned int		clkreg_enable;
+	unsigned int		datalength_bits;
+	unsigned int		fifosize;
+	unsigned int		fifohalfsize;
+	bool			sdio;
+	bool			st_clkdiv;
+	bool			blksz_datactrl16;
+	u32			pwrreg_powerup;
+	bool			signal_direction;
+};
+
+static struct variant_data variant_arm = {
+	.fifosize		= 16 * 4,
+	.fifohalfsize		= 8 * 4,
+	.datalength_bits	= 16,
+	.pwrreg_powerup		= MCI_PWR_UP,
+};
+
+static struct variant_data variant_arm_extended_fifo = {
+	.fifosize		= 128 * 4,
+	.fifohalfsize		= 64 * 4,
+	.datalength_bits	= 16,
+	.pwrreg_powerup		= MCI_PWR_UP,
+};
+
+static struct variant_data variant_ux500 = {
+	.fifosize		= 30 * 4,
+	.fifohalfsize		= 8 * 4,
+	.clkreg			= MCI_CLK_ENABLE,
+	.clkreg_enable		= MCI_ST_UX500_HWFCEN,
+	.datalength_bits	= 24,
+	.sdio			= true,
+	.st_clkdiv		= true,
+	.pwrreg_powerup		= MCI_PWR_ON,
+	.signal_direction	= true,
+};
+
+static struct variant_data variant_ux500v2 = {
+	.fifosize		= 30 * 4,
+	.fifohalfsize		= 8 * 4,
+	.clkreg			= MCI_CLK_ENABLE,
+	.clkreg_enable		= MCI_ST_UX500_HWFCEN,
+	.datalength_bits	= 24,
+	.sdio			= true,
+	.st_clkdiv		= true,
+	.blksz_datactrl16	= true,
+	.pwrreg_powerup		= MCI_PWR_ON,
+	.signal_direction	= true,
+};
+
+struct mmci_host {
+	struct mci_host		mci;
+	void __iomem		*base;
+	struct device_d		*hw_dev;
+	struct mmci_platform_data *plat;
+	struct clk		*clk;
+	unsigned long		mclk;
+
+	int			hw_revision;
+	int			hw_designer;
+	struct variant_data	*variant;
+};
+
+#define to_mci_host(mci)	container_of(mci, struct mmci_host, mci)
+
+static inline u32 mmci_readl(struct mmci_host *host, u32 offset)
+{
+	return readl(host->base + offset);
+}
+
+static inline void mmci_writel(struct mmci_host *host, u32 offset,
+				    u32 value)
+{
+	writel(value, host->base + offset);
+}
+
+static int wait_for_command_end(struct mci_host *mci, struct mci_cmd *cmd)
+{
+	u32 hoststatus, statusmask;
+	struct mmci_host *host = to_mci_host(mci);
+
+	statusmask = MCI_CMDTIMEOUT | MCI_CMDCRCFAIL;
+	if ((cmd->resp_type & MMC_RSP_PRESENT))
+		statusmask |= MCI_CMDRESPEND;
+	else
+		statusmask |= MCI_CMDSENT;
+
+	do
+		hoststatus = mmci_readl(host, MMCISTATUS) & statusmask;
+	while (!hoststatus);
+
+	dev_dbg(host->hw_dev, "SDI_ICR <= 0x%08X\n", statusmask);
+	dev_dbg(host->hw_dev, "status <= 0x%08X\n", hoststatus);
+	mmci_writel(host, MMCICLEAR, statusmask);
+	if (hoststatus & MCI_CMDTIMEOUT) {
+		dev_dbg(host->hw_dev, "CMD%d time out\n", cmd->cmdidx);
+		return -ETIMEDOUT;
+	} else if ((hoststatus & MCI_CMDCRCFAIL) &&
+		   (cmd->resp_type & MMC_RSP_CRC)) {
+		dev_err(host->hw_dev, "CMD%d CRC error\n", cmd->cmdidx);
+		return -EILSEQ;
+	}
+
+	if (cmd->resp_type & MMC_RSP_PRESENT) {
+		cmd->response[0] = mmci_readl(host, MMCIRESPONSE0);
+		cmd->response[1] = mmci_readl(host, MMCIRESPONSE1);
+		cmd->response[2] = mmci_readl(host, MMCIRESPONSE2);
+		cmd->response[3] = mmci_readl(host, MMCIRESPONSE3);
+		dev_dbg(host->hw_dev, "CMD%d response[0]:0x%08X, response[1]:0x%08X, "
+			"response[2]:0x%08X, response[3]:0x%08X\n",
+			cmd->cmdidx, cmd->response[0], cmd->response[1],
+			cmd->response[2], cmd->response[3]);
+	}
+
+	return 0;
+}
+
+/* send command to the mmc card and wait for results */
+static int do_command(struct mci_host *mci, struct mci_cmd *cmd)
+{
+	int result;
+	u32 sdi_cmd = 0;
+	struct mmci_host *host = to_mci_host(mci);
+
+	dev_dbg(host->hw_dev, "Request to do CMD%d\n", cmd->cmdidx);
+
+	sdi_cmd = ((cmd->cmdidx & MCI_CMDINDEXMASK) | MCI_CPSM_ENABLE);
+
+	if (cmd->resp_type) {
+		sdi_cmd |= MCI_CPSM_RESPONSE;
+		if (cmd->resp_type & MMC_RSP_136)
+			sdi_cmd |= MCI_CPSM_LONGRSP;
+	}
+
+	dev_dbg(host->hw_dev, "SDI_ARG <= 0x%08X\n", cmd->cmdarg);
+	mmci_writel(host, MMCIARGUMENT, (u32)cmd->cmdarg);
+	udelay(COMMAND_REG_DELAY);
+	dev_dbg(host->hw_dev, "SDI_CMD <= 0x%08X\n", sdi_cmd);
+
+	mmci_writel(host, MMCICOMMAND, sdi_cmd);
+	result = wait_for_command_end(mci, cmd);
+
+	/* After CMD3 open drain is switched off and push pull is used. */
+	if ((result == 0) && (cmd->cmdidx == MMC_CMD_SET_RELATIVE_ADDR)) {
+		u32 sdi_pwr = mmci_readl(host, MMCIPOWER) & ~MCI_OD;
+		mmci_writel(host, MMCIPOWER, sdi_pwr);
+	}
+
+	return result;
+}
+
+static u64 mmci_pio_read(struct mmci_host *host, char *buffer, unsigned int host_remain)
+{
+	void __iomem *base = host->base;
+	char *ptr = buffer;
+	u32 status;
+	struct variant_data *variant = host->variant;
+
+	do {
+		int count = readl(base + MMCIFIFOCNT) << 2;
+
+		if (count > host_remain)
+			count = host_remain;
+
+		if (count > variant->fifosize)
+			count = variant->fifosize;
+
+		if (count <= 0)
+			break;
+
+		/*
+		 * SDIO especially may want to send something that is
+		 * not divisible by 4 (as opposed to card sectors
+		 * etc). Therefore make sure to always read the last bytes
+		 * while only doing full 32-bit reads towards the FIFO.
+		 */
+		if (unlikely(count & 0x3)) {
+			if (count < 4) {
+				unsigned char buf[4];
+				readsl(base + MMCIFIFO, buf, 1);
+				memcpy(ptr, buf, count);
+			} else {
+				readsl(base + MMCIFIFO, ptr, count >> 2);
+				count &= ~0x3;
+			}
+		} else {
+			readsl(base + MMCIFIFO, ptr, count >> 2);
+		}
+
+		ptr += count;
+		host_remain -= count;
+
+		if (host_remain == 0)
+			break;
+
+		status = readl(base + MMCISTATUS);
+	} while (status & MCI_RXDATAAVLBL);
+
+	return ptr - buffer;
+}
+
+static int read_bytes(struct mci_host *mci, char *dest, unsigned int blkcount, unsigned int blksize)
+{
+	unsigned int xfercount = blkcount * blksize;
+	struct mmci_host *host = to_mci_host(mci);
+	u32 status, status_err;
+	int len;
+
+	dev_dbg(host->hw_dev, "read_bytes: blkcount=%u blksize=%u\n", blkcount, blksize);
+
+	do {
+		mmci_writel(host, MMCIDATACTRL, mmci_readl(host, MMCIDATACTRL));
+		len = mmci_pio_read(host, dest, xfercount);
+		xfercount -= len;
+		dest += len;
+		status = mmci_readl(host, MMCISTATUS);
+		status_err = status & (MCI_CMDCRCFAIL | MCI_DATATIMEOUT |
+			       MCI_RXOVERRUN);
+	} while(xfercount && !status_err);
+
+	status_err = status &
+		(MCI_CMDCRCFAIL | MCI_DATATIMEOUT | MCI_DATABLOCKEND |
+		 MCI_RXOVERRUN);
+
+	while (!status_err) {
+		status = mmci_readl(host, MMCISTATUS);
+		status_err = status &
+			(MCI_CMDCRCFAIL | MCI_DATATIMEOUT | MCI_DATABLOCKEND |
+			 MCI_RXOVERRUN);
+	}
+
+	if (status & MCI_DATATIMEOUT) {
+		dev_err(host->hw_dev, "Read data timed out, xfercount: %u, status: 0x%08X\n",
+			xfercount, status);
+		return -ETIMEDOUT;
+	} else if (status & MCI_CMDCRCFAIL) {
+		dev_err(host->hw_dev, "Read data bytes CRC error: 0x%x\n", status);
+		return -EILSEQ;
+	} else if (status & MCI_RXOVERRUN) {
+		dev_err(host->hw_dev, "Read data RX overflow error\n");
+		return -EIO;
+	}
+
+	mmci_writel(host, MMCICLEAR, MCI_ICR_MASK);
+
+	if (xfercount) {
+		dev_err(host->hw_dev, "Read data error, xfercount: %u\n", xfercount);
+		return -ENOBUFS;
+	}
+
+	return 0;
+}
+
+static int mmci_pio_write(struct mmci_host *host, char *buffer, unsigned int remain, u32 status)
+{
+	struct variant_data *variant = host->variant;
+	void __iomem *base = host->base;
+	char *ptr = buffer;
+
+	do {
+		unsigned int count, maxcnt;
+
+		maxcnt = status & MCI_TXFIFOEMPTY ?
+			 variant->fifosize : variant->fifohalfsize;
+		count = min(remain, maxcnt);
+
+		/*
+		 * SDIO especially may want to send something that is
+		 * not divisible by 4 (as opposed to card sectors
+		 * etc), and the FIFO only accept full 32-bit writes.
+		 * So compensate by adding +3 on the count, a single
+		 * byte become a 32bit write, 7 bytes will be two
+		 * 32bit writes etc.
+		 */
+		writesl(base + MMCIFIFO, ptr, (count + 3) >> 2);
+
+		ptr += count;
+		remain -= count;
+
+		if (remain == 0)
+			break;
+
+		status = readl(base + MMCISTATUS);
+	} while (status & MCI_TXFIFOHALFEMPTY);
+
+	return ptr - buffer;
+}
+
+static int write_bytes(struct mci_host *mci, char *dest, unsigned int blkcount, unsigned int blksize)
+{
+	unsigned int xfercount = blkcount * blksize;
+	struct mmci_host *host = to_mci_host(mci);
+	u32 status, status_err;
+	int len;
+
+	dev_dbg(host->hw_dev, "write_bytes: blkcount=%u blksize=%u\n", blkcount, blksize);
+
+	status = mmci_readl(host, MMCISTATUS);
+	status_err = status & (MCI_CMDCRCFAIL | MCI_DATATIMEOUT);
+
+	do {
+		len = mmci_pio_write(host, dest, xfercount, status);
+		xfercount -= len;
+		dest += len;
+
+		status = mmci_readl(host, MMCISTATUS);
+		status_err = status & (MCI_CMDCRCFAIL | MCI_DATATIMEOUT);
+	} while (!status_err && xfercount);
+
+	status_err = status &
+		(MCI_CMDCRCFAIL | MCI_DATATIMEOUT | MCI_DATABLOCKEND);
+	while (!status_err) {
+		status = mmci_readl(host, MMCISTATUS);
+		status_err = status &
+			(MCI_CMDCRCFAIL | MCI_DATATIMEOUT | MCI_DATABLOCKEND);
+	}
+
+	if (status & MCI_DATATIMEOUT) {
+		dev_err(host->hw_dev, "Write data timed out, xfercount:%u,status:0x%08X\n",
+		       xfercount, status);
+		return -ETIMEDOUT;
+	} else if (status & MCI_CMDCRCFAIL) {
+		dev_err(host->hw_dev, "Write data CRC error\n");
+		return -EILSEQ;
+	}
+
+	mmci_writel(host, MMCICLEAR, MCI_ICR_MASK);
+
+	if (xfercount) {
+		dev_err(host->hw_dev, "Write data error, xfercount:%u", xfercount);
+		return -ENOBUFS;
+	}
+
+	return 0;
+}
+
+static int do_data_transfer(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
+{
+	int error = -ETIMEDOUT;
+	struct mmci_host *host = to_mci_host(mci);
+	u32 data_ctrl;
+	u32 data_len = (u32) (data->blocks * data->blocksize);
+
+	if (host->variant->blksz_datactrl16) {
+		data_ctrl = data->blocksize << 16;
+	} else {
+		u32 blksz_bits;
+
+		blksz_bits = ffs(data->blocksize) - 1;
+		data_ctrl = blksz_bits << 4;
+	}
+	data_ctrl |= MCI_DPSM_ENABLE;
+
+	if (data_ctrl & MCI_ST_DPSM_DDRMODE)
+		dev_dbg(host->hw_dev, "MCI_ST_DPSM_DDRMODE\n");
+
+	mmci_writel(host, MMCIDATATIMER, MCI_DTIMER_DEFAULT);
+	mmci_writel(host, MMCIDATALENGTH, data_len);
+	udelay(DATA_REG_DELAY);
+
+	error = do_command(mci, cmd);
+	if (error)
+		return error;
+
+	if (data->flags & MMC_DATA_READ)
+		data_ctrl |= MCI_DPSM_DIRECTION;
+
+	mmci_writel(host, MMCIDATACTRL ,data_ctrl);
+
+	if (data->flags & MMC_DATA_READ)
+		error = read_bytes(mci, data->dest, data->blocks,
+				   data->blocksize);
+	else if (data->flags & MMC_DATA_WRITE)
+		error = write_bytes(mci, (char *)data->src, data->blocks,
+				    data->blocksize);
+
+	return error;
+}
+
+static int mci_request(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
+{
+	int result;
+
+	if (data)
+		result = do_data_transfer(mci, cmd, data);
+	else
+		result = do_command(mci, cmd);
+
+	return result;
+}
+
+/* MMC uses open drain drivers in the enumeration phase */
+static int mci_reset(struct mci_host *mci, struct device_d *mci_dev)
+{
+	struct mmci_host *host = to_mci_host(mci);
+	struct variant_data *variant = host->variant;
+
+	u32 pwr = variant->pwrreg_powerup;
+
+	if (variant->signal_direction) {
+		/*
+		 * The ST Micro variant has some additional bits
+		 * indicating signal direction for the signals in
+		 * the SD/MMC bus and feedback-clock usage.
+		 */
+		pwr |= host->plat->sigdir;
+	}
+
+	if (host->hw_designer != AMBA_VENDOR_ST) {
+		pwr |= MCI_ROD;
+	} else {
+		/*
+		 * The ST Micro variant use the ROD bit for something
+		 * else and only has OD (Open Drain).
+		 */
+		pwr |= MCI_OD;
+	}
+
+	mmci_writel(host, MMCIPOWER, pwr);
+	return 0;
+}
+
+static void mci_set_ios(struct mci_host *mci, struct mci_ios *ios)
+{
+	struct mmci_host *host = to_mci_host(mci);
+	u32 sdi_clkcr;
+
+	sdi_clkcr = mmci_readl(host, MMCICLOCK);
+
+	/* Ramp up the clock rate */
+	if (mci->clock) {
+		u32 clkdiv = 0;
+		u32 tmp_clock;
+
+		dev_dbg(host->hw_dev, "setting clock and bus width in the host:");
+		if (mci->clock >= mci->f_max) {
+			clkdiv = 0;
+			mci->clock = mci->f_max;
+		} else {
+			clkdiv = (host->mclk / mci->clock) - 2;
+		}
+		tmp_clock = host->mclk / (clkdiv + 2);
+		while (tmp_clock > mci->clock) {
+			clkdiv++;
+			tmp_clock = host->mclk / (clkdiv + 2);
+		}
+		if (clkdiv > MCI_CLK_CLKDIV_MASK)
+			clkdiv = MCI_CLK_CLKDIV_MASK;
+		tmp_clock = host->mclk / (clkdiv + 2);
+		mci->clock = tmp_clock;
+		sdi_clkcr &= ~(MCI_CLK_CLKDIV_MASK);
+		sdi_clkcr |= clkdiv;
+	}
+
+	/* Set the bus width */
+	if (mci->bus_width) {
+		u32 buswidth = 0;
+
+		switch (mci->bus_width) {
+		case MMC_BUS_WIDTH_1:
+			buswidth |= MCI_1BIT_BUS;
+			break;
+		case MMC_BUS_WIDTH_4:
+			buswidth |= MCI_4BIT_BUS;
+			break;
+		case MMC_BUS_WIDTH_8:
+			buswidth |= MCI_ST_8BIT_BUS;
+			break;
+		default:
+			dev_err(host->hw_dev, "Invalid bus width (%d)\n", mci->bus_width);
+			break;
+		}
+		sdi_clkcr &= ~(MCI_xBIT_BUS_MASK);
+		sdi_clkcr |= buswidth;
+	}
+
+	mmci_writel(host, MMCICLOCK, sdi_clkcr);
+	udelay(CLK_CHANGE_DELAY);
+}
+
+static int mmci_probe(struct amba_device *dev, const struct amba_id *id)
+{
+	struct device_d *hw_dev = &dev->dev;
+	struct mmci_platform_data *plat = hw_dev->platform_data;
+	struct variant_data *variant = id->data;
+	u32 sdi_u32;
+	struct mmci_host *host;
+	struct clk *clk;
+	int ret;
+
+	if (!plat) {
+		dev_err(hw_dev, "missing platform data\n");
+		return -EINVAL;
+	}
+
+	host = xzalloc(sizeof(*host));
+
+	host->base = amba_get_mem_region(dev);
+	host->mci.send_cmd = mci_request;
+	host->mci.set_ios = mci_set_ios;
+	host->mci.init = mci_reset;
+	host->hw_dev = host->mci.hw_dev = hw_dev;
+
+	clk = clk_get(hw_dev, NULL);
+	if (IS_ERR(clk)) {
+		ret = PTR_ERR(clk);
+		goto host_free;
+	}
+
+	ret = clk_enable(clk);
+	if (ret)
+		goto host_free;
+
+	host->hw_designer = amba_manf(dev);
+	host->hw_revision = amba_rev(dev);
+
+	dev_dbg(hw_dev, "hw_designer = 0x%x\n", host->hw_designer);
+	dev_dbg(hw_dev, "hw_revision = 0x%x\n", host->hw_revision);
+
+	host->variant = variant;
+	host->plat = plat;
+
+	mmci_writel(host, MMCIPOWER, plat->sigdir | variant->pwrreg_powerup);
+
+	mmci_writel(host, MMCICLOCK,
+		plat->clkdiv_init | variant->clkreg_enable | variant->clkreg);
+	udelay(CLK_CHANGE_DELAY);
+
+	/* Disable mmc interrupts */
+	sdi_u32 = mmci_readl(host, MMCIMASK0) & ~MCI_MASK0_MASK;
+	mmci_writel(host, MMCIMASK0, sdi_u32);
+
+	host->mclk = clk_get_rate(clk);
+
+	/*
+	 * According to the spec, mclk is max 100 MHz,
+	 * so we try to adjust the clock down to this,
+	 * (if possible).
+	 */
+	if (host->mclk > 100000000) {
+		ret = clk_set_rate(clk, 100000000);
+		if (ret < 0)
+			goto clk_disable;
+		host->mclk = clk_get_rate(clk);
+		dev_dbg(hw_dev, "eventual mclk rate: %lu Hz\n", host->mclk);
+	}
+
+	/*
+	 * The ARM and ST versions of the block have slightly different
+	 * clock divider equations which means that the minimum divider
+	 * differs too.
+	 */
+	if (variant->st_clkdiv)
+		host->mci.f_min = DIV_ROUND_UP(host->mclk, 257);
+	else
+		host->mci.f_min = DIV_ROUND_UP(host->mclk, 512);
+	/*
+	 * If the platform data supplies a maximum operating
+	 * frequency, this takes precedence. Else, we fall back
+	 * to using the module parameter, which has a (low)
+	 * default value in case it is not specified. Either
+	 * value must not exceed the clock rate into the block,
+	 * of course.
+	 */
+	if (plat->f_max)
+		host->mci.f_max = min(host->mclk, plat->f_max);
+	else
+		host->mci.f_max = min(host->mclk, fmax);
+	dev_dbg(hw_dev, "clocking block at %u Hz\n", host->mci.f_max);
+
+	host->mci.max_req_size = (1 << variant->datalength_bits) - 1;
+
+	host->mci.host_caps = plat->capabilities;
+	host->mci.voltages = plat->ocr_mask;
+
+	mci_register(&host->mci);
+
+	return 0;
+
+clk_disable:
+	clk_disable(clk);
+host_free:
+	free(host);
+	return ret;
+}
+
+static struct amba_id mmci_ids[] = {
+	{
+		.id	= 0x00041180,
+		.mask	= 0xff0fffff,
+		.data	= &variant_arm,
+	},
+	{
+		.id	= 0x01041180,
+		.mask	= 0xff0fffff,
+		.data	= &variant_arm_extended_fifo,
+	},
+	{
+		.id	= 0x00041181,
+		.mask	= 0x000fffff,
+		.data	= &variant_arm,
+	},
+	/* ST Micro variants */
+	{
+		.id	= 0x00480180,
+		.mask	= 0xf0ffffff,
+		.data	= &variant_ux500,
+	},
+	{
+		.id	= 0x10480180,
+		.mask	= 0xf0ffffff,
+		.data	= &variant_ux500v2,
+	},
+	{ 0, 0 },
+};
+
+static struct amba_driver mmci_driver = {
+	.drv		= {
+		.name	= DRIVER_NAME,
+	},
+	.probe		= mmci_probe,
+	.id_table	= mmci_ids,
+};
+
+static int mmci_init(void)
+{
+	amba_driver_register(&mmci_driver);
+	return 0;
+}
+device_initcall(mmci_init);
diff --git a/drivers/mci/mmci.h b/drivers/mci/mmci.h
new file mode 100644
index 0000000..20a31a1
--- /dev/null
+++ b/drivers/mci/mmci.h
@@ -0,0 +1,167 @@
+/*
+ *  linux/drivers/mmc/host/mmci.h - ARM PrimeCell MMCI PL180/1 driver
+ *
+ *  Copyright (C) 2003 Deep Blue Solutions, Ltd, All Rights Reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+#define COMMAND_REG_DELAY	300
+#define DATA_REG_DELAY		1000
+#define CLK_CHANGE_DELAY	2000
+
+#define MMCIPOWER		0x000
+#define MCI_PWR_OFF		0x00
+#define MCI_PWR_UP		0x02
+#define MCI_PWR_ON		0x03
+#define MCI_OD			(1 << 6)
+#define MCI_ROD			(1 << 7)
+
+#define MMCICLOCK		0x004
+#define MCI_CLK_CLKDIV_MASK	0x000000FF
+#define MCI_CLK_ENABLE		(1 << 8)
+#define MCI_CLK_PWRSAVE		(1 << 9)
+#define MCI_CLK_BYPASS		(1 << 10)
+#define MCI_xBIT_BUS_MASK	0x00001800
+#define MCI_1BIT_BUS		(0 << 0)
+#define MCI_4BIT_BUS		(1 << 11)
+/*
+ * 8bit wide buses, hardware flow contronl, negative edges and clock inversion
+ * supported in ST Micro U300 and Ux500 versions
+ */
+#define MCI_ST_8BIT_BUS		(1 << 12)
+#define MCI_ST_U300_HWFCEN	(1 << 13)
+#define MCI_ST_UX500_NEG_EDGE	(1 << 13)
+#define MCI_ST_UX500_HWFCEN	(1 << 14)
+#define MCI_ST_UX500_CLK_INV	(1 << 15)
+
+#define MMCIARGUMENT		0x008
+#define MMCICOMMAND		0x00c
+#define MCI_CPSM_RESPONSE	(1 << 6)
+#define MCI_CPSM_LONGRSP	(1 << 7)
+#define MCI_CPSM_INTERRUPT	(1 << 8)
+#define MCI_CPSM_PENDING	(1 << 9)
+#define MCI_CPSM_ENABLE		(1 << 10)
+#define MCI_SDIO_SUSP		(1 << 11)
+#define MCI_ENCMD_COMPL		(1 << 12)
+#define MCI_NIEN		(1 << 13)
+#define MCI_CE_ATACMD		(1 << 14)
+
+#define MMCIRESPCMD		0x010
+#define MMCIRESPONSE0		0x014
+#define MMCIRESPONSE1		0x018
+#define MMCIRESPONSE2		0x01c
+#define MMCIRESPONSE3		0x020
+#define MMCIDATATIMER		0x024
+#define MMCIDATALENGTH		0x028
+#define MMCIDATACTRL		0x02c
+#define MCI_DPSM_ENABLE		(1 << 0)
+#define MCI_DPSM_DIRECTION	(1 << 1)
+#define MCI_DPSM_MODE		(1 << 2)
+#define MCI_DPSM_DMAENABLE	(1 << 3)
+#define MCI_DPSM_BLOCKSIZE	(1 << 4)
+/* Control register extensions in the ST Micro U300 and Ux500 versions */
+#define MCI_ST_DPSM_RWSTART	(1 << 8)
+#define MCI_ST_DPSM_RWSTOP	(1 << 9)
+#define MCI_ST_DPSM_RWMOD	(1 << 10)
+#define MCI_ST_DPSM_SDIOEN	(1 << 11)
+/* Control register extensions in the ST Micro Ux500 versions */
+#define MCI_ST_DPSM_DMAREQCTL	(1 << 12)
+#define MCI_ST_DPSM_DBOOTMODEEN	(1 << 13)
+#define MCI_ST_DPSM_BUSYMODE	(1 << 14)
+#define MCI_ST_DPSM_DDRMODE	(1 << 15)
+
+#define MCI_DTIMER_DEFAULT	0xFFFF0000
+
+#define MMCIDATACNT		0x030
+#define MMCISTATUS		0x034
+#define MCI_CMDCRCFAIL		(1 << 0)
+#define MCI_DATACRCFAIL		(1 << 1)
+#define MCI_CMDTIMEOUT		(1 << 2)
+#define MCI_DATATIMEOUT		(1 << 3)
+#define MCI_TXUNDERRUN		(1 << 4)
+#define MCI_RXOVERRUN		(1 << 5)
+#define MCI_CMDRESPEND		(1 << 6)
+#define MCI_CMDSENT		(1 << 7)
+#define MCI_DATAEND		(1 << 8)
+#define MCI_STARTBITERR		(1 << 9)
+#define MCI_DATABLOCKEND	(1 << 10)
+#define MCI_CMDACTIVE		(1 << 11)
+#define MCI_TXACTIVE		(1 << 12)
+#define MCI_RXACTIVE		(1 << 13)
+#define MCI_TXFIFOHALFEMPTY	(1 << 14)
+#define MCI_RXFIFOHALFFULL	(1 << 15)
+#define MCI_TXFIFOFULL		(1 << 16)
+#define MCI_RXFIFOFULL		(1 << 17)
+#define MCI_TXFIFOEMPTY		(1 << 18)
+#define MCI_RXFIFOEMPTY		(1 << 19)
+#define MCI_TXDATAAVLBL		(1 << 20)
+#define MCI_RXDATAAVLBL		(1 << 21)
+/* Extended status bits for the ST Micro variants */
+#define MCI_ST_SDIOIT		(1 << 22)
+#define MCI_ST_CEATAEND		(1 << 23)
+
+#define MMCICLEAR		0x038
+#define MCI_CMDCRCFAILCLR	(1 << 0)
+#define MCI_DATACRCFAILCLR	(1 << 1)
+#define MCI_CMDTIMEOUTCLR	(1 << 2)
+#define MCI_DATATIMEOUTCLR	(1 << 3)
+#define MCI_TXUNDERRUNCLR	(1 << 4)
+#define MCI_RXOVERRUNCLR	(1 << 5)
+#define MCI_CMDRESPENDCLR	(1 << 6)
+#define MCI_CMDSENTCLR		(1 << 7)
+#define MCI_DATAENDCLR		(1 << 8)
+#define MCI_STARTBITERRCLR	(1 << 9)
+#define MCI_DATABLOCKENDCLR	(1 << 10)
+/* Extended status bits for the ST Micro variants */
+#define MCI_ST_SDIOITC		(1 << 22)
+#define MCI_ST_CEATAENDC	(1 << 23)
+
+#define MMCIMASK0		0x03c
+#define MCI_MASK0_MASK		0x1FFFFFFF
+#define MCI_CMDINDEXMASK	0xFF
+#define MCI_ICR_MASK		0x1DC007FF
+
+#define MCI_CMDCRCFAILMASK	(1 << 0)
+#define MCI_DATACRCFAILMASK	(1 << 1)
+#define MCI_CMDTIMEOUTMASK	(1 << 2)
+#define MCI_DATATIMEOUTMASK	(1 << 3)
+#define MCI_TXUNDERRUNMASK	(1 << 4)
+#define MCI_RXOVERRUNMASK	(1 << 5)
+#define MCI_CMDRESPENDMASK	(1 << 6)
+#define MCI_CMDSENTMASK		(1 << 7)
+#define MCI_DATAENDMASK		(1 << 8)
+#define MCI_STARTBITERRMASK	(1 << 9)
+#define MCI_DATABLOCKENDMASK	(1 << 10)
+#define MCI_CMDACTIVEMASK	(1 << 11)
+#define MCI_TXACTIVEMASK	(1 << 12)
+#define MCI_RXACTIVEMASK	(1 << 13)
+#define MCI_TXFIFOHALFEMPTYMASK	(1 << 14)
+#define MCI_RXFIFOHALFFULLMASK	(1 << 15)
+#define MCI_TXFIFOFULLMASK	(1 << 16)
+#define MCI_RXFIFOFULLMASK	(1 << 17)
+#define MCI_TXFIFOEMPTYMASK	(1 << 18)
+#define MCI_RXFIFOEMPTYMASK	(1 << 19)
+#define MCI_TXDATAAVLBLMASK	(1 << 20)
+#define MCI_RXDATAAVLBLMASK	(1 << 21)
+/* Extended status bits for the ST Micro variants */
+#define MCI_ST_SDIOITMASK	(1 << 22)
+#define MCI_ST_CEATAENDMASK	(1 << 23)
+
+#define MMCIMASK1		0x040
+#define MMCIFIFOCNT		0x048
+#define MMCIFIFO		0x080 /* to 0x0bc */
+
+#define MCI_IRQENABLE	\
+	(MCI_CMDCRCFAILMASK|MCI_DATACRCFAILMASK|MCI_CMDTIMEOUTMASK|	\
+	MCI_DATATIMEOUTMASK|MCI_TXUNDERRUNMASK|MCI_RXOVERRUNMASK|	\
+	MCI_CMDRESPENDMASK|MCI_CMDSENTMASK|MCI_STARTBITERRMASK)
+
+/* These interrupts are directed to IRQ1 when two IRQ lines are available */
+#define MCI_IRQ1MASK \
+	(MCI_RXFIFOHALFFULLMASK | MCI_RXDATAAVLBLMASK | \
+	 MCI_TXFIFOHALFEMPTYMASK)
+
+#define NR_SG		128
diff --git a/include/linux/amba/mmci.h b/include/linux/amba/mmci.h
new file mode 100644
index 0000000..0bf5581
--- /dev/null
+++ b/include/linux/amba/mmci.h
@@ -0,0 +1,42 @@
+/*
+ *  include/linux/amba/mmci.h
+ */
+#ifndef AMBA_MMCI_H
+#define AMBA_MMCI_H
+
+/*
+ * These defines is places here due to access is needed from machine
+ * configuration files. The ST Micro version does not have ROD and
+ * reuse the voltage registers for direction settings.
+ */
+#define MCI_ST_DATA2DIREN	(1 << 2)
+#define MCI_ST_CMDDIREN		(1 << 3)
+#define MCI_ST_DATA0DIREN	(1 << 4)
+#define MCI_ST_DATA31DIREN	(1 << 5)
+#define MCI_ST_FBCLKEN		(1 << 7)
+#define MCI_ST_DATA74DIREN	(1 << 8)
+
+#define SDI_CLKCR_CLKDIV_INIT	0x000000FD
+
+/**
+ * struct mmci_platform_data - platform configuration for the MMCI
+ * (also known as PL180) block.
+ * @f_max: the maximum operational frequency for this host in this
+ * platform configuration. When this is specified it takes precedence
+ * over the module parameter for the same frequency.
+ * @ocr_mask: available voltages on the 4 pins from the block, this
+ * is ignored if a regulator is used, see the MMC_VDD_* masks in
+ * mmc/host.h
+ * @capabilities: the capabilities of the block as implemented in
+ * this platform, signify anything MMC_CAP_* from mmc/host.h
+ */
+struct mmci_platform_data {
+	unsigned long f_max;
+	unsigned int ocr_mask;
+	unsigned long capabilities;
+
+	uint32_t sigdir;
+	uint32_t clkdiv_init;
+};
+
+#endif
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
