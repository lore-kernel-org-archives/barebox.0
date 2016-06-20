Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bEvVV-0004Fc-BE
 for barebox@lists.infradead.org; Mon, 20 Jun 2016 09:28:41 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1bEvV8-00086Z-K9
 for barebox@lists.infradead.org; Mon, 20 Jun 2016 11:28:14 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 20 Jun 2016 11:28:13 +0200
Message-Id: <1466414894-6643-1-git-send-email-l.stach@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] aiodev: imx_thermal: remove empty include
To: barebox@lists.infradead.org

This file doesn't hold any content any more, so there is no
need to include it.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/aiodev/imx_thermal.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/aiodev/imx_thermal.c b/drivers/aiodev/imx_thermal.c
index 08532a743fcb..1928ed867ca5 100644
--- a/drivers/aiodev/imx_thermal.c
+++ b/drivers/aiodev/imx_thermal.c
@@ -33,7 +33,6 @@
 #include <linux/math64.h>
 #include <linux/log2.h>
 #include <linux/clk.h>
-#include <mach/clock.h>
 #include <mach/imx6-anadig.h>
 #include <io.h>
 #include <aiodev.h>
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
