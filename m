Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1POWBm-0003zC-Ol
	for barebox@lists.infradead.org; Fri, 03 Dec 2010 14:00:43 +0000
Received: from gallifrey.ext.pengutronix.de
	([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1POWBg-0000UQ-Eg
	for barebox@lists.infradead.org; Fri, 03 Dec 2010 15:00:36 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 3 Dec 2010 14:59:50 +0100
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201012031459.50684.jbe@pengutronix.de>
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
Subject: [PATCH] STM/MCI: Fix wrong register bit
To: barebox@lists.infradead.org


Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/mci/stm378x.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

Index: barebox-git/drivers/mci/stm378x.c
===================================================================
--- barebox-git.orig/drivers/mci/stm378x.c
+++ barebox-git/drivers/mci/stm378x.c
@@ -52,7 +52,7 @@
 # define SSP_CTRL0_SFTRST (1 << 31)
 # define SSP_CTRL0_CLKGATE (1 << 30)
 # define SSP_CTRL0_RUN (1 << 29)
-# define SSP_CTRL0_LOCK_CS (1 << 29)
+# define SSP_CTRL0_LOCK_CS (1 << 27)
 # define SSP_CTRL0_READ (1 << 25)
 # define SSP_CTRL0_IGNORE_CRC (1 << 26)
 # define SSP_CTRL0_DATA_XFER (1 << 24)

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
