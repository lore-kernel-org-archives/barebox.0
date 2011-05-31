Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QRQUh-0006dF-Id
	for barebox@lists.infradead.org; Tue, 31 May 2011 15:04:37 +0000
Received: by bwz1 with SMTP id 1so4797341bwz.36
	for <barebox@lists.infradead.org>; Tue, 31 May 2011 08:04:29 -0700 (PDT)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Tue, 31 May 2011 17:02:50 +0200
Message-Id: <1306854170-24064-1-git-send-email-h.feurstein@gmail.com>
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
Subject: [PATCH] mci: add Atmel AT91 MCI driver
To: barebox@lists.infradead.org
Cc: Patrice Vilchez <patrice.vilchez@atmel.com>, Nicolas Ferre <nicolas.ferre@atmel.com>

The driver supports push and pull transfers.
Tested on at91sam9m10 SoC.

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
Cc: Patrice Vilchez <patrice.vilchez@atmel.com>
---
 arch/arm/mach-at91/at91sam9g45_devices.c   |   92 +++++
 arch/arm/mach-at91/include/mach/at91_mci.h |  121 +++++++
 arch/arm/mach-at91/include/mach/board.h    |   10 +
 drivers/mci/Kconfig                        |    7 +
 drivers/mci/Makefile                       |    1 +
 drivers/mci/atmel_mci.c                    |  519 ++++++++++++++++++++++++++++
 6 files changed, 750 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/mach-at91/include/mach/at91_mci.h
 create mode 100644 drivers/mci/atmel_mci.c

diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index ddb005a..950d083 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -10,6 +10,7 @@
  *
  */
 #include <common.h>
+#include <sizes.h>
 #include <asm/armlinux.h>
 #include <asm/hardware.h>
 #include <mach/at91_pmc.h>
@@ -240,3 +241,94 @@ void at91_register_uart(unsigned id, unsigned pins)
 	}
 
 }
