Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from bear.ext.ti.com ([192.94.94.41])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RunjC-0005ne-D3
 for barebox@lists.infradead.org; Tue, 07 Feb 2012 16:17:11 +0000
Received: from dbdp20.itg.ti.com ([172.24.170.38])
 by bear.ext.ti.com (8.13.7/8.13.7) with ESMTP id q17GH7sI029284
 for <barebox@lists.infradead.org>; Tue, 7 Feb 2012 10:17:08 -0600
Received: from DBDE71.ent.ti.com (localhost [127.0.0.1])
 by dbdp20.itg.ti.com (8.13.8/8.13.8) with ESMTP id q17GH7QC006493
 for <barebox@lists.infradead.org>; Tue, 7 Feb 2012 21:47:07 +0530 (IST)
From: Sanjeev Premi <premi@ti.com>
Date: Tue, 7 Feb 2012 21:46:54 +0530
Message-ID: <1328631414-19427-3-git-send-email-premi@ti.com>
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
Subject: [PATCH 2/2] omap3evm: Setup ATAGs for Linux boot
To: barebox@lists.infradead.org


Signed-off-by: Sanjeev Premi <premi@ti.com>
---
 arch/arm/boards/omap3evm/board.c |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/omap3evm/board.c b/arch/arm/boards/omap3evm/board.c
index 21d2504..3108146 100644
--- a/arch/arm/boards/omap3evm/board.c
+++ b/arch/arm/boards/omap3evm/board.c
@@ -60,6 +60,7 @@
 #include <mach/omap3-mux.h>
 #include <mach/gpmc.h>
 #include <errno.h>
+#include <generated/mach-types.h>
 
 
 /*
@@ -262,6 +263,9 @@ static int omap3evm_init_devices(void)
 	add_generic_device("omap-hsmmc", -1, NULL, OMAP_MMC1_BASE, SZ_4K,
 				IORESOURCE_MEM, NULL);
 #endif
+        armlinux_set_bootparams((void *)0x80000100);
+        armlinux_set_architecture(MACH_TYPE_OMAP3EVM);
+
 	return 0;
 }
 device_initcall(omap3evm_init_devices);
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
