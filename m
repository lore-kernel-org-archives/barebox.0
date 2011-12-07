Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RYPLh-0001TG-Ie
 for barebox@lists.infradead.org; Wed, 07 Dec 2011 21:48:23 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Wed,  7 Dec 2011 22:47:59 +0100
Message-Id: <1323294479-22117-3-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1323294479-22117-1-git-send-email-robert.jarzmik@free.fr>
References: <1323294479-22117-1-git-send-email-robert.jarzmik@free.fr>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH V2 3/3] drivers/mci: add PXA host controller
To: barebox@lists.infradead.org

Add a simple PIO based host controller for MMC and SD cards
on PXA SoCs. Reads and writes are available, and no usage is
made of DMA or IRQs.
SPI mode is not supported yet.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>

---
Since V1: fix timeout code
---
 drivers/mci/Kconfig  |    7 +
 drivers/mci/Makefile |    1 +
 drivers/mci/pxamci.c |  359 ++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/mci/pxamci.h |   99 ++++++++++++++
 4 files changed, 466 insertions(+), 0 deletions(-)
 create mode 100644 drivers/mci/pxamci.c
 create mode 100644 drivers/mci/pxamci.h

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 897aa4d..f1764b3 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -72,6 +72,13 @@ config MCI_OMAP_HSMMC
 	  Enable this entry to add support to read and write SD cards on a
 	  OMAP4 based system.
 
+config MCI_PXA
+	bool "PXA"
+	depends on ARCH_PXA
+	help
+	  Enable this entry to add support to read and write SD cards on a
+	  XScale PXA25x / PXA27x based system.
+
 config MCI_ATMEL
 	bool "ATMEL (AT91)"
 	depends on ARCH_AT91
diff --git a/drivers/mci/Makefile b/drivers/mci/Makefile
index d7482dc..0fc31af 100644
--- a/drivers/mci/Makefile
+++ b/drivers/mci/Makefile
@@ -4,5 +4,6 @@ obj-$(CONFIG_MCI_S3C) += s3c.o
 obj-$(CONFIG_MCI_IMX) += imx.o
 obj-$(CONFIG_MCI_IMX_ESDHC) += imx-esdhc.o
 obj-$(CONFIG_MCI_OMAP_HSMMC) += omap_hsmmc.o
+obj-$(CONFIG_MCI_PXA) += pxamci.o
 obj-$(CONFIG_MCI_ATMEL) += atmel_mci.o
 obj-$(CONFIG_MCI_SPI) += mci_spi.o
