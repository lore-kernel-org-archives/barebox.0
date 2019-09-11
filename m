Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7x1p-0001Se-IX
 for barebox@lists.infradead.org; Wed, 11 Sep 2019 07:27:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 11 Sep 2019 09:26:48 +0200
Message-Id: <20190911072649.19017-2-s.hauer@pengutronix.de>
In-Reply-To: <20190911072649.19017-1-s.hauer@pengutronix.de>
References: <20190911072649.19017-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] serial: Remove blackfin driver
To: Barebox List <barebox@lists.infradead.org>

The blackfin architecture has been removed from barebox. Remove the
serial driver as well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/Kconfig           |   5 --
 drivers/serial/Makefile          |   1 -
 drivers/serial/serial_blackfin.c | 132 -------------------------------
 3 files changed, 138 deletions(-)
 delete mode 100644 drivers/serial/serial_blackfin.c

diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index f12ff93f6a..2e593ba744 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -69,11 +69,6 @@ config DRIVER_SERIAL_MPC5XXX
 	default y
 	bool "MPC5200 serial driver"
 
-config DRIVER_SERIAL_BLACKFIN
-	depends on BLACKFIN
-	default y
-	bool "Blackfin serial driver"
-
 config DRIVER_SERIAL_CLPS711X
 	depends on ARCH_CLPS711X
 	default y
diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
index 4174cc1ffb..1c21ee773a 100644
--- a/drivers/serial/Makefile
+++ b/drivers/serial/Makefile
@@ -8,7 +8,6 @@ obj-$(CONFIG_DRIVER_SERIAL_ATMEL)		+= atmel.o
 obj-$(CONFIG_DRIVER_SERIAL_NETX)		+= serial_netx.o
 obj-$(CONFIG_DRIVER_SERIAL_LINUX_CONSOLE)	+= linux_console.o
 obj-$(CONFIG_DRIVER_SERIAL_MPC5XXX)		+= serial_mpc5xxx.o
-obj-$(CONFIG_DRIVER_SERIAL_BLACKFIN)		+= serial_blackfin.o
 obj-$(CONFIG_DRIVER_SERIAL_CLPS711X)		+= serial_clps711x.o
 obj-$(CONFIG_DRIVER_SERIAL_NS16550)		+= serial_ns16550.o
 obj-$(CONFIG_DRIVER_SERIAL_PL010)		+= serial_pl010.o
diff --git a/drivers/serial/serial_blackfin.c b/drivers/serial/serial_blackfin.c
deleted file mode 100644
index 2122226734..0000000000
--- a/drivers/serial/serial_blackfin.c
+++ /dev/null
@@ -1,132 +0,0 @@
-/*
- * (C) Copyright 2005
- * Sascha Hauer, Pengutronix <s.hauer@pengutronix.de>
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#include <common.h>
-#include <driver.h>
-#include <init.h>
-#include <malloc.h>
-#include <io.h>
-#include <asm/blackfin.h>
-
-#define UART_IER_ERBFI		0x01
-#define UART_IER_ETBEI		0x02
-#define UART_IER_ELSI		0x04
-#define UART_IER_EDDSI		0x08
-
-#define UART_IIR_NOINT		0x01
-#define UART_IIR_STATUS		0x06
-#define UART_IIR_LSR		0x06
-#define UART_IIR_RBR		0x04
-#define UART_IIR_THR		0x02
-#define UART_IIR_MSR		0x00
-
-#define UART_LCR_WLS5		0
-#define UART_LCR_WLS6		0x01
-#define UART_LCR_WLS7		0x02
-#define UART_LCR_WLS8		0x03
-#define UART_LCR_STB		0x04
-#define UART_LCR_PEN		0x08
-#define UART_LCR_EPS		0x10
-#define UART_LCR_SP		0x20
-#define UART_LCR_SB		0x40
-#define UART_LCR_DLAB		0x80
-
-#define UART_LSR_DR		0x01
-#define UART_LSR_OE		0x02
-#define UART_LSR_PE		0x04
-#define UART_LSR_FE		0x08
-#define UART_LSR_BI		0x10
-#define UART_LSR_THRE		0x20
-#define UART_LSR_TEMT		0x40
-
-#define UART_GCTL_UCEN		0x01
-
-static int blackfin_serial_setbaudrate(struct console_device *cdev, int baudrate)
-{
-	int divisor, oldlcr;
-
-	oldlcr = readw(UART_LCR);
-
-	divisor = (get_sclk() + (baudrate * 0)) / (baudrate * 16);
-
-	/* Set DLAB in LCR to Access DLL and DLH */
-	writew(UART_LCR_DLAB, UART_LCR);
-
-	writew(divisor & 0xff, UART_DLL);
-	writew((divisor >> 8) & 0xff, UART_DLH);
-
-	/* Clear DLAB in LCR to Access THR RBR IER */
-	writew(oldlcr, UART_LCR);
-
-	return 0;
-}
-
-static int blackfin_serial_init_port(struct console_device *cdev)
-{
-	/* Enable UART */
-	writew(UART_GCTL_UCEN, UART_GCTL);
-
-	/* Set LCR to Word Lengh 8-bit word select */
-	writew(UART_LCR_WLS8, UART_LCR);
-
-	return 0;
-}
-
-static void blackfin_serial_putc(struct console_device *cdev, char c)
-{
-	while (!(readw(UART_LSR) & UART_LSR_TEMT));
-
-	writew(c, UART_THR);
-}
-
-static int blackfin_serial_getc(struct console_device *cdev)
-{
-	while (!(readw(UART_LSR) & UART_LSR_DR));
-
-	return readw(UART_RBR);
-}
-
-static int blackfin_serial_tstc(struct console_device *cdev)
-{
-	return (readw(UART_LSR) & UART_LSR_DR) ? 1 : 0;
-}
-
-static int blackfin_serial_probe(struct device_d *dev)
-{
-	struct console_device *cdev;
-
-	cdev = xzalloc(sizeof(struct console_device));
-	cdev->dev = dev;
-	cdev->tstc = blackfin_serial_tstc;
-	cdev->putc = blackfin_serial_putc;
-	cdev->getc = blackfin_serial_getc;
-	cdev->setbrg = blackfin_serial_setbaudrate;
-
-	blackfin_serial_init_port(cdev);
-
-	console_register(cdev);
-
-	return 0;
-}
-
-static struct driver_d blackfin_serial_driver = {
-        .name  = "blackfin_serial",
-        .probe = blackfin_serial_probe,
-};
-console_platform_driver(blackfin_serial_driver);
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
