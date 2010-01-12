Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay1-v.mail.gandi.net ([217.70.178.75])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NUmWS-0005n2-0M
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 19:35:29 +0000
Received: from d4rwin.no-ip.org (139.Red-83-38-127.dynamicIP.rima-tde.net
	[83.38.127.139])
	by relay1-v.mail.gandi.net (Postfix) with ESMTP id 3F705362AF
	for <barebox@lists.infradead.org>; Tue, 12 Jan 2010 20:35:18 +0100 (CET)
Date: Tue, 12 Jan 2010 20:30:51 +0100
From: Matthias Kaehlcke <matthias@kaehlcke.net>
Message-ID: <20100112193051.GP14051@darwin>
MIME-Version: 1.0
Content-Disposition: inline
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/5] Add PrimeCell PL010 serial driver
To: barebox@lists.infradead.org

Added driver for ARM PrimeCell PL010 UART

Signed-off-by: Matthias Kaehlcke <matthias@kaehlcke.net>
---
 drivers/serial/Kconfig        |    7 ++
 drivers/serial/Makefile       |    2 +-
 drivers/serial/serial_pl010.c |  172 +++++++++++++++++++++++++++++++++++++++++
 drivers/serial/serial_pl010.h |  100 ++++++++++++++++++++++++
 4 files changed, 280 insertions(+), 1 deletions(-)
 create mode 100644 drivers/serial/serial_pl010.c
 create mode 100644 drivers/serial/serial_pl010.h

diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index b0ff5fa..8a5056b 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -47,6 +47,13 @@ config DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS
 	help
 	  Say Y here if you are using OMAP extensions to NS16550
 
+config DRIVER_SERIAL_PL010
+	depends on ARCH_EP93XX
+	default y
+	bool "ARM AMBA PL010 support"
+	help
+	  Enable this to get support for AMBA PL010 based serial devices
+
 config DRIVER_SERIAL_S3C24X0
 	bool "Samsung S3C24X0 serial driver"
 	depends on ARCH_S3C24xx
diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
index 8ab680d..9f203bb 100644
--- a/drivers/serial/Makefile
+++ b/drivers/serial/Makefile
@@ -3,7 +3,6 @@
 # s3c4510b_uart.o
 # serial_max3100.o
 # serial_pl010.o
-# serial_pl011.o
 # serial_xuartlite.o
 obj-$(CONFIG_DRIVER_SERIAL_ARM_DCC)		+= arm_dcc.o
 obj-$(CONFIG_DRIVER_SERIAL_IMX)			+= serial_imx.o
@@ -13,4 +12,5 @@ obj-$(CONFIG_DRIVER_SERIAL_LINUX_COMSOLE)	+= linux_console.o
 obj-$(CONFIG_DRIVER_SERIAL_MPC5XXX)		+= serial_mpc5xxx.o
 obj-$(CONFIG_DRIVER_SERIAL_BLACKFIN)		+= serial_blackfin.o
 obj-$(CONFIG_DRIVER_SERIAL_NS16550)		+= serial_ns16550.o
+obj-$(CONFIG_DRIVER_SERIAL_PL010)		+= serial_pl010.o
 obj-$(CONFIG_DRIVER_SERIAL_S3C24X0)		+= serial_s3c24x0.o
