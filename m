Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qinbb-0005zD-1J
	for barebox@lists.infradead.org; Mon, 18 Jul 2011 13:11:37 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 6E01FFFA789
	for <barebox@lists.infradead.org>;
	Mon, 18 Jul 2011 15:11:52 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 18 Jul 2011 14:54:38 +0200
Message-Id: <1310993678-7563-10-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1310993678-7563-1-git-send-email-plagnioj@jcrosoft.com>
References: <1310993678-7563-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 10/10] amba-pl011: switch to "struct resource"
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/serial/amba-pl011.c |   28 +++++++++++++++-------------
 1 files changed, 15 insertions(+), 13 deletions(-)

diff --git a/drivers/serial/amba-pl011.c b/drivers/serial/amba-pl011.c
index 442dbc4..c83983d 100644
--- a/drivers/serial/amba-pl011.c
+++ b/drivers/serial/amba-pl011.c
@@ -40,6 +40,7 @@
  * We wrap our port structure around the generic console_device.
  */
 struct amba_uart_port {
+	void __iomem		*base;
 	struct console_device	uart;		/* uart */
 	struct clk		*clk;		/* uart clock */
 	u32			uartclk;
@@ -53,7 +54,6 @@ to_amba_uart_port(struct console_device *uart)
 
 static int pl011_setbaudrate(struct console_device *cdev, int baudrate)
 {
-	struct device_d *dev = cdev->dev;
 	struct amba_uart_port *uart = to_amba_uart_port(cdev);
 	unsigned int temp;
 	unsigned int divider;
@@ -72,37 +72,37 @@ static int pl011_setbaudrate(struct console_device *cdev, int baudrate)
 	temp = (8 * remainder) / baudrate;
 	fraction = (temp >> 1) + (temp & 1);
 
-	writel(divider, dev->map_base + UART011_IBRD);
-	writel(fraction, dev->map_base + UART011_FBRD);
+	writel(divider, uart->base + UART011_IBRD);
+	writel(fraction, uart->base + UART011_FBRD);
 
 	return 0;
 }
 
 static void pl011_putc(struct console_device *cdev, char c)
 {
-	struct device_d *dev = cdev->dev;
+	struct amba_uart_port *uart = to_amba_uart_port(cdev);
 
 	/* Wait until there is space in the FIFO */
-	while (readl(dev->map_base + UART01x_FR) & UART01x_FR_TXFF);
+	while (readl(uart->base + UART01x_FR) & UART01x_FR_TXFF);
 
 	/* Send the character */
-	writel(c, dev->map_base + UART01x_DR);
+	writel(c, uart->base + UART01x_DR);
 }
 
 static int pl011_getc(struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
+	struct amba_uart_port *uart = to_amba_uart_port(cdev);
 	unsigned int data;
 
 	/* Wait until there is data in the FIFO */
-	while (readl(dev->map_base + UART01x_FR) & UART01x_FR_RXFE);
+	while (readl(uart->base + UART01x_FR) & UART01x_FR_RXFE);
 
-	data = readl(dev->map_base + UART01x_DR);
+	data = readl(uart->base + UART01x_DR);
 
 	/* Check for an error flag */
 	if (data & 0xffffff00) {
 		/* Clear the error */
-		writel(0xffffffff, dev->map_base + UART01x_ECR);
+		writel(0xffffffff, uart->base + UART01x_ECR);
 		return -1;
 	}
 
@@ -111,9 +111,9 @@ static int pl011_getc(struct console_device *cdev)
 
 static int pl011_tstc(struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
+	struct amba_uart_port *uart = to_amba_uart_port(cdev);
 
-	return !(readl(dev->map_base + UART01x_FR) & UART01x_FR_RXFE);
+	return !(readl(uart->base + UART01x_FR) & UART01x_FR_RXFE);
 }
 
 int pl011_init_port (struct console_device *cdev)
@@ -121,10 +121,12 @@ int pl011_init_port (struct console_device *cdev)
 	struct device_d *dev = cdev->dev;
 	struct amba_uart_port *uart = to_amba_uart_port(cdev);
 
+	uart->base = (void __iomem *)dev->resource[0].start;
+
 	/*
 	 ** First, disable everything.
 	 */
-	writel(0x0, dev->map_base + UART011_CR);
+	writel(0x0, uart->base + UART011_CR);
 
 	/*
 	 * Try to enable the clock producer.
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
