Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OgLdZ-0000HZ-EA
	for barebox@lists.infradead.org; Tue, 03 Aug 2010 17:50:50 +0000
Received: from alto.hi.pengutronix.de ([2001:6f8:1178:2:219:99ff:fe56:9d4])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <mgr@pengutronix.de>) id 1OgLdW-0002iW-Pw
	for barebox@lists.infradead.org; Tue, 03 Aug 2010 19:50:46 +0200
Received: from mgr by alto.hi.pengutronix.de with local (Exim 4.72)
	(envelope-from <mgr@pengutronix.de>) id 1OgLdW-00042e-N0
	for barebox@lists.infradead.org; Tue, 03 Aug 2010 19:50:46 +0200
Date: Tue, 3 Aug 2010 19:50:46 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Message-ID: <20100803175046.GA15525@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: [PATCH] beagle: add missing nand headerfile
To: barebox@lists.infradead.org

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/arm/boards/omap/board-beagle.c |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/omap/board-beagle.c b/arch/arm/boards/omap/board-beagle.c
index a4cbf31..da59a93 100644
--- a/arch/arm/boards/omap/board-beagle.c
+++ b/arch/arm/boards/omap/board-beagle.c
@@ -66,6 +66,7 @@
 #include <mach/control.h>
 #include <mach/omap3-mux.h>
 #include <mach/gpmc.h>
+#include <mach/gpmc_nand.h>
 #include "board.h"
 
 /******************** Board Boot Time *******************/
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
