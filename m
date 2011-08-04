Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo3.mail-out.ovh.net ([87.98.178.36]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qp4BX-0004g5-EN
	for barebox@lists.infradead.org; Thu, 04 Aug 2011 20:06:29 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 6B446FFAF55
	for <barebox@lists.infradead.org>;
	Thu,  4 Aug 2011 21:57:04 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  4 Aug 2011 21:37:33 +0200
Message-Id: <1312486653-19494-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1312389389-9255-1-git-send-email-plagnioj@jcrosoft.com>
References: <1312389389-9255-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH] ns16550: switch platform_data to drivers private data
To: barebox@lists.infradead.org

update the platform data to use void __iomem * as we use volatile register
accessor and let the custom implementation to cast it if needed

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/x86/mach-i386/generic.c    |    8 +-
 drivers/serial/serial_ns16550.c |  204 +++++++++++++++++++++++++--------------
 include/ns16550.h               |    4 +-
 3 files changed, 136 insertions(+), 80 deletions(-)

diff --git a/arch/x86/mach-i386/generic.c b/arch/x86/mach-i386/generic.c
index edeacc4..5e8bd76 100644
--- a/arch/x86/mach-i386/generic.c
+++ b/arch/x86/mach-i386/generic.c
@@ -26,13 +26,13 @@
 #include <asm/io.h>
 
 /** to work with the 8250 UART driver implementation we need this function */
-unsigned int x86_uart_read(unsigned long base, unsigned char reg_idx)
+unsigned int x86_uart_read(void __iomem *base, unsigned char reg_idx)
 {
-	return inb(base + reg_idx);
+	return inb((int)base + reg_idx);
 }
 
 /** to work with the 8250 UART driver implementation we need this function */
-void x86_uart_write(unsigned int val, unsigned long base, unsigned char reg_idx)
+void x86_uart_write(unsigned int val, void __iomem *base, unsigned char reg_idx)
 {
-	outb(val, base + reg_idx);
+	outb(val, (int)base + reg_idx);
 }
diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 36d39cd..e33a68c 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -48,6 +48,55 @@
 
 /*********** Private Functions **********************************/
 
+/*
+ * We wrap our port structure around the generic console_device.
+ */
+struct ns16550_uart_port {
+	void __iomem *base;
+	uint32_t shift;
+	uint32_t clock;
+	uint32_t (*read)(void __iomem *base, uint8_t off);
+	void (*write)(uint32_t val, void __iomem *base, uint8_t off);
+
+	struct console_device uart;
+};
+
+static inline struct ns16550_uart_port *
+to_ns16550_uart_port(struct console_device *uart)
+{
+	return container_of(uart, struct ns16550_uart_port, uart);
+}
+
+static uint32_t ns16550_readb(void __iomem *base, uint8_t off)
+{
+	return readb(base + off);
+}
+
+static uint32_t ns16550_readw(void __iomem *base, uint8_t off)
+{
+	return readw(base + off);
+}
+
+static uint32_t ns16550_readl(void __iomem *base, uint8_t off)
+{
+	return readl(base + off);
+}
+
+static void ns16550_writeb(uint32_t val, void __iomem *base, uint8_t off)
+{
+	writeb(val, base + off);
+}
+
+static void ns16550_writew(uint32_t val, void __iomem *base, uint8_t off)
+{
+	writew(val, base + off);
+}
+
+static void ns16550_writel(uint32_t val, void __iomem *base, uint8_t off)
+{
+	writel(val, base + off);
+}
+
 /**
  * @brief read register
  *
@@ -56,26 +105,11 @@
  *
  * @return value
  */
-static uint32_t ns16550_read(struct console_device *cdev, uint32_t off)
+static uint32_t ns16550_read(struct ns16550_uart_port *uart, uint32_t off)
 {
-	struct device_d *dev = cdev->dev;
-	struct NS16550_plat *plat = (struct NS16550_plat *)dev->platform_data;
-	int width = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
-
-	off <<= plat->shift;
-
-	if (plat->reg_read)
-		return plat->reg_read((unsigned long)dev->priv, off);
+	off <<= uart->shift;
 
-	switch (width) {
-	case IORESOURCE_MEM_8BIT:
-		return readb(dev->priv + off);
-	case IORESOURCE_MEM_16BIT:
-		return readw(dev->priv + off);
-	case IORESOURCE_MEM_32BIT:
-		return readl(dev->priv + off);
-	}
-	return -1;
+	return uart->read(uart->base, off);
 }
 
 /**
@@ -85,31 +119,12 @@ static uint32_t ns16550_read(struct console_device *cdev, uint32_t off)
  * @param[in] offset
  * @param[in] val
  */
