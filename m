Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp30.i.mail.ru ([94.100.177.90])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W6Nz8-0007DH-Nx
 for barebox@lists.infradead.org; Thu, 23 Jan 2014 17:22:39 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu, 23 Jan 2014 21:22:07 +0400
Message-Id: <1390497727-1625-4-git-send-email-shc_work@mail.ru>
In-Reply-To: <1390497727-1625-1-git-send-email-shc_work@mail.ru>
References: <1390497727-1625-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 4/4] serial: clps711x: Update driver
To: barebox@lists.infradead.org

This patch updates the CLPS711X UART driver.
The update adds support for use with devicetree and
makes driver comatible with current driver from kernel.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-clps711x/devices.c |  14 ++---
 drivers/serial/serial_clps711x.c | 118 +++++++++++++++++++++++++++------------
 2 files changed, 88 insertions(+), 44 deletions(-)

diff --git a/arch/arm/mach-clps711x/devices.c b/arch/arm/mach-clps711x/devices.c
index b5060ba..c7a2fbd 100644
--- a/arch/arm/mach-clps711x/devices.c
+++ b/arch/arm/mach-clps711x/devices.c
@@ -51,26 +51,24 @@ void clps711x_setup_memcfg(int bank, u32 val)
 }
 
 static struct resource uart0_resources[] = {
-	DEFINE_RES_MEM(UBRLCR1, SZ_4),
-	DEFINE_RES_MEM(UARTDR1, SZ_4),
+	DEFINE_RES_MEM(UARTDR1, SZ_128),
 };
 
 static struct resource uart1_resources[] = {
-	DEFINE_RES_MEM(UBRLCR2, SZ_4),
-	DEFINE_RES_MEM(UARTDR2, SZ_4),
+	DEFINE_RES_MEM(UARTDR2, SZ_128),
 };
 
 void clps711x_add_uart(unsigned int id)
 {
 	switch (id) {
 	case 0:
-		clk_add_alias(NULL, "clps711x_serial0", "uart", NULL);
-		add_generic_device_res("clps711x_serial", 0, uart0_resources,
+		clk_add_alias(NULL, "clps711x-uart0", "uart", NULL);
+		add_generic_device_res("clps711x-uart", 0, uart0_resources,
 				       ARRAY_SIZE(uart0_resources), NULL);
 		break;
 	case 1:
-		clk_add_alias(NULL, "clps711x_serial1", "uart", NULL);
-		add_generic_device_res("clps711x_serial", 1, uart1_resources,
+		clk_add_alias(NULL, "clps711x-uart1", "uart", NULL);
+		add_generic_device_res("clps711x-uart", 1, uart1_resources,
 				       ARRAY_SIZE(uart1_resources), NULL);
 		break;
 	}
diff --git a/drivers/serial/serial_clps711x.c b/drivers/serial/serial_clps711x.c
index d8dec57..a75547c 100644
--- a/drivers/serial/serial_clps711x.c
+++ b/drivers/serial/serial_clps711x.c
@@ -1,7 +1,7 @@
 /*
  * Simple CLPS711X serial driver
  *
- * (C) Copyright 2012 Alexander Shiyan <shc_work@mail.ru>
+ * (C) Copyright 2012-2014 Alexander Shiyan <shc_work@mail.ru>
  *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of the GNU General Public License as
@@ -17,19 +17,37 @@
 #include <linux/err.h>
 #include <mfd/syscon.h>
 
-#include <mach/clps711x.h>
+#define UARTDR			0x00
+# define UARTDR_FRMERR		(1 << 8)
+# define UARTDR_PARERR		(1 << 9)
+# define UARTDR_OVERR		(1 << 10)
+#define UBRLCR			0x40
+# define UBRLCR_BAUD_MASK	((1 << 12) - 1)
+# define UBRLCR_BREAK		(1 << 12)
+# define UBRLCR_PRTEN		(1 << 13)
+# define UBRLCR_EVENPRT		(1 << 14)
+# define UBRLCR_XSTOP		(1 << 15)
+# define UBRLCR_FIFOEN		(1 << 16)
+# define UBRLCR_WRDLEN5		(0 << 17)
+# define UBRLCR_WRDLEN6		(1 << 17)
+# define UBRLCR_WRDLEN7		(2 << 17)
+# define UBRLCR_WRDLEN8		(3 << 17)
+# define UBRLCR_WRDLEN_MASK	(3 << 17)
+
+#define SYSCON			0x00
+# define SYSCON_UARTEN		(1 << 8)
+#define SYSFLG			0x40
+# define SYSFLG_UBUSY		(1 << 11)
+# define SYSFLG_URXFE		(1 << 22)
+# define SYSFLG_UTXFF		(1 << 23)
 
 struct clps711x_uart {
-	void __iomem		*UBRLCR;
-	void __iomem		*UARTDR;
+	void __iomem		*base;
 	void __iomem		*syscon;
 	struct clk		*uart_clk;
 	struct console_device	cdev;
 };
 
-#define SYSCON(x)	((x)->syscon + 0x00)
-#define SYSFLG(x)	((x)->syscon + 0x40)
-
 static int clps711x_setbaudrate(struct console_device *cdev, int baudrate)
 {
 	struct clps711x_uart *s = cdev->dev->priv;
@@ -38,9 +56,9 @@ static int clps711x_setbaudrate(struct console_device *cdev, int baudrate)
 
 	divisor = (clk_get_rate(s->uart_clk) / 16) / baudrate;
 
-	tmp = readl(s->UBRLCR) & ~UBRLCR_BAUD_MASK;
+	tmp = readl(s->base + UBRLCR) & ~UBRLCR_BAUD_MASK;
 	tmp |= divisor - 1;
-	writel(tmp, s->UBRLCR);
+	writel(tmp, s->base + UBRLCR);
 
 	return 0;
 }
@@ -51,15 +69,17 @@ static void clps711x_init_port(struct console_device *cdev)
 	u32 tmp;
 
 	/* Disable the UART */
-	writel(readl(SYSCON(s)) & ~SYSCON_UARTEN, SYSCON(s));
+	tmp = readl(s->syscon + SYSCON);
+	writel(tmp & ~SYSCON_UARTEN, s->syscon + SYSCON);
 
 	/* Setup Line Control Register */
-	tmp = readl(s->UBRLCR) & UBRLCR_BAUD_MASK;
+	tmp = readl(s->base + UBRLCR) & UBRLCR_BAUD_MASK;
 	tmp |= UBRLCR_FIFOEN | UBRLCR_WRDLEN8; /* FIFO on, 8N1 mode */
-	writel(tmp, s->UBRLCR);
+	writel(tmp, s->base + UBRLCR);
 
 	/* Enable the UART */
-	writel(readl(SYSCON(s)) | SYSCON_UARTEN, SYSCON(s));
+	tmp = readl(s->syscon + SYSCON);
+	writel(tmp | SYSCON_UARTEN, s->syscon + SYSCON);
 }
 
 static void clps711x_putc(struct console_device *cdev, char c)
@@ -67,11 +87,11 @@ static void clps711x_putc(struct console_device *cdev, char c)
 	struct clps711x_uart *s = cdev->dev->priv;
 
 	/* Wait until there is space in the FIFO */
-	while (readl(SYSFLG(s)) & SYSFLG_UTXFF)
-		barrier();
+	do {
+	} while (readl(s->syscon + SYSFLG) & SYSFLG_UTXFF);
 
 	/* Send the character */
-	writew(c, s->UARTDR);
+	writew(c, s->base + UARTDR);
 }
 
 static int clps711x_getc(struct console_device *cdev)
@@ -80,10 +100,10 @@ static int clps711x_getc(struct console_device *cdev)
 	u16 data;
 
 	/* Wait until there is data in the FIFO */
-	while (readl(SYSFLG(s)) & SYSFLG_URXFE)
-		barrier();
+	do {
+	} while (readl(s->syscon + SYSFLG) & SYSFLG_URXFE);
 
-	data = readw(s->UARTDR);
+	data = readw(s->base + UARTDR);
 
 	/* Check for an error flag */
 	if (data & (UARTDR_FRMERR | UARTDR_PARERR | UARTDR_OVERR))
@@ -96,35 +116,50 @@ static int clps711x_tstc(struct console_device *cdev)
 {
 	struct clps711x_uart *s = cdev->dev->priv;
 
-	return !(readl(SYSFLG(s)) & SYSFLG_URXFE);
+	return !(readl(s->syscon + SYSFLG) & SYSFLG_URXFE);
 }
 
 static void clps711x_flush(struct console_device *cdev)
 {
 	struct clps711x_uart *s = cdev->dev->priv;
 
-	while (readl(SYSFLG(s)) & SYSFLG_UBUSY)
-		barrier();
+	do {
+	} while (readl(s->syscon + SYSFLG) & SYSFLG_UBUSY);
 }
 
 static int clps711x_probe(struct device_d *dev)
 {
 	struct clps711x_uart *s;
+	int err, id = dev->id;
 	char syscon_dev[8];
 
-	BUG_ON(dev->num_resources != 2);
-	BUG_ON((dev->id != 0) && (dev->id != 1));
+	if (dev->device_node)
+		id = of_alias_get_id(dev->device_node, "serial");
+
+	if (id != 0 && id != 1)
+		return -EINVAL;
 
 	s = xzalloc(sizeof(struct clps711x_uart));
 	s->uart_clk = clk_get(dev, NULL);
-	BUG_ON(IS_ERR(s->uart_clk));
-
-	s->UBRLCR = dev_get_mem_region(dev, 0);
-	s->UARTDR = dev_get_mem_region(dev, 1);
-
-	sprintf(syscon_dev, "syscon%i", dev->id + 1);
-	s->syscon = syscon_base_lookup_by_pdevname(syscon_dev);
-	BUG_ON(IS_ERR(s->syscon));
+	if (IS_ERR(s->uart_clk)) {
+		err = PTR_ERR(s->uart_clk);
+		goto out_err;
+	}
+
+	s->base = dev_get_mem_region(dev, 0);
+
+	if (!dev->device_node) {
+		sprintf(syscon_dev, "syscon%i", id + 1);
+		s->syscon = syscon_base_lookup_by_pdevname(syscon_dev);
+	} else {
+		s->syscon = syscon_base_lookup_by_phandle(dev->device_node,
+							  "syscon");
+	}
+
+	if (IS_ERR(s->syscon)) {
+		err = PTR_ERR(s->syscon);
+		goto out_err;
+	}
 
 	dev->priv	= s;
 	s->cdev.dev	= dev;
@@ -135,7 +170,13 @@ static int clps711x_probe(struct device_d *dev)
 	s->cdev.setbrg	= clps711x_setbaudrate;
 	clps711x_init_port(&s->cdev);
 
-	return console_register(&s->cdev);
+	err = console_register(&s->cdev);
+
+out_err:
+	if (err)
+		free(s);
+
+	return err;
 }
 
 static void clps711x_remove(struct device_d *dev)
@@ -147,9 +188,14 @@ static void clps711x_remove(struct device_d *dev)
 	free(s);
 }
 
+static struct of_device_id __maybe_unused clps711x_uart_dt_ids[] = {
+	{ .compatible = "cirrus,clps711x-uart", },
+};
+
 static struct driver_d clps711x_driver = {
-	.name	= "clps711x_serial",
-	.probe	= clps711x_probe,
-	.remove	= clps711x_remove,
+	.name		= "clps711x-uart",
+	.probe		= clps711x_probe,
+	.remove		= clps711x_remove,
+	.of_compatible	= DRV_OF_COMPAT(clps711x_uart_dt_ids),
 };
 console_platform_driver(clps711x_driver);
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