diff --git a/drivers/mci/pxamci.c b/drivers/mci/pxamci.c
new file mode 100644
index 0000000..558116f
--- /dev/null
+++ b/drivers/mci/pxamci.c
@@ -0,0 +1,359 @@
+/*
+ *  PXA MCI driver
+ *
+ * Copyright (C) 2011 Robert Jarzmik
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * Insprired by linux kernel driver
+ */
+
+#include <common.h>
+#include <errno.h>
+#include <io.h>
+#include <gpio.h>
+#include <clock.h>
+#include <init.h>
+#include <mci.h>
+
+#include <mach/clock.h>
+#include <mach/mci_pxa2xx.h>
+#include <mach/pxa-regs.h>
+#include "pxamci.h"
+
+#define DRIVER_NAME	"pxa-mmc"
+
+static void clk_enable(void)
+{
+	CKEN |= CKEN_MMC;
+}
+
+static int pxamci_set_power(struct pxamci_host *host, int on)
+{
+	mci_dbg("on=%d\n", on);
+	if (host->pdata && host->pdata->gpio_power > 0)
+		gpio_set_value(host->pdata->gpio_power,
+			       !!on ^ host->pdata->gpio_power_invert);
+	else if (host->pdata && host->pdata->setpower)
+		host->pdata->setpower(&host->mci, on);
+	return 0;
+}
+
+static void pxamci_start_clock(struct pxamci_host *host)
+{
+	mmc_writel(START_CLOCK, MMC_STRPCL);
+}
+
+static void pxamci_stop_clock(struct pxamci_host *host)
+{
+	uint64_t start = get_time_ns();
+	unsigned stat;
+
+	stat = mmc_readl(MMC_STAT);
+	if (stat & STAT_CLK_EN)
+		writel(STOP_CLOCK, host->base + MMC_STRPCL);
+	while (!is_timeout(start, 10 * MSECOND) && stat & STAT_CLK_EN)
+		stat = mmc_readl(MMC_STAT);
+
+	if (stat & STAT_CLK_EN)
+		mci_err("unable to stop clock\n");
+}
+
+static void pxamci_setup_data(struct pxamci_host *host, struct mci_data *data)
+{
+	static const unsigned int timeout = 100000000; /* 10ms */
+
+	mci_dbg("nbblocks=%d, blocksize=%d\n", data->blocks, data->blocksize);
+	mmc_writel(data->blocks, MMC_NOB);
+	mmc_writel(data->blocksize, MMC_BLKLEN);
+	mmc_writel((timeout + 255) / 256, MMC_RDTO);
+}
+
+static int pxamci_read_data(struct pxamci_host *host, unsigned char *dst,
+			    unsigned len)
+{
+	int trf_len, ret = 0;
+	uint64_t start;
+
+	mci_dbg("dst=%p, len=%u\n", dst, len);
+	while (!ret && len > 0) {
+		trf_len = min_t(int, len, MMC_FIFO_LENGTH);
+
+		for (start = get_time_ns(), ret = -ETIMEDOUT;
+		     ret && !is_timeout(start, 10 * MSECOND);)
+			if (mmc_readl(MMC_I_REG) & RXFIFO_RD_REQ)
+				ret = 0;
+		for (; !ret && trf_len > 0; trf_len--, len--)
+			*dst++ = mmc_readb(MMC_RXFIFO);
+	}
+
+	if (!ret)
+		for (start = get_time_ns(), ret = -ETIMEDOUT;
+		     ret && !is_timeout(start, 10 * MSECOND);)
+			if (mmc_readl(MMC_STAT) & STAT_DATA_TRAN_DONE)
+				ret = 0;
+	mci_dbg("ret=%d, remain=%d, stat=%x, mmc_i_reg=%x\n",
+		ret, len, mmc_readl(MMC_STAT), mmc_readl(MMC_I_REG));
+	return ret;
+}
+
+static int pxamci_write_data(struct pxamci_host *host, const unsigned char *src,
+			    unsigned len)
+{
+	uint64_t start;
+	int trf_len, partial = 0, ret = 0;
+	unsigned stat;
+
+	mci_dbg("src=%p, len=%u\n", src, len);
+	while (!ret && len > 0) {
+		trf_len = min_t(int, len, MMC_FIFO_LENGTH);
+		partial = trf_len < MMC_FIFO_LENGTH;
+
+		for (start = get_time_ns(), ret = -ETIMEDOUT;
+		     ret && !is_timeout(start, 10 * MSECOND);)
+			if (mmc_readl(MMC_I_REG) & TXFIFO_WR_REQ)
+				ret = 0;
+		for (; !ret && trf_len > 0; trf_len--, len--)
+			mmc_writeb(*src++, MMC_TXFIFO);
+		if (partial)
+			mmc_writeb(BUF_PART_FULL, MMC_PRTBUF);
+	}
+
+	if (!ret)
+		for (start = get_time_ns(), ret = -ETIMEDOUT;
+		     ret && !is_timeout(start, 10 * MSECOND);)  {
+			stat = mmc_readl(MMC_STAT);
+			stat &= STAT_DATA_TRAN_DONE | STAT_PRG_DONE;
+			if (stat == (STAT_DATA_TRAN_DONE | STAT_PRG_DONE))
+				ret = 0;
+		}
+	mci_dbg("ret=%d, remain=%d, stat=%x, mmc_i_reg=%x\n",
+		ret, len, mmc_readl(MMC_STAT), mmc_readl(MMC_I_REG));
+	return ret;
+}
+
+static int pxamci_transfer_data(struct pxamci_host *host,
+				struct mci_data *data)
+{
+	int nbbytes = data->blocks * data->blocksize;
+	int ret;
+	unsigned err_mask = STAT_CRC_READ_ERROR | STAT_CRC_WRITE_ERROR |
+		STAT_READ_TIME_OUT;
+
+	if (data->flags & MMC_DATA_WRITE)
+		ret = pxamci_write_data(host, data->src, nbbytes);
+	else
+		ret = pxamci_read_data(host, data->dest, nbbytes);
+
+	if (!ret && (mmc_readl(MMC_STAT) & err_mask))
+		ret = -EILSEQ;
+	return ret;
+}
+
+static void pxamci_start_cmd(struct pxamci_host *host, struct mci_cmd *cmd,
+			     unsigned int cmdat)
+{
+	mci_dbg("cmd=(idx=%d,type=%d)\n", cmd->cmdidx, cmd->resp_type);
+	if (cmd->resp_type & MMC_RSP_BUSY)
+		cmdat |= CMDAT_BUSY;
+
+	switch (cmd->resp_type) {
+	/* r1, r1b, r6, r7 */
+	case MMC_RSP_R1:
+	case MMC_RSP_R1b:
+		cmdat |= CMDAT_RESP_SHORT;
+		break;
+	case MMC_RSP_R2:
+		cmdat |= CMDAT_RESP_R2;
+		break;
+	case MMC_RSP_R3:
+		cmdat |= CMDAT_RESP_R3;
+		break;
+	default:
+		break;
+	}
+
+	mmc_writel(cmd->cmdidx, MMC_CMD);
+	mmc_writel(cmd->cmdarg >> 16, MMC_ARGH);
+	mmc_writel(cmd->cmdarg & 0xffff, MMC_ARGL);
+	mmc_writel(host->clkrt, MMC_CLKRT);
+	pxamci_start_clock(host);
+	mmc_writel(cmdat, MMC_CMDAT);
+}
+
+static int pxamci_cmd_response(struct pxamci_host *host, struct mci_cmd *cmd)
+{
+	unsigned v, stat;
+	int i;
+
+	/*
+	 * Did I mention this is Sick.  We always need to
+	 * discard the upper 8 bits of the first 16-bit word.
+	 */
+	v = mmc_readl(MMC_RES) & 0xffff;
+	for (i = 0; i < 4; i++) {
+		u32 w1 = mmc_readl(MMC_RES) & 0xffff;
+		u32 w2 = mmc_readl(MMC_RES) & 0xffff;
+		cmd->response[i] = v << 24 | w1 << 8 | w2 >> 8;
+		v = w2;
+	}
+
+	stat = mmc_readl(MMC_STAT);
+	if (stat & STAT_TIME_OUT_RESPONSE)
+		return -ETIMEDOUT;
+	if (stat & STAT_RES_CRC_ERR && cmd->resp_type & MMC_RSP_CRC) {
+		/*
+		 * workaround for erratum #42:
+		 * Intel PXA27x Family Processor Specification Update Rev 001
+		 * A bogus CRC error can appear if the msb of a 136 bit
+		 * response is a one.
+		 */
+		if (cpu_is_pxa27x() && cmd->resp_type & MMC_RSP_136 &&
+		    cmd->response[0] & 0x80000000)
+			pr_debug("ignoring CRC from command %d - *risky*\n",
+				 cmd->cmdidx);
+		else
+			return -EILSEQ;
+	}
+
+	return 0;
+}
+
+static int pxamci_mmccmd(struct pxamci_host *host, struct mci_cmd *cmd,
+			 struct mci_data *data, unsigned int cmddat)
+{
+	int ret = 0;
+	uint64_t start;
+
+	pxamci_start_cmd(host, cmd, cmddat);
+	for (start = get_time_ns(), ret = -ETIMEDOUT;
+	     ret && !is_timeout(start, 10 * MSECOND);)
+		if (mmc_readl(MMC_STAT) & STAT_END_CMD_RES)
+			ret = 0;
+
+	if (!ret && data)
+		ret = pxamci_transfer_data(host, data);
+
+	if (!ret)
+		ret = pxamci_cmd_response(host, cmd);
+	return ret;
+}
+
+static int pxamci_request(struct mci_host *mci, struct mci_cmd *cmd,
+			  struct mci_data *data)
+{
+	struct pxamci_host *host = to_pxamci(mci);
+	unsigned int cmdat;
+	int ret;
+
+	pxamci_stop_clock(host);
+
+	cmdat = host->cmdat;
+	host->cmdat &= ~CMDAT_INIT;
+
+	if (data) {
+		pxamci_setup_data(host, data);
+
+		cmdat &= ~CMDAT_BUSY;
+		cmdat |= CMDAT_DATAEN;
+		if (data->flags & MMC_DATA_WRITE)
+			cmdat |= CMDAT_WRITE;
+	}
+
+	ret = pxamci_mmccmd(host, cmd, data, cmdat);
+	return ret;
+}
+
+static void pxamci_set_ios(struct mci_host *mci, struct device_d *dev,
+			   unsigned bus_width, unsigned clock)
+{
+	struct pxamci_host *host = to_pxamci(mci);
+	unsigned int clk_in = pxa_get_mmcclk();
+	unsigned long fact;
+
+	mci_dbg("bus_width=%d, clock=%ud\n", bus_width, clock);
+	fact = min_t(int, clock / clk_in, 1);
+	fact = max_t(int, fact, 1 << 6);
+
+	/*
+	 * We calculate clkrt here, and will write it on the next command
+	 * MMC card clock = mmcclk / (2 ^ clkrt)
+	 */
+	/* to handle (19.5MHz, 26MHz) */
+	host->clkrt = fls(fact) - 1;
+
+	if (bus_width == 4)
+		host->cmdat |= CMDAT_SD_4DAT;
+	else
+		host->cmdat &= ~CMDAT_SD_4DAT;
+	host->cmdat |= CMDAT_INIT;
+
+	clk_enable();
+	pxamci_set_power(host, 1);
+}
+
+static int pxamci_init(struct mci_host *mci, struct device_d *dev)
+{
+	struct pxamci_host *host = to_pxamci(mci);
+
+	if (host->pdata && host->pdata->init)
+		return host->pdata->init(mci, dev);
+	return 0;
+}
+
+static int pxamci_probe(struct device_d *dev)
+{
+	struct pxamci_host *host;
+	int gpio_power = -1;
+
+	host = xzalloc(sizeof(*host));
+	host->base = dev_request_mem_region(dev, 0);
+
+	host->mci.init = pxamci_init;
+	host->mci.send_cmd = pxamci_request;
+	host->mci.set_ios = pxamci_set_ios;
+	host->mci.host_caps = MMC_MODE_4BIT;
+	host->mci.hw_dev = dev;
+	host->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
+
+	/*
+	 * Calculate minimum clock rate, rounding up.
+	 */
+	host->mci.f_min = pxa_get_mmcclk() >> 6;
+	host->mci.f_max = pxa_get_mmcclk();
+
+	/*
+	 * Ensure that the host controller is shut down, and setup
+	 * with our defaults.
+	 */
+	pxamci_stop_clock(host);
+	mmc_writel(0, MMC_SPI);
+	mmc_writel(64, MMC_RESTO);
+	mmc_writel(0, MMC_I_MASK);
+
+	host->pdata = dev->platform_data;
+	if (host->pdata)
+		gpio_power = host->pdata->gpio_power;
+
+	if (gpio_power > 0)
+		gpio_direction_output(gpio_power,
+				      host->pdata->gpio_power_invert);
+
+	mci_register(&host->mci);
+	return 0;
+}
+
+static struct driver_d pxamci_driver = {
+	.name  = DRIVER_NAME,
+	.probe = pxamci_probe,
+};
+
+static int __init pxamci_init_driver(void)
+{
+	register_driver(&pxamci_driver);
+	return 0;
+}
+
+device_initcall(pxamci_init_driver);
diff --git a/drivers/mci/pxamci.h b/drivers/mci/pxamci.h
new file mode 100644
index 0000000..18d12a3
--- /dev/null
+++ b/drivers/mci/pxamci.h
@@ -0,0 +1,99 @@
+/*
+ *  PXA MCI driver
+ *
+ * Copyright (C) 2011 Robert Jarzmik
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * Insprired by linux kernel driver
+ */
+
+#define MMC_FIFO_LENGTH			32
+
+#define MMC_STRPCL			0x0000
+#define STOP_CLOCK			(1 << 0)
+#define START_CLOCK			(2 << 0)
+
+#define MMC_STAT			0x0004
+#define STAT_END_CMD_RES		(1 << 13)
+#define STAT_PRG_DONE			(1 << 12)
+#define STAT_DATA_TRAN_DONE		(1 << 11)
+#define STAT_CLK_EN			(1 << 8)
+#define STAT_RECV_FIFO_FULL		(1 << 7)
+#define STAT_XMIT_FIFO_EMPTY		(1 << 6)
+#define STAT_RES_CRC_ERR		(1 << 5)
+#define STAT_SPI_READ_ERROR_TOKEN	(1 << 4)
+#define STAT_CRC_READ_ERROR		(1 << 3)
+#define STAT_CRC_WRITE_ERROR		(1 << 2)
+#define STAT_TIME_OUT_RESPONSE		(1 << 1)
+#define STAT_READ_TIME_OUT		(1 << 0)
+
+#define MMC_CLKRT			0x0008		/* 3 bit */
+
+#define MMC_SPI				0x000c
+#define SPI_CS_ADDRESS			(1 << 3)
+#define SPI_CS_EN			(1 << 2)
+#define CRC_ON				(1 << 1)
+#define SPI_EN				(1 << 0)
+
+#define MMC_CMDAT			0x0010
+#define CMDAT_SDIO_INT_EN		(1 << 11)
+#define CMDAT_SD_4DAT			(1 << 8)
+#define CMDAT_DMAEN			(1 << 7)
+#define CMDAT_INIT			(1 << 6)
+#define CMDAT_BUSY			(1 << 5)
+#define CMDAT_STREAM			(1 << 4)	/* 1 = stream */
+#define CMDAT_WRITE			(1 << 3)	/* 1 = write */
+#define CMDAT_DATAEN			(1 << 2)
+#define CMDAT_RESP_NONE			(0 << 0)
+#define CMDAT_RESP_SHORT		(1 << 0)
+#define CMDAT_RESP_R2			(2 << 0)
+#define CMDAT_RESP_R3			(3 << 0)
+
+#define MMC_RESTO			0x0014		/* 7 bit */
+#define MMC_RDTO			0x0018		/* 16 bit */
+#define MMC_BLKLEN			0x001c		/* 10 bit */
+#define MMC_NOB				0x0020		/* 16 bit */
+
+#define MMC_PRTBUF			0x0024
+#define BUF_PART_FULL			(1 << 0)
+
+#define MMC_I_REG			0x002c
+#define TXFIFO_WR_REQ			(1 << 6)
+#define RXFIFO_RD_REQ			(1 << 5)
+#define CLK_IS_OFF			(1 << 4)
+#define STOP_CMD			(1 << 3)
+#define END_CMD_RES			(1 << 2)
+#define PRG_DONE			(1 << 1)
+#define DATA_TRAN_DONE			(1 << 0)
+
+#define MMC_I_MASK			0x0028
+#define MMC_CMD				0x0030
+#define MMC_ARGH			0x0034		/* 16 bit */
+#define MMC_ARGL			0x0038		/* 16 bit */
+#define MMC_RES				0x003c		/* 16 bit */
+#define MMC_RXFIFO			0x0040		/* 8 bit */
+#define MMC_TXFIFO			0x0044		/* 8 bit */
+
+struct pxamci_host {
+	struct mci_host			mci;
+	void __iomem			*base;
+	struct pxamci_platform_data	*pdata;
+
+	unsigned int			cmdat;
+	int				clkrt;
+};
+
+#define to_pxamci(mci) container_of(mci, struct pxamci_host, mci)
+
+#define mmc_readb(reg) readb(host->base + (reg))
+#define mmc_readl(reg) readl(host->base + (reg))
+#define mmc_writeb(val, reg) writeb((val), host->base + (reg))
+#define mmc_writel(val, reg) writel((val), host->base + (reg))
+
+#define mci_dbg(fmt, arg...) \
+	dev_dbg(host->mci.hw_dev, "%s: " fmt, __func__, ## arg)
+#define mci_err(fmt, arg...) \
+	dev_err(host->mci.hw_dev, "%s: " fmt, __func__, ## arg)
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
