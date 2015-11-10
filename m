Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZwIUc-0006TL-Qd
 for barebox@lists.infradead.org; Tue, 10 Nov 2015 23:38:27 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Tue, 10 Nov 2015 23:37:07 +0000
Message-ID: <1447198629.4553.98.camel@rtred1test09.kymeta.local>
Content-Language: en-US
Content-ID: <5C5995307EDDE648B007757F679D3CC3@kymetacorp.com>
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
Subject: [PATCH] socfpga: Initialize emac physels to RGMII correctly
To: barebox <barebox@lists.infradead.org>

A comment in the socfpga init said that it was "Clearing emac0 PHY
interface select to 0", but this was doubly incorrect.  It was setting
physel for emac1, not emac0, and it was setting physel to 1 (RGMII)
not 0 (GMII).  All supported socfpga boards use RGMII, and use emac1,
so fix the comment to reflect the code.  But then extend the code to
set the physel for both emac0 and emac1, so it can work on boards that
use either or both emacs (which are called gmac0/1 in the dts).

The Cyclone V datasheet, page 17-60 "EMAC HPS Interface
Initialization", says to set physel while the EMAC is in reset.  So
place the EMAC in reset while changing physel.  The emacs are not in
reset as code earlier in the boot has already taken most of the
modules out of reset.  So put them back in reset while the physel is
changed.  The Linux kernel does it this way too.

If barebox has no network support, there is not much point in
configuring the emac physel lines.  This would be the case for the
xloader pre-bootloader config, which configures physel, doesn't use
the network, loads the main barebox, which then reconfigures physel
again.  Make this code depend on CONFIG_NET so it's just done in the
main barebox.  The Linux kernel does not need barebox to do this
initialization to use networking.

Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---
 arch/arm/mach-socfpga/generic.c | 35 ++++++++++++++++++++++++++++++++---
 1 file changed, 32 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-socfpga/generic.c b/arch/arm/mach-socfpga/generic.c
index 234dc52..9fad592 100644
--- a/arch/arm/mach-socfpga/generic.c
+++ b/arch/arm/mach-socfpga/generic.c
@@ -10,6 +10,7 @@
 #include <linux/stat.h>
 #include <asm/memory.h>
 #include <mach/system-manager.h>
+#include <mach/reset-manager.h>
 #include <mach/socfpga-regs.h>
 #include <mach/nic301.h>
 
@@ -55,16 +56,44 @@ static int socfpga_detect_sdram(void)
 	return 0;
 }
 
-static int socfpga_init(void)
+#if defined(CONFIG_NET)
+/* Some initialization for the EMAC */
+static void socfpga_init_emac(void)
 {
-	uint32_t val;
+	uint32_t rst, val;
+
+	/* According to Cyclone V datasheet, 17-60 "EMAC HPS Interface
+	 * Initialization", changing PHYSEL should be done with EMAC in reset
+	 * via permodrst.  */
+
+	/* Everything, except L4WD0/1, is out of reset via socfpga_lowlevel_init() */
+	rst = readl(CYCLONE5_RSTMGR_ADDRESS + RESET_MGR_PER_MOD_RESET_OFS);
+	rst |= RSTMGR_PERMODRST_EMAC0 | RSTMGR_PERMODRST_EMAC1;
+	writel(rst, CYCLONE5_RSTMGR_ADDRESS + RESET_MGR_PER_MOD_RESET_OFS);
 
-	/* Clearing emac0 PHY interface select to 0 */
+	/* Set emac0/1 PHY interface select to RGMII.  We could read phy-mode
+	 * from the device tree, if it was desired to support interfaces other
+	 * than RGMII. */
 	val = readl(CONFIG_SYSMGR_EMAC_CTRL);
+	val &= ~(SYSMGR_EMACGRP_CTRL_PHYSEL_MASK << SYSMGR_EMACGRP_CTRL_PHYSEL0_LSB);
 	val &= ~(SYSMGR_EMACGRP_CTRL_PHYSEL_MASK << SYSMGR_EMACGRP_CTRL_PHYSEL1_LSB);
+	val |= SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_RGMII << SYSMGR_EMACGRP_CTRL_PHYSEL0_LSB;
 	val |= SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_RGMII << SYSMGR_EMACGRP_CTRL_PHYSEL1_LSB;
 	writel(val, CONFIG_SYSMGR_EMAC_CTRL);
 
+	/* Take emac0 and emac1 out of reset */
+	rst &= ~(RSTMGR_PERMODRST_EMAC0 | RSTMGR_PERMODRST_EMAC1);
+	writel(rst, CYCLONE5_RSTMGR_ADDRESS + RESET_MGR_PER_MOD_RESET_OFS);
+}
+#else
+/* No need for this without network support, e.g. xloader build */
+static void socfpga_init_emac(void) {}
+#endif
+
+static int socfpga_init(void)
+{
+	socfpga_init_emac();
+
 	writel(SYSMGR_SDMMC_CTRL_DRVSEL(3) | SYSMGR_SDMMC_CTRL_SMPLSEL(0),
 		SYSMGR_SDMMCGRP_CTRL_REG);
 
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