+
+#if defined(CONFIG_MCI_ATMEL)
+static struct device_d mci0_device = {
+	.id	  = 0,
+	.name     = "atmel_mci",
+	.map_base = AT91SAM9G45_BASE_MCI0,
+	.size     = SZ_16K,
+};
+
+static struct device_d mci1_device = {
+	.id	  = 1,
+	.name     = "atmel_mci",
+	.map_base = AT91SAM9G45_BASE_MCI1,
+	.size     = SZ_16K,
+};
+
+/* Consider only one slot : slot 0 */
+void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
+{
+
+	if (!data)
+		return;
+
+	/* Must have at least one usable slot */
+	if (!data->bus_width)
+		return;
+
+	/* input/irq */
+	if (data->detect_pin) {
+		at91_set_gpio_input(data->detect_pin, 1);
+		at91_set_deglitch(data->detect_pin, 1);
+	}
+	if (data->wp_pin)
+		at91_set_gpio_input(data->wp_pin, 1);
+
+	if (mmc_id == 0) {		/* MCI0 */
+
+		/* CLK */
+		at91_set_A_periph(AT91_PIN_PA0, 0);
+
+		/* CMD */
+		at91_set_A_periph(AT91_PIN_PA1, 1);
+
+		/* DAT0, maybe DAT1..DAT3 and maybe DAT4..DAT7 */
+		at91_set_A_periph(AT91_PIN_PA2, 1);
+		if (data->bus_width == 4) {
+			at91_set_A_periph(AT91_PIN_PA3, 1);
+			at91_set_A_periph(AT91_PIN_PA4, 1);
+			at91_set_A_periph(AT91_PIN_PA5, 1);
+			if (data->bus_width == 8) {
+				at91_set_A_periph(AT91_PIN_PA6, 1);
+				at91_set_A_periph(AT91_PIN_PA7, 1);
+				at91_set_A_periph(AT91_PIN_PA8, 1);
+				at91_set_A_periph(AT91_PIN_PA9, 1);
+			}
+		}
+
+		mci0_device.platform_data = data;
+		at91_clock_associate("mci0_clk", &mci0_device, "mci_clk");
+		register_device(&mci0_device);
+
+	} else {			/* MCI1 */
+		/* CLK */
+		at91_set_A_periph(AT91_PIN_PA31, 0);
+
+		/* CMD */
+		at91_set_A_periph(AT91_PIN_PA22, 1);
+
+		/* DAT0, maybe DAT1..DAT3 and maybe DAT4..DAT7 */
+		at91_set_A_periph(AT91_PIN_PA23, 1);
+		if (data->bus_width == 4) {
+			at91_set_A_periph(AT91_PIN_PA24, 1);
+			at91_set_A_periph(AT91_PIN_PA25, 1);
+			at91_set_A_periph(AT91_PIN_PA26, 1);
+			if (data->bus_width == 8) {
+				at91_set_A_periph(AT91_PIN_PA27, 1);
+				at91_set_A_periph(AT91_PIN_PA28, 1);
+				at91_set_A_periph(AT91_PIN_PA29, 1);
+				at91_set_A_periph(AT91_PIN_PA30, 1);
+			}
+		}
+
+		mci1_device.platform_data = data;
+		at91_clock_associate("mci1_clk", &mci1_device, "mci_clk");
+		register_device(&mci1_device);
+	}
+}
+#else
+void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data) {}
+#endif
+
diff --git a/arch/arm/mach-at91/include/mach/at91_mci.h b/arch/arm/mach-at91/include/mach/at91_mci.h
new file mode 100644
index 0000000..6aa50aa
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/at91_mci.h
@@ -0,0 +1,121 @@
+/*
+ * [origin: Linux kernel arch/arm/mach-at91/include/mach/at91_mci.h]
+ *
+ * Copyright (C) 2005 Ivan Kokshaysky
+ * Copyright (C) SAN People
+ *
+ * MultiMedia Card Interface (MCI) registers.
+ * Based on AT91RM9200 datasheet revision F.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#ifndef AT91_MCI_H
+#define AT91_MCI_H
+
+#define AT91_MCI_CR		0x00		/* Control Register */
+#define		AT91_MCI_MCIEN		(1 <<  0)	/* Multi-Media Interface Enable */
+#define		AT91_MCI_MCIDIS		(1 <<  1)	/* Multi-Media Interface Disable */
+#define		AT91_MCI_PWSEN		(1 <<  2)	/* Power Save Mode Enable */
+#define		AT91_MCI_PWSDIS		(1 <<  3)	/* Power Save Mode Disable */
+#define		AT91_MCI_SWRST		(1 <<  7)	/* Software Reset */
+
+#define AT91_MCI_MR		0x04		/* Mode Register */
+#define		AT91_MCI_CLKDIV		(0xff  <<  0)	/* Clock Divider */
+#define		AT91_MCI_PWSDIV		(7     <<  8)	/* Power Saving Divider */
+#define		AT91_MCI_RDPROOF	(1     << 11)	/* Read Proof Enable [SAM926[03] only] */
+#define		AT91_MCI_WRPROOF	(1     << 12)	/* Write Proof Enable [SAM926[03] only] */
+#define		AT91_MCI_PDCFBYTE	(1     << 13)	/* PDC Force Byte Transfer [SAM926[03] only] */
+#define		AT91_MCI_PDCPADV	(1     << 14)	/* PDC Padding Value */
+#define		AT91_MCI_PDCMODE	(1     << 15)	/* PDC-orientated Mode */
+#define		AT91_MCI_BLKLEN		(0xfff << 18)	/* Data Block Length */
+
+#define AT91_MCI_DTOR		0x08		/* Data Timeout Register */
+#define		AT91_MCI_DTOCYC		(0xf << 0)	/* Data Timeout Cycle Number */
+#define		AT91_MCI_DTOMUL		(7   << 4)	/* Data Timeout Multiplier */
+#define		AT91_MCI_DTOMUL_1		(0 <<  4)
+#define		AT91_MCI_DTOMUL_16		(1 <<  4)
+#define		AT91_MCI_DTOMUL_128		(2 <<  4)
+#define		AT91_MCI_DTOMUL_256		(3 <<  4)
+#define		AT91_MCI_DTOMUL_1K		(4 <<  4)
+#define		AT91_MCI_DTOMUL_4K		(5 <<  4)
+#define		AT91_MCI_DTOMUL_64K		(6 <<  4)
+#define		AT91_MCI_DTOMUL_1M		(7 <<  4)
+
+#define AT91_MCI_SDCR		0x0c		/* SD Card Register */
+#define		AT91_MCI_SDCSEL		(3 << 0)	/* SD Card Selector */
+#define		AT91_MCI_SDCBUS		(3 << 6)	/* 1-bit, 4-bit, or 8-bit bus */
+#define			AT91_MCI_SDCBUS_1BIT	(0 << 6)	/* 1-bit bus */
+#define			AT91_MCI_SDCBUS_4BIT	(2 << 6)	/* 4-bit bus */
+#define			AT91_MCI_SDCBUS_8BIT	(3 << 6)	/* 4-bit bus */
+
+#define AT91_MCI_ARGR		0x10		/* Argument Register */
+
+#define AT91_MCI_CMDR		0x14		/* Command Register */
+#define		AT91_MCI_CMDNB		(0x3f << 0)	/* Command Number */
+#define		AT91_MCI_RSPTYP		(3    << 6)	/* Response Type */
+#define			AT91_MCI_RSPTYP_NONE	(0 <<  6)
+#define			AT91_MCI_RSPTYP_48	(1 <<  6)
+#define			AT91_MCI_RSPTYP_136	(2 <<  6)
+#define			AT91_MCI_RSPTYP_R1B	(3 <<  6)
+#define		AT91_MCI_SPCMD		(7    << 8)	/* Special Command */
+#define			AT91_MCI_SPCMD_NONE	(0 <<  8)
+#define			AT91_MCI_SPCMD_INIT	(1 <<  8)
+#define			AT91_MCI_SPCMD_SYNC	(2 <<  8)
+#define			AT91_MCI_SPCMD_ICMD	(4 <<  8)
+#define			AT91_MCI_SPCMD_IRESP	(5 <<  8)
+#define		AT91_MCI_OPDCMD		(1 << 11)	/* Open Drain Command */
+#define		AT91_MCI_MAXLAT		(1 << 12)	/* Max Latency for Command to Response */
+#define		AT91_MCI_TRCMD		(3 << 16)	/* Transfer Command */
+#define			AT91_MCI_TRCMD_NONE	(0 << 16)
+#define			AT91_MCI_TRCMD_START	(1 << 16)
+#define			AT91_MCI_TRCMD_STOP	(2 << 16)
+#define		AT91_MCI_TRDIR		(1 << 18)	/* Transfer Direction */
+#define			AT91_MCI_TRDIR_RX	(1 << 18)	/* Read Transfer Direction */
+#define			AT91_MCI_TRDIR_TX	(0 << 18)	/* Write Transfer Direction */
+#define		AT91_MCI_TRTYP		(3 << 19)	/* Transfer Type */
+#define			AT91_MCI_TRTYP_BLOCK	(0 << 19)
+#define			AT91_MCI_TRTYP_MULTIPLE	(1 << 19)
+#define			AT91_MCI_TRTYP_STREAM	(2 << 19)
+#define			AT91_MCI_TRTYP_SDIO_BYTE	(4 << 19)
+#define			AT91_MCI_TRTYP_SDIO_BLOCK	(5 << 19)
+
+#define AT91_MCI_BLKR		0x18		/* Block Register */
+#define		AT91_MCI_BLKR_BCNT(n)	((0xffff & (n)) << 0)	/* Block count */
+#define		AT91_MCI_BLKR_BLKLEN(n)	((0xffff & (n)) << 16)	/* Block length */
+
+#define AT91_MCI_RSPR(n)	(0x20 + ((n) * 4))	/* Response Registers 0-3 */
+#define AT91_MCR_RDR		0x30		/* Receive Data Register */
+#define AT91_MCR_TDR		0x34		/* Transmit Data Register */
+
+#define AT91_MCI_SR		0x40		/* Status Register */
+#define		AT91_MCI_CMDRDY		(1 <<  0)	/* Command Ready */
+#define		AT91_MCI_RXRDY		(1 <<  1)	/* Receiver Ready */
+#define		AT91_MCI_TXRDY		(1 <<  2)	/* Transmit Ready */
+#define		AT91_MCI_BLKE		(1 <<  3)	/* Data Block Ended */
+#define		AT91_MCI_DTIP		(1 <<  4)	/* Data Transfer in Progress */
+#define		AT91_MCI_NOTBUSY	(1 <<  5)	/* Data Not Busy */
+#define		AT91_MCI_ENDRX		(1 <<  6)	/* End of RX Buffer */
+#define		AT91_MCI_ENDTX		(1 <<  7)	/* End fo TX Buffer */
+#define		AT91_MCI_SDIOIRQA	(1 <<  8)	/* SDIO Interrupt for Slot A */
+#define		AT91_MCI_SDIOIRQB	(1 <<  9)	/* SDIO Interrupt for Slot B */
+#define		AT91_MCI_RXBUFF		(1 << 14)	/* RX Buffer Full */
+#define		AT91_MCI_TXBUFE		(1 << 15)	/* TX Buffer Empty */
+#define		AT91_MCI_RINDE		(1 << 16)	/* Response Index Error */
+#define		AT91_MCI_RDIRE		(1 << 17)	/* Response Direction Error */
+#define		AT91_MCI_RCRCE		(1 << 18)	/* Response CRC Error */
+#define		AT91_MCI_RENDE		(1 << 19)	/* Response End Bit Error */
+#define		AT91_MCI_RTOE		(1 << 20)	/* Response Time-out Error */
+#define		AT91_MCI_DCRCE		(1 << 21)	/* Data CRC Error */
+#define		AT91_MCI_DTOE		(1 << 22)	/* Data Time-out Error */
+#define		AT91_MCI_OVRE		(1 << 30)	/* Overrun */
+#define		AT91_MCI_UNRE		(1 << 31)	/* Underrun */
+
+#define AT91_MCI_IER		0x44		/* Interrupt Enable Register */
+#define AT91_MCI_IDR		0x48		/* Interrupt Disable Register */
+#define AT91_MCI_IMR		0x4c		/* Interrupt Mask Register */
+
+#endif
diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
index 1ab05ad..89c1746 100644
--- a/arch/arm/mach-at91/include/mach/board.h
+++ b/arch/arm/mach-at91/include/mach/board.h
@@ -63,4 +63,14 @@ void at91_add_device_sdram(u32 size);
 #define ATMEL_UART_RI	0x20
 
 void at91_register_uart(unsigned id, unsigned pins);
