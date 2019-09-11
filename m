Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7xfl-0007iD-EJ
 for barebox@lists.infradead.org; Wed, 11 Sep 2019 08:08:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 11 Sep 2019 10:07:29 +0200
Message-Id: <20190911080731.23102-6-s.hauer@pengutronix.de>
In-Reply-To: <20190911080731.23102-1-s.hauer@pengutronix.de>
References: <20190911080731.23102-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/8] serial: Remove NETX serial driver
To: Barebox List <barebox@lists.infradead.org>

NETX support has been removed from barebox. Remove the serial driver as
well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/Kconfig       |   5 --
 drivers/serial/Makefile      |   1 -
 drivers/serial/serial_netx.c | 161 -----------------------------------
 3 files changed, 167 deletions(-)
 delete mode 100644 drivers/serial/serial_netx.c

diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index f12ff93f6a..c5bce2fa46 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -50,11 +50,6 @@ config DRIVER_SERIAL_AUART
 	depends on ARCH_MXS
 	bool "i.MX23/i.MX28 application UART serial driver"
 
-config DRIVER_SERIAL_NETX
-	depends on ARCH_NETX
-	default y
-	bool "Netx serial driver"
-
 config DRIVER_SERIAL_LINUX_CONSOLE
 	depends on LINUX
 	default y
diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
index 4174cc1ffb..993e5d6f2d 100644
--- a/drivers/serial/Makefile
+++ b/drivers/serial/Makefile
@@ -5,7 +5,6 @@ obj-$(CONFIG_DRIVER_SERIAL_EFI)			+= serial_efi.o
 obj-$(CONFIG_DRIVER_SERIAL_IMX)			+= serial_imx.o
 obj-$(CONFIG_DRIVER_SERIAL_STM378X)		+= stm-serial.o
 obj-$(CONFIG_DRIVER_SERIAL_ATMEL)		+= atmel.o
-obj-$(CONFIG_DRIVER_SERIAL_NETX)		+= serial_netx.o
 obj-$(CONFIG_DRIVER_SERIAL_LINUX_CONSOLE)	+= linux_console.o
 obj-$(CONFIG_DRIVER_SERIAL_MPC5XXX)		+= serial_mpc5xxx.o
 obj-$(CONFIG_DRIVER_SERIAL_BLACKFIN)		+= serial_blackfin.o
diff --git a/drivers/serial/serial_netx.c b/drivers/serial/serial_netx.c
deleted file mode 100644
index 55ed89bf92..0000000000
--- a/drivers/serial/serial_netx.c
+++ /dev/null
@@ -1,161 +0,0 @@
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
-#include <mach/netx-regs.h>
-#include <driver.h>
-#include <init.h>
-#include <malloc.h>
-#include <io.h>
-
-enum uart_regs {
-	UART_DR              = 0x00,
-	UART_SR              = 0x04,
-	UART_LINE_CR         = 0x08,
-	UART_BAUDDIV_MSB     = 0x0c,
-	UART_BAUDDIV_LSB     = 0x10,
-	UART_CR              = 0x14,
-	UART_FR              = 0x18,
-	UART_IIR             = 0x1c,
-	UART_ILPR            = 0x20,
-	UART_RTS_CR          = 0x24,
-	UART_RTS_LEAD        = 0x28,
-	UART_RTS_TRAIL       = 0x2c,
-	UART_DRV_ENABLE      = 0x30,
-	UART_BRM_CR          = 0x34,
-	UART_RXFIFO_IRQLEVEL = 0x38,
-	UART_TXFIFO_IRQLEVEL = 0x3c,
-};
-
-#define LINE_CR_5BIT	(0<<5)
-#define LINE_CR_6BIT    (1<<5)
-#define LINE_CR_7BIT    (2<<5)
-#define LINE_CR_8BIT    (3<<5)
-#define LINE_CR_FEN	(1<<4)
-
-#define CR_UARTEN	(1<<0)
-
-#define FR_TXFE (1<<7)
-#define FR_RXFF (1<<6)
-#define FR_TXFF (1<<5)
-#define FR_RXFE (1<<4)
-#define FR_BUSY (1<<3)
-#define FR_DCD  (1<<2)
-#define FR_DSR  (1<<1)
-#define FR_CTS  (1<<0)
-
-#define DRV_ENABLE_TX  (1<<1)
-#define DRV_ENABLE_RTS (1<<0)
-
-#define BRM_CR_BAUD_RATE_MODE (1<<0)
-
-static int netx_serial_init_port(struct console_device *cdev)
-{
-	struct device_d *dev = cdev->dev;
-	void __iomem *base = dev->priv;
-	unsigned int divisor;
-
-	/* disable uart */
-	writel(0, base + UART_CR);
-	writel(BRM_CR_BAUD_RATE_MODE, base + UART_BRM_CR);
-
-	/* set baud rate */
-	divisor = 115200 * 4096;
-	divisor /= 1000;
-	divisor *= 256;
-	divisor /= 100000;
-
-	writel(divisor & 0xff, base + UART_BAUDDIV_LSB);
-	writel((divisor >> 8) & 0xff, base + UART_BAUDDIV_MSB);
-	writel(DRV_ENABLE_TX | DRV_ENABLE_RTS, base + UART_DRV_ENABLE);
-
-	writel(LINE_CR_8BIT | LINE_CR_FEN, base + UART_LINE_CR);
-
-	/* Finally, enable the UART */
-	writel(CR_UARTEN, base + UART_CR);
-
-	return 0;
-}
-
-static int netx_serial_setbaudrate(struct console_device *cdev, int baudrate)
-{
-	return 0;
-}
-
-static void netx_serial_putc(struct console_device *cdev, char c)
-{
-	struct device_d *dev = cdev->dev;
-	void __iomem *base = dev->priv;
-
-	while (readl(base + UART_FR) & FR_TXFF );
-
-	writel(c, base + UART_DR);
-}
-
-static int netx_serial_getc(struct console_device *cdev)
-{
-	struct device_d *dev = cdev->dev;
-	void __iomem *base = dev->priv;
-	int c;
-
-	while (readl(base + UART_FR) & FR_RXFE );
-
-	c = readl(base + UART_DR);
-
-	readl(base + UART_SR);
-
-	return c;
-}
-
-static int netx_serial_tstc(struct console_device *cdev)
-{
-	struct device_d *dev = cdev->dev;
-	void __iomem *base = dev->priv;
-
-	return (readl(base + UART_FR) & FR_RXFE) ? 0 : 1;
-}
-
-static int netx_serial_probe(struct device_d *dev)
-{
-	struct resource *iores;
-	struct console_device *cdev;
-
-	cdev = xzalloc(sizeof(struct console_device));
-	iores = dev_request_mem_resource(dev, 0);
-	if (IS_ERR(iores))
-		return PTR_ERR(iores);
-	dev->priv = IOMEM(iores->start);
-	cdev->dev = dev;
-	cdev->tstc = netx_serial_tstc;
-	cdev->putc = netx_serial_putc;
-	cdev->getc = netx_serial_getc;
-	cdev->setbrg = netx_serial_setbaudrate;
-
-	netx_serial_init_port(cdev);
-
-	console_register(cdev);
-
-	return 0;
-}
-
-static struct driver_d netx_serial_driver = {
-        .name  = "netx_serial",
-        .probe = netx_serial_probe,
-};
-console_platform_driver(netx_serial_driver);
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
