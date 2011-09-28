Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R8r3q-00074J-1u
	for barebox@lists.infradead.org; Wed, 28 Sep 2011 10:08:18 +0000
Received: from gallifrey.ext.pengutronix.de
	([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <jbe@pengutronix.de>) id 1R8r3k-0004iQ-TX
	for barebox@lists.infradead.org; Wed, 28 Sep 2011 12:08:13 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 28 Sep 2011 12:08:11 +0200
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201109281208.11561.jbe@pengutronix.de>
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
Subject: [PATCH] S3C24xx/GPIO: Clean up formatting
To: barebox@lists.infradead.org

Just a clean up

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

---
 arch/arm/mach-s3c24xx/gpio-s3c24x0.c |    7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

Index: barebox-git/arch/arm/mach-s3c24xx/gpio-s3c24x0.c
===================================================================
--- barebox-git.orig/arch/arm/mach-s3c24xx/gpio-s3c24x0.c
+++ barebox-git/arch/arm/mach-s3c24xx/gpio-s3c24x0.c
@@ -67,7 +67,6 @@ int gpio_direction_input(unsigned gpio)
 	return 0;
 }
 
-
 int gpio_direction_output(unsigned gpio, int value)
 {
 	unsigned group = gpio >> 5;
@@ -177,14 +176,12 @@ int gpio_is_valid(int gpio)
 
 	offset = group_offset[group];
 
-
 #ifdef CONFIG_CPU_S3C2440
 	if ((GPADAT + offset) < GPJCON)
 		return 1;
 #else
 	if ((GPADAT + offset) < GPHCON)
 		return 1;
-
 #endif
-		return 0;
-	}
+	return 0;
+}

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-5121-206917-5128 |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
