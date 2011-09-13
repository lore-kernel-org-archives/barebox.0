Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R3Z9X-0007Ei-H2
	for barebox@lists.infradead.org; Tue, 13 Sep 2011 20:00:21 +0000
Received: by fxg7 with SMTP id 7so1048469fxg.36
	for <barebox@lists.infradead.org>; Tue, 13 Sep 2011 13:00:17 -0700 (PDT)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Tue, 13 Sep 2011 21:59:50 +0200
Message-Id: <1315943990-4376-1-git-send-email-h.feurstein@gmail.com>
In-Reply-To: <1315682313-19130-1-git-send-email-h.feurstein@gmail.com>
References: <1315682313-19130-1-git-send-email-h.feurstein@gmail.com>
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
Subject: [PATCH v2] spi: add atmel-spi driver
To: barebox@lists.infradead.org

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 Rebased driver on 'next'

 arch/arm/mach-at91/include/mach/board.h |    7 +
 drivers/spi/Kconfig                     |    5 +
 drivers/spi/Makefile                    |    1 +
 drivers/spi/atmel_spi.c                 |  321 +++++++++++++++++++++++++++++++
 drivers/spi/atmel_spi.h                 |  167 ++++++++++++++++
 5 files changed, 501 insertions(+), 0 deletions(-)
 create mode 100644 drivers/spi/atmel_spi.c
 create mode 100644 drivers/spi/atmel_spi.h

diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
index 89caebb..e88834b 100644
--- a/arch/arm/mach-at91/include/mach/board.h
+++ b/arch/arm/mach-at91/include/mach/board.h
@@ -22,6 +22,7 @@
 #define __ASM_ARCH_BOARD_H
 
 #include <net.h>
+#include <spi/spi.h>
 #include <linux/mtd/mtd.h>
 
 void atmel_nand_load_image(void *dest, int size, int pagesize, int blocksize);
@@ -75,4 +76,10 @@ struct atmel_mci_platform_data {
 };
 
 void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data);
+
+/* SPI Master platform data */
+struct at91_spi_platform_data {
+	int *chipselect;	/* array of gpio_pins */
+	int num_chipselect;	/* chipselect array entry count */
+};
 #endif
diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index c72493c..9864d84 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -24,4 +24,9 @@ config DRIVER_SPI_ALTERA
 	depends on NIOS2
 	depends on SPI
 
+config DRIVER_SPI_ATMEL
+	bool "Atmel (AT91) SPI Master driver"
+	depends on ARCH_AT91
+	depends on SPI
+
 endmenu
diff --git a/drivers/spi/Makefile b/drivers/spi/Makefile
index 90e141d..101652f 100644
--- a/drivers/spi/Makefile
+++ b/drivers/spi/Makefile
@@ -1,3 +1,4 @@
 obj-$(CONFIG_SPI) += spi.o
 obj-$(CONFIG_DRIVER_SPI_IMX) += imx_spi.o
 obj-$(CONFIG_DRIVER_SPI_ALTERA) += altera_spi.o
