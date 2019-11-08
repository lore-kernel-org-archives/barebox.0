Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT2Vl-00057l-2g
 for barebox@lists.infradead.org; Fri, 08 Nov 2019 11:33:06 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  8 Nov 2019 12:33:01 +0100
Message-Id: <20191108113302.3025-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] ARM: i.MX6: Embedsky E9: remove inaccurate comment
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The board support is likely copied from the freescale-mx6-sabrelite,
which requires some GPIOs setup before Ethernet is usable. There is no
GPIOs used in this board's code, so remove the comment and along it the
<gpio.h> header.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/embedsky-e9/board.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm/boards/embedsky-e9/board.c b/arch/arm/boards/embedsky-e9/board.c
index 0f47677bb06a..e5f92636fbc3 100644
--- a/arch/arm/boards/embedsky-e9/board.c
+++ b/arch/arm/boards/embedsky-e9/board.c
@@ -22,7 +22,6 @@
 #include <init.h>
 #include <environment.h>
 #include <mach/imx6-regs.h>
-#include <gpio.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <partition.h>
@@ -102,8 +101,4 @@ static int e9_coredevices_init(void)
 
 	return 0;
 }
-/*
- * Do this before the fec initializes but after our
- * gpios are available.
- */
 coredevice_initcall(e9_coredevices_init);
-- 
2.24.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
