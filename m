Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from comal.ext.ti.com ([198.47.26.152])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Runj8-0005mj-Ep
 for barebox@lists.infradead.org; Tue, 07 Feb 2012 16:17:06 +0000
Received: from dbdp20.itg.ti.com ([172.24.170.38])
 by comal.ext.ti.com (8.13.7/8.13.7) with ESMTP id q17GH4aP020927
 for <barebox@lists.infradead.org>; Tue, 7 Feb 2012 10:17:05 -0600
Received: from DBDE71.ent.ti.com (localhost [127.0.0.1])
 by dbdp20.itg.ti.com (8.13.8/8.13.8) with ESMTP id q17GH4Ht006487
 for <barebox@lists.infradead.org>; Tue, 7 Feb 2012 21:47:04 +0530 (IST)
From: Sanjeev Premi <premi@ti.com>
Date: Tue, 7 Feb 2012 21:46:53 +0530
Message-ID: <1328631414-19427-2-git-send-email-premi@ti.com>
In-Reply-To: <1328631414-19427-1-git-send-email-premi@ti.com>
References: <1328631414-19427-1-git-send-email-premi@ti.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] omap3evm: Remove inclusion of non-existent header
To: barebox@lists.infradead.org

File 'mach/board.h' doesn't exist any more.

Signed-off-by: Sanjeev Premi <premi@ti.com>
---
 arch/arm/boards/omap3evm/board.c |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/arch/arm/boards/omap3evm/board.c b/arch/arm/boards/omap3evm/board.c
index fdd5227..21d2504 100644
--- a/arch/arm/boards/omap3evm/board.c
+++ b/arch/arm/boards/omap3evm/board.c
@@ -59,7 +59,6 @@
 #include <mach/control.h>
 #include <mach/omap3-mux.h>
 #include <mach/gpmc.h>
-#include <mach/board.h>
 #include <errno.h>
 
 
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
