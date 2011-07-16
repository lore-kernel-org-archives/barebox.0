Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo4.mail-out.ovh.net ([188.165.33.112]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qi2dP-0000jD-22
	for barebox@lists.infradead.org; Sat, 16 Jul 2011 11:02:14 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id CD1E1FFA00D
	for <barebox@lists.infradead.org>;
	Sat, 16 Jul 2011 13:02:32 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 16 Jul 2011 12:45:28 +0200
Message-Id: <1310813132-4151-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1310813132-4151-1-git-send-email-plagnioj@jcrosoft.com>
References: <1310813132-4151-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/7] at91/serial: switch to "struct resource"
To: barebox@lists.infradead.org
Cc: Patrice Vilchez <patrice.vilchez@atmel.com>, Nicolas Ferre <nicolas.ferre@atmel.com>

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
Cc: Patrice Vilchez <patrice.vilchez@atmel.com>
---
 drivers/serial/atmel.c |   27 ++++++++++++++-------------
 1 files changed, 14 insertions(+), 13 deletions(-)

diff --git a/drivers/serial/atmel.c b/drivers/serial/atmel.c
index 1098952..d8713b3 100644
--- a/drivers/serial/atmel.c
+++ b/drivers/serial/atmel.c
@@ -313,6 +313,7 @@
  * We wrap our port structure around the generic console_device.
  */
 struct atmel_uart_port {
+	void __iomem		*base;
 	struct console_device	uart;		/* uart */
 	struct clk		*clk;		/* uart clock */
 	u32			uartclk;
@@ -326,31 +327,30 @@ to_atmel_uart_port(struct console_device *uart)
 
 static void atmel_serial_putc(struct console_device *cdev, char c)
 {
-	struct device_d *dev = cdev->dev;
+	struct atmel_uart_port *uart = to_atmel_uart_port(cdev);
 
-	while (!(readl(dev->map_base + USART3_CSR) & USART3_BIT(TXRDY)));
+	while (!(readl(uart->base + USART3_CSR) & USART3_BIT(TXRDY)));
 
-	writel(c, dev->map_base + USART3_THR);
+	writel(c, uart->base + USART3_THR);
 }
 
 static int atmel_serial_tstc(struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
+	struct atmel_uart_port *uart = to_atmel_uart_port(cdev);
 
-	return (readl(dev->map_base + USART3_CSR) & USART3_BIT(RXRDY)) != 0;
+	return (readl(uart->base + USART3_CSR) & USART3_BIT(RXRDY)) != 0;
 }
 
 static int atmel_serial_getc(struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
+	struct atmel_uart_port *uart = to_atmel_uart_port(cdev);
 
-	while (!(readl(dev->map_base + USART3_CSR) & USART3_BIT(RXRDY))) ;
-	return readl(dev->map_base + USART3_RHR);
+	while (!(readl(uart->base + USART3_CSR) & USART3_BIT(RXRDY))) ;
+	return readl(uart->base + USART3_RHR);
 }
 
 static int atmel_serial_setbaudrate(struct console_device *cdev, int baudrate)
 {
-	struct device_d *dev = cdev->dev;
 	struct atmel_uart_port *uart = to_atmel_uart_port(cdev);
 	unsigned long divisor;
 
@@ -360,7 +360,7 @@ static int atmel_serial_setbaudrate(struct console_device *cdev, int baudrate)
 	 *                16 * CD
 	 */
 	divisor = (uart->uartclk / 16 + baudrate / 2) / baudrate;
-	writel(USART3_BF(CD, divisor), dev->map_base + USART3_BRGR);
+	writel(USART3_BF(CD, divisor), uart->base + USART3_BRGR);
 
 	return 0;
 }
@@ -375,20 +375,21 @@ static int atmel_serial_init_port(struct console_device *cdev)
 	struct device_d *dev = cdev->dev;
 	struct atmel_uart_port *uart = to_atmel_uart_port(cdev);
 
+	uart->base = (void __iomem *)dev->resource[0].start;
 	uart->clk = clk_get(dev, "usart");
 	clk_enable(uart->clk);
 	uart->uartclk = clk_get_rate(uart->clk);
 
-	writel(USART3_BIT(RSTRX) | USART3_BIT(RSTTX), dev->map_base + USART3_CR);
+	writel(USART3_BIT(RSTRX) | USART3_BIT(RSTTX), uart->base + USART3_CR);
 
 	atmel_serial_setbaudrate(cdev, 115200);
 
-	writel(USART3_BIT(RXEN) | USART3_BIT(TXEN), dev->map_base + USART3_CR);
+	writel(USART3_BIT(RXEN) | USART3_BIT(TXEN), uart->base + USART3_CR);
 	writel((USART3_BF(USART_MODE, USART3_USART_MODE_NORMAL)
 			   | USART3_BF(USCLKS, USART3_USCLKS_MCK)
 			   | USART3_BF(CHRL, USART3_CHRL_8)
 			   | USART3_BF(PAR, USART3_PAR_NONE)
-			   | USART3_BF(NBSTOP, USART3_NBSTOP_1)), dev->map_base + USART3_MR);
+			   | USART3_BF(NBSTOP, USART3_NBSTOP_1)), uart->base + USART3_MR);
 
 	return 0;
 }
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
