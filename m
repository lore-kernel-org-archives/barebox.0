Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp24.mail.ru ([94.100.176.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTEMu-0003yk-32
 for barebox@lists.infradead.org; Tue, 30 Oct 2012 16:08:47 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Tue, 30 Oct 2012 20:08:31 +0400
Message-Id: <1351613312-4506-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1351613312-4506-1-git-send-email-shc_work@mail.ru>
References: <1351613312-4506-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH v3 2/3] ARM: clps711x: Add serial driver
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-clps711x/devices.c              |   60 ++++++++++
 arch/arm/mach-clps711x/include/mach/devices.h |    1 +
 drivers/serial/Kconfig                        |    5 +
 drivers/serial/Makefile                       |    1 +
 drivers/serial/serial_clps711x.c              |  156 +++++++++++++++++++++++++
 5 files changed, 223 insertions(+), 0 deletions(-)
 create mode 100644 drivers/serial/serial_clps711x.c

diff --git a/arch/arm/mach-clps711x/devices.c b/arch/arm/mach-clps711x/devices.c
index c5fcbf2..08f27d2 100644
--- a/arch/arm/mach-clps711x/devices.c
+++ b/arch/arm/mach-clps711x/devices.c
@@ -35,3 +35,63 @@ void clps711x_setup_memcfg(int bank, u32 val)
 		break;
 	}
 }
+
+static struct resource uart0_resources[] = {
+	{
+		.start	= UBRLCR1,
+		.end	= UBRLCR1,
+		.flags	= IORESOURCE_MEM,
+	},
+	{
+		.start	= SYSCON1,
+		.end	= SYSCON1,
+		.flags	= IORESOURCE_MEM,
+	},
+	{
+		.start	= SYSFLG1,
+		.end	= SYSFLG1,
+		.flags	= IORESOURCE_MEM,
+	},
+	{
+		.start	= UARTDR1,
+		.end	= UARTDR1,
+		.flags	= IORESOURCE_MEM,
+	},
+};
+
+static struct resource uart1_resources[] = {
+	{
+		.start	= UBRLCR2,
+		.end	= UBRLCR2,
+		.flags	= IORESOURCE_MEM,
+	},
+	{
+		.start	= SYSCON2,
+		.end	= SYSCON2,
+		.flags	= IORESOURCE_MEM,
+	},
+	{
+		.start	= SYSFLG2,
+		.end	= SYSFLG2,
+		.flags	= IORESOURCE_MEM,
+	},
+	{
+		.start	= UARTDR2,
+		.end	= UARTDR2,
+		.flags	= IORESOURCE_MEM,
+	},
+};
+
+void clps711x_add_uart(unsigned int id)
+{
+	switch (id) {
+	case 0:
+		add_generic_device_res("clps711x_serial", 0, uart0_resources,
+				       ARRAY_SIZE(uart0_resources), NULL);
+		break;
+	case 1:
+		add_generic_device_res("clps711x_serial", 1, uart1_resources,
+				       ARRAY_SIZE(uart1_resources), NULL);
+		break;
+	}
+}
diff --git a/arch/arm/mach-clps711x/include/mach/devices.h b/arch/arm/mach-clps711x/include/mach/devices.h
index 7e5eaf9..18a251a 100644
--- a/arch/arm/mach-clps711x/include/mach/devices.h
+++ b/arch/arm/mach-clps711x/include/mach/devices.h
@@ -2,5 +2,6 @@
 #define __MACH_DEVICES_H
 
 void clps711x_setup_memcfg(int bank, u32 val);
