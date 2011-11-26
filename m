Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RUN4H-0007hS-2W
 for barebox@lists.infradead.org; Sat, 26 Nov 2011 18:33:41 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1RUN4B-0001aS-Qt
 for barebox@lists.infradead.org; Sat, 26 Nov 2011 19:33:35 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sat, 26 Nov 2011 19:32:49 +0100
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201111261932.49351.jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: S3C24XX: Fix wrong RTS behaviour
To: barebox@lists.infradead.org

Enabling AUTOSYNC means enabling the auto sync feature, not rising the RTS

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

---
 drivers/serial/serial_s3c24x0.c |    2 ++
 1 file changed, 2 insertions(+)

Index: barebox-git/drivers/serial/serial_s3c24x0.c
===================================================================
--- barebox-git.orig/drivers/serial/serial_s3c24x0.c
+++ barebox-git/drivers/serial/serial_s3c24x0.c
@@ -72,6 +72,8 @@ static int s3c24x0_serial_init_port(stru
 	writew(0x0245, base + UCON);
 
 #ifdef CONFIG_DRIVER_SERIAL_S3C24X0_AUTOSYNC
+	writeb(0x10, base + UMCON); /* enable auto flow control */
+#else
 	writeb(0x01, base + UMCON); /* RTS up */
 #endif
 
-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
