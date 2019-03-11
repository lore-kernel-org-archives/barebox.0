Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3HHO-0008Ep-8W
 for barebox@lists.infradead.org; Mon, 11 Mar 2019 09:31:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Mar 2019 10:31:21 +0100
Message-Id: <20190311093123.7956-13-s.hauer@pengutronix.de>
In-Reply-To: <20190311093123.7956-1-s.hauer@pengutronix.de>
References: <20190311093123.7956-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 12/14] ARM: stm32mp1: Add serial driver
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/Kconfig        |   4 +
 drivers/serial/Makefile       |   1 +
 drivers/serial/serial_stm32.c | 246 ++++++++++++++++++++++++++++++++++
 drivers/serial/serial_stm32.h |  48 +++++++
 4 files changed, 299 insertions(+)
 create mode 100644 drivers/serial/serial_stm32.c
 create mode 100644 drivers/serial/serial_stm32.h

diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index d462c11c16..f12ff93f6a 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -37,6 +37,10 @@ config DRIVER_SERIAL_IMX
 	default y
 	bool "i.MX serial driver"
 
+config DRIVER_SERIAL_STM32
+	depends on ARCH_STM32MP
+	bool "stm32mp serial driver"
+
 config DRIVER_SERIAL_STM378X
 	depends on ARCH_MXS
 	default y
diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
index 3d9f735ed2..4174cc1ffb 100644
--- a/drivers/serial/Makefile
+++ b/drivers/serial/Makefile
@@ -13,6 +13,7 @@ obj-$(CONFIG_DRIVER_SERIAL_CLPS711X)		+= serial_clps711x.o
 obj-$(CONFIG_DRIVER_SERIAL_NS16550)		+= serial_ns16550.o
 obj-$(CONFIG_DRIVER_SERIAL_PL010)		+= serial_pl010.o
 obj-$(CONFIG_DRIVER_SERIAL_S3C)			+= serial_s3c.o
+obj-$(CONFIG_DRIVER_SERIAL_STM32)		+= serial_stm32.o
 obj-$(CONFIG_DRIVER_SERIAL_ALTERA)		+= serial_altera.o
 obj-$(CONFIG_DRIVER_SERIAL_ALTERA_JTAG)		+= serial_altera_jtag.o
 obj-$(CONFIG_DRIVER_SERIAL_PXA)			+= serial_pxa.o
