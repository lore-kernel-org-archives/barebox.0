Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6jyk-0001bA-JO
 for barebox@lists.infradead.org; Thu, 12 Apr 2018 21:42:03 +0000
Received: by mail-pf0-x243.google.com with SMTP id u86so4902308pfd.2
 for <barebox@lists.infradead.org>; Thu, 12 Apr 2018 14:41:52 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 12 Apr 2018 14:41:43 -0700
Message-Id: <20180412214143.17074-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] serial/lpuart: Do not enable UART FIFO
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Using FIFO in LPUART results in subtle serial input draining issues
which are quite difficult to reproduce and troubleshoot. Since the
change offered only moderate performance gain revert the code to
operate in no-FIFO mode to avoid FIFO-related problems alltogether.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/serial/serial_lpuart.c |  4 +---
 include/serial/lpuart.h        | 21 +++++----------------
 2 files changed, 6 insertions(+), 19 deletions(-)

diff --git a/drivers/serial/serial_lpuart.c b/drivers/serial/serial_lpuart.c
index 52fb6d39c..8f87f7b9c 100644
--- a/drivers/serial/serial_lpuart.c
+++ b/drivers/serial/serial_lpuart.c
@@ -170,9 +170,7 @@ static int lpuart_serial_probe(struct device_d *dev)
 
 	cdev->linux_console_name = "ttyLP";
 
-	lpuart_setup_with_fifo(lpuart->base,
-			       clk_get_rate(lpuart->clk),
-			       15);
+	lpuart_setup(lpuart->base, clk_get_rate(lpuart->clk));
 
 	ret = console_register(cdev);
 	if (!ret) {
diff --git a/include/serial/lpuart.h b/include/serial/lpuart.h
index 917f644a5..a920291de 100644
--- a/include/serial/lpuart.h
+++ b/include/serial/lpuart.h
@@ -238,22 +238,17 @@ static inline void lpuart_setbrg(void __iomem *base,
 	writeb(bfra, base + UARTCR4);
 }
 
-static inline void lpuart_setup_with_fifo(void __iomem *base,
-					  unsigned int refclock,
-					  unsigned int twfifo)
+static inline void lpuart_setup(void __iomem *base,
+				unsigned int refclock)
 {
 	/* Disable UART */
 	writeb(0, base + UARTCR2);
 	writeb(0, base + UARTMODEM);
 	writeb(0, base + UARTCR1);
 
-	if (twfifo) {
-		writeb(UARTPFIFO_TXFE | UARTPFIFO_RXFE, base + UARTPFIFO);
-		writeb((u8)twfifo, base + UARTTWFIFO);
-	} else {
-		writeb(0, base + UARTPFIFO);
-		writeb(0, base + UARTTWFIFO);
-	}
+	writeb(0, base + UARTPFIFO);
+	writeb(0, base + UARTTWFIFO);
+
 	writeb(1, base + UARTRWFIFO);
 	writeb(UARTCFIFO_RXFLUSH | UARTCFIFO_TXFLUSH, base + UARTCFIFO);
 
@@ -262,12 +257,6 @@ static inline void lpuart_setup_with_fifo(void __iomem *base,
 	writeb(UARTCR2_TE | UARTCR2_RE, base + UARTCR2);
 }
 
-static inline void lpuart_setup(void __iomem *base,
-				unsigned int refclock)
-{
-	lpuart_setup_with_fifo(base, refclock, 0x00);
-}
-
 static inline void lpuart_putc(void __iomem *base, int c)
 {
 	if (!(readb(base + UARTCR2) & UARTCR2_TE))
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
