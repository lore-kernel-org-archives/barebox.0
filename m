Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SsItc-00068z-OQ
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 19:30:00 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1SsItY-0005c5-Bs
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 21:29:48 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1SsItX-0007gq-FK
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 21:29:47 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 20 Jul 2012 21:29:44 +0200
Message-Id: <1342812585-22017-9-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1342812585-22017-1-git-send-email-jbe@pengutronix.de>
References: <1342812585-22017-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 8/9] Samsung/serial: unify UCON register settings
To: barebox@lists.infradead.org

This should work on S3C24XX and S3C64XX SoCs.

Tested at runtime on a Mini2440 and Mini6410.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/serial/serial_s3c.c |   10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/serial/serial_s3c.c b/drivers/serial/serial_s3c.c
index 01f2246..39680ae 100644
--- a/drivers/serial/serial_s3c.c
+++ b/drivers/serial/serial_s3c.c
@@ -102,9 +102,13 @@ static int s3c_serial_init_port(struct console_device *cdev)
 	/* Normal,No parity,1 stop,8 bit */
 	writeb(0x03, base + ULCON);
 
-	/* tx=level,rx=edge,disable timeout int.,enable rx error int.,
-	 * normal, interrupt or polling, no pre-divider */
-	writew(0x0245 | UCON_SET_CLK_SRC(S3C_UART_CLKSEL),
+	/*
+	 * S3C2440 SoC:
+	 *  - no clock divider
+	 * all SoCs:
+	 *  - enable receive and transmit mode
+	 */
+	writew(0x0005 | UCON_SET_CLK_SRC(S3C_UART_CLKSEL),
 						base + UCON);
 
 	if (IS_ENABLED(CONFIG_SAMSUNG_IMPROVED_UART))
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