diff --git a/drivers/serial/serial_stm32.c b/drivers/serial/serial_stm32.c
new file mode 100644
index 0000000000..a84e64e974
--- /dev/null
+++ b/drivers/serial/serial_stm32.c
@@ -0,0 +1,246 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2016, STMicroelectronics - All Rights Reserved
+ * Author(s): Vikas Manocha, <vikas.manocha@st.com> for STMicroelectronics.
+ */
+
+#include <common.h>
+#include <console.h>
+#include <io.h>
+#include <linux/clk.h>
+#include <init.h>
+#include <driver.h>
+#include "serial_stm32.h"
+
+struct stm32_uart_info {
+	u8 uart_enable_bit;	/* UART_CR1_UE */
+	bool stm32f4;		/* true for STM32F4, false otherwise */
+	bool has_fifo;
+};
+
+struct stm32_uart {
+	struct console_device cdev;
+	void __iomem *base;
+	struct clk *clk;
+	bool stm32f4;
+	bool has_fifo;
+	int uart_enable_bit;
+};
+
+static struct stm32_uart *to_stm32_uart(struct console_device *cdev)
+{
+	return container_of(cdev, struct stm32_uart, cdev);
+}
+
+static int stm32_serial_setbaudrate(struct console_device *cdev, int baudrate)
+{
+	struct stm32_uart *stm32 = to_stm32_uart(cdev);
+	void __iomem *base = stm32->base;
+	bool stm32f4 = stm32->stm32f4;
+	u32 int_div, mantissa, fraction, oversampling;
+	unsigned long clock_rate;
+
+	clock_rate = clk_get_rate(stm32->clk);
+
+	int_div = DIV_ROUND_CLOSEST(clock_rate, baudrate);
+
+	if (int_div < 16) {
+		oversampling = 8;
+		setbits_le32(base + CR1_OFFSET(stm32f4), USART_CR1_OVER8);
+	} else {
+		oversampling = 16;
+		clrbits_le32(base + CR1_OFFSET(stm32f4), USART_CR1_OVER8);
+	}
+
+	mantissa = (int_div / oversampling) << USART_BRR_M_SHIFT;
+	fraction = int_div % oversampling;
+
+	writel(mantissa | fraction, base + BRR_OFFSET(stm32f4));
+
+	return 0;
+}
+
+static int stm32_serial_getc(struct console_device *cdev)
+{
+	struct stm32_uart *stm32 = to_stm32_uart(cdev);
+	void __iomem *base = stm32->base;
+	bool stm32f4 = stm32->stm32f4;
+	u32 isr = readl(base + ISR_OFFSET(stm32f4));
+
+	if ((isr & USART_ISR_RXNE) == 0)
+		return -EAGAIN;
+
+	if (isr & (USART_ISR_PE | USART_ISR_ORE)) {
+		if (!stm32f4)
+			setbits_le32(base + ICR_OFFSET,
+				     USART_ICR_PCECF | USART_ICR_ORECF);
+		else
+			readl(base + RDR_OFFSET(stm32f4));
+		return -EIO;
+	}
+
+	return readl(base + RDR_OFFSET(stm32f4));
+}
+
+static void stm32_serial_putc(struct console_device *cdev, char c)
+{
+	struct stm32_uart *stm32 = to_stm32_uart(cdev);
+	void __iomem *base = stm32->base;
+	bool stm32f4 = stm32->stm32f4;
+
+	while ((readl(base + ISR_OFFSET(stm32f4)) & USART_ISR_TXE) == 0);
+
+	writel(c, base + TDR_OFFSET(stm32f4));
+}
+
+static int stm32_serial_tstc(struct console_device *cdev)
+{
+	struct stm32_uart *stm32 = to_stm32_uart(cdev);
+	void __iomem *base = stm32->base;
+	bool stm32f4 = stm32->stm32f4;
+
+	return readl(base + ISR_OFFSET(stm32f4)) & USART_ISR_RXNE ? 1 : 0;
+}
+
+static void stm32_serial_flush(struct console_device *cdev)
+{
+	struct stm32_uart *stm32 = to_stm32_uart(cdev);
+	void __iomem *base = stm32->base;
+	bool stm32f4 = stm32->stm32f4;
+
+	while (!(readl(base + ISR_OFFSET(stm32f4)) & USART_ISR_TXE));
+}
+
+static void stm32_serial_init(struct console_device *cdev)
+{
+	struct stm32_uart *stm32 = to_stm32_uart(cdev);
+	void __iomem *base = stm32->base;
+	bool stm32f4 = stm32->stm32f4;
+	u8 uart_enable_bit = stm32->uart_enable_bit;
+	u32 cr1;
+
+	cr1 = readl(base + CR1_OFFSET(stm32f4));
+
+	/* Disable uart-> enable fifo -> enable uart */
+	cr1 &= ~(USART_CR1_RE | USART_CR1_TE | BIT(uart_enable_bit));
+
+	writel(cr1, base + CR1_OFFSET(stm32f4));
+
+	if (stm32->has_fifo)
+		cr1 |= USART_CR1_FIFOEN;
+
+	cr1 &= ~(USART_CR1_PCE | USART_CR1_PS | USART_CR1_M1 | USART_CR1_M0);
+
+	cr1 |= USART_CR1_RE | USART_CR1_TE | BIT(uart_enable_bit);
+
+	writel(cr1, base + CR1_OFFSET(stm32f4));
+}
+
+static int stm32_serial_probe(struct device_d *dev)
+{
+	int ret;
+	struct console_device *cdev;
+	struct stm32_uart *stm32;
+	const char *devname;
+	struct resource *res;
+	struct stm32_uart_info *info;
+
+	ret = dev_get_drvdata(dev, (const void **)&info);
+	if (ret)
+		return ret;
+
+	stm32 = xzalloc(sizeof(*stm32));
+	cdev = &stm32->cdev;
+
+	res = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(res)) {
+		ret = PTR_ERR(res);
+		goto err_free;
+	}
+	stm32->base = IOMEM(res->start);
+
+	stm32->has_fifo = info->has_fifo;
+	stm32->stm32f4 = info->stm32f4;
+	stm32->uart_enable_bit = info->uart_enable_bit;
+
+	stm32->clk = clk_get(dev, NULL);
+	if (IS_ERR(stm32->clk)) {
+		ret = PTR_ERR(stm32->clk);
+		dev_err(dev, "Failed to get UART clock %d\n", ret);
+		goto io_release;
+	}
+
+	ret = clk_enable(stm32->clk);
+	if (ret) {
+		dev_err(dev, "Failed to enable UART clock %d\n", ret);
+		goto io_release;
+	}
+
+	cdev->dev    = dev;
+	cdev->tstc   = stm32_serial_tstc;
+	cdev->putc   = stm32_serial_putc;
+	cdev->getc   = stm32_serial_getc;
+	cdev->flush  = stm32_serial_flush;
+	cdev->setbrg = stm32_serial_setbaudrate;
+
+	if (dev->device_node) {
+		devname = of_alias_get(dev->device_node);
+		if (devname) {
+			cdev->devname = xstrdup(devname);
+			cdev->devid   = DEVICE_ID_SINGLE;
+		}
+	}
+
+	stm32_serial_init(cdev);
+
+	ret = console_register(cdev);
+	if (!ret)
+		return 0;
+
+	clk_put(stm32->clk);
+io_release:
+	release_region(res);
+err_free:
+	free(stm32);
+
+	return ret;
+}
+
+struct stm32_uart_info stm32f4_info = {
+	.stm32f4 = true,
+	.uart_enable_bit = 13,
+	.has_fifo = false,
+};
+
+struct stm32_uart_info stm32f7_info = {
+	.uart_enable_bit = 0,
+	.stm32f4 = false,
+	.has_fifo = true,
+};
+
+struct stm32_uart_info stm32h7_info = {
+	.uart_enable_bit = 0,
+	.stm32f4 = false,
+	.has_fifo = true,
+};
+
+static struct of_device_id stm32_serial_dt_ids[] = {
+	{
+		.compatible = "st,stm32-uart",
+		.data = &stm32f4_info
+	}, {
+		.compatible = "st,stm32f7-uart",
+		.data = &stm32f7_info
+	}, {
+		.compatible = "st,stm32h7-uart",
+		.data = &stm32h7_info
+	}, {
+	}
+};
+
+static struct driver_d stm32_serial_driver = {
+	.name   = "stm32-serial",
+	.probe  = stm32_serial_probe,
+	.of_compatible = DRV_OF_COMPAT(stm32_serial_dt_ids),
+};
+console_platform_driver(stm32_serial_driver);
diff --git a/drivers/serial/serial_stm32.h b/drivers/serial/serial_stm32.h
new file mode 100644
index 0000000000..dd3e930c93
--- /dev/null
+++ b/drivers/serial/serial_stm32.h
@@ -0,0 +1,48 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Copyright (C) 2016, STMicroelectronics - All Rights Reserved
+ * Author(s): Vikas Manocha, <vikas.manocha@st.com> for STMicroelectronics.
+ */
+
+#ifndef _SERIAL_STM32_
+#define _SERIAL_STM32_
+
+#define CR1_OFFSET(x)	(x ? 0x0c : 0x00)
+#define CR3_OFFSET(x)	(x ? 0x14 : 0x08)
+#define BRR_OFFSET(x)	(x ? 0x08 : 0x0c)
+#define ISR_OFFSET(x)	(x ? 0x00 : 0x1c)
+
+#define ICR_OFFSET	0x20
+
+/*
+ * STM32F4 has one Data Register (DR) for received or transmitted
+ * data, so map Receive Data Register (RDR) and Transmit Data
+ * Register (TDR) at the same offset
+ */
+#define RDR_OFFSET(x)	(x ? 0x04 : 0x24)
+#define TDR_OFFSET(x)	(x ? 0x04 : 0x28)
+
+#define USART_CR1_FIFOEN		BIT(29)
+#define USART_CR1_M1			BIT(28)
+#define USART_CR1_OVER8			BIT(15)
+#define USART_CR1_M0			BIT(12)
+#define USART_CR1_PCE			BIT(10)
+#define USART_CR1_PS			BIT(9)
+#define USART_CR1_TE			BIT(3)
+#define USART_CR1_RE			BIT(2)
+
+#define USART_CR3_OVRDIS		BIT(12)
+
+#define USART_ISR_TXE			BIT(7)
+#define USART_ISR_RXNE			BIT(5)
+#define USART_ISR_ORE			BIT(3)
+#define USART_ISR_PE			BIT(0)
+
+#define USART_BRR_F_MASK		GENMASK(7, 0)
+#define USART_BRR_M_SHIFT		4
+#define USART_BRR_M_MASK		GENMASK(15, 4)
+
+#define USART_ICR_ORECF			BIT(3)
+#define USART_ICR_PCECF			BIT(0)
+
+#endif
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
