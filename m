Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SsItc-000693-OB
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 19:29:54 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1SsItY-0005c2-C4
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 21:29:48 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1SsItX-0007gb-EI
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 21:29:47 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 20 Jul 2012 21:29:41 +0200
Message-Id: <1342812585-22017-6-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 5/9] Samsung/serial: there is no need to ifdef these register
 defines
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/serial/serial_s3c.c |    8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/serial/serial_s3c.c b/drivers/serial/serial_s3c.c
index c537bc0..3565edf 100644
--- a/drivers/serial/serial_s3c.c
+++ b/drivers/serial/serial_s3c.c
@@ -42,12 +42,8 @@
 #define UTXH 0x20		/* transmitt */
 #define URXH 0x24		/* receive */
 #define UBRDIV 0x28		/* baudrate generator */
-#ifdef S3C_UART_HAS_UBRDIVSLOT
-# define UBRDIVSLOT 0x2c	/* baudrate slot generator */
-#endif
-#ifdef S3C_UART_HAS_UINTM
-# define UINTM 0x38		/* interrupt mask register */
-#endif
+#define UBRDIVSLOT 0x2c		/* baudrate slot generator */
+#define UINTM 0x38		/* interrupt mask register */
 
 #ifndef S3C_UART_CLKSEL
 /* Use pclk */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
