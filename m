Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f176.google.com ([209.85.217.176])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WTHpf-00025x-0h
 for barebox@lists.infradead.org; Thu, 27 Mar 2014 21:27:35 +0000
Received: by mail-lb0-f176.google.com with SMTP id 10so3085433lbg.35
 for <barebox@lists.infradead.org>; Thu, 27 Mar 2014 14:27:02 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 28 Mar 2014 01:26:39 +0400
Message-Id: <1395955604-12826-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1395955604-12826-1-git-send-email-antonynpavlov@gmail.com>
References: <1395955604-12826-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 4/9] serial: add Atheros AR933x driver
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 drivers/serial/Kconfig         |   7 ++
 drivers/serial/Makefile        |   1 +
 drivers/serial/serial_ar933x.c | 204 +++++++++++++++++++++++++++++++++++++++++
 drivers/serial/serial_ar933x.h |  69 ++++++++++++++
 4 files changed, 281 insertions(+)

diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index 11fc155..f51c6e6 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -14,6 +14,13 @@ config SERIAL_AMBA_PL011
 
 	  If unsure, say N.
 
+config DRIVER_SERIAL_AR933X
+	bool "AR933X serial driver"
+	depends on MACH_MIPS_ATH79
+	help
+	  If you have an Atheros AR933X SOC based board and want to use the
+	  built-in UART of the SoC, say Y to this option.
+
 config DRIVER_SERIAL_IMX
 	depends on ARCH_IMX
 	default y
diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
index 93790b5..e1865f7 100644
--- a/drivers/serial/Makefile
+++ b/drivers/serial/Makefile
@@ -1,5 +1,6 @@
 obj-$(CONFIG_DRIVER_SERIAL_ARM_DCC)		+= arm_dcc.o
 obj-$(CONFIG_SERIAL_AMBA_PL011)			+= amba-pl011.o
+obj-$(CONFIG_DRIVER_SERIAL_AR933X)		+= serial_ar933x.o
 obj-$(CONFIG_DRIVER_SERIAL_IMX)			+= serial_imx.o
 obj-$(CONFIG_DRIVER_SERIAL_STM378X)		+= stm-serial.o
 obj-$(CONFIG_DRIVER_SERIAL_ATMEL)		+= atmel.o
