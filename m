Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Spl77-0002ed-Nn
 for barebox@lists.infradead.org; Fri, 13 Jul 2012 19:01:21 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1Spl72-0008Eb-KK
 for barebox@lists.infradead.org; Fri, 13 Jul 2012 21:01:12 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1Spl72-0005Ih-Hm
 for barebox@lists.infradead.org; Fri, 13 Jul 2012 21:01:12 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 13 Jul 2012 21:00:56 +0200
Message-Id: <1342206070-29698-5-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 04/18] Samsung/serial: remove more ugly ifdef lines
To: barebox@lists.infradead.org

More or less just cosmetic. Easier to read, and lets the compiler remove unused
code.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/serial/serial_s3c.c |    9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/serial/serial_s3c.c b/drivers/serial/serial_s3c.c
index 7a9b355..ff3792b 100644
--- a/drivers/serial/serial_s3c.c
+++ b/drivers/serial/serial_s3c.c
@@ -115,11 +115,10 @@ static int s3c_serial_init_port(struct console_device *cdev)
 	writeb(0xf, base + UINTM);
 #endif
 
-#ifdef CONFIG_DRIVER_SERIAL_S3C_AUTOSYNC
-	writeb(0x10, base + UMCON); /* enable auto flow control */
-#else
-	writeb(0x01, base + UMCON); /* RTS up */
-#endif
+	if (IS_ENABLED(CONFIG_DRIVER_SERIAL_S3C_AUTOSYNC))
+		writeb(0x10, base + UMCON); /* enable auto flow control */
+	else
+		writeb(0x01, base + UMCON); /* RTS up */
 
 	return 0;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
