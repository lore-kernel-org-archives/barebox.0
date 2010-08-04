Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OgT60-0006IQ-W6
	for barebox@lists.infradead.org; Wed, 04 Aug 2010 01:48:43 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  4 Aug 2010 03:43:56 +0200
Message-Id: <1280886239-19133-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1280886239-19133-2-git-send-email-plagnioj@jcrosoft.com>
References: <20100804014227.GA16337@game.jcrosoft.org>
	<1280886239-19133-1-git-send-email-plagnioj@jcrosoft.com>
	<1280886239-19133-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/6] amba: add pl011
To: barebox@lists.infradead.org
Cc: Andrea GALLO <andrea.gallo@stericsson.com>

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Andrea GALLO <andrea.gallo@stericsson.com>
Cc: Gael SALLES <gael.salles@stericsson.com>
---
 arch/arm/Kconfig            |    3 +
 drivers/serial/Kconfig      |    9 ++
 drivers/serial/Makefile     |    1 +
 drivers/serial/amba-pl011.c |  192 +++++++++++++++++++++++++++++++++++++++++++
 include/linux/amba/serial.h |  164 ++++++++++++++++++++++++++++++++++++
 5 files changed, 369 insertions(+), 0 deletions(-)
 create mode 100644 drivers/serial/amba-pl011.c
 create mode 100644 include/linux/amba/serial.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index ed05a89..53b7783 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -18,6 +18,9 @@ config ARM
 	select HAVE_CONFIGURABLE_TEXT_BASE
 	default y
 
+config ARM_AMBA
+	bool
+
 menu "System Type"
 
 choice
diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index 8a5056b..c7ea2d9 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -4,6 +4,15 @@ config DRIVER_SERIAL_ARM_DCC
 	depends on ARM
 	bool "ARM Debug Communications Channel (DCC) serial driver"
 
+config SERIAL_AMBA_PL011
+	bool "ARM AMBA PL011 serial port support"
+	depends on ARM_AMBA
+	help
+	  This selects the ARM(R) AMBA(R) PrimeCell PL011 UART.  If you have
+	  an Integrator/PP2, Integrator/CP or Versatile platform, say Y here.
+
+	  If unsure, say N.
+
 config DRIVER_SERIAL_IMX
 	depends on ARCH_IMX
 	default y
diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
index 9f203bb..959290e 100644
--- a/drivers/serial/Makefile
+++ b/drivers/serial/Makefile
@@ -5,6 +5,7 @@
 # serial_pl010.o
 # serial_xuartlite.o
 obj-$(CONFIG_DRIVER_SERIAL_ARM_DCC)		+= arm_dcc.o
+obj-$(CONFIG_SERIAL_AMBA_PL011) += amba-pl011.o
 obj-$(CONFIG_DRIVER_SERIAL_IMX)			+= serial_imx.o
 obj-$(CONFIG_DRIVER_SERIAL_ATMEL)		+= atmel.o
 obj-$(CONFIG_DRIVER_SERIAL_NETX)		+= serial_netx.o