+obj-$(CONFIG_DRIVER_SPI_ATMEL) += atmel_spi.o
diff --git a/drivers/spi/atmel_spi.c b/drivers/spi/atmel_spi.c
new file mode 100644
index 0000000..5f5ccb6
--- /dev/null
+++ b/drivers/spi/atmel_spi.c
@@ -0,0 +1,321 @@
+/*
+ * Driver for Atmel AT32 and AT91 SPI Controllers
+ *
+ * Copyright (C) 2011 Hubert Feurstein <h.feurstein@gmail.com>
+ *
+ * based on imx_spi.c by:
+ * Copyright (C) 2008 Sascha Hauer, Pengutronix
+ *
+ * based on atmel_spi.c from the linux kernel by:
+ * Copyright (C) 2006 Atmel Corporation
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
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <errno.h>
+#include <clock.h>
+#include <xfuncs.h>
+#include <gpio.h>
+#include <asm/io.h>
+#include <spi/spi.h>
+#include <mach/io.h>
+#include <mach/board.h>
+#include <mach/cpu.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+
+#include "atmel_spi.h"
+
+struct atmel_spi {
+	struct spi_master	master;
+	void __iomem		*regs;
+	struct clk		*clk;
+	int			*cs_pins;
+};
+
+#define to_atmel_spi(p)		container_of(p, struct atmel_spi, master)
+#define SPI_XCHG_TIMEOUT	(100 * MSECOND)
+
+/*
+ * Version 2 of the SPI controller has
+ *  - CR.LASTXFER
+ *  - SPI_MR.DIV32 may become FDIV or must-be-zero (here: always zero)
+ *  - SPI_SR.TXEMPTY, SPI_SR.NSSR (and corresponding irqs)
+ *  - SPI_CSRx.CSAAT
+ *  - SPI_CSRx.SBCR allows faster clocking
+ *
+ * We can determine the controller version by reading the VERSION
+ * register, but I haven't checked that it exists on all chips, and
+ * this is cheaper anyway.
+ */
+static inline bool atmel_spi_is_v2(void)
+{
+	return !cpu_is_at91rm9200();
+}
+
+static int atmel_spi_setup(struct spi_device *spi)
+{
+	struct spi_master	*master = spi->master;
+	struct atmel_spi	*as = to_atmel_spi(master);
+
+	u32			scbr, csr;
+	unsigned int		bits = spi->bits_per_word;
+	unsigned long		bus_hz;
+
+	if (spi->controller_data) {
+		csr = (u32)spi->controller_data;
+		spi_writel(as, CSR0, csr);
+		return 0;
+	}
+
+	dev_dbg(master->dev, "%s mode 0x%08x bits_per_word: %d speed: %d\n",
+			__func__, spi->mode, spi->bits_per_word,
+			spi->max_speed_hz);
+
+	bus_hz = clk_get_rate(as->clk);
+	if (!atmel_spi_is_v2())
+		bus_hz /= 2;
+
+	if (spi->max_speed_hz) {
+		/*
+		 * Calculate the lowest divider that satisfies the
+		 * constraint, assuming div32/fdiv/mbz == 0.
+		 */
+		scbr = DIV_ROUND_UP(bus_hz, spi->max_speed_hz);
+
+		/*
+		 * If the resulting divider doesn't fit into the
+		 * register bitfield, we can't satisfy the constraint.
+		 */
+		if (scbr >= (1 << SPI_SCBR_SIZE)) {
+			dev_dbg(master->dev,
+				"setup: %d Hz too slow, scbr %u; min %ld Hz\n",
+				spi->max_speed_hz, scbr, bus_hz/255);
+			return -EINVAL;
+		}
+	} else {
+		/* speed zero means "as slow as possible" */
+		scbr = 0xff;
+	}
+
+	csr = SPI_BF(SCBR, scbr) | SPI_BF(BITS, bits - 8);
+	if (spi->mode & SPI_CPOL)
+		csr |= SPI_BIT(CPOL);
+	if (!(spi->mode & SPI_CPHA))
+		csr |= SPI_BIT(NCPHA);
+
+	/* DLYBS is mostly irrelevant since we manage chipselect using GPIOs.
+	 *
+	 * DLYBCT would add delays between words, slowing down transfers.
+	 * It could potentially be useful to cope with DMA bottlenecks, but
+	 * in those cases it's probably best to just use a lower bitrate.
+	 */
+	csr |= SPI_BF(DLYBS, 0);
+	csr |= SPI_BF(DLYBCT, 0);
+
+	/* gpio_direction_output(npcs_pin, !(spi->mode & SPI_CS_HIGH)); */
+	dev_dbg(master->dev,
+		"setup: %lu Hz bpw %u mode 0x%x -> csr%d %08x\n",
+		bus_hz / scbr, bits, spi->mode, spi->chip_select, csr);
+
+	spi_writel(as, CSR0, csr);
+
+	/*
+	 * store the csr-setting when bits are defined. This happens usually
+	 * after the specific spi_device driver has been probed.
+	 */
+	if (bits > 0)
+		spi->controller_data = (void *)csr;
+
+	return 0;
+}
+
+static void atmel_spi_chipselect(struct spi_device *spi, struct atmel_spi *as, int on)
+{
+	struct spi_master *master = &as->master;
+	int cs_pin;
+	int val = ((spi->mode & SPI_CS_HIGH) != 0) == on;
+
+	BUG_ON(spi->chip_select >= master->num_chipselect);
+	cs_pin = as->cs_pins[spi->chip_select];
+
+	gpio_direction_output(cs_pin, val);
+}
+
+static int atmel_spi_xchg(struct atmel_spi *as, u32 tx_val)
+{
+	uint64_t start;
+
+	start = get_time_ns();
+	while (!(spi_readl(as, SR) & SPI_BIT(TDRE))) {
+		if (is_timeout(start, SPI_XCHG_TIMEOUT)) {
+			dev_err(as->master.dev, "tx timeout\n");
+			return -ETIMEDOUT;
+		}
+	}
+	spi_writel(as, TDR, tx_val);
+
+	start = get_time_ns();
+	while (!(spi_readl(as, SR) & SPI_BIT(RDRF))) {
+		if (is_timeout(start, SPI_XCHG_TIMEOUT)) {
+			dev_err(as->master.dev, "rx timeout\n");
+			return -ETIMEDOUT;
+		}
+	}
+	return spi_readl(as, RDR) & 0xffff;
+}
+
+static int atmel_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
+{
+	int ret;
+	struct spi_master *master	= spi->master;
+	struct atmel_spi *as		= to_atmel_spi(master);
+	struct spi_transfer *t		= NULL;
+	unsigned int bits		= spi->bits_per_word;
+
+	ret = master->setup(spi);
+	if (ret < 0) {
+		dev_dbg(master->dev, "transfer: master setup failed\n");
+		return ret;
+	}
+
+	dev_dbg(master->dev, "  csr0: %08x\n", spi_readl(as, CSR0));
+
+#ifdef VERBOSE
+	list_for_each_entry(t, &mesg->transfers, transfer_list) {
+		dev_dbg(master->dev,
+			"  xfer %p: len %u tx %p rx %p\n",
+			t, t->len, t->tx_buf, t->rx_buf);
+	}
+#endif
+	atmel_spi_chipselect(spi, as, 1);
+	list_for_each_entry(t, &mesg->transfers, transfer_list) {
+		u32 tx_val;
+		int i = 0, rx_val;
+
+		if (bits <= 8) {
+			const u8 *txbuf = t->tx_buf;
+			u8 *rxbuf = t->rx_buf;
+
+			while (i < t->len) {
+				tx_val = txbuf ? txbuf[i] : 0;
+
+				rx_val = atmel_spi_xchg(as, tx_val);
+				if (rx_val < 0) {
+					ret = rx_val;
+					goto out;
+				}
+
+				if (rxbuf)
+					rxbuf[i] = rx_val;
+				i++;
+			}
+		} else if (bits <= 16) {
+			const u16 *txbuf = t->tx_buf;
+			u16 *rxbuf = t->rx_buf;
+
+			while (i < t->len >> 1) {
+				tx_val = txbuf ? txbuf[i] : 0;
+
+				rx_val = atmel_spi_xchg(as, tx_val);
+				if (rx_val < 0) {
+					ret = rx_val;
+					goto out;
+				}
+
+				if (rxbuf)
+					rxbuf[i] = rx_val;
+				i++;
+			}
+		}
+	}
+out:
+	atmel_spi_chipselect(spi, as, 0);
+	return ret;
+}
+
+static int atmel_spi_probe(struct device_d *dev)
+{
+	int ret = 0;
+	struct spi_master *master;
+	struct atmel_spi *as;
+	struct at91_spi_platform_data *pdata = dev->platform_data;
+
+	if (!pdata) {
+		dev_err(dev, "missing platform data\n");
+		return -EINVAL;
+	}
+
+	as = xzalloc(sizeof(*as));
+
+	master = &as->master;
+	master->dev = dev;
+
+	as->clk = clk_get(dev, "spi_clk");
+	if (IS_ERR(as->clk)) {
+		dev_err(dev, "no spi_clk\n");
+		ret = PTR_ERR(as->clk);
+		goto out_free;
+	}
+
+	master->setup = atmel_spi_setup;
+	master->transfer = atmel_spi_transfer;
+	master->num_chipselect = pdata->num_chipselect;
+	as->cs_pins = pdata->chipselect;
+	as->regs = dev_request_mem_region(dev, 0);
+
+	/* Initialize the hardware */
+	clk_enable(as->clk);
+	spi_writel(as, CR, SPI_BIT(SWRST));
+	spi_writel(as, CR, SPI_BIT(SWRST)); /* AT91SAM9263 Rev B workaround */
+	spi_writel(as, MR, SPI_BIT(MSTR) | SPI_BIT(MODFDIS));
+	spi_writel(as, PTCR, SPI_BIT(RXTDIS) | SPI_BIT(TXTDIS));
+	spi_writel(as, CR, SPI_BIT(SPIEN));
+
+	dev_dbg(dev, "Atmel SPI Controller at initialized\n");
+
+	ret = spi_register_master(master);
+	if (ret)
+		goto out_reset_hw;
+
+	return 0;
+
+out_reset_hw:
+	spi_writel(as, CR, SPI_BIT(SWRST));
+	spi_writel(as, CR, SPI_BIT(SWRST)); /* AT91SAM9263 Rev B workaround */
+	clk_disable(as->clk);
+	clk_put(as->clk);
+out_free:
+	free(as);
+	return ret;
+}
+
+static struct driver_d atmel_spi_driver = {
+	.name  = "atmel_spi",
+	.probe = atmel_spi_probe,
+};
+
+static int atmel_spi_init(void)
+{
+	register_driver(&atmel_spi_driver);
+	return 0;
+}
+
+device_initcall(atmel_spi_init);
diff --git a/drivers/spi/atmel_spi.h b/drivers/spi/atmel_spi.h
new file mode 100644
index 0000000..38ce119
--- /dev/null
+++ b/drivers/spi/atmel_spi.h
@@ -0,0 +1,167 @@
+/*
+ * Register definitions for Atmel Serial Peripheral Interface (SPI)
+ *
+ * Copyright (C) 2006 Atmel Corporation
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+#ifndef __ATMEL_SPI_H__
+#define __ATMEL_SPI_H__
+
+/* SPI register offsets */
+#define SPI_CR					0x0000
+#define SPI_MR					0x0004
+#define SPI_RDR					0x0008
+#define SPI_TDR					0x000c
+#define SPI_SR					0x0010
+#define SPI_IER					0x0014
+#define SPI_IDR					0x0018
+#define SPI_IMR					0x001c
+#define SPI_CSR0				0x0030
+#define SPI_CSR1				0x0034
+#define SPI_CSR2				0x0038
+#define SPI_CSR3				0x003c
+#define SPI_RPR					0x0100
+#define SPI_RCR					0x0104
+#define SPI_TPR					0x0108
+#define SPI_TCR					0x010c
+#define SPI_RNPR				0x0110
+#define SPI_RNCR				0x0114
+#define SPI_TNPR				0x0118
+#define SPI_TNCR				0x011c
+#define SPI_PTCR				0x0120
+#define SPI_PTSR				0x0124
+
+/* Bitfields in CR */
+#define SPI_SPIEN_OFFSET			0
+#define SPI_SPIEN_SIZE				1
+#define SPI_SPIDIS_OFFSET			1
+#define SPI_SPIDIS_SIZE				1
+#define SPI_SWRST_OFFSET			7
+#define SPI_SWRST_SIZE				1
+#define SPI_LASTXFER_OFFSET			24
+#define SPI_LASTXFER_SIZE			1
+
+/* Bitfields in MR */
+#define SPI_MSTR_OFFSET				0
+#define SPI_MSTR_SIZE				1
+#define SPI_PS_OFFSET				1
+#define SPI_PS_SIZE				1
+#define SPI_PCSDEC_OFFSET			2
+#define SPI_PCSDEC_SIZE				1
+#define SPI_FDIV_OFFSET				3
+#define SPI_FDIV_SIZE				1
+#define SPI_MODFDIS_OFFSET			4
+#define SPI_MODFDIS_SIZE			1
+#define SPI_LLB_OFFSET				7
+#define SPI_LLB_SIZE				1
+#define SPI_PCS_OFFSET				16
+#define SPI_PCS_SIZE				4
+#define SPI_DLYBCS_OFFSET			24
+#define SPI_DLYBCS_SIZE				8
+
+/* Bitfields in RDR */
+#define SPI_RD_OFFSET				0
+#define SPI_RD_SIZE				16
+
+/* Bitfields in TDR */
+#define SPI_TD_OFFSET				0
+#define SPI_TD_SIZE				16
+
+/* Bitfields in SR */
+#define SPI_RDRF_OFFSET				0
+#define SPI_RDRF_SIZE				1
+#define SPI_TDRE_OFFSET				1
+#define SPI_TDRE_SIZE				1
+#define SPI_MODF_OFFSET				2
+#define SPI_MODF_SIZE				1
+#define SPI_OVRES_OFFSET			3
+#define SPI_OVRES_SIZE				1
+#define SPI_ENDRX_OFFSET			4
+#define SPI_ENDRX_SIZE				1
+#define SPI_ENDTX_OFFSET			5
+#define SPI_ENDTX_SIZE				1
+#define SPI_RXBUFF_OFFSET			6
+#define SPI_RXBUFF_SIZE				1
+#define SPI_TXBUFE_OFFSET			7
+#define SPI_TXBUFE_SIZE				1
+#define SPI_NSSR_OFFSET				8
+#define SPI_NSSR_SIZE				1
+#define SPI_TXEMPTY_OFFSET			9
+#define SPI_TXEMPTY_SIZE			1
+#define SPI_SPIENS_OFFSET			16
+#define SPI_SPIENS_SIZE				1
+
+/* Bitfields in CSR0 */
+#define SPI_CPOL_OFFSET				0
+#define SPI_CPOL_SIZE				1
+#define SPI_NCPHA_OFFSET			1
+#define SPI_NCPHA_SIZE				1
+#define SPI_CSAAT_OFFSET			3
+#define SPI_CSAAT_SIZE				1
+#define SPI_BITS_OFFSET				4
+#define SPI_BITS_SIZE				4
+#define SPI_SCBR_OFFSET				8
+#define SPI_SCBR_SIZE				8
+#define SPI_DLYBS_OFFSET			16
+#define SPI_DLYBS_SIZE				8
+#define SPI_DLYBCT_OFFSET			24
+#define SPI_DLYBCT_SIZE				8
+
+/* Bitfields in RCR */
+#define SPI_RXCTR_OFFSET			0
+#define SPI_RXCTR_SIZE				16
+
+/* Bitfields in TCR */
+#define SPI_TXCTR_OFFSET			0
+#define SPI_TXCTR_SIZE				16
+
+/* Bitfields in RNCR */
+#define SPI_RXNCR_OFFSET			0
+#define SPI_RXNCR_SIZE				16
+
+/* Bitfields in TNCR */
+#define SPI_TXNCR_OFFSET			0
+#define SPI_TXNCR_SIZE				16
+
+/* Bitfields in PTCR */
+#define SPI_RXTEN_OFFSET			0
+#define SPI_RXTEN_SIZE				1
+#define SPI_RXTDIS_OFFSET			1
+#define SPI_RXTDIS_SIZE				1
+#define SPI_TXTEN_OFFSET			8
+#define SPI_TXTEN_SIZE				1
+#define SPI_TXTDIS_OFFSET			9
+#define SPI_TXTDIS_SIZE				1
+
+/* Constants for BITS */
+#define SPI_BITS_8_BPT				0
+#define SPI_BITS_9_BPT				1
+#define SPI_BITS_10_BPT				2
+#define SPI_BITS_11_BPT				3
+#define SPI_BITS_12_BPT				4
+#define SPI_BITS_13_BPT				5
+#define SPI_BITS_14_BPT				6
+#define SPI_BITS_15_BPT				7
+#define SPI_BITS_16_BPT				8
+
+/* Bit manipulation macros */
+#define SPI_BIT(name) \
+	(1 << SPI_##name##_OFFSET)
+#define SPI_BF(name, value) \
+	(((value) & ((1 << SPI_##name##_SIZE) - 1)) << SPI_##name##_OFFSET)
+#define SPI_BFEXT(name, value) \
+	(((value) >> SPI_##name##_OFFSET) & ((1 << SPI_##name##_SIZE) - 1))
+#define SPI_BFINS(name, value, old) \
+	(((old) & ~(((1 << SPI_##name##_SIZE) - 1) << SPI_##name##_OFFSET)) \
+	  | SPI_BF(name, value))
+
+/* Register access macros */
+#define spi_readl(port, reg) \
+	__raw_readl((port)->regs + SPI_##reg)
+#define spi_writel(port, reg, value) \
+	__raw_writel((value), (port)->regs + SPI_##reg)
+
+#endif /* __ATMEL_SPI_H__ */
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
