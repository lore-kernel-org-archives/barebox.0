Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzhQ0-0000DH-KD
 for barebox@lists.infradead.org; Wed, 25 Jun 2014 07:14:57 +0000
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 25 Jun 2014 09:18:21 +0200
Message-Id: <1403680701-10494-4-git-send-email-dev@lynxeye.de>
In-Reply-To: <1403680701-10494-1-git-send-email-dev@lynxeye.de>
References: <1403680701-10494-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 4/4] arm: tegra: enable ARM errata workarounds
To: barebox@lists.infradead.org

From: Lucas Stach <l.stach@pengutronix.de>

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-tegra/tegra_maincomplex_init.c | 21 +++++++++++++++++++--
 1 file changed, 19 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-tegra/tegra_maincomplex_init.c b/arch/arm/mach-tegra/tegra_maincomplex_init.c
index 17490a4..4a362dd 100644
--- a/arch/arm/mach-tegra/tegra_maincomplex_init.c
+++ b/arch/arm/mach-tegra/tegra_maincomplex_init.c
@@ -18,6 +18,7 @@
 #include <sizes.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
+#include <asm/errata.h>
 #include <mach/lowlevel.h>
 #include <mach/tegra20-pmc.h>
 #include <mach/tegra20-car.h>
@@ -30,6 +31,23 @@ void tegra_maincomplex_entry(void)
 
 	arm_cpu_lowlevel_init();
 
+	chiptype = tegra_get_chiptype();
+
+	/* enable ARM errata workarounds early */
+	switch (chiptype) {
+	case TEGRA20:
+		enable_arm_errata_716044_war();
+		enable_arm_errata_742230_war();
+		enable_arm_errata_751472_war();
+		break;
+	case TEGRA30:
+		enable_arm_errata_743622_war();
+		enable_arm_errata_751472_war();
+		break;
+	default:
+		break;
+	}
+
 	/* switch to PLLX */
 	writel(CRC_CCLK_BURST_POLICY_SYS_STATE_RUN <<
 	       CRC_CCLK_BURST_POLICY_SYS_STATE_SHIFT |
@@ -38,8 +56,6 @@ void tegra_maincomplex_entry(void)
 	       TEGRA_CLK_RESET_BASE + CRC_CCLK_BURST_POLICY);
 	writel(CRC_SUPER_CDIV_ENB, TEGRA_CLK_RESET_BASE + CRC_SUPER_CCLK_DIV);
 
-	chiptype = tegra_get_chiptype();
-
 	if (chiptype >= TEGRA114) {
 		asm("mrc p15, 1, %0, c9, c0, 2" : : "r" (reg));
 		reg &= ~7;
@@ -51,6 +67,7 @@ void tegra_maincomplex_entry(void)
 	case TEGRA20:
 		rambase = 0x0;
 		ramsize = tegra20_get_ramsize();
+
 		break;
 	case TEGRA30:
 	case TEGRA124:
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
