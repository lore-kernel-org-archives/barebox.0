Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo4.mail-out.ovh.net ([91.121.62.11]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VRdDt-0002DK-DW
 for barebox@lists.infradead.org; Thu, 03 Oct 2013 07:21:25 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 9C84210550D3
 for <barebox@lists.infradead.org>; Thu,  3 Oct 2013 09:21:00 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  3 Oct 2013 09:21:59 +0200
Message-Id: <1380784920-30890-7-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 7/8] serial: amba-pl011: add start and shutdown support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/serial/amba-pl011.c | 39 ++++++++++++++++++++++++++++++---------
 1 file changed, 30 insertions(+), 9 deletions(-)

diff --git a/drivers/serial/amba-pl011.c b/drivers/serial/amba-pl011.c
index fc7723e..b7e01dd 100644
--- a/drivers/serial/amba-pl011.c
+++ b/drivers/serial/amba-pl011.c
@@ -147,22 +147,24 @@ static void pl011_rlcr(struct amba_uart_port *uart, u32 lcr)
 	}
 }
 
-int pl011_init_port (struct console_device *cdev)
+static void pl011_shutdown(struct console_device *cdev)
 {
 	struct amba_uart_port *uart = to_amba_uart_port(cdev);
 
-	/*
-	 ** First, disable everything.
-	 */
 	writel(0x0, uart->base + UART011_CR);
 
+	clk_disable(uart->clk);
+}
+
+static int pl011_startup(struct console_device *cdev)
+{
+	struct amba_uart_port *uart = to_amba_uart_port(cdev);
+
 	/*
 	 * Try to enable the clock producer.
 	 */
 	clk_enable(uart->clk);
 
-	uart->uartclk = clk_get_rate(uart->clk);
-
 	/*
 	 ** Set the UART to be 8 bits, 1 stop bit, no parity, fifo enabled.
 	 */
@@ -177,6 +179,25 @@ int pl011_init_port (struct console_device *cdev)
 	return 0;
 }
 
+static void pl011_port_init(struct console_device *cdev)
+{
+	struct amba_uart_port *uart = to_amba_uart_port(cdev);
+
+	/*
+	 ** First, disable everything.
+	 */
+	pl011_shutdown(cdev);
+
+	/*
+	 * Try to enable the clock producer.
+	 */
+	clk_enable(uart->clk);
+
+	uart->uartclk = clk_get_rate(uart->clk);
+
+	clk_disable(uart->clk);
+}
+
 static int pl011_probe(struct amba_device *dev, const struct amba_id *id)
 {
 	struct amba_uart_port *uart;
@@ -192,14 +213,14 @@ static int pl011_probe(struct amba_device *dev, const struct amba_id *id)
 
 	cdev = &uart->uart;
 	cdev->dev = &dev->dev;
+	cdev->startup = pl011_startup;
+	cdev->shutdown = pl011_shutdown;
 	cdev->tstc = pl011_tstc;
 	cdev->putc = pl011_putc;
 	cdev->getc = pl011_getc;
 	cdev->setbrg = pl011_setbaudrate;
 
-	pl011_init_port(cdev);
-
-	/* Enable UART */
+	pl011_port_init(cdev);
 
 	console_register(cdev);
 
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
