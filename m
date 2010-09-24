Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Oz7vr-0004Mm-OB
	for barebox@lists.infradead.org; Fri, 24 Sep 2010 13:03:20 +0000
Received: from gallifrey.ext.pengutronix.de
	([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1Oz7vq-0000dN-4K
	for barebox@lists.infradead.org; Fri, 24 Sep 2010 15:03:18 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 24 Sep 2010 15:01:54 +0200
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201009241501.54827.jbe@pengutronix.de>
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
Subject: The i.MX27 has no second leve cache, remove include file
To: barebox@lists.infradead.org

commit 7edbf19ca3a3b4890043ba3707f74b7f8b4cfb7b
Author: Juergen Beisert <jbe@pengutronix.de>
Date:   Fri Sep 24 15:00:04 2010 +0200

    The i.MX27 has no second leve cache, remove include file
    
    Just a little bit cleanup.
    
    Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

diff --git a/arch/arm/boards/pcm038/lowlevel.c b/arch/arm/boards/pcm038/lowlevel.c
index 0c376f2..3c5b293 100644
--- a/arch/arm/boards/pcm038/lowlevel.c
+++ b/arch/arm/boards/pcm038/lowlevel.c
@@ -25,7 +25,6 @@
 #include <mach/imx-regs.h>
 #include <mach/imx-pll.h>
 #include <mach/esdctl.h>
-#include <asm/cache-l2x0.h>
 #include <asm/io.h>
 #include <mach/imx-nand.h>
 #include <asm/barebox-arm.h>

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
