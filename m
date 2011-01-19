Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PfX9t-0006HM-K2
	for barebox@lists.infradead.org; Wed, 19 Jan 2011 12:29:06 +0000
Received: from gallifrey.ext.pengutronix.de
	([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <jbe@pengutronix.de>) id 1PfX9l-0005tM-Qt
	for barebox@lists.infradead.org; Wed, 19 Jan 2011 13:28:58 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 19 Jan 2011 13:27:23 +0100
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201101191327.23492.jbe@pengutronix.de>
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
Subject: [PATCH] Compiling at91sam9g45 fails with NAND driver enabled
To: barebox@lists.infradead.org

Enabling the AT91 NAND driver fails with the following error:

arch/arm/mach-at91/at91sam9g45_devices.c: In function 'at91_add_device_nand':
arch/arm/mach-at91/at91sam9g45_devices.c:101: error: 'NAND_ECC_HW' undeclared (first use in this function)

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index ddb005a..cb88208 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -17,6 +17,9 @@
 #include <mach/board.h>
 #include <mach/gpio.h>
 #include <mach/io.h>
+#if defined(CONFIG_NAND_ATMEL)
+#include <linux/mtd/nand.h>
+#endif
 
 #include "generic.h"
 

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