+
+/* Multimedia Card Interface */
+struct atmel_mci_platform_data {
+	unsigned bus_width;
+	unsigned host_caps; /* MCI_MODE_* from mci.h */
+	unsigned detect_pin;
+	unsigned wp_pin;
+};
+
+void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data);
 #endif
diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 5d8adbd..7b71b99 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -73,4 +73,11 @@ config MCI_OMAP_HSMMC
 	  Enable this entry to add support to read and write SD cards on a
 	  OMAP4 based system.
 
+config MCI_ATMEL
+	bool "ATMEL (AT91)"
+	depends on ARCH_AT91
+	help
+	  Enable this entry to add support to read and write SD cards on a
+	  Atmel AT91.
+
 endif
diff --git a/drivers/mci/Makefile b/drivers/mci/Makefile
index 2bb9a93..4fc0046 100644
--- a/drivers/mci/Makefile
+++ b/drivers/mci/Makefile
@@ -4,3 +4,4 @@ obj-$(CONFIG_MCI_S3C) += s3c.o
 obj-$(CONFIG_MCI_IMX) += imx.o
 obj-$(CONFIG_MCI_IMX_ESDHC) += imx-esdhc.o
 obj-$(CONFIG_MCI_OMAP_HSMMC) += omap_hsmmc.o