+void clps711x_add_uart(unsigned int id);
 
 #endif
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
index 0000000..fdc8526
--- /dev/null
+++ b/drivers/serial/serial_clps711x.c
@@ -0,0 +1,156 @@
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
+#include <malloc.h>
+#include <init.h>
+#include <io.h>
+#include <linux/clk.h>
+
+#include <mach/clps711x.h>
+
+struct clps711x_uart {
+	void __iomem		*UBRLCR;
+	void __iomem		*SYSCON;
+	void __iomem		*SYSFLG;
+	void __iomem		*UARTDR;
+	struct clk		*uart_clk;
+	struct console_device	cdev;
+};
+
+static int clps711x_setbaudrate(struct console_device *cdev, int baudrate)
+{
+	struct clps711x_uart *s = cdev->dev->priv;
+	int divisor;
+	u32 tmp;
+
+	divisor = (clk_get_rate(s->uart_clk) / 16) / baudrate;
+
+	tmp = readl(s->UBRLCR) & ~UBRLCR_BAUD_MASK;
+	tmp |= divisor - 1;
+	writel(tmp, s->UBRLCR);
+
+	return 0;
+}
+
+static void clps711x_init_port(struct console_device *cdev)
+{
+	struct clps711x_uart *s = cdev->dev->priv;
+	u32 tmp;
+
+	/* Disable the UART */
+	writel(readl(s->SYSCON) & ~SYSCON_UARTEN, s->SYSCON);
+
+	/* Setup Line Control Register */
+	tmp = readl(s->UBRLCR) & UBRLCR_BAUD_MASK;
+	tmp |= UBRLCR_FIFOEN | UBRLCR_WRDLEN8; /* FIFO on, 8N1 mode */
+	writel(tmp, s->UBRLCR);
+
+	/* Set default baudrate on initialization */
+	clps711x_setbaudrate(cdev, CONFIG_BAUDRATE);
+
+	/* Enable the UART */
+	writel(readl(s->SYSCON) | SYSCON_UARTEN, s->SYSCON);
+}
+
+static void clps711x_putc(struct console_device *cdev, char c)
+{
+	struct clps711x_uart *s = cdev->dev->priv;
+
+	/* Wait until there is space in the FIFO */
+	while (readl(s->SYSFLG) & SYSFLG_UTXFF)
+		barrier();
+
+	/* Send the character */
+	writew(c, s->UARTDR);
+}
+
+static int clps711x_getc(struct console_device *cdev)
+{
+	struct clps711x_uart *s = cdev->dev->priv;
+	u16 data;
+
+	/* Wait until there is data in the FIFO */
+	while (readl(s->SYSFLG) & SYSFLG_URXFE)
+		barrier();
+
+	data = readw(s->UARTDR);
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
+	struct clps711x_uart *s = cdev->dev->priv;
+
+	return !(readl(s->SYSFLG) & SYSFLG_URXFE);
+}
+
+static void clps711x_flush(struct console_device *cdev)
+{
+	struct clps711x_uart *s = cdev->dev->priv;
+
+	while (readl(s->SYSFLG) & SYSFLG_UBUSY)
+		barrier();
+}
+
+static int clps711x_probe(struct device_d *dev)
+{
+	struct clps711x_uart *s;
+
+	BUG_ON(dev->num_resources != 4);
+
+	s = xzalloc(sizeof(struct clps711x_uart));
+	s->uart_clk = clk_get(dev, NULL);
+	BUG_ON(!s->uart_clk);
+
+	s->UBRLCR = dev_get_mem_region(dev, 0);
+	s->SYSCON = dev_get_mem_region(dev, 1);
+	s->SYSFLG = dev_get_mem_region(dev, 2);
+	s->UARTDR = dev_get_mem_region(dev, 3);
+
+	dev->priv	= s;
+	s->cdev.dev	= dev;
+	s->cdev.f_caps	= CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
+	s->cdev.tstc	= clps711x_tstc;
+	s->cdev.putc	= clps711x_putc;
+	s->cdev.getc	= clps711x_getc;
+	s->cdev.flush	= clps711x_flush;
+	s->cdev.setbrg	= clps711x_setbaudrate;
+	clps711x_init_port(&s->cdev);
+
+	return console_register(&s->cdev);
+}
+
+static void clps711x_remove(struct device_d *dev)
+{
+	struct clps711x_uart *s = dev->priv;
+
+	clps711x_flush(&s->cdev);
+	console_unregister(&s->cdev);
+	free(s);
+}
+
+static struct driver_d clps711x_driver = {
+	.name	= "clps711x_serial",
+	.probe	= clps711x_probe,
+	.remove	= clps711x_remove,
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