diff --git a/drivers/serial/serial_pl010.c b/drivers/serial/serial_pl010.c
new file mode 100644
index 0000000..1a6366f
--- /dev/null
+++ b/drivers/serial/serial_pl010.c
@@ -0,0 +1,172 @@
+/*
+ * Copyright (C) 2010 Matthias Kaehlcke <matthias@kaehlcke.net>
+ *
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
+#include <init.h>
+#include <malloc.h>
+#include <asm/io.h>
+#include "serial_pl010.h"
+
+static int pl010_setbaudrate(struct console_device *cdev, int baudrate)
+{
+	struct pl010_struct *pl010 = (struct pl010_struct *)cdev->dev->map_base;
+	unsigned int divisor;
+
+	switch (baudrate) {
+	case 9600:
+		divisor = UART_PL010_BAUD_9600;
+		break;
+
+	case 19200:
+		divisor = UART_PL010_BAUD_9600;
+		break;
+
+	case 38400:
+		divisor = UART_PL010_BAUD_38400;
+		break;
+
+	case 57600:
+		divisor = UART_PL010_BAUD_57600;
+		break;
+
+	case 115200:
+		divisor = UART_PL010_BAUD_115200;
+		break;
+
+	default:
+		divisor = UART_PL010_BAUD_38400;
+	}
+
+	writel((divisor & 0xf00) >> 8, &pl010->linctrlmid);
+	writel(divisor & 0xff, &pl010->linctrllow);
+
+	/* high register must always be written */
+	writel(readl(&pl010->linctrlhigh), &pl010->linctrlhigh);
+
+	return 0;
+}
+
+static int pl010_init_port(struct console_device *cdev)
+{
+	struct pl010_struct *pl010 = (struct pl010_struct *)cdev->dev->map_base;
+
+	/*
+	 * First, disable everything.
+	 */
+	writel(0x00, &pl010->ctrl);
+
+	/*
+	 * Set the UART to be 8 bits, 1 stop bit, no parity, fifo enabled.
+	 */
+	writel(UART_PL010_LCRH_WLEN_8 | UART_PL010_LCRH_FEN,
+		&pl010->linctrlhigh);
+
+	/*
+	 * Finally, enable the UART
+	 */
+	writel(UART_PL010_CR_UARTEN, &pl010->ctrl);
+
+	return 0;
+}
+
+static void pl010_putc(struct console_device *cdev, char c)
+{
+	struct pl010_struct *pl010 = (struct pl010_struct *)cdev->dev->map_base;
+
+	/* Wait until there is space in the FIFO */
+	while (readl(&pl010->flag) & UART_PL010_FR_TXFF)
+		; /* noop */
+
+	/* Send the character */
+	writel(c, &pl010->data);
+}
+
+static int pl010_getc(struct console_device *cdev)
+{
+	struct pl010_struct *pl010 = (struct pl010_struct *)cdev->dev->map_base;
+	unsigned int data;
+
+	/* Wait until there is data in the FIFO */
+	while (readl(&pl010->flag) & UART_PL010_FR_RXFE)
+		; /* noop */
+
+	data = readl(&pl010->data);
+
+	/* Check for an error flag */
+	if (data & 0xFFFFFF00) {
+		/* Clear the error */
+		writel(0xFFFFFFFF, &pl010->errclr);
+		return -1;
+	}
+
+	return (int)data;
+}
+
+static int pl010_tstc(struct console_device *cdev)
+{
+	struct pl010_struct *pl010 = (struct pl010_struct *)cdev->dev->map_base;
+
+	return !(readl(&pl010->flag) & UART_PL010_FR_RXFE);
+}
+
+static int pl010_probe(struct device_d *dev)
+{
+	struct console_device *cdev;
+
+	cdev = malloc(sizeof(struct console_device));
+	dev->type_data = cdev;
+	cdev->dev = dev;
+	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
+	cdev->tstc = pl010_tstc;
+	cdev->putc = pl010_putc;
+	cdev->getc = pl010_getc;
+	cdev->setbrg = pl010_setbaudrate;
+
+	pl010_init_port(cdev);
+
+	console_register(cdev);
+
+	return 0;
+}
+
+static struct driver_d pl010_driver = {
+	.name  = "pl010_serial",
+	.probe = pl010_probe,
+};
+
+static int pl010_init(void)
+{
+	register_driver(&pl010_driver);
+
+	return 0;
+}
+
+console_initcall(pl010_init);
diff --git a/drivers/serial/serial_pl010.h b/drivers/serial/serial_pl010.h
new file mode 100644
index 0000000..6124e0e
--- /dev/null
+++ b/drivers/serial/serial_pl010.h
@@ -0,0 +1,100 @@
+/*
+ * Copyright (C) 2010 Matthias Kaehlcke <matthias@kaehlcke.net>
+ *
+ * (C) Copyright 2003, 2004
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
+struct hldc_struct {
+	uint32_t ctrl;
+	uint32_t addmtchval;
+	uint32_t addmask;
+	uint32_t rxinfobuf;
+	uint32_t sts;
+};
+
+struct pl010_struct {
+	uint32_t data;
+	union {
+		uint32_t rxsts;
+		uint32_t errclr;
+	};
+	uint32_t linctrlhigh;
+	uint32_t linctrlmid;
+	uint32_t linctrllow;
+	uint32_t ctrl;
+	uint32_t flag;
+	union {
+		uint32_t intid;
+		uint32_t intclr;
+	};
+	uint32_t not_used0[2];
+	uint32_t dmactrl;
+	uint32_t not_used1[53];
+	uint32_t modemctrl;
+	uint32_t modemsts;
+	uint32_t not_used2[65];
+	struct hldc_struct hldc;
+};
+
+#define UART_PL010_RSR_OE	(1 << 3)
+#define UART_PL010_RSR_BE	(1 << 2)
+#define UART_PL010_RSR_PE	(1 << 1)
+#define UART_PL010_RSR_FE	(1 << 0)
+
+#define UART_PL010_FR_TXFE	(1 << 7)
+#define UART_PL010_FR_RXFF	(1 << 6)
+#define UART_PL010_FR_TXFF	(1 << 5)
+#define UART_PL010_FR_RXFE	(1 << 4)
+#define UART_PL010_FR_BUSY	(1 << 3)
+#define UART_PL010_FR_TMSK	(UART_PL010_FR_TXFF + UART_PL010_FR_BUSY)
+
+#define UART_PL010_CR_LPE	(1 << 7)
+#define UART_PL010_CR_RTIE	(1 << 6)
+#define UART_PL010_CR_TIE	(1 << 5)
+#define UART_PL010_CR_RIE	(1 << 4)
+#define UART_PL010_CR_MSIE	(1 << 3)
+#define UART_PL010_CR_IIRLP	(1 << 2)
+#define UART_PL010_CR_SIREN	(1 << 1)
+#define UART_PL010_CR_UARTEN	(1 << 0)
+
+#define UART_PL010_LCRH_WLEN_8	(3 << 5)
+#define UART_PL010_LCRH_WLEN_7	(2 << 5)
+#define UART_PL010_LCRH_WLEN_6	(1 << 5)
+#define UART_PL010_LCRH_WLEN_5	(0 << 5)
+#define UART_PL010_LCRH_FEN	(1 << 4)
+#define UART_PL010_LCRH_STP2	(1 << 3)
+#define UART_PL010_LCRH_EPS	(1 << 2)
+#define UART_PL010_LCRH_PEN	(1 << 1)
+#define UART_PL010_LCRH_BRK	(1 << 0)
+
+#define UART_PL010_BAUD_460800	1
+#define UART_PL010_BAUD_230400	3
+#define UART_PL010_BAUD_115200	7
+#define UART_PL010_BAUD_57600	15
+#define UART_PL010_BAUD_38400	23
+#define UART_PL010_BAUD_19200	47
+#define UART_PL010_BAUD_14400	63
+#define UART_PL010_BAUD_9600	95
+#define UART_PL010_BAUD_4800	191
+#define UART_PL010_BAUD_2400	383
+#define UART_PL010_BAUD_1200	767
-- 
1.6.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
