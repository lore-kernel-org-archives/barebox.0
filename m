Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from bear.ext.ti.com ([192.94.94.41])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rkzcg-0002Fv-6D
 for barebox@lists.infradead.org; Wed, 11 Jan 2012 14:57:55 +0000
Received: from dbdp20.itg.ti.com ([172.24.170.38])
 by bear.ext.ti.com (8.13.7/8.13.7) with ESMTP id q0BEvqJu029601
 for <barebox@lists.infradead.org>; Wed, 11 Jan 2012 08:57:52 -0600
Received: from DBDE70.ent.ti.com (localhost [127.0.0.1])
 by dbdp20.itg.ti.com (8.13.8/8.13.8) with ESMTP id q0BEvpaq020040
 for <barebox@lists.infradead.org>; Wed, 11 Jan 2012 20:27:51 +0530 (IST)
From: Sanjeev Premi <premi@ti.com>
Date: Wed, 11 Jan 2012 20:27:21 +0530
Message-ID: <1326293842-3063-5-git-send-email-premi@ti.com>
In-Reply-To: <s.hauer@pengutronix.de,plagnioj@jcrosoft.com,J.Kilb@phytec.de>
References: <s.hauer@pengutronix.de,plagnioj@jcrosoft.com,J.Kilb@phytec.de>
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
Subject: [PATCH 4/5] ARM omap3evm: Enable HSMMC device
To: barebox@lists.infradead.org

Enable the HSMMC device to fix these errors:

   Board: Texas Instrument's OMAP3EVM
   Malloc space: 0x87bfff10 -> 0x87ffff0f (size  4 MB)
   Stack space : 0x87bf7f10 -> 0x87bfff10 (size 32 kB)
   booting from MMC1
   mounting sd card failed with -22
   booting failed

Signed-off-by: Sanjeev Premi <premi@ti.com>
---

 Did basic boot testing on OMAP3EVM after this
 change.


 arch/arm/boards/omap/board-omap3evm.c |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/omap/board-omap3evm.c b/arch/arm/boards/omap/board-omap3evm.c
index 9e96bc8..9e292d2 100644
--- a/arch/arm/boards/omap/board-omap3evm.c
+++ b/arch/arm/boards/omap/board-omap3evm.c
@@ -49,6 +49,7 @@
 #include <init.h>
 #include <driver.h>
 #include <io.h>
+#include <sizes.h>
 #include <ns16550.h>
 #include <asm/armlinux.h>
 #include <mach/silicon.h>
@@ -252,6 +253,10 @@ static int omap3evm_init_devices(void)
 	 */
 	gpmc_generic_init(0x10);
 #endif
+#ifdef CONFIG_MCI_OMAP_HSMMC
+	add_generic_device("omap-hsmmc", -1, NULL, OMAP_MMC1_BASE, SZ_4K,
+				IORESOURCE_MEM, NULL);
+#endif
 	return 0;
 }
 device_initcall(omap3evm_init_devices);
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
