Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SjSRM-0007nY-RI
 for barebox@lists.infradead.org; Tue, 26 Jun 2012 09:52:24 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Tue, 26 Jun 2012 11:51:52 +0200
Message-Id: <1340704314-12593-11-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1340704314-12593-1-git-send-email-jlu@pengutronix.de>
References: <1340704314-12593-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 10/12] drivers/spi: add driver for the davinci SPI master
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/mach-davinci/include/mach/spi.h |   11 +
 drivers/spi/Kconfig                      |    5 +
 drivers/spi/Makefile                     |    1 +
 drivers/spi/davinci_spi.c                |  355 ++++++++++++++++++++++++++++++
 drivers/spi/davinci_spi.h                |  123 +++++++++++
 5 files changed, 495 insertions(+)
 create mode 100644 arch/arm/mach-davinci/include/mach/spi.h
 create mode 100644 drivers/spi/davinci_spi.c
 create mode 100644 drivers/spi/davinci_spi.h

diff --git a/arch/arm/mach-davinci/include/mach/spi.h b/arch/arm/mach-davinci/include/mach/spi.h
new file mode 100644
index 0000000..d92465b
--- /dev/null
+++ b/arch/arm/mach-davinci/include/mach/spi.h
@@ -0,0 +1,11 @@
+
+#ifndef __MACH_SPI_H_
+#define __MACH_SPI_H_
+
+struct davinci_spi_master_pdata {
+	int	num_chipselect;
+	int	bus_num;
+	int	clk_id;
+};
+
+#endif /* __MACH_SPI_H_*/
diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index 609bafd..17930ce 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -4,6 +4,11 @@ config SPI
 	bool "Enable SPI driver support"
 	default y
 
+config DRIVER_SPI_DAVINCI
+	bool "TI Davinci SPI Master driver"
+	depends on ARCH_DAVINCI
+	depends on SPI
+
 config DRIVER_SPI_IMX
 	bool "i.MX SPI Master driver"
 	depends on ARCH_IMX
diff --git a/drivers/spi/Makefile b/drivers/spi/Makefile
index 101652f..e91cb08 100644
--- a/drivers/spi/Makefile
+++ b/drivers/spi/Makefile
@@ -1,4 +1,5 @@
 obj-$(CONFIG_SPI) += spi.o
+obj-$(CONFIG_DRIVER_SPI_DAVINCI) += davinci_spi.o
 obj-$(CONFIG_DRIVER_SPI_IMX) += imx_spi.o
 obj-$(CONFIG_DRIVER_SPI_ALTERA) += altera_spi.o
 obj-$(CONFIG_DRIVER_SPI_ATMEL) += atmel_spi.o
