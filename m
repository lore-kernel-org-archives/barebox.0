Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x231.google.com ([2a00:1450:4010:c03::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XBL3p-0006dt-Pv
 for barebox@lists.infradead.org; Sun, 27 Jul 2014 09:48:10 +0000
Received: by mail-la0-f49.google.com with SMTP id hz20so4310317lab.8
 for <barebox@lists.infradead.org>; Sun, 27 Jul 2014 02:47:45 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 27 Jul 2014 13:47:23 +0400
Message-Id: <1406454448-10645-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1406454448-10645-1-git-send-email-antonynpavlov@gmail.com>
References: <1406454448-10645-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 4/9] serial: add driver for Canon DIGIC UART
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/serial/Kconfig        |   4 ++
 drivers/serial/Makefile       |   1 +
 drivers/serial/serial_digic.c | 132 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 137 insertions(+)

diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index 5698c2f..146bf1e 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -133,4 +133,8 @@ config DRIVER_SERIAL_CADENCE
 	help
 	  Say Y here if you have a Cadence serial IP core.
 
+config DRIVER_SERIAL_DIGIC
+	bool "Canon DIGIC serial driver"
+	depends on ARCH_DIGIC
+
 endmenu
diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
index 2c0176d..189e777 100644
--- a/drivers/serial/Makefile
+++ b/drivers/serial/Makefile
@@ -19,3 +19,4 @@ obj-$(CONFIG_DRIVER_SERIAL_OMAP4_USBBOOT)	+= serial_omap4_usbboot.o
 obj-$(CONFIG_DRIVER_SERIAL_AUART)		+= serial_auart.o
 obj-$(CONFIG_DRIVER_SERIAL_CADENCE)		+= serial_cadence.o
 obj-$(CONFIG_DRIVER_SERIAL_EFI_STDIO)		+= efi-stdio.o
+obj-$(CONFIG_DRIVER_SERIAL_DIGIC)		+= serial_digic.o
diff --git a/drivers/serial/serial_digic.c b/drivers/serial/serial_digic.c
new file mode 100644
index 0000000..235ea0f
--- /dev/null
+++ b/drivers/serial/serial_digic.c
@@ -0,0 +1,132 @@
+/*
+ * Copyright (C) 2013, 2014 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <malloc.h>
+#include <io.h>
+
+#include <mach/uart.h>
+
+/*
+ * This driver is based on the "Serial terminal" docs here:
+ *  http://magiclantern.wikia.com/wiki/Register_Map#Misc_Registers
+ *
+ * See also disassembler output for Canon A1100IS firmware
+ * (version a1100_100c):
+ *   * a outc-like function can be found at address 0xffff18f0;
+ *   * a getc-like function can be found at address 0xffff192c.
+ */
+
+static inline uint32_t digic_serial_readl(struct console_device *cdev,
+						uint32_t offset)
+{
+	void __iomem *base = cdev->dev->priv;
+
+	return readl(base + offset);
+}
+
+static inline void digic_serial_writel(struct console_device *cdev,
+					uint32_t value, uint32_t offset)
+{
+	void __iomem *base = cdev->dev->priv;
+
+	writel(value, base + offset);
+}
+
+static int digic_serial_setbaudrate(struct console_device *cdev, int baudrate)
+{
+	/* I don't know how to setup baudrate :( */
+
+	return 0;
+}
+
+static void digic_serial_putc(struct console_device *cdev, char c)
+{
+	uint32_t status;
+
+	do {
+		status = digic_serial_readl(cdev, DIGIC_UART_ST);
+	} while (!(status & DIGIC_UART_ST_TX_RDY));
+
+	digic_serial_writel(cdev, 0x06, DIGIC_UART_ST);
+	digic_serial_writel(cdev, c, DIGIC_UART_TX);
+}
+
+static int digic_serial_getc(struct console_device *cdev)
+{
+	uint32_t status;
+
+	do {
+		status = digic_serial_readl(cdev, DIGIC_UART_ST);
+	} while (!(status & DIGIC_UART_ST_RX_RDY));
+
+	digic_serial_writel(cdev, 0x01, DIGIC_UART_ST);
+
+	return digic_serial_readl(cdev, DIGIC_UART_RX);
+}
+
+static int digic_serial_tstc(struct console_device *cdev)
+{
+	uint32_t status = digic_serial_readl(cdev, DIGIC_UART_ST);
+
+	return ((status & DIGIC_UART_ST_RX_RDY) != 0);
+
+	/*
+	 * Canon folks use additional check, something like this:
+	 *
+	 *	if (digic_serial_readl(cdev, DIGIC_UART_ST) & 0x38) {
+	 *		digic_serial_writel(cdev, 0x38, DIGIC_UART_ST);
+	 *		return 0;
+	 *	}
+	 *
+	 * But I know nothing about these magic bits in the status register...
+	 *
+	*/
+}
+
+static int digic_serial_probe(struct device_d *dev)
+{
+	struct console_device *cdev;
+
+	cdev = xzalloc(sizeof(struct console_device));
+	dev->priv = dev_request_mem_region(dev, 0);
+	cdev->dev = dev;
+	cdev->tstc = &digic_serial_tstc;
+	cdev->putc = &digic_serial_putc;
+	cdev->getc = &digic_serial_getc;
+	cdev->setbrg = &digic_serial_setbaudrate;
+
+	console_register(cdev);
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id digic_serial_dt_ids[] = {
+	{
+		.compatible = "canon,digic-uart",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d digic_serial_driver = {
+	.name  = "digic-uart",
+	.probe = digic_serial_probe,
+	.of_compatible = DRV_OF_COMPAT(digic_serial_dt_ids),
+};
+console_platform_driver(digic_serial_driver);
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
