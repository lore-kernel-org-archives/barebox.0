Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmQqm-0004CT-GF
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 13:42:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 15:41:54 +0200
Message-Id: <1311860524-28566-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311860524-28566-1-git-send-email-s.hauer@pengutronix.de>
References: <1311860524-28566-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/11] serial netx: get rid of map_base
To: barebox@lists.infradead.org

While at it, switch to standard readl/writel accessors

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/serial_netx.c |   37 +++++++++++++++++++------------------
 1 files changed, 19 insertions(+), 18 deletions(-)

diff --git a/drivers/serial/serial_netx.c b/drivers/serial/serial_netx.c
index 9d4b29e..fbbc4ef 100644
--- a/drivers/serial/serial_netx.c
+++ b/drivers/serial/serial_netx.c
@@ -26,11 +26,7 @@
 #include <driver.h>
 #include <init.h>
 #include <malloc.h>
-
-#define IO_WRITE(addr, val) (*(volatile unsigned long *)(addr) = (val))
-#define IO_READ(addr) (*(volatile unsigned long *)(addr))
-
-unsigned long addr = 0x100a00;
+#include <asm/io.h>
 
 enum uart_regs {
 	UART_DR              = 0x00,
@@ -76,14 +72,15 @@ enum uart_regs {
 static int netx_serial_init_port(struct console_device *cdev)
 {
 	struct device_d *dev = cdev->dev;
+	void __iomem *base = dev->priv;
 	unsigned int divisor;
 
 	/* disable uart */
-	IO_WRITE( dev->map_base + UART_CR, 0);
+	writel(0, base + UART_CR);
 
-	IO_WRITE( dev->map_base + UART_LINE_CR, LINE_CR_8BIT | LINE_CR_FEN);
+	writel(LINE_CR_8BIT | LINE_CR_FEN, base + UART_LINE_CR);
 
-	IO_WRITE( dev->map_base + UART_DRV_ENABLE, DRV_ENABLE_TX | DRV_ENABLE_RTS );
+	writel(DRV_ENABLE_TX | DRV_ENABLE_RTS, base + UART_DRV_ENABLE);
 
 	/* set baud rate */
 	divisor = 115200 * 4096;
@@ -91,12 +88,12 @@ static int netx_serial_init_port(struct console_device *cdev)
 	divisor *= 256;
 	divisor /= 100000;
 
-	IO_WRITE( dev->map_base + UART_BAUDDIV_MSB, (divisor >> 8) & 0xff );
-	IO_WRITE( dev->map_base + UART_BAUDDIV_LSB, divisor & 0xff );
-	IO_WRITE( dev->map_base + UART_BRM_CR, BRM_CR_BAUD_RATE_MODE);
+	writel((divisor >> 8) & 0xff, base + UART_BAUDDIV_MSB);
+	writel(divisor & 0xff, base + UART_BAUDDIV_LSB);
+	writel(BRM_CR_BAUD_RATE_MODE, base + UART_BRM_CR);
 
 	/* Finally, enable the UART */
-	IO_WRITE( dev->map_base + UART_CR, CR_UARTEN);
+	writel(CR_UARTEN, base + UART_CR);
 
 	return 0;
 }
@@ -109,22 +106,24 @@ static int netx_serial_setbaudrate(struct console_device *cdev, int baudrate)
 static void netx_serial_putc(struct console_device *cdev, char c)
 {
 	struct device_d *dev = cdev->dev;
+	void __iomem *base = dev->priv;
 
-	while( IO_READ(dev->map_base + UART_FR) & FR_TXFF );
+	while (readl(base + UART_FR) & FR_TXFF );
 
-	IO_WRITE(dev->map_base + UART_DR, c);
+	writel(c, base + UART_DR);
 }
 
 static int netx_serial_getc(struct console_device *cdev)
 {
 	struct device_d *dev = cdev->dev;
+	void __iomem *base = dev->priv;
 	int c;
 
-	while( IO_READ(dev->map_base + UART_FR) & FR_RXFE );
+	while (readl(base + UART_FR) & FR_RXFE );
 
-	c = IO_READ(dev->map_base + UART_DR);
+	c = readl(base + UART_DR);
 
-	IO_READ(dev->map_base + UART_SR);
+	readl(base + UART_SR);
 
 	return c;
 }
@@ -132,8 +131,9 @@ static int netx_serial_getc(struct console_device *cdev)
 static int netx_serial_tstc(struct console_device *cdev)
 {
 	struct device_d *dev = cdev->dev;
+	void __iomem *base = dev->priv;
 
-	return (IO_READ(dev->map_base + UART_FR) & FR_RXFE) ? 0 : 1;
+	return (readl(base + UART_FR) & FR_RXFE) ? 0 : 1;
 }
 
 static int netx_serial_probe(struct device_d *dev)
@@ -142,6 +142,7 @@ static int netx_serial_probe(struct device_d *dev)
 
 	cdev = xmalloc(sizeof(struct console_device));
 	dev->type_data = cdev;
+	dev->priv = dev_request_mem_region(dev, 0);
 	cdev->dev = dev;
 	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
 	cdev->tstc = netx_serial_tstc;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
