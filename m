Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2.mail.ru ([94.100.176.130])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TNnVJ-0007c8-CC
 for barebox@lists.infradead.org; Mon, 15 Oct 2012 16:26:58 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Mon, 15 Oct 2012 20:26:44 +0400
Message-Id: <1350318405-20081-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1350318405-20081-1-git-send-email-shc_work@mail.ru>
References: <1350318405-20081-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH v2 2/3] ARM: clps711x: Add serial driver
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/serial/Kconfig           |    5 ++
 drivers/serial/Makefile          |    1 +
 drivers/serial/serial_clps711x.c |  118 ++++++++++++++++++++++++++++++++++++++
 3 files changed, 124 insertions(+), 0 deletions(-)
 create mode 100644 drivers/serial/serial_clps711x.c

diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index 7eb96ed..02bc8bf 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -43,6 +43,11 @@ config DRIVER_SERIAL_BLACKFIN
 	default y
 	bool "Blackfin serial driver"
 
+config DRIVER_SERIAL_CLPS711X
+	depends on ARCH_CLPS711X
+	default y
+	bool "CLPS711X serial driver"
+
 config DRIVER_SERIAL_ALTERA
 	depends on NIOS2
 	default y
diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
index e2d56b9..e6f1e22 100644
--- a/drivers/serial/Makefile
+++ b/drivers/serial/Makefile
@@ -13,6 +13,7 @@ obj-$(CONFIG_DRIVER_SERIAL_NETX)		+= serial_netx.o
 obj-$(CONFIG_DRIVER_SERIAL_LINUX_CONSOLE)	+= linux_console.o
 obj-$(CONFIG_DRIVER_SERIAL_MPC5XXX)		+= serial_mpc5xxx.o
 obj-$(CONFIG_DRIVER_SERIAL_BLACKFIN)		+= serial_blackfin.o
+obj-$(CONFIG_DRIVER_SERIAL_CLPS711X)		+= serial_clps711x.o
 obj-$(CONFIG_DRIVER_SERIAL_NS16550)		+= serial_ns16550.o
 obj-$(CONFIG_DRIVER_SERIAL_PL010)		+= serial_pl010.o
 obj-$(CONFIG_DRIVER_SERIAL_S3C)			+= serial_s3c.o
diff --git a/drivers/serial/serial_clps711x.c b/drivers/serial/serial_clps711x.c
new file mode 100644
index 0000000..462ba9f
--- /dev/null
+++ b/drivers/serial/serial_clps711x.c
@@ -0,0 +1,118 @@
+/*
+ * Simple CLPS711X serial driver
+ *
+ * (C) Copyright 2012 Alexander Shiyan <shc_work@mail.ru>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <linux/clk.h>
+
+#include <mach/clps711x.h>
+
+#define UBRLCR(x)	(UBRLCR1 + (x) * 0x1000)
+#define SYSCON(x)	(SYSCON1 + (x) * 0x1000)
+#define SYSFLG(x)	(SYSFLG1 + (x) * 0x1000)
+#define UARTDR(x)	(UARTDR1 + (x) * 0x1000)
+
+static int clps711x_setbaudrate(struct console_device *cdev, int baudrate)
+{
+	int divisor;
+	u32 tmp;
+
+	divisor = (clk_get_rate(cdev->dev->priv) / 16) / baudrate;
+
+	tmp = readl(UBRLCR(cdev->dev->id)) & ~UBRLCR_BAUD_MASK;
+	tmp |= divisor - 1;
+	writel(tmp, UBRLCR(cdev->dev->id));
+
+	return 0;
+}
+
+static void clps711x_init_port(struct console_device *cdev)
+{
+	u32 tmp;
+
+	/* Disable the UART */
+	writel(readl(SYSCON(cdev->dev->id)) & ~SYSCON_UARTEN,
+	       SYSCON(cdev->dev->id));
+
+	/* Setup Line Control Register */
+	tmp = readl(UBRLCR(cdev->dev->id)) & UBRLCR_BAUD_MASK;
+	tmp |= UBRLCR_FIFOEN | UBRLCR_WRDLEN8; /* FIFO on, 8N1 mode */
+	writel(tmp, UBRLCR(cdev->dev->id));
+
+	/* Set default baudrate on initialization */
+	clps711x_setbaudrate(cdev, CONFIG_BAUDRATE);
+
+	/* Enable the UART */
+	writel(readl(SYSCON(cdev->dev->id)) | SYSCON_UARTEN,
+	       SYSCON(cdev->dev->id));
+}
+
+static void clps711x_putc(struct console_device *cdev, char c)
+{
+	/* Wait until there is space in the FIFO */
+	while (readl(SYSFLG(cdev->dev->id)) & SYSFLG_UTXFF) {
+	}
+
+	/* Send the character */
+	writew(c, UARTDR(cdev->dev->id));
+}
+
+static int clps711x_getc(struct console_device *cdev)
+{
+	u16 data;
+
+	/* Wait until there is data in the FIFO */
+	while (readl(SYSFLG(cdev->dev->id)) & SYSFLG_URXFE) {
+	}
+
+	data = readw(UARTDR(cdev->dev->id));
+
+	/* Check for an error flag */
+	if (data & (UARTDR_FRMERR | UARTDR_PARERR | UARTDR_OVERR))
+		return -1;
+
+	return (int)data;
+}
+
+static int clps711x_tstc(struct console_device *cdev)
+{
+	return !(readl(SYSFLG(cdev->dev->id)) & SYSFLG_URXFE);
+}
+
+static int clps711x_probe(struct device_d *dev)
+{
+	struct console_device *cdev = xzalloc(sizeof(struct console_device));
+
+	dev->priv = clk_get(dev, NULL);
+	BUG_ON(!dev->priv);
+
+	cdev->dev	= dev;
+	cdev->f_caps	= CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
+	cdev->tstc	= clps711x_tstc;
+	cdev->putc	= clps711x_putc;
+	cdev->getc	= clps711x_getc;
+	cdev->setbrg	= clps711x_setbaudrate;
+	clps711x_init_port(cdev);
+
+	return console_register(cdev);
+}
+
+static struct driver_d clps711x_driver = {
+	.name	= "clps711x_serial",
+	.probe	= clps711x_probe,
+};
+
+static int clps711x_init(void)
+{
+	return platform_driver_register(&clps711x_driver);
+}
+console_initcall(clps711x_init);
-- 
1.7.8.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
