Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SNhXW-0006ua-8c
 for barebox@lists.infradead.org; Fri, 27 Apr 2012 09:32:34 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 27 Apr 2012 11:32:21 +0200
Message-Id: <1335519145-12349-4-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1335519145-12349-1-git-send-email-jbe@pengutronix.de>
References: <1335519145-12349-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 3/7] netX: UART may not initialize correctly.
To: barebox@lists.infradead.org
Cc: Michael Trensch <MTrensch@gmail.com>

From: Michael Trensch <MTrensch@gmail.com>

The netX internal UART latches register settings and internally uses
them only if written in the correct order. Other orders may work, but
sometimes the UART gets stuck, as the baudrate has not correctly been
set.

Signed-off-by: Michael Trensch <MTrensch@gmail.com>
Acked-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/serial/serial_netx.c |   11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/serial/serial_netx.c b/drivers/serial/serial_netx.c
index 2d4ef11..838293f 100644
--- a/drivers/serial/serial_netx.c
+++ b/drivers/serial/serial_netx.c
@@ -77,10 +77,7 @@ static int netx_serial_init_port(struct console_device *cdev)
 
 	/* disable uart */
 	writel(0, base + UART_CR);
-
-	writel(LINE_CR_8BIT | LINE_CR_FEN, base + UART_LINE_CR);
-
-	writel(DRV_ENABLE_TX | DRV_ENABLE_RTS, base + UART_DRV_ENABLE);
+	writel(BRM_CR_BAUD_RATE_MODE, base + UART_BRM_CR);
 
 	/* set baud rate */
 	divisor = 115200 * 4096;
@@ -88,9 +85,11 @@ static int netx_serial_init_port(struct console_device *cdev)
 	divisor *= 256;
 	divisor /= 100000;
 
-	writel((divisor >> 8) & 0xff, base + UART_BAUDDIV_MSB);
 	writel(divisor & 0xff, base + UART_BAUDDIV_LSB);
-	writel(BRM_CR_BAUD_RATE_MODE, base + UART_BRM_CR);
+	writel((divisor >> 8) & 0xff, base + UART_BAUDDIV_MSB);
+	writel(DRV_ENABLE_TX | DRV_ENABLE_RTS, base + UART_DRV_ENABLE);
+
+	writel(LINE_CR_8BIT | LINE_CR_FEN, base + UART_LINE_CR);
 
 	/* Finally, enable the UART */
 	writel(CR_UARTEN, base + UART_CR);
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
