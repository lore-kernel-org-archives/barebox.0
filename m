Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPSEy-0000jM-EZ
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 07:13:30 +0000
Received: from mail195.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id D2E22DC2071
 for <barebox@lists.infradead.org>; Fri, 27 Sep 2013 09:13:08 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 27 Sep 2013 09:14:18 +0200
Message-Id: <1380266058-18501-8-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1380266058-18501-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130927071255.GB32444@ns203013.ovh.net>
 <1380266058-18501-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 8/8] serial: atmel: add start and shutdown support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/serial/atmel.c | 42 +++++++++++++++++++++++++++++++++---------
 1 file changed, 33 insertions(+), 9 deletions(-)

diff --git a/drivers/serial/atmel.c b/drivers/serial/atmel.c
index c2a5d33..10eb2e7 100644
--- a/drivers/serial/atmel.c
+++ b/drivers/serial/atmel.c
@@ -388,31 +388,50 @@ static int atmel_serial_set_mode(struct console_device *cdev, enum console_mode
 	return 0;
 }
 
+static void atmel_serial_shutdown(struct console_device *cdev)
+{
+	struct atmel_uart_port *uart = to_atmel_uart_port(cdev);
+
+	writel(USART3_BIT(RXDIS) | USART3_BIT(TXDIS), uart->base + USART3_CR);
+	writel(0, uart->base + USART3_BRGR);
+
+	clk_disable(uart->clk);
+}
+
+static int atmel_serial_startup(struct console_device *cdev)
+{
+	struct atmel_uart_port *uart = to_atmel_uart_port(cdev);
+
+	clk_enable(uart->clk);
+
+	writel(USART3_BIT(RXEN) | USART3_BIT(TXEN), uart->base + USART3_CR);
+
+	return 0;
+}
+
 /*
  * Initialise the serial port with the given baudrate. The settings
  * are always 8 data bits, no parity, 1 stop bit, no start bits.
  *
  */
-static int atmel_serial_init_port(struct console_device *cdev)
+static void atmel_serial_init(struct console_device *cdev)
 {
-	struct device_d *dev = cdev->dev;
 	struct atmel_uart_port *uart = to_atmel_uart_port(cdev);
 
-	uart->base = dev_request_mem_region(dev, 0);
-	uart->clk = clk_get(dev, "usart");
 	clk_enable(uart->clk);
+
 	uart->uartclk = clk_get_rate(uart->clk);
 
 	writel(USART3_BIT(RSTRX) | USART3_BIT(RSTTX), uart->base + USART3_CR);
 
-	writel(USART3_BIT(RXEN) | USART3_BIT(TXEN), uart->base + USART3_CR);
 	writel((USART3_BF(USART_MODE, USART3_USART_MODE_NORMAL)
 			   | USART3_BF(USCLKS, USART3_USCLKS_MCK)
 			   | USART3_BF(CHRL, USART3_CHRL_8)
 			   | USART3_BF(PAR, USART3_PAR_NONE)
-			   | USART3_BF(NBSTOP, USART3_NBSTOP_1)), uart->base + USART3_MR);
+			   | USART3_BF(NBSTOP, USART3_NBSTOP_1)),
+			   uart->base + USART3_MR);
 
-	return 0;
+	clk_disable(uart->clk);
 }
 
 static int atmel_serial_probe(struct device_d *dev)
@@ -423,15 +442,20 @@ static int atmel_serial_probe(struct device_d *dev)
 	uart = xzalloc(sizeof(struct atmel_uart_port));
 	cdev = &uart->uart;
 	cdev->dev = dev;
+	cdev->startup = atmel_serial_startup;
+	cdev->shutdown = atmel_serial_shutdown;
 	cdev->tstc = atmel_serial_tstc;
 	cdev->putc = atmel_serial_putc;
 	cdev->getc = atmel_serial_getc;
 	cdev->setbrg = atmel_serial_setbaudrate;
 	cdev->set_mode = atmel_serial_set_mode;
 
-	atmel_serial_init_port(cdev);
+	uart->clk = clk_get(dev, "usart");
+
+	if (IS_ERR(uart->clk))
+		return PTR_ERR(uart->clk);
 
-	/* Enable UART */
+	atmel_serial_init(cdev);
 
 	console_register(cdev);
 
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