-static void ns16550_write(struct console_device *cdev, uint32_t val,
+static void ns16550_write(struct ns16550_uart_port *uart, uint32_t val,
 			  uint32_t off)
 {
-	struct device_d *dev = cdev->dev;
-	struct NS16550_plat *plat = (struct NS16550_plat *)dev->platform_data;
-	int width = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
-
-	off <<= plat->shift;
-
-	if (plat->reg_write) {
-		plat->reg_write(val, (unsigned long)dev->priv, off);
-		return;
-	}
+	off <<= uart->shift;
 
-	switch (width) {
-	case IORESOURCE_MEM_8BIT:
-		writeb(val & 0xff, dev->priv + off);
-		break;
-	case IORESOURCE_MEM_16BIT:
-		writew(val & 0xffff, dev->priv + off);
-		break;
-	case IORESOURCE_MEM_32BIT:
-		writel(val, dev->priv + off);
-		break;
-	}
+	uart->write(val, uart->base, off);
 }
 
 /**
@@ -120,15 +135,10 @@ static void ns16550_write(struct console_device *cdev, uint32_t val,
  *
  * @return divisor to be set
  */
-static unsigned int ns16550_calc_divisor(struct console_device *cdev,
+static unsigned int ns16550_calc_divisor(struct ns16550_uart_port *uart,
 					 unsigned int baudrate)
 {
-	struct NS16550_plat *plat = (struct NS16550_plat *)
-	    cdev->dev->platform_data;
-	unsigned int clk = plat->clock;
-
-	return (clk / MODE_X_DIV / baudrate);
-
+	return (uart->clock / MODE_X_DIV / baudrate);
 }
 
 /**
@@ -139,23 +149,24 @@ static unsigned int ns16550_calc_divisor(struct console_device *cdev,
 static void ns16550_serial_init_port(struct console_device *cdev)
 {
 	unsigned int baud_divisor;
+	struct ns16550_uart_port *uart = to_ns16550_uart_port(cdev);
 
 	/* Setup the serial port with the defaults first */
-	baud_divisor = ns16550_calc_divisor(cdev, CONFIG_BAUDRATE);
+	baud_divisor = ns16550_calc_divisor(uart, CONFIG_BAUDRATE);
 
 	/* initializing the device for the first time */
-	ns16550_write(cdev, 0x00, ier);
+	ns16550_write(uart, 0x00, ier);
 #ifdef CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS
-	ns16550_write(cdev, 0x07, mdr1);	/* Disable */
+	ns16550_write(uart, 0x07, mdr1);	/* Disable */
 #endif
-	ns16550_write(cdev, LCR_BKSE | LCRVAL, lcr);
-	ns16550_write(cdev, baud_divisor & 0xFF, dll);
-	ns16550_write(cdev, (baud_divisor >> 8) & 0xff, dlm);
-	ns16550_write(cdev, LCRVAL, lcr);
-	ns16550_write(cdev, MCRVAL, mcr);
-	ns16550_write(cdev, FCRVAL, fcr);
+	ns16550_write(uart, LCR_BKSE | LCRVAL, lcr);
+	ns16550_write(uart, baud_divisor & 0xFF, dll);
+	ns16550_write(uart, (baud_divisor >> 8) & 0xff, dlm);
+	ns16550_write(uart, LCRVAL, lcr);
+	ns16550_write(uart, MCRVAL, mcr);
+	ns16550_write(uart, FCRVAL, fcr);
 #ifdef CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS
-	ns16550_write(cdev, 0x00,  mdr1);
+	ns16550_write(uart, 0x00,  mdr1);
 #endif
 }
 
@@ -169,9 +180,11 @@ static void ns16550_serial_init_port(struct console_device *cdev)
  */
 static void ns16550_putc(struct console_device *cdev, char c)
 {
+	struct ns16550_uart_port *uart = to_ns16550_uart_port(cdev);
+
 	/* Loop Doing Nothing */
-	while ((ns16550_read(cdev, lsr) & LSR_THRE) == 0) ;
-	ns16550_write(cdev, c, thr);
+	while ((ns16550_read(uart, lsr) & LSR_THRE) == 0) ;
+	ns16550_write(uart, c, thr);
 }
 
 /**
@@ -183,9 +196,11 @@ static void ns16550_putc(struct console_device *cdev, char c)
  */
 static int ns16550_getc(struct console_device *cdev)
 {
+	struct ns16550_uart_port *uart = to_ns16550_uart_port(cdev);
+
 	/* Loop Doing Nothing */
-	while ((ns16550_read(cdev, lsr) & LSR_DR) == 0) ;
-	return ns16550_read(cdev, rbr);
+	while ((ns16550_read(uart, lsr) & LSR_DR) == 0) ;
+	return ns16550_read(uart, rbr);
 }
 
 /**
@@ -197,7 +212,9 @@ static int ns16550_getc(struct console_device *cdev)
  */
 static int ns16550_tstc(struct console_device *cdev)
 {
-	return ((ns16550_read(cdev, lsr) & LSR_DR) != 0);
+	struct ns16550_uart_port *uart = to_ns16550_uart_port(cdev);
+
+	return ((ns16550_read(uart, lsr) & LSR_DR) != 0);
 }
 
 /**
@@ -210,15 +227,16 @@ static int ns16550_tstc(struct console_device *cdev)
  */
 static int ns16550_setbaudrate(struct console_device *cdev, int baud_rate)
 {
-	unsigned int baud_divisor = ns16550_calc_divisor(cdev, baud_rate);
-
-	ns16550_write(cdev, 0x00, ier);
-	ns16550_write(cdev, LCR_BKSE, lcr);
-	ns16550_write(cdev, baud_divisor & 0xff, dll);
-	ns16550_write(cdev, (baud_divisor >> 8) & 0xff, dlm);
-	ns16550_write(cdev, LCRVAL, lcr);
-	ns16550_write(cdev, MCRVAL, mcr);
-	ns16550_write(cdev, FCRVAL, fcr);
+	struct ns16550_uart_port *uart = to_ns16550_uart_port(cdev);
+	unsigned int baud_divisor = ns16550_calc_divisor(uart, baud_rate);
+
+	ns16550_write(uart, 0x00, ier);
+	ns16550_write(uart, LCR_BKSE, lcr);
+	ns16550_write(uart, baud_divisor & 0xff, dll);
+	ns16550_write(uart, (baud_divisor >> 8) & 0xff, dlm);
+	ns16550_write(uart, LCRVAL, lcr);
+	ns16550_write(uart, MCRVAL, mcr);
+	ns16550_write(uart, FCRVAL, fcr);
 	return 0;
 }
 
@@ -233,16 +251,18 @@ static int ns16550_setbaudrate(struct console_device *cdev, int baud_rate)
  */
 static int ns16550_probe(struct device_d *dev)
 {
+	struct ns16550_uart_port *uart;
 	struct console_device *cdev;
 	struct NS16550_plat *plat = (struct NS16550_plat *)dev->platform_data;
+	int width;
 
 	/* we do expect platform specific data */
 	if (plat == NULL)
 		return -EINVAL;
-	dev->priv = dev_request_mem_region(dev, 0);
-
-	cdev = xzalloc(sizeof(*cdev));
 
+	uart = xmalloc(sizeof(struct ns16550_uart_port));
+	cdev = &uart->uart;
+	uart->base = dev_request_mem_region(dev, 0);
 	dev->type_data = cdev;
 	cdev->dev = dev;
 	if (plat->f_caps)
@@ -253,6 +273,42 @@ static int ns16550_probe(struct device_d *dev)
 	cdev->putc = ns16550_putc;
 	cdev->getc = ns16550_getc;
 	cdev->setbrg = ns16550_setbaudrate;
+	uart->clock = plat->clock;
+	uart->shift = plat->shift;
+
+	width = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
+
+	if (!plat->reg_read) {
+		switch (width) {
+		case IORESOURCE_MEM_8BIT:
+			uart->read = ns16550_readb;
+			break;
+		case IORESOURCE_MEM_16BIT:
+			uart->read = ns16550_readw;
+			break;
+		case IORESOURCE_MEM_32BIT:
+			uart->read = ns16550_readl;
+			break;
+		}
+	} else {
+		uart->read = plat->reg_read;
+	}
+
+	if (!plat->reg_write) {
+		switch (width) {
+		case IORESOURCE_MEM_8BIT:
+			uart->write = ns16550_writeb;
+			break;
+		case IORESOURCE_MEM_16BIT:
+			uart->write = ns16550_writew;
+			break;
+		case IORESOURCE_MEM_32BIT:
+			uart->write = ns16550_writel;
+			break;
+		}
+	} else {
+		uart->write = plat->reg_write;
+	}
 
 	ns16550_serial_init_port(cdev);
 
diff --git a/include/ns16550.h b/include/ns16550.h
index 5fd52fa..87ecdbe 100644
--- a/include/ns16550.h
+++ b/include/ns16550.h
@@ -44,11 +44,11 @@ struct NS16550_plat {
 	/**
 	 * register read access capability
 	 */
-	unsigned int (*reg_read) (unsigned long base, unsigned char reg_offset);
+	unsigned int (*reg_read) (void __iomem *base, unsigned char reg_offset);
 	/**
 	 * register write access capability
 	 */
-	void (*reg_write) (unsigned int val, unsigned long base,
+	void (*reg_write) (unsigned int val, void __iomem *base,
 				    unsigned char reg_offset);
 
 	int shift;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