diff --git a/drivers/spi/davinci_spi.c b/drivers/spi/davinci_spi.c
new file mode 100644
index 0000000..930c999
--- /dev/null
+++ b/drivers/spi/davinci_spi.c
@@ -0,0 +1,355 @@
+/*
+ * Copyright (C) 2009 Texas Instruments Incorporated - http://www.ti.com/
+ *
+ * Driver for SPI controller on DaVinci. Based on atmel_spi.c
+ * by Atmel Corporation
+ *
+ * Copyright (C) 2007 Atmel Corporation
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+//#define DEBUG
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <errno.h>
+#include <malloc.h>
+#include <io.h>
+#include <spi/spi.h>
+#include <mach/spi.h>
+#include <mach/hardware.h>
+#include "davinci_spi.h"
+
+#if 0
+struct spi_slave *spi_setup_slave(unsigned int bus, unsigned int cs,
+			unsigned int max_hz, unsigned int mode)
+{
+	struct davinci_spi_slave	*ds;
+
+	if (!spi_cs_is_valid(bus, cs))
+		return NULL;
+
+	ds = malloc(sizeof(*ds));
+	if (!ds)
+		return NULL;
+
+	ds->slave.bus = bus;
+	ds->slave.cs = cs;
+	if (bus == 0)
+	  ds->regs = (struct davinci_spi_regs *) DAVINCI_SPI0_BASE; //CONFIG_SYS_SPI_BASE;
+	else
+	  ds->regs = (struct davinci_spi_regs *) DAVINCI_SPI1_BASE; //CONFIG_SYS_SPI_BASE;
+	ds->freq = max_hz;
+
+	return &ds->slave;
+}
+
+void spi_free_slave(struct spi_slave *slave)
+{
+	struct davinci_spi_slave *ds = to_davinci_spi(slave);
+
+	free(ds);
+}
+#endif
+
+static int davinci_spi_check_error(struct spi_device *spi)
+{
+	struct spi_master *master = spi->master;
+	struct davinci_spi_master *davinci_master = container_of(master, struct davinci_spi_master, master);
+
+	unsigned int int_status = readl(&davinci_master->regs->flg);
+	if (int_status & SPIFLG_TIMEOUT_MASK) {
+		dev_err(master->dev, "SPI Time-out Error\n");
+		return -ETIMEDOUT;
+	}
+	if (int_status & SPIFLG_DESYNC_MASK) {
+		dev_err(master->dev, "SPI Desynchronization Error\n");
+		return -EIO;
+	}
+	if (int_status & SPIFLG_BITERR_MASK) {
+		dev_err(master->dev, "SPI Bit error\n");
+		return -EIO;
+	}
+
+	/* version 2 */
+	if (int_status & SPIFLG_DLEN_ERR_MASK) {
+		dev_err(master->dev, "SPI Data Length Error\n");
+		return -EIO;
+	}
+	if (int_status & SPIFLG_PARERR_MASK) {
+		dev_err(master->dev, "SPI Parity Error\n");
+		return -EIO;
+	}
+	if (int_status & SPIFLG_OVRRUN_MASK) {
+		dev_err(master->dev, "SPI Data Overrun error\n");
+		return -EIO;
+	}
+
+	return 0;
+}
+
+static int davinci_spi_xfer(struct spi_device *spi, struct spi_transfer *t)
+{
+	struct spi_master *master = spi->master;
+	struct davinci_spi_master *davinci_master = container_of(master, struct davinci_spi_master, master);
+	struct davinci_spi_regs *regs = davinci_master->regs;
+	unsigned int	len = t->len, data1_reg_val = readl(&regs->dat1);
+	int		ret = 0, i;
+	const u8	*txp = t->tx_buf; /* can be NULL for read operation */
+	u8		*rxp = t->rx_buf; /* can be NULL for write operation */
+
+	dev_dbg(master->dev, "xfer\n");
+	/* do an empty read to clear the current contents */
+	readl(&regs->buf);
+
+	/* keep writing and reading 1 byte until done */
+	for (i = 0; i < len; i++) {
+		davinci_spi_check_error(spi);
+
+		/* wait while TXFULL is asserted */
+		while (readl(&regs->buf) & SPIBUF_TXFULL_MASK);
+
+		/* write the data */
+		data1_reg_val &= ~0xFFFF;
+		if (txp) {
+			data1_reg_val |= *txp;
+			txp++;
+		}
+
+		/*
+		 * Write to DAT1 is required to keep the serial transfer going.
+		 * We just terminate when we reach the end.
+		 */
+		if ((i == (len - 1)) && t->cs_change) {
+			/* clear CS hold */
+			data1_reg_val &= ~(1 << SPIDAT1_CSHOLD_SHIFT);
+			//dev_dbg(master->dev, "write !cs-hold 0x%08x\n", data1_reg_val);
+		} else {
+			/* enable CS hold */
+			data1_reg_val |= (1 << SPIDAT1_CSHOLD_SHIFT);
+			//dev_dbg(master->dev, "write cs-hold 0x%08x\n", data1_reg_val);
+		}
+		writel(data1_reg_val, &regs->dat1);
+
+		/* read the data - wait for data availability */
+		while (readl(&regs->buf) & SPIBUF_RXEMPTY_MASK);
+
+		if (rxp) {
+			*rxp = readl(&regs->buf) & 0xFF;
+			rxp++;
+		} else {
+			/* simply drop the read character */
+			readl(&regs->buf);
+		}
+	}
+
+	return ret;
+}
+
+static int davinci_spi_claim_bus(struct spi_device *spi)
+{
+	struct spi_master *master = spi->master;
+	struct device_d spi_dev = spi->dev;
+	struct davinci_spi_master *davinci_master = container_of(master, struct davinci_spi_master, master);
+
+	unsigned int scalar, phase, polarity, data1_reg_val = 0;
+
+	dev_dbg(master->dev, "claiming bus for device %s\n", spi_dev.name);
+
+	/* Set master mode, powered up and not activated */
+	writel(SPIGCR1_MASTER_MASK | SPIGCR1_CLKMOD_MASK, &davinci_master->regs->gcr1);
+
+	/* CS, CLK, SIMO and SOMI are functional pins */
+	writel((davinci_master->cs_pins | SPIPC0_CLKFUN_MASK |
+		SPIPC0_DOFUN_MASK | SPIPC0_DIFUN_MASK), &davinci_master->regs->pc0);
+
+	/* setup format */
+	scalar = ((da8xx_clk_get(davinci_master->clk_id) / davinci_master->speed_hz) - 1) & 0xFF;
+
+	phase = (spi->mode & SPI_CPHA) ? 0 : 1;
+	polarity = (spi->mode & SPI_CPOL) ? 1 : 0;
+
+	/*
+	 * Use following format:
+	 *   character length = 8,
+	 *   clock signal delayed by half clk cycle,
+	 *   clock low in idle state - Mode 0,
+	 *   MSB shifted out first
+	 */
+	writel(8 |
+		(scalar << SPIFMT_PRESCALE_SHIFT) |
+		(phase << SPIFMT_PHASE_SHIFT) |
+		(polarity << SPIFMT_POLARITY_SHIFT),
+		&davinci_master->regs->fmt0);
+
+	/* hold cs active at end of transfer until explicitly de-asserted */
+	data1_reg_val = (1 << SPIDAT1_CSHOLD_SHIFT) | SPIDAT1_CSNR_MASK;
+	data1_reg_val &= ~(1 << (SPIDAT1_CSNR_SHIFT + spi->chip_select));
+	dev_dbg(master->dev, "write claim 0x%08x\n", data1_reg_val);
+	/* only write upper 16 bit to avoid initiating a transfer */
+	writew((data1_reg_val & 0xFFFF0000) >> 16, (void*)&davinci_master->regs->dat1 + 2);
+
+	/*
+	 * Including a minor delay. No science here. Should be good even with
+	 * no delay
+	 */
+	writel((50 << SPI_C2TDELAY_SHIFT) |
+		(50 << SPI_T2CDELAY_SHIFT), &davinci_master->regs->delay);
+
+	/* default chip select register */
+	writel(SPIDEF_CSDEF0_MASK, &davinci_master->regs->def);
+
+	/* no interrupts */
+	writel(0, &davinci_master->regs->int0);
+	writel(0, &davinci_master->regs->lvl);
+
+	/* enable SPI */
+	writel((readl(&davinci_master->regs->gcr1) | SPIGCR1_SPIENA_MASK), &davinci_master->regs->gcr1);
+
+	return 0;
+}
+
+static void davinci_spi_release_bus(struct davinci_spi_master *davinci_master)
+{
+	dev_dbg(davinci_master->master.dev, "releasing bus\n");
+
+	/* Set master mode and powered down */
+	writel(SPIGCR1_MASTER_MASK | SPIGCR1_CLKMOD_MASK, &davinci_master->regs->gcr1);
+	/* Disable the SPI hardware */
+	//writel(SPIGCR0_SPIRST_MASK, &davinci_master->regs->gcr0);
+}
+
+static int davinci_spi_setup(struct spi_device *spi)
+{
+	struct spi_master *master = spi->master;
+	struct device_d spi_dev = spi->dev;
+	struct davinci_spi_master *davinci_master = container_of(master, struct davinci_spi_master, master);
+
+	if (spi->bits_per_word != davinci_master->databits) {
+		dev_err(master->dev, "master doesn't support %d bits per word requested by %s\n",
+			spi->bits_per_word, spi_dev.name);
+		return -1;
+	}
+
+	if ((spi->mode & (SPI_CPHA | SPI_CPOL)) != davinci_master->mode) {
+		dev_err(master->dev, "master is not configured for SPI_MODE_%d requested by %s\n",
+			spi->mode & (SPI_CPHA | SPI_CPOL), spi_dev.name);
+		return -1;
+	}
+
+	if (spi->max_speed_hz < davinci_master->speed_hz) {
+		dev_err(master->dev, "frequency is too high for %s\n", spi_dev.name);
+		return -1;
+	}
+
+	davinci_master->cs_pins |= 1 << spi->chip_select;
+
+	davinci_spi_release_bus(davinci_master);
+
+	dev_info(master->dev, "mode 0x%08x, bits_per_word: %d, speed: %d\n",
+		spi->mode, spi->bits_per_word, davinci_master->speed_hz);
+
+	return 0;
+}
+
+static int davinci_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
+{
+	struct spi_master *master = spi->master;
+	struct davinci_spi_master *davinci_master = container_of(master, struct davinci_spi_master, master);
+	struct spi_transfer *t = NULL;
+
+	int ret = 0;
+
+	ret = davinci_spi_claim_bus(spi);
+	if (ret)
+		return ret;
+
+	if (list_empty(&mesg->transfers))
+		return 0;	
+
+	list_last_entry(&mesg->transfers, struct spi_transfer, transfer_list)->cs_change = 1;
+
+	list_for_each_entry(t, &mesg->transfers, transfer_list) {
+		dev_dbg(master->dev,
+			"  xfer %p: len %u tx %p rx %p cs_change %i\n",
+			t, t->len, t->tx_buf, t->rx_buf, t->cs_change);
+	}
+
+	dev_dbg(master->dev, "transfer\n");
+	list_for_each_entry(t, &mesg->transfers, transfer_list) {
+		davinci_spi_xfer(spi, t);
+		mesg->actual_length += t->len;
+	}
+
+	davinci_spi_release_bus(davinci_master);
+	return ret;
+}
+
+static int davinci_spi_probe(struct device_d *dev)
+{
+	struct spi_master *master;
+	struct davinci_spi_master *davinci_master;
+	struct davinci_spi_master_pdata *pdata = dev->platform_data;
+
+	davinci_master = xzalloc(sizeof(*davinci_master));
+
+	master = &davinci_master->master;
+	master->dev = dev;
+
+	master->setup = davinci_spi_setup;
+	master->transfer = davinci_spi_transfer;
+	master->num_chipselect = pdata->num_chipselect;
+	master->bus_num = pdata->bus_num;
+
+	davinci_master->regs = dev_request_mem_region(dev, 0);
+	//davinci_master->mode = pdata->spi_mode;
+	//davinci_master->databits = pdata->databits;
+	//davinci_master->speed_hz = pdata->speed_hz;
+	davinci_master->mode = SPI_MODE_0;
+	davinci_master->databits = 8;
+	davinci_master->speed_hz = 20000000;
+	davinci_master->clk_id = pdata->clk_id;
+
+	/* Enable the SPI hardware */
+	writel(SPIGCR0_SPIRST_MASK, &davinci_master->regs->gcr0);
+	udelay(1000);
+	writel(SPIGCR0_SPIENA_MASK, &davinci_master->regs->gcr0);
+
+	spi_register_master(master);
+
+	return 0;	
+}
+
+int spi_cs_is_valid(unsigned int bus, unsigned int cs)
+{
+	return bus == 1 && cs == 0;
+}
+
+static struct driver_d davinci_spi_driver = {
+	.name = "davinci_spi",
+	.probe = davinci_spi_probe,
+};
+
+static int davinci_spi_init(void)
+{
+	return register_driver(&davinci_spi_driver);
+}
+
+device_initcall(davinci_spi_init);
diff --git a/drivers/spi/davinci_spi.h b/drivers/spi/davinci_spi.h
new file mode 100644
index 0000000..f423141
--- /dev/null
+++ b/drivers/spi/davinci_spi.h
@@ -0,0 +1,123 @@
+/*
+ * Copyright (C) 2009 Texas Instruments Incorporated - http://www.ti.com/
+ *
+ * Register definitions for the DaVinci SPI Controller
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
+#ifndef _DAVINCI_SPI_H_
+#define _DAVINCI_SPI_H_
+
+#include <mach/hardware.h>
+
+struct davinci_spi_regs {
+	dv_reg	gcr0;		/* 0x00 */
+	dv_reg	gcr1;		/* 0x04 */
+	dv_reg	int0;		/* 0x08 */
+	dv_reg	lvl;		/* 0x0c */
+	dv_reg	flg;		/* 0x10 */
+	dv_reg	pc0;		/* 0x14 */
+	dv_reg	pc1;		/* 0x18 */
+	dv_reg	pc2;		/* 0x1c */
+	dv_reg	pc3;		/* 0x20 */
+	dv_reg	pc4;		/* 0x24 */
+	dv_reg	pc5;		/* 0x28 */
+	dv_reg	rsvd[3];
+	dv_reg	dat0;		/* 0x38 */
+	dv_reg	dat1;		/* 0x3c */
+	dv_reg	buf;		/* 0x40 */
+	dv_reg	emu;		/* 0x44 */
+	dv_reg	delay;		/* 0x48 */
+	dv_reg	def;		/* 0x4c */
+	dv_reg	fmt0;		/* 0x50 */
+	dv_reg	fmt1;		/* 0x54 */
+	dv_reg	fmt2;		/* 0x58 */
+	dv_reg	fmt3;		/* 0x5c */
+	dv_reg	intvec0;	/* 0x60 */
+	dv_reg	intvec1;	/* 0x64 */
+};
+
+/* SPIGCR0 */
+#define SPIGCR0_SPIENA_MASK	0x1
+#define SPIGCR0_SPIRST_MASK	0x0
+
+/* SPIGCR0 */
+#define SPIGCR1_CLKMOD_MASK	BIT(1)
+#define SPIGCR1_MASTER_MASK	BIT(0)
+#define SPIGCR1_POWERDOWN_MASK	BIT(8)
+#define SPIGCR1_SPIENA_MASK	BIT(24)
+
+/* SPIFLG */
+#define SPIFLG_DLEN_ERR_MASK	BIT(0)
+#define SPIFLG_TIMEOUT_MASK	BIT(1)
+#define SPIFLG_PARERR_MASK	BIT(2)
+#define SPIFLG_DESYNC_MASK	BIT(3)
+#define SPIFLG_BITERR_MASK	BIT(4)
+#define SPIFLG_OVRRUN_MASK	BIT(6)
+
+/* SPIPC0 */
+#define SPIPC0_DIFUN_MASK	BIT(11)		/* SIMO */
+#define SPIPC0_DOFUN_MASK	BIT(10)		/* SOMI */
+#define SPIPC0_CLKFUN_MASK	BIT(9)		/* CLK */
+#define SPIPC0_EN0FUN_MASK	BIT(0)
+
+/* SPIFMT0 */
+#define SPIFMT_SHIFTDIR_SHIFT	20
+#define SPIFMT_POLARITY_SHIFT	17
+#define SPIFMT_PHASE_SHIFT	16
+#define SPIFMT_PRESCALE_SHIFT	8
+
+/* SPIDAT1 */
+#define SPIDAT1_CSHOLD_SHIFT	28
+#define SPIDAT1_CSNR_SHIFT	16
+#define SPIDAT1_CSNR_MASK	(0xff << SPIDAT1_CSNR_SHIFT)
+
+/* SPIDELAY */
+#define SPI_C2TDELAY_SHIFT	24
+#define SPI_T2CDELAY_SHIFT	16
+
+/* SPIBUF */
+#define SPIBUF_RXEMPTY_MASK	BIT(31)
+#define SPIBUF_TXFULL_MASK	BIT(29)
+
+/* SPIDEF */
+#define SPIDEF_CSDEF0_MASK	0xff
+
+/*
+struct davinci_spi_slave {
+	struct spi_slave slave;
+	struct davinci_spi_regs *regs;
+	unsigned int freq;
+};
+
+static inline struct davinci_spi_slave *to_davinci_spi(struct spi_slave *slave)
+{
+	return container_of(slave, struct davinci_spi_slave, slave);
+}
+*/
+
+struct davinci_spi_master {
+	struct spi_master		master;
+	struct davinci_spi_regs __iomem	*regs;
+	int				mode;
+	int				databits;
+	int				speed_hz;
+	int				clk_id;
+	unsigned int			cs_pins;
+};
+
+#endif /* _DAVINCI_SPI_H_ */
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
