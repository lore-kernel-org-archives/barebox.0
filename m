Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x241.google.com ([2607:f8b0:400e:c01::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fG9xS-00009Y-If
 for barebox@lists.infradead.org; Tue, 08 May 2018 21:15:40 +0000
Received: by mail-pl0-x241.google.com with SMTP id f7-v6so2956960plr.4
 for <barebox@lists.infradead.org>; Tue, 08 May 2018 14:15:28 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  8 May 2018 14:15:02 -0700
Message-Id: <20180508211502.5476-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] serial: lpuart: Avoid division by zero when requested
 baudrate is
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

With serdev device support added there's now a corner case where:

 1. There is a DT node for a serdev device on one of the UARTs
 2. There is no driver that binds against serdev device's compatibility
    string

with 1 and 2 being true it is possible to end up in a situation where
a particualr UART has not been initalized to any baudrate when
clock_notifier_call_chain() gets called. This effectively translates
to

	set_baudrate(uart, 0);

which for LPUART driver result in a division by zero.

To avoid this problem, convert lpuart_serial_setbaudrate() to treat
zero baudrate as a request to disable the UART. While we are at it add
a BUG_ON() to lpuart_setbrg() to simplify finding any future bugs.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/serial/serial_lpuart.c | 13 ++++++++-----
 include/serial/lpuart.h        |  2 ++
 2 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/serial/serial_lpuart.c b/drivers/serial/serial_lpuart.c
index f28035a32..246fc3d3a 100644
--- a/drivers/serial/serial_lpuart.c
+++ b/drivers/serial/serial_lpuart.c
@@ -68,11 +68,14 @@ static int lpuart_serial_setbaudrate(struct console_device *cdev,
 
 	lpuart_enable(lpuart, false);
 
-	lpuart_setbrg(lpuart->base,
-		      clk_get_rate(lpuart->clk),
-		      baudrate);
-
-	lpuart_enable(lpuart, true);
+	/*
+	 * We treat baudrate of 0 as a request to disable UART
+	 */
+	if (baudrate) {
+		lpuart_setbrg(lpuart->base, clk_get_rate(lpuart->clk),
+			      baudrate);
+		lpuart_enable(lpuart, true);
+	}
 
 	lpuart->baudrate = baudrate;
 
diff --git a/include/serial/lpuart.h b/include/serial/lpuart.h
index a920291de..9c6e271eb 100644
--- a/include/serial/lpuart.h
+++ b/include/serial/lpuart.h
@@ -228,6 +228,8 @@ static inline void lpuart_setbrg(void __iomem *base,
 	unsigned int bfra;
 	u16 sbr;
 
+	BUG_ON(!baudrate);
+
 	sbr = (u16) (refclock / (16 * baudrate));
 
 	writeb(sbr >> 8,   base + UARTBDH);
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