diff --git a/drivers/serial/serial_ar933x.c b/drivers/serial/serial_ar933x.c
new file mode 100644
index 0000000..27cccba
--- /dev/null
+++ b/drivers/serial/serial_ar933x.c
@@ -0,0 +1,204 @@
+/*
+ * based on linux.git/drivers/tty/serial/serial_ar933x.c
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
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <malloc.h>
+#include <io.h>
+#include <asm-generic/div64.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+
+#include "serial_ar933x.h"
+
+#define AR933X_UART_MAX_SCALE	0xff
+#define AR933X_UART_MAX_STEP	0xffff
+
+struct ar933x_uart_priv {
+	void __iomem	*base;
+	struct clk	*clk;
+};
+
+static inline void ar933x_serial_writel(struct console_device *cdev,
+	u32 b, int offset)
+{
+	struct ar933x_uart_priv *priv = cdev->dev->priv;
+
+	cpu_writel(b, priv->base + offset);
+}
+
+static inline u32 ar933x_serial_readl(struct console_device *cdev,
+	int offset)
+{
+	struct ar933x_uart_priv *priv = cdev->dev->priv;
+
+	return cpu_readl(priv->base + offset);
+}
+
+/*
+ * baudrate = (clk / (scale + 1)) * (step * (1 / 2^17))
+ * take from linux.
+ */
+static unsigned long ar933x_uart_get_baud(unsigned int clk,
+					  unsigned int scale,
+					  unsigned int step)
+{
+	u64 t;
+	u32 div;
+
+	div = (2 << 16) * (scale + 1);
+	t = clk;
+	t *= step;
+	t += (div / 2);
+	do_div(t, div);
+
+	return t;
+}
+
+static void ar933x_uart_get_scale_step(unsigned int clk,
+				       unsigned int baud,
+				       unsigned int *scale,
+				       unsigned int *step)
+{
+	unsigned int tscale;
+	long min_diff;
+
+	*scale = 0;
+	*step = 0;
+
+	min_diff = baud;
+	for (tscale = 0; tscale < AR933X_UART_MAX_SCALE; tscale++) {
+		u64 tstep;
+		int diff;
+
+		tstep = baud * (tscale + 1);
+		tstep *= (2 << 16);
+		do_div(tstep, clk);
+
+		if (tstep > AR933X_UART_MAX_STEP)
+			break;
+
+		diff = abs(ar933x_uart_get_baud(clk, tscale, tstep) - baud);
+		if (diff < min_diff) {
+			min_diff = diff;
+			*scale = tscale;
+			*step = tstep;
+		}
+	}
+}
+
+static int ar933x_serial_setbaudrate(struct console_device *cdev, int baudrate)
+{
+	struct ar933x_uart_priv *priv = cdev->dev->priv;
+	unsigned int scale, step;
+
+	ar933x_uart_get_scale_step(clk_get_rate(priv->clk), baudrate, &scale,
+			&step);
+	ar933x_serial_writel(cdev, (scale << AR933X_UART_CLOCK_SCALE_S) | step,
+			AR933X_UART_CLOCK_REG);
+
+	return 0;
+}
+
+static void ar933x_serial_putc(struct console_device *cdev, char ch)
+{
+	u32 data;
+
+	/* wait transmitter ready */
+	data = ar933x_serial_readl(cdev, AR933X_UART_DATA_REG);
+	while (!(data & AR933X_UART_DATA_TX_CSR))
+		data = ar933x_serial_readl(cdev, AR933X_UART_DATA_REG);
+
+	data = (ch & AR933X_UART_DATA_TX_RX_MASK) | AR933X_UART_DATA_TX_CSR;
+	ar933x_serial_writel(cdev, data, AR933X_UART_DATA_REG);
+}
+
+static int ar933x_serial_tstc(struct console_device *cdev)
+{
+	u32 rdata;
+
+	rdata = ar933x_serial_readl(cdev, AR933X_UART_DATA_REG);
+
+	return rdata & AR933X_UART_DATA_RX_CSR;
+}
+
+static int ar933x_serial_getc(struct console_device *cdev)
+{
+	u32 rdata;
+
+	while (!ar933x_serial_tstc(cdev))
+		;
+
+	rdata = ar933x_serial_readl(cdev, AR933X_UART_DATA_REG);
+
+	/* remove the character from the FIFO */
+	ar933x_serial_writel(cdev, AR933X_UART_DATA_RX_CSR,
+		AR933X_UART_DATA_REG);
+
+	return rdata & AR933X_UART_DATA_TX_RX_MASK;
+}
+
+static int ar933x_serial_probe(struct device_d *dev)
+{
+	struct console_device *cdev;
+	struct ar933x_uart_priv	*priv;
+	u32 uart_cs;
+
+	cdev = xzalloc(sizeof(struct console_device));
+	priv = xzalloc(sizeof(struct ar933x_uart_priv));
+	priv->base = dev_request_mem_region(dev, 0);
+	dev->priv = priv;
+
+	cdev->dev = dev;
+	cdev->tstc = ar933x_serial_tstc;
+	cdev->putc = ar933x_serial_putc;
+	cdev->getc = ar933x_serial_getc;
+	cdev->setbrg = ar933x_serial_setbaudrate;
+
+	priv->clk = clk_get(dev, NULL);
+	if (IS_ERR(priv->clk)) {
+		dev_err(dev, "unable to get UART clock\n");
+		return PTR_ERR(priv->clk);
+	}
+
+	uart_cs = (AR933X_UART_CS_IF_MODE_DCE << AR933X_UART_CS_IF_MODE_S)
+		| AR933X_UART_CS_TX_READY_ORIDE
+		| AR933X_UART_CS_RX_READY_ORIDE;
+	ar933x_serial_writel(cdev, uart_cs, AR933X_UART_CS_REG);
+	/* FIXME: need ar933x_serial_init_port(cdev); */
+
+	console_register(cdev);
+
+	return 0;
+}
+
+static struct of_device_id ar933x_serial_dt_ids[] = {
+	{
+		.compatible = "qca,ar9330-uart",
+	}, {
+		/* sentinel */
+	},
+};
+
+static struct driver_d ar933x_serial_driver = {
+	.name  = "ar933x_serial",
+	.probe = ar933x_serial_probe,
+	.of_compatible = DRV_OF_COMPAT(ar933x_serial_dt_ids),
+};
+console_platform_driver(ar933x_serial_driver);
diff --git a/drivers/serial/serial_ar933x.h b/drivers/serial/serial_ar933x.h
new file mode 100644
index 0000000..f55f0fa
--- /dev/null
+++ b/drivers/serial/serial_ar933x.h
@@ -0,0 +1,69 @@
+/*
+ *  Atheros AR933X UART defines
+ *
+ *  Copyright (C) 2011 Gabor Juhos <juhosg@openwrt.org>
+ *
+ *  This program is free software; you can redistribute it and/or modify it
+ *  under the terms of the GNU General Public License version 2 as published
+ *  by the Free Software Foundation.
+ */
+
+#ifndef __AR933X_UART_H
+#define __AR933X_UART_H
+
+#include <linux/bitops.h>
+
+#define AR933X_UART_REGS_SIZE		20
+#define AR933X_UART_FIFO_SIZE		16
+
+#define AR933X_UART_DATA_REG		0x00
+#define AR933X_UART_CS_REG		0x04
+#define AR933X_UART_CLOCK_REG		0x08
+#define AR933X_UART_INT_REG		0x0c
+#define AR933X_UART_INT_EN_REG		0x10
+
+#define AR933X_UART_DATA_TX_RX_MASK	0xff
+#define AR933X_UART_DATA_RX_CSR		BIT(8)
+#define AR933X_UART_DATA_TX_CSR		BIT(9)
+
+#define AR933X_UART_CS_PARITY_S		0
+#define AR933X_UART_CS_PARITY_M		0x3
+#define	  AR933X_UART_CS_PARITY_NONE	0
+#define	  AR933X_UART_CS_PARITY_ODD	1
+#define	  AR933X_UART_CS_PARITY_EVEN	2
+#define AR933X_UART_CS_IF_MODE_S	2
+#define AR933X_UART_CS_IF_MODE_M	0x3
+#define	  AR933X_UART_CS_IF_MODE_NONE	0
+#define	  AR933X_UART_CS_IF_MODE_DTE	1
+#define	  AR933X_UART_CS_IF_MODE_DCE	2
+#define AR933X_UART_CS_FLOW_CTRL_S	4
+#define AR933X_UART_CS_FLOW_CTRL_M	0x3
+#define AR933X_UART_CS_DMA_EN		BIT(6)
+#define AR933X_UART_CS_TX_READY_ORIDE	BIT(7)
+#define AR933X_UART_CS_RX_READY_ORIDE	BIT(8)
+#define AR933X_UART_CS_TX_READY		BIT(9)
+#define AR933X_UART_CS_RX_BREAK		BIT(10)
+#define AR933X_UART_CS_TX_BREAK		BIT(11)
+#define AR933X_UART_CS_HOST_INT		BIT(12)
+#define AR933X_UART_CS_HOST_INT_EN	BIT(13)
+#define AR933X_UART_CS_TX_BUSY		BIT(14)
+#define AR933X_UART_CS_RX_BUSY		BIT(15)
+
+#define AR933X_UART_CLOCK_STEP_M	0xffff
+#define AR933X_UART_CLOCK_SCALE_M	0xfff
+#define AR933X_UART_CLOCK_SCALE_S	16
+#define AR933X_UART_CLOCK_STEP_M	0xffff
+
+#define AR933X_UART_INT_RX_VALID	BIT(0)
+#define AR933X_UART_INT_TX_READY	BIT(1)
+#define AR933X_UART_INT_RX_FRAMING_ERR	BIT(2)
+#define AR933X_UART_INT_RX_OFLOW_ERR	BIT(3)
+#define AR933X_UART_INT_TX_OFLOW_ERR	BIT(4)
+#define AR933X_UART_INT_RX_PARITY_ERR	BIT(5)
+#define AR933X_UART_INT_RX_BREAK_ON	BIT(6)
+#define AR933X_UART_INT_RX_BREAK_OFF	BIT(7)
+#define AR933X_UART_INT_RX_FULL		BIT(8)
+#define AR933X_UART_INT_TX_EMPTY	BIT(9)
+#define AR933X_UART_INT_ALLINTS		0x3ff
+
+#endif /* __AR933X_UART_H */
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
