Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fYrPA-0007ca-F7
 for barebox@lists.infradead.org; Fri, 29 Jun 2018 11:17:33 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 29 Jun 2018 13:17:14 +0200
Message-Id: <20180629111715.16082-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1 1/2] arm: arria10: enable errata 794072 and 845369
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

This SoC is affected by this two any many other erratas.
So enable at least supported cases.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/mach-socfpga/arria10-init.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/mach-socfpga/arria10-init.c b/arch/arm/mach-socfpga/arria10-init.c
index 07256da1db..f016b84bb7 100644
--- a/arch/arm/mach-socfpga/arria10-init.c
+++ b/arch/arm/mach-socfpga/arria10-init.c
@@ -14,6 +14,7 @@
 #include <mach/generic.h>
 #include <asm/io.h>
 #include <asm/cache-l2x0.h>
+#include <asm/errata.h>
 #include <asm/system.h>
 
 #define L310_AUX_CTRL_EARLY_BRESP		BIT(30)	/* R2P0+ */
@@ -70,6 +71,9 @@ static void arria10_initialize_security_policies(void)
 	/* BootROM leaves the L2X0 in a weird state. Always disable L2X0 for now. */
 	l2c310_disable(l2x0_base);
 
+	enable_arm_errata_794072_war();
+	enable_arm_errata_845369_war();
+
 	/* Put OCRAM in non-secure */
 	writel(0x003f0000, ARRIA10_NOC_FW_OCRAM_OCRAM_SCR_REGION0);
 	writel(0x1, ARRIA10_NOC_FW_OCRAM_OCRAM_SCR_EN);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
