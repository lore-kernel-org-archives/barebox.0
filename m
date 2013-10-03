Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo4.mail-out.ovh.net ([188.165.33.109]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VRdDu-0002DL-46
 for barebox@lists.infradead.org; Thu, 03 Oct 2013 07:21:26 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id E4D1410550BE
 for <barebox@lists.infradead.org>; Thu,  3 Oct 2013 09:21:00 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  3 Oct 2013 09:22:00 +0200
Message-Id: <1380784920-30890-8-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1380784920-30890-1-git-send-email-plagnioj@jcrosoft.com>
References: <20131003071723.GP32444@ns203013.ovh.net>
 <1380784920-30890-1-git-send-email-plagnioj@jcrosoft.com>
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
 drivers/serial/atmel.c | 55 +++++++++++++++++++++++++++++++++++++-------------
 1 file changed, 41 insertions(+), 14 deletions(-)

diff --git a/drivers/serial/atmel.c b/drivers/serial/atmel.c
index c2a5d33..a1eb4cb 100644
--- a/drivers/serial/atmel.c
+++ b/drivers/serial/atmel.c
@@ -20,6 +20,7 @@
 #include <malloc.h>
 #include <io.h>
 #include <linux/clk.h>
+#include <linux/err.h>
 
 /* USART3 register offsets */
 #define USART3_CR				0x0000
@@ -388,31 +389,50 @@ static int atmel_serial_set_mode(struct console_device *cdev, enum console_mode
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
+	writel((USART3_BF(USART_MODE, USART3_USART_MODE_NORMAL)
+			   | USART3_BF(USCLKS, USART3_USCLKS_MCK)
+			   | USART3_BF(CHRL, USART3_CHRL_8)
+			   | USART3_BF(PAR, USART3_PAR_NONE)
+			   | USART3_BF(NBSTOP, USART3_NBSTOP_1)),
+			   uart->base + USART3_MR);
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
-	writel((USART3_BF(USART_MODE, USART3_USART_MODE_NORMAL)
-			   | USART3_BF(USCLKS, USART3_USCLKS_MCK)
-			   | USART3_BF(CHRL, USART3_CHRL_8)
-			   | USART3_BF(PAR, USART3_PAR_NONE)
-			   | USART3_BF(NBSTOP, USART3_NBSTOP_1)), uart->base + USART3_MR);
-
-	return 0;
+	clk_disable(uart->clk);
 }
 
 static int atmel_serial_probe(struct device_d *dev)
@@ -423,15 +443,22 @@ static int atmel_serial_probe(struct device_d *dev)
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
+	uart->base = dev_request_mem_region(dev, 0);
+
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
