Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Spl77-0002eh-Gb
 for barebox@lists.infradead.org; Fri, 13 Jul 2012 19:01:27 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1Spl72-0008Ei-NS
 for barebox@lists.infradead.org; Fri, 13 Jul 2012 21:01:12 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1Spl72-0005J6-Jn
 for barebox@lists.infradead.org; Fri, 13 Jul 2012 21:01:12 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 13 Jul 2012 21:01:00 +0200
Message-Id: <1342206070-29698-9-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 08/18] Samsung/serial: there is no need to ifdef the slot table
To: barebox@lists.infradead.org

The '__maybe_unused' attribute prevents the compiler from warning about an
unused variable and the 'static' will remove it entirely if it's not used.
This patch is only cosmetic.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/serial/serial_s3c.c |    2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/serial/serial_s3c.c b/drivers/serial/serial_s3c.c
index 125c06b..a2b8e56 100644
--- a/drivers/serial/serial_s3c.c
+++ b/drivers/serial/serial_s3c.c
@@ -58,7 +58,6 @@ static unsigned s3c_get_arch_uart_input_clock(void __iomem *base)
 	return s3c_get_uart_clk(UCON_GET_CLK_SRC(reg));
 }
 
-#ifdef S3C_UART_HAS_UBRDIVSLOT
 /*
  * This table takes the fractional value of the baud divisor and gives
  * the recommended setting for the UDIVSLOT register. Refer the datasheet
@@ -68,7 +67,6 @@ static const uint16_t udivslot_table[] __maybe_unused = {
 	0x0000, 0x0080, 0x0808, 0x0888, 0x2222, 0x4924, 0x4A52, 0x54AA,
 	0x5555, 0xD555, 0xD5D5, 0xDDD5, 0xDDDD, 0xDFDD, 0xDFDF, 0xFFDF,
 };
-#endif
 
 static int s3c_serial_setbaudrate(struct console_device *cdev, int baudrate)
 {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