+obj-$(CONFIG_MCI_ATMEL) += atmel_mci.o
diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
new file mode 100644
index 0000000..62e2822
--- /dev/null
+++ b/drivers/mci/atmel_mci.c
@@ -0,0 +1,519 @@
+/*
+ * Atmel AT91 MCI driver
+ *
+ * Copyright (C) 2011 Hubert Feurstein <h.feurstein@gmail.com>
+ *
+ * heavily based on imx.c by:
+ * Copyright (C) 2009 Ilya Yanok, <yanok@emcraft.com>
+ * Copyright (C) 2008 Sascha Hauer, Pengutronix <s.hauer@pengutronix.de>
+ * Copyright (C) 2006 Pavel Pisa, PiKRON <ppisa@pikron.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ * 
+ */
+
+/* #define DEBUG */
+
+#include <common.h>
+#include <init.h>
+#include <mci.h>
+#include <errno.h>
+#include <clock.h>
+#include <gpio.h>
+#include <asm/io.h>
+#include <mach/board.h>
+#include <linux/clk.h>
+
+#include <mach/at91_mci.h>
+
+/*
+ * Structure for struct SoC access.
+ * Names starting with '_' are fillers.
+ */
+struct atmel_mci_regs {
+	/*	reg	Offset */
+	u32	cr;	/* 0x00 */
+	u32	mr;	/* 0x04 */
+	u32	dtor;	/* 0x08 */
+	u32	sdcr;	/* 0x0c */
+	u32	argr;	/* 0x10 */
+	u32	cmdr;	/* 0x14 */
+	u32	blkr;	/* 0x18 */
+	u32	_1c;	/* 0x1c */
+	u32	rspr;	/* 0x20 */
+	u32	rspr1;	/* 0x24 */
+	u32	rspr2;	/* 0x28 */
+	u32	rspr3;	/* 0x2c */
+	u32	rdr;	/* 0x30 */
+	u32	tdr;	/* 0x34 */
+	u32	_38;	/* 0x38 */
+	u32	_3c;	/* 0x3c */
+	u32	sr;	/* 0x40 */
+	u32	ier;	/* 0x44 */
+	u32	idr;	/* 0x48 */
+	u32	imr;	/* 0x4c */
+};
+
+struct atmel_mci_host {
+	struct mci_host mci;
+	struct atmel_mci_regs volatile __iomem *base;
+	struct device_d *hw_dev;
+	struct clk *clk;
+	
+	u32 datasize;
+	struct mci_cmd *cmd;
+	struct mci_data *data;
+};
+
+#define to_mci_host(mci)	container_of(mci, struct atmel_mci_host, mci)
+
+#define STATUS_ERROR_MASK	(AT91_MCI_RINDE  \
+				| AT91_MCI_RDIRE \
+				| AT91_MCI_RCRCE \
+				| AT91_MCI_RENDE \
+				| AT91_MCI_RTOE  \
+				| AT91_MCI_DCRCE \
+				| AT91_MCI_DTOE  \
+				| AT91_MCI_OVRE  \
+				| AT91_MCI_UNRE)
+
+static void atmel_mci_reset(struct atmel_mci_host *host)
+{
+	writel(AT91_MCI_SWRST | AT91_MCI_MCIDIS, &host->base->cr);
+	writel(0x5f, &host->base->dtor);
+	writel(~0UL, &host->base->idr);
+}
+
+static void atmel_set_clk_rate(struct atmel_mci_host *host, unsigned int clk_ios)
+{
+	unsigned int divider;
+	unsigned int clk_in = clk_get_rate(host->clk);
+
+	if (clk_ios > 0)
+		divider = (clk_in / clk_ios) / 2 - 1;
+
+	if (divider > 255 || clk_ios == 0)
+		divider = 255;
+
+	pr_debug("atmel_set_clk_rate: clkIn=%d clkIos=%d divider=%d\n",
+		clk_in, clk_ios, divider);
+
+	writel(((AT91_MCI_CLKDIV & divider)
+		| AT91_MCI_RDPROOF
+		| AT91_MCI_WRPROOF), &host->base->mr);
+}
+
+static int atmel_poll_status(struct atmel_mci_host *host, u32 mask)
+{
+	u32 stat;
+	uint64_t start = get_time_ns();
+
+	do {
+		stat = readl(&host->base->sr);
+		if (stat & STATUS_ERROR_MASK)
+			return stat;
+		if (is_timeout(start, SECOND))
+			return AT91_MCI_RTOE | stat;
+		if (stat & mask)
+			return 0;
+	} while (1);
+}
+
+static int atmel_pull(struct atmel_mci_host *host, void *_buf, int bytes)
+{
+	unsigned int stat;
+	u32 *buf = _buf;
+
+	while (bytes > 3) {
+		stat = atmel_poll_status(host, AT91_MCI_RXRDY);
+		if (stat)
+			return stat;
+		
+		*buf++ = readl(&host->base->rdr);
+		bytes -= 4;
+	}
+
+	if (bytes) {
+		u8 *b = (u8 *)buf;
+		u32 tmp;
+
+		stat = atmel_poll_status(host, AT91_MCI_RXRDY);
+		if (stat)
+			return stat;
+		
+		tmp = readl(&host->base->rdr);
+		memcpy(b, &tmp, bytes);
+	}
+
+	return 0;
+}
+
+#ifdef CONFIG_MCI_WRITE
+static int atmel_push(struct atmel_mci_host *host, const void *_buf, int bytes)
+{
+	unsigned int stat;
+	const u32 *buf = _buf;
+
+	while (bytes > 3) {
+		stat = atmel_poll_status(host, AT91_MCI_TXRDY);
+		if (stat)
+			return stat;
+		
+		writel(*buf++, &host->base->tdr);
+		bytes -= 4;
+	}
+
+	if (bytes) {
+		const u8 *b = (u8 *)buf;
+		u32 tmp;
+
+		stat = atmel_poll_status(host, AT91_MCI_TXRDY);
+		if (stat)
+			return stat;
+
+		memcpy(&tmp, b, bytes);
+		writel(tmp, &host->base->tdr);
+	}
+
+	stat = atmel_poll_status(host, AT91_MCI_TXRDY);
+	if (stat)
+		return stat;
+
+	return 0;
+}
+#endif /* CONFIG_MCI_WRITE */
+
+static int atmel_transfer_data(struct atmel_mci_host *host)
+{
+	struct mci_data *data = host->data;
+	int stat;
+	unsigned long length;
+
+	length = data->blocks * data->blocksize;
+	host->datasize = 0;
+
+	if (data->flags & MMC_DATA_READ) {
+		stat = atmel_pull(host, data->dest, length);
+		if (stat)
+			return stat;
+
+		stat = atmel_poll_status(host, AT91_MCI_NOTBUSY);
+		if (stat)
+			return stat;
+
+		host->datasize += length;
+	} else {
+#ifdef CONFIG_MCI_WRITE
+		stat = atmel_push(host, (const void *)(data->src), length);
+		if (stat)
+			return stat;
+
+		host->datasize += length;
+		stat = atmel_poll_status(host, AT91_MCI_NOTBUSY);
+		if (stat)
+			return stat;
+#endif /* CONFIG_MCI_WRITE */
+	}
+	return 0;
+}
+
+static void atmel_finish_request(struct atmel_mci_host *host)
+{
+	host->cmd = NULL;
+	host->data = NULL;
+}
+
+static int atmel_finish_data(struct atmel_mci_host *host, unsigned int stat)
+{
+	int data_error = 0;
+
+	if (stat & STATUS_ERROR_MASK) {
+		pr_err("atmel_mci: request failed (status=0x%08x)\n",
+				stat);
+		if (stat & AT91_MCI_DCRCE) {
+			data_error = -EILSEQ;
+		} else if (stat & (AT91_MCI_RTOE | AT91_MCI_DTOE)) {
+			data_error = -ETIMEDOUT;
+		} else {
+			data_error = -EIO;
+		}
+	}
+
+	host->data = NULL;
+
+	return data_error;
+}
+
+static void atmel_setup_data(struct atmel_mci_host *host, struct mci_data *data)
+{
+	unsigned int nob = data->blocks;
+	unsigned int blksz = data->blocksize;
+	unsigned int datasize = nob * blksz;
+
+	BUG_ON(data->blocksize & 3);
+	BUG_ON(nob == 0);
+	
+	host->data = data;
+
+	pr_debug("atmel_setup_data: nob=%d blksz=%d\n", nob, blksz);
+	
+	writel(AT91_MCI_BLKR_BCNT(nob)
+		| AT91_MCI_BLKR_BLKLEN(blksz), &host->base->blkr);
+
+	host->datasize = datasize;
+}
+
+static int atmel_read_response(struct atmel_mci_host *host, unsigned int stat)
+{
+	struct mci_cmd *cmd = host->cmd;
+	int i;
+	u32 *resp = (u32 *)cmd->response;
+
+	if (!cmd)
+		return 0;
+
+	if (stat & (AT91_MCI_RTOE | AT91_MCI_DTOE)) {
+		pr_err("atmel_mci: command/data timeout\n");
+		return -ETIMEDOUT;
+	} else if ((stat & AT91_MCI_RCRCE) && (cmd->resp_type & MMC_RSP_CRC)) {
+		pr_err("atmel_mci: cmd crc error\n");
+		return -EILSEQ;
+	}
+
+	if (cmd->resp_type & MMC_RSP_PRESENT) {
+		if (cmd->resp_type & MMC_RSP_136) {
+			for (i = 0; i < 4; i++)
+				resp[i] =readl(&host->base->rspr);
+		} else {
+			resp[0] = readl(&host->base->rspr);
+		}
+	}
+
+	return 0;
+}
+
+static int atmel_cmd_done(struct atmel_mci_host *host, unsigned int stat)
+{
+	int datastat;
+	int ret;
+
+	ret = atmel_read_response(host, stat);
+
+	if (ret) {
+		atmel_finish_request(host);
+		return ret;
+	}
+
+	if (!host->data) {
+		atmel_finish_request(host);
+		return 0;
+	}
+
+	datastat = atmel_transfer_data(host);
+	ret = atmel_finish_data(host, datastat);
+	atmel_finish_request(host);
+	return ret;
+}
+
+static int atmel_start_cmd(struct atmel_mci_host *host, struct mci_cmd *cmd,
+		unsigned int cmdat)
+{
+	unsigned flags = 0;
+	unsigned cmdval = 0;
+	
+	if (host->cmd != NULL)
+		pr_err("atmel_mci: error!\n");
+
+	if ((readl(&host->base->sr) & AT91_MCI_CMDRDY) == 0) {
+		pr_err("atmel_mci: mci not ready!\n");
+		return -EBUSY;
+	}
+
+	host->cmd = cmd;
+	cmdval = AT91_MCI_CMDNB & cmd->cmdidx;
+	
+	switch (cmd->resp_type) {
+	case MMC_RSP_R1: /* short CRC, OPCODE */
+	case MMC_RSP_R1b:/* short CRC, OPCODE, BUSY */
+		flags |= AT91_MCI_RSPTYP_48;
+		break;
+	case MMC_RSP_R2: /* long 136 bit + CRC */
+		flags |= AT91_MCI_RSPTYP_136;
+		break;
+	case MMC_RSP_R3: /* short */
+		flags |= AT91_MCI_RSPTYP_48;
+		break;
+	case MMC_RSP_NONE:
+		flags |= AT91_MCI_RSPTYP_NONE;
+		break;
+	default:
+		pr_err("atmel_mci: unhandled response type 0x%x\n",
+				cmd->resp_type);
+		return -EINVAL;
+	}
+	cmdval |= AT91_MCI_RSPTYP & flags;
+	cmdval |= cmdat & ~(AT91_MCI_CMDNB | AT91_MCI_RSPTYP);
+	
+	writel(cmd->cmdarg, &host->base->argr);
+	writel(cmdval, &host->base->cmdr);
+
+	return 0;
+}
+
+/** init the host interface */
+static int mci_reset(struct mci_host* mci, struct device_d* mci_dev)
+{
+	int ret;
+	struct atmel_mci_host* host = to_mci_host(mci);
+	struct atmel_mci_platform_data* pd = host->hw_dev->platform_data;
+
+	ret = gpio_get_value(pd->detect_pin);
+	pr_debug("atmel_mci: card %sdetected\n", ret != 0 ? "not " : "");
+	
+	if (pd->detect_pin && ret == 1)
+		return -ENODEV;
+		
+	clk_enable(host->clk);
+	atmel_mci_reset(host);
+	
+	return 0;
+}
+
+/** change host interface settings */
+static void mci_set_ios(struct mci_host* mci, struct device_d* mci_dev, unsigned bus_width, unsigned clock)
+{
+	struct atmel_mci_host* host = to_mci_host(mci);
+	
+	pr_debug("atmel_mci_set_ios: bus_width=%d clk=%d\n", bus_width, clock);
+
+	if (bus_width == 8)
+		writel(AT91_MCI_SDCBUS_8BIT, &host->base->sdcr);
+	if (bus_width == 4)
+		writel(AT91_MCI_SDCBUS_4BIT, &host->base->sdcr);
+	else
+		writel(AT91_MCI_SDCBUS_1BIT, &host->base->sdcr);
+
+	if (clock) {
+		atmel_set_clk_rate(host, clock);
+		writel(AT91_MCI_MCIEN, &host->base->cr);
+	} else {
+		writel(AT91_MCI_MCIDIS, &host->base->cr);
+	}
+
+	return;
+}
+
+/** handle a command */
+static int mci_request(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
+{
+	struct atmel_mci_host *host = to_mci_host(mci);
+	u32 stat, cmdat = 0;
+	int ret;
+
+	if (cmd->resp_type != MMC_RSP_NONE)
+		cmdat |= AT91_MCI_MAXLAT;
+
+	if (data) {
+		atmel_setup_data(host, data);
+
+		cmdat |= AT91_MCI_TRCMD_START | AT91_MCI_TRTYP_MULTIPLE;
+
+		if (data->flags & MMC_DATA_READ)
+			cmdat |= AT91_MCI_TRDIR_RX;
+	}
+
+	if ((ret = atmel_start_cmd(host, cmd, cmdat))) {
+		atmel_finish_request(host);
+		return ret;
+	}
+
+	stat = atmel_poll_status(host, AT91_MCI_CMDRDY);
+	return atmel_cmd_done(host, stat);
+}
+	
+
+#ifdef CONFIG_MCI_INFO
+static void mci_info(struct device_d *mci_dev)
+{
+	struct atmel_mci_host *host = mci_dev->priv;
+	struct atmel_mci_platform_data *pd = host->hw_dev->platform_data;
+
+	printf("  Bus data width: %d bit\n", host->mci.bus_width);
+
+	printf("  Bus frequency: %u Hz\n", host->mci.clock);
+	printf("  Frequency limits: ");
+	if (host->mci.f_min == 0)
+		printf("no lower limit ");
+	else
+		printf("%u Hz lower limit ", host->mci.f_min);
+	if (host->mci.f_max == 0)
+		printf("- no upper limit");
+	else
+		printf("- %u Hz upper limit", host->mci.f_max);
+
+	printf("\n  Card detection support: %s\n",
+		pd->detect_pin != 0 ? "yes" : "no");
+
+}
+#endif /* CONFIG_MCI_INFO */
+
+static int mci_probe(struct device_d *hw_dev)
+{
+	unsigned long clk_rate;
+	struct atmel_mci_host *host;
+	struct atmel_mci_platform_data *pd = hw_dev->platform_data;
+
+	if (pd == NULL) {
+		pr_err("atmel_mci: missing platform data\n");
+		return -EINVAL;
+	}
+
+	host = xzalloc(sizeof(*host));
+	host->mci.send_cmd = mci_request;
+	host->mci.set_ios = mci_set_ios;
+	host->mci.init = mci_reset;
+	
+	host->mci.host_caps = pd->host_caps;
+	if (pd->bus_width == 4)
+		host->mci.host_caps |= MMC_MODE_4BIT;
+	else if (pd->bus_width == 8)
+		host->mci.host_caps |= MMC_MODE_8BIT;
+	
+	host->base = (struct atmel_mci_regs *)hw_dev->map_base;
+	host->hw_dev = hw_dev;
+	hw_dev->priv = host;
+	host->clk = clk_get(hw_dev, "mci_clk");
+	if (host->clk == NULL) {
+		pr_err("atmel_mci: no mci_clk\n");
+		return -EINVAL;
+	}
+
+	clk_rate = clk_get_rate(host->clk);
+
+	host->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
+
+	host->mci.f_min = clk_rate >> 9;
+	host->mci.f_max = clk_rate >> 1;
+
+	mci_register(&host->mci);
+
+	return 0;
+}
+
+static struct driver_d atmel_mci_driver = {
+        .name  = "atmel_mci",
+        .probe = mci_probe,
+#ifdef CONFIG_MCI_INFO
+	.info = mci_info,
+#endif
+};
+
+static int atmel_mci_init_driver(void)
+{
+        register_driver(&atmel_mci_driver);
+        return 0;
+}
+
+device_initcall(atmel_mci_init_driver);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
