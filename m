Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPSEu-0000jL-VG
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 07:13:26 +0000
Received: from mail195.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id B3184DC206C
 for <barebox@lists.infradead.org>; Fri, 27 Sep 2013 09:13:08 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 27 Sep 2013 09:14:17 +0200
Message-Id: <1380266058-18501-7-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 7/8] serial: amba-pl011: add start and shutdown support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/serial/amba-pl011.c | 45 +++++++++++++++++++++++++++++++++------------
 1 file changed, 33 insertions(+), 12 deletions(-)

diff --git a/drivers/serial/amba-pl011.c b/drivers/serial/amba-pl011.c
index fc7723e..5a8e633 100644
--- a/drivers/serial/amba-pl011.c
+++ b/drivers/serial/amba-pl011.c
@@ -147,14 +147,41 @@ static void pl011_rlcr(struct amba_uart_port *uart, u32 lcr)
 	}
 }
 
-int pl011_init_port (struct console_device *cdev)
+static void pl011_shutdown(struct console_device *cdev)
+{
+	struct amba_uart_port *uart = to_amba_uart_port(cdev);
+
+	writel(0x0, uart->base + UART011_CR);
+
+	clk_disable(uart->clk);
+}
+
+static int pl011_startup(struct console_device *cdev)
+{
+	struct amba_uart_port *uart = to_amba_uart_port(cdev);
+
+	/*
+	 * Try to enable the clock producer.
+	 */
+	clk_enable(uart->clk);
+
+	/*
+	 ** Finally, enable the UART
+	 */
+	writel((UART01x_CR_UARTEN | UART011_CR_TXE | UART011_CR_RXE | UART011_CR_RTS),
+	       uart->base + UART011_CR);
+
+	return 0;
+}
+
+static void pl011_port_init(struct console_device *cdev)
 {
 	struct amba_uart_port *uart = to_amba_uart_port(cdev);
 
 	/*
 	 ** First, disable everything.
 	 */
-	writel(0x0, uart->base + UART011_CR);
+	pl011_shutdown(cdev);
 
 	/*
 	 * Try to enable the clock producer.
@@ -168,13 +195,7 @@ int pl011_init_port (struct console_device *cdev)
 	 */
 	pl011_rlcr(uart, UART01x_LCRH_WLEN_8 | UART01x_LCRH_FEN);
 
-	/*
-	 ** Finally, enable the UART
-	 */
-	writel((UART01x_CR_UARTEN | UART011_CR_TXE | UART011_CR_RXE | UART011_CR_RTS),
-	       uart->base + UART011_CR);
-
-	return 0;
+	clk_disable(uart->clk);
 }
 
 static int pl011_probe(struct amba_device *dev, const struct amba_id *id)
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
