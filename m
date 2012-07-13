Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Spl77-0002ee-K5
 for barebox@lists.infradead.org; Fri, 13 Jul 2012 19:01:19 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1Spl72-0008Ee-Lw
 for barebox@lists.infradead.org; Fri, 13 Jul 2012 21:01:12 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1Spl72-0005Iw-J0
 for barebox@lists.infradead.org; Fri, 13 Jul 2012 21:01:12 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 13 Jul 2012 21:00:58 +0200
Message-Id: <1342206070-29698-7-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1342206070-29698-1-git-send-email-jbe@pengutronix.de>
References: <1342206070-29698-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 06/18] Samsung/serial: make the code more readable
To: barebox@lists.infradead.org

This bit magic is just setting and reading the UART's selected clock source.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/serial/serial_s3c.c |    8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/serial/serial_s3c.c b/drivers/serial/serial_s3c.c
index 5c05ba8..a4c1f68 100644
--- a/drivers/serial/serial_s3c.c
+++ b/drivers/serial/serial_s3c.c
@@ -31,6 +31,8 @@
 /* Note: Offsets are for little endian access */
 #define ULCON 0x00		/* line control */
 #define UCON 0x04		/* UART control */
+# define UCON_SET_CLK_SRC(x) (((x) & 0x03) << 10)
+# define UCON_GET_CLK_SRC(x) (((x) >> 10) & 0x03)
 #define UFCON 0x08		/* FIFO control */
 #define UMCON 0x0c		/* modem control */
 #define UTRSTAT 0x10		/* Rx/Tx status */
@@ -57,8 +59,7 @@ struct s3c_uart {
 static unsigned s3c_get_arch_uart_input_clock(void __iomem *base)
 {
 	unsigned reg = readw(base + UCON);
-	reg = (reg >> 10) & 0x3;
-	return s3c_get_uart_clk(reg);
+	return s3c_get_uart_clk(UCON_GET_CLK_SRC(reg));
 }
 
 #ifdef S3C_UART_HAS_UBRDIVSLOT
@@ -103,7 +104,8 @@ static int s3c_serial_init_port(struct console_device *cdev)
 
 	/* tx=level,rx=edge,disable timeout int.,enable rx error int.,
 	 * normal, interrupt or polling, no pre-divider */
-	writew(0x0245 | ((CONFIG_DRIVER_SERIAL_S3C_CLK) << 10), base + UCON);
+	writew(0x0245 | UCON_SET_CLK_SRC(CONFIG_DRIVER_SERIAL_S3C_CLK),
+						base + UCON);
 
 #ifdef S3C_UART_HAS_UINTM
 	/* 'interrupt or polling mode' for both directions */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