diff --git a/drivers/serial/amba-pl011.c b/drivers/serial/amba-pl011.c
new file mode 100644
index 0000000..07508d0
--- /dev/null
+++ b/drivers/serial/amba-pl011.c
@@ -0,0 +1,192 @@
+/*
+ * (C) Copyright 2000
+ * Rob Taylor, Flying Pig Systems. robt@flyingpig.com.
+ *
+ * (C) Copyright 2004
+ * ARM Ltd.
+ * Philippe Robin, <philippe.robin@arm.com>
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
+
+/* Simple U-Boot driver for the PrimeCell PL010/PL011 UARTs */
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <malloc.h>
+#include <asm/io.h>
+#include <linux/amba/serial.h>
+#include <linux/clk.h>
+
+/*
+ * We wrap our port structure around the generic console_device.
+ */
+struct amba_uart_port {
+	struct console_device	uart;		/* uart */
+	struct clk		*clk;		/* uart clock */
+	u32			uartclk;
+};
+
+static inline struct amba_uart_port *
+to_amba_uart_port(struct console_device *uart)
+{
+	return container_of(uart, struct amba_uart_port, uart);
+}
+
+static int pl011_setbaudrate(struct console_device *cdev, int baudrate)
+{
+	struct device_d *dev = cdev->dev;
+	struct amba_uart_port *uart = to_amba_uart_port(cdev);
+	unsigned int temp;
+	unsigned int divider;
+	unsigned int remainder;
+	unsigned int fraction;
+
+	/*
+	 ** Set baud rate
+	 **
+	 ** IBRD = UART_CLK / (16 * BAUD_RATE)
+	 ** FBRD = ROUND((64 * MOD(UART_CLK,(16 * BAUD_RATE))) / (16 * BAUD_RATE))
+	 */
+	temp = 16 * baudrate;
+	divider = uart->uartclk / temp;
+	remainder = uart->uartclk % temp;
+	temp = (8 * remainder) / baudrate;
+	fraction = (temp >> 1) + (temp & 1);
+
+	writel(divider, dev->map_base + UART011_IBRD);
+	writel(fraction, dev->map_base + UART011_FBRD);
+
+	return 0;
+}
+
+static void pl011_putc(struct console_device *cdev, char c)
+{
+	struct device_d *dev = cdev->dev;
+
+	/* Wait until there is space in the FIFO */
+	while (readl(dev->map_base + UART01x_FR) & UART01x_FR_TXFF);
+
+	/* Send the character */
+	writel(c, dev->map_base + UART01x_DR);
+}
+
+static int pl011_getc(struct console_device *cdev)
+{
+	struct device_d *dev = cdev->dev;
+	unsigned int data;
+
+	/* Wait until there is data in the FIFO */
+	while (readl(dev->map_base + UART01x_FR) & UART01x_FR_RXFE);
+
+	data = readl(dev->map_base + UART01x_DR);
+
+	/* Check for an error flag */
+	if (data & 0xffffff00) {
+		/* Clear the error */
+		writel(0xffffffff, dev->map_base + UART01x_ECR);
+		return -1;
+	}
+
+	return (int)data;
+}
+
+static int pl011_tstc(struct console_device *cdev)
+{
+	struct device_d *dev = cdev->dev;
+
+	return !(readl(dev->map_base + UART01x_FR) & UART01x_FR_RXFE);
+}
+
+int pl011_init_port (struct console_device *cdev)
+{
+	struct device_d *dev = cdev->dev;
+	struct amba_uart_port *uart = to_amba_uart_port(cdev);
+
+	/*
+	 ** First, disable everything.
+	 */
+	writel(0x0, dev->map_base + UART011_CR);
+
+	/*
+	 * Try to enable the clock producer.
+	 */
+	clk_enable(uart->clk);
+
+	uart->uartclk = clk_get_rate(uart->clk);
+
+	/*
+	 * set baud rate
+	 */
+	pl011_setbaudrate(cdev, 115200);
+	/*
+	 ** Set the UART to be 8 bits, 1 stop bit, no parity, fifo enabled.
+	 */
+	writel((UART01x_LCRH_WLEN_8 | UART01x_LCRH_FEN),
+	       dev->map_base + UART011_LCRH);
+
+	/*
+	 ** Finally, enable the UART
+	 */
+	writel((UART01x_CR_UARTEN | UART011_CR_TXE | UART011_CR_RXE),
+	       dev->map_base + UART011_CR);
+
+	return 0;
+}
+
+static int pl011_probe(struct device_d *dev)
+{
+	struct amba_uart_port *uart;
+	struct console_device *cdev;
+
+	uart = malloc(sizeof(struct amba_uart_port));
+
+	uart->clk = clk_get(dev, NULL);
+
+	cdev = &uart->uart;
+	dev->type_data = cdev;
+	cdev->dev = dev;
+	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
+	cdev->tstc = pl011_tstc;
+	cdev->putc = pl011_putc;
+	cdev->getc = pl011_getc;
+	cdev->setbrg = pl011_setbaudrate;
+
+	pl011_init_port(cdev);
+
+	/* Enable UART */
+
+	console_register(cdev);
+
+	return 0;
+}
+
+static struct driver_d pl011_driver = {
+	.name = "uart-pl011",
+	.probe = pl011_probe,
+};
+
+static int pl011_init(void)
+{
+	register_driver(&pl011_driver);
+	return 0;
+}
+
+console_initcall(pl011_init);
diff --git a/include/linux/amba/serial.h b/include/linux/amba/serial.h
new file mode 100644
index 0000000..f4d7bf8
--- /dev/null
+++ b/include/linux/amba/serial.h
@@ -0,0 +1,164 @@
+/*
+ *  linux/include/linux/amba/serial.h
+ *
+ *  Internal header file for AMBA serial ports
+ *
+ *  Copyright (C) ARM Limited
+ *  Copyright (C) 2000 Deep Blue Solutions Ltd.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+#ifndef ASM_ARM_HARDWARE_SERIAL_AMBA_H
+#define ASM_ARM_HARDWARE_SERIAL_AMBA_H
+
+/* -------------------------------------------------------------------------------
+ *  From AMBA UART (PL010) Block Specification
+ * -------------------------------------------------------------------------------
+ *  UART Register Offsets.
+ */
+#define UART01x_DR		0x00	/* Data read or written from the interface. */
+#define UART01x_RSR		0x04	/* Receive status register (Read). */
+#define UART01x_ECR		0x04	/* Error clear register (Write). */
+#define UART010_LCRH		0x08	/* Line control register, high byte. */
+#define UART010_LCRM		0x0C	/* Line control register, middle byte. */
+#define UART010_LCRL		0x10	/* Line control register, low byte. */
+#define UART010_CR		0x14	/* Control register. */
+#define UART01x_FR		0x18	/* Flag register (Read only). */
+#define UART010_IIR		0x1C	/* Interrupt indentification register (Read). */
+#define UART010_ICR		0x1C	/* Interrupt clear register (Write). */
+#define UART01x_ILPR		0x20	/* IrDA low power counter register. */
+#define UART011_IBRD		0x24	/* Integer baud rate divisor register. */
+#define UART011_FBRD		0x28	/* Fractional baud rate divisor register. */
+#define UART011_LCRH		0x2c	/* Line control register. */
+#define UART011_CR		0x30	/* Control register. */
+#define UART011_IFLS		0x34	/* Interrupt fifo level select. */
+#define UART011_IMSC		0x38	/* Interrupt mask. */
+#define UART011_RIS		0x3c	/* Raw interrupt status. */
+#define UART011_MIS		0x40	/* Masked interrupt status. */
+#define UART011_ICR		0x44	/* Interrupt clear register. */
+#define UART011_DMACR		0x48	/* DMA control register. */
+
+#define UART011_DR_OE		(1 << 11)
+#define UART011_DR_BE		(1 << 10)
+#define UART011_DR_PE		(1 << 9)
+#define UART011_DR_FE		(1 << 8)
+
+#define UART01x_RSR_OE		0x08
+#define UART01x_RSR_BE		0x04
+#define UART01x_RSR_PE		0x02
+#define UART01x_RSR_FE		0x01
+
+#define UART011_FR_RI		0x100
+#define UART011_FR_TXFE		0x080
+#define UART011_FR_RXFF		0x040
+#define UART01x_FR_TXFF		0x020
+#define UART01x_FR_RXFE		0x010
+#define UART01x_FR_BUSY		0x008
+#define UART01x_FR_DCD		0x004
+#define UART01x_FR_DSR		0x002
+#define UART01x_FR_CTS		0x001
+#define UART01x_FR_TMSK		(UART01x_FR_TXFF + UART01x_FR_BUSY)
+
+#define UART011_CR_CTSEN	0x8000	/* CTS hardware flow control */
+#define UART011_CR_RTSEN	0x4000	/* RTS hardware flow control */
+#define UART011_CR_OUT2		0x2000	/* OUT2 */
+#define UART011_CR_OUT1		0x1000	/* OUT1 */
+#define UART011_CR_RTS		0x0800	/* RTS */
+#define UART011_CR_DTR		0x0400	/* DTR */
+#define UART011_CR_RXE		0x0200	/* receive enable */
+#define UART011_CR_TXE		0x0100	/* transmit enable */
+#define UART011_CR_LBE		0x0080	/* loopback enable */
+#define UART010_CR_RTIE		0x0040
+#define UART010_CR_TIE		0x0020
+#define UART010_CR_RIE		0x0010
+#define UART010_CR_MSIE		0x0008
+#define UART01x_CR_IIRLP	0x0004	/* SIR low power mode */
+#define UART01x_CR_SIREN	0x0002	/* SIR enable */
+#define UART01x_CR_UARTEN	0x0001	/* UART enable */
+
+#define UART011_LCRH_SPS	0x80
+#define UART01x_LCRH_WLEN_8	0x60
+#define UART01x_LCRH_WLEN_7	0x40
+#define UART01x_LCRH_WLEN_6	0x20
+#define UART01x_LCRH_WLEN_5	0x00
+#define UART01x_LCRH_FEN	0x10
+#define UART01x_LCRH_STP2	0x08
+#define UART01x_LCRH_EPS	0x04
+#define UART01x_LCRH_PEN	0x02
+#define UART01x_LCRH_BRK	0x01
+
+#define UART010_IIR_RTIS	0x08
+#define UART010_IIR_TIS		0x04
+#define UART010_IIR_RIS		0x02
+#define UART010_IIR_MIS		0x01
+
+#define UART011_IFLS_RX1_8	(0 << 3)
+#define UART011_IFLS_RX2_8	(1 << 3)
+#define UART011_IFLS_RX4_8	(2 << 3)
+#define UART011_IFLS_RX6_8	(3 << 3)
+#define UART011_IFLS_RX7_8	(4 << 3)
+#define UART011_IFLS_TX1_8	(0 << 0)
+#define UART011_IFLS_TX2_8	(1 << 0)
+#define UART011_IFLS_TX4_8	(2 << 0)
+#define UART011_IFLS_TX6_8	(3 << 0)
+#define UART011_IFLS_TX7_8	(4 << 0)
+/* special values for ST vendor with deeper fifo */
+#define UART011_IFLS_RX_HALF	(5 << 3)
+#define UART011_IFLS_TX_HALF	(5 << 0)
+
+#define UART011_OEIM		(1 << 10)	/* overrun error interrupt mask */
+#define UART011_BEIM		(1 << 9)	/* break error interrupt mask */
+#define UART011_PEIM		(1 << 8)	/* parity error interrupt mask */
+#define UART011_FEIM		(1 << 7)	/* framing error interrupt mask */
+#define UART011_RTIM		(1 << 6)	/* receive timeout interrupt mask */
+#define UART011_TXIM		(1 << 5)	/* transmit interrupt mask */
+#define UART011_RXIM		(1 << 4)	/* receive interrupt mask */
+#define UART011_DSRMIM		(1 << 3)	/* DSR interrupt mask */
+#define UART011_DCDMIM		(1 << 2)	/* DCD interrupt mask */
+#define UART011_CTSMIM		(1 << 1)	/* CTS interrupt mask */
+#define UART011_RIMIM		(1 << 0)	/* RI interrupt mask */
+
+#define UART011_OEIS		(1 << 10)	/* overrun error interrupt status */
+#define UART011_BEIS		(1 << 9)	/* break error interrupt status */
+#define UART011_PEIS		(1 << 8)	/* parity error interrupt status */
+#define UART011_FEIS		(1 << 7)	/* framing error interrupt status */
+#define UART011_RTIS		(1 << 6)	/* receive timeout interrupt status */
+#define UART011_TXIS		(1 << 5)	/* transmit interrupt status */
+#define UART011_RXIS		(1 << 4)	/* receive interrupt status */
+#define UART011_DSRMIS		(1 << 3)	/* DSR interrupt status */
+#define UART011_DCDMIS		(1 << 2)	/* DCD interrupt status */
+#define UART011_CTSMIS		(1 << 1)	/* CTS interrupt status */
+#define UART011_RIMIS		(1 << 0)	/* RI interrupt status */
+
+#define UART011_OEIC		(1 << 10)	/* overrun error interrupt clear */
+#define UART011_BEIC		(1 << 9)	/* break error interrupt clear */
+#define UART011_PEIC		(1 << 8)	/* parity error interrupt clear */
+#define UART011_FEIC		(1 << 7)	/* framing error interrupt clear */
+#define UART011_RTIC		(1 << 6)	/* receive timeout interrupt clear */
+#define UART011_TXIC		(1 << 5)	/* transmit interrupt clear */
+#define UART011_RXIC		(1 << 4)	/* receive interrupt clear */
+#define UART011_DSRMIC		(1 << 3)	/* DSR interrupt clear */
+#define UART011_DCDMIC		(1 << 2)	/* DCD interrupt clear */
+#define UART011_CTSMIC		(1 << 1)	/* CTS interrupt clear */
+#define UART011_RIMIC		(1 << 0)	/* RI interrupt clear */
+
+#define UART011_DMAONERR	(1 << 2)	/* disable dma on error */
+#define UART011_TXDMAE		(1 << 1)	/* enable transmit dma */
+#define UART011_RXDMAE		(1 << 0)	/* enable receive dma */
+
+#define UART01x_RSR_ANY		(UART01x_RSR_OE|UART01x_RSR_BE|UART01x_RSR_PE|UART01x_RSR_FE)
+#define UART01x_FR_MODEM_ANY	(UART01x_FR_DCD|UART01x_FR_DSR|UART01x_FR_CTS)
+
+#endif
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
