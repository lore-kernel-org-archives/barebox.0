Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UNIQz-0005EZ-PB
 for barebox@lists.infradead.org; Wed, 03 Apr 2013 07:48:42 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed,  3 Apr 2013 09:48:34 +0200
Message-Id: <1364975314-29691-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH] ARM: zynq: fix zynq_clks enum
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

clk-zynq7000 registers arm_smp_twd as clk. This clock was however not added to
the zynq_clks enum.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-zynq/clk-zynq7000.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-zynq/clk-zynq7000.c b/arch/arm/mach-zynq/clk-zynq7000.c
index 1e03514..3dedefa 100644
--- a/arch/arm/mach-zynq/clk-zynq7000.c
+++ b/arch/arm/mach-zynq/clk-zynq7000.c
@@ -31,7 +31,8 @@
 
 enum zynq_clks {
 	dummy, ps_clk, arm_pll, ddr_pll, io_pll, uart_clk, uart0, uart1,
-	cpu_clk, cpu_6x4x, cpu_3x2x, cpu_2x, cpu_1x, clks_max
+	cpu_clk, cpu_6x4x, cpu_3x2x, cpu_2x, cpu_1x, arm_smp_twd,
+	clks_max
 };
 
 enum zynq_pll_type {
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
