Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp125.iad3b.emailsrvr.com ([146.20.161.125])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hE9g3-0004rF-Nq
 for barebox@lists.infradead.org; Wed, 10 Apr 2019 09:37:57 +0000
From: Ian Abbott <abbotti@mev.co.uk>
Date: Wed, 10 Apr 2019 10:37:37 +0100
Message-Id: <20190410093737.8862-1-abbotti@mev.co.uk>
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
Subject: [PATCH] ARM: socfpga: Cyclone5: remove watchdog_disable()
To: barebox@lists.infradead.org
Cc: Ian Abbott <abbotti@mev.co.uk>

watchdog_disable() is left over from the original SoCFPGA commit and
nothing calls it.  Remove it to avoid a '-Wmissing-prototypes' warning
from the compiler.

Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 arch/arm/mach-socfpga/cyclone5-reset-manager.c | 17 -----------------
 1 file changed, 17 deletions(-)

diff --git a/arch/arm/mach-socfpga/cyclone5-reset-manager.c b/arch/arm/mach-socfpga/cyclone5-reset-manager.c
index 4bbe1a810..863580684 100644
--- a/arch/arm/mach-socfpga/cyclone5-reset-manager.c
+++ b/arch/arm/mach-socfpga/cyclone5-reset-manager.c
@@ -22,23 +22,6 @@
 #include <mach/cyclone5-regs.h>
 #include <mach/cyclone5-reset-manager.h>
 
-/* Disable the watchdog (toggle reset to watchdog) */
-void watchdog_disable(void)
-{
-	void __iomem *rm = (void *)CYCLONE5_RSTMGR_ADDRESS;
-	uint32_t val;
-
-	/* assert reset for watchdog */
-	val = readl(rm + RESET_MGR_PER_MOD_RESET_OFS);
-	val |= 1 << RSTMGR_PERMODRST_L4WD0_LSB;
-	writel(val, rm + RESET_MGR_PER_MOD_RESET_OFS);
-
-	/* deassert watchdog from reset (watchdog in not running state) */
-	val = readl(rm + RESET_MGR_PER_MOD_RESET_OFS);
-	val &= ~(1 << RSTMGR_PERMODRST_L4WD0_LSB);
-	writel(val, rm + RESET_MGR_PER_MOD_RESET_OFS);
-}
-
 /* Write the reset manager register to cause reset */
 static void __noreturn socfpga_restart_soc(struct restart_handler *rst)
 {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
