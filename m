Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.microcatalog.org.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1cblA8-00067l-Pr
 for barebox@lists.infradead.org; Thu, 09 Feb 2017 09:37:15 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id EB852A0022B
 for <barebox@lists.infradead.org>; Thu,  9 Feb 2017 10:36:59 +0100 (CET)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Thu, 9 Feb 2017 10:36:41 +0100
Message-Id: <1486633003-34908-1-git-send-email-w.egorov@phytec.de>
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
Subject: [PATCH 1/2] ARM: phycore-rk3288: Use UART2 as debug output
To: barebox@lists.infradead.org

RK3288's UART2 is the default debug uart interface.

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 arch/arm/boards/phytec-som-rk3288/lowlevel.c | 11 +++++------
 arch/arm/dts/rk3288-phycore-som.dts          |  2 +-
 2 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boards/phytec-som-rk3288/lowlevel.c b/arch/arm/boards/phytec-som-rk3288/lowlevel.c
index 7804a55..7649ef8 100644
--- a/arch/arm/boards/phytec-som-rk3288/lowlevel.c
+++ b/arch/arm/boards/phytec-som-rk3288/lowlevel.c
@@ -30,14 +30,13 @@ ENTRY_FUNCTION(start_rk3288_phycore_som, r0, r1, r2)
 
 	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
 		struct rk3288_grf * const grf = (void *)RK3288_GRF_BASE;
-		rk_clrsetreg(&grf->gpio4c_iomux,
-			GPIO4C1_MASK << GPIO4C1_SHIFT |
-			GPIO4C0_MASK << GPIO4C0_SHIFT,
-			GPIO4C1_UART0BT_SOUT << GPIO4C1_SHIFT |
-			GPIO4C0_UART0BT_SIN << GPIO4C0_SHIFT);
+		rk_clrsetreg(&grf->gpio7ch_iomux,
+			     GPIO7C7_MASK << GPIO7C7_SHIFT |
+			     GPIO7C6_MASK << GPIO7C6_SHIFT,
+			     GPIO7C7_UART2DBG_SOUT << GPIO7C7_SHIFT |
+			     GPIO7C6_UART2DBG_SIN << GPIO7C6_SHIFT);
 		INIT_LL();
 	}
-
 	fdt = __dtb_rk3288_phycore_som_start - get_runtime_offset();
 
 	barebox_arm_entry(0x0, SZ_1G, fdt);
diff --git a/arch/arm/dts/rk3288-phycore-som.dts b/arch/arm/dts/rk3288-phycore-som.dts
index 5410bd1..dd74bcf 100644
--- a/arch/arm/dts/rk3288-phycore-som.dts
+++ b/arch/arm/dts/rk3288-phycore-som.dts
@@ -44,7 +44,7 @@
 	};
 
 	chosen {
-		stdout-path = &uart0;
+		stdout-path = &uart2;
 
 		environment-emmc {
 			compatible = "barebox,environment";
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
