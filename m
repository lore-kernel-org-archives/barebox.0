Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYtTa-0000lT-8z
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 14:02:37 +0000
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 17 Dec 2018 15:02:10 +0100
Message-Id: <1545055330-33957-2-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1545055330-33957-1-git-send-email-t.remmet@phytec.de>
References: <1545055330-33957-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 2/2] arm: dts: am335x strip: Don't strip timer2 anymore
To: barebox@lists.infradead.org

dmtimer has been converted to a real driver and needs a device now.
am335x devices are taken from dt also in mlo. Don't strip the dmtimer device
from the include as we need it now.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/dts/am33xx-clocks-strip.dtsi | 2 --
 arch/arm/dts/am33xx-strip.dtsi        | 1 -
 2 files changed, 3 deletions(-)

diff --git a/arch/arm/dts/am33xx-clocks-strip.dtsi b/arch/arm/dts/am33xx-clocks-strip.dtsi
index 92906deafe6e..706e1c971202 100644
--- a/arch/arm/dts/am33xx-clocks-strip.dtsi
+++ b/arch/arm/dts/am33xx-clocks-strip.dtsi
@@ -22,7 +22,6 @@
 /delete-node/ &ehrpwm2_tbclk;
 /delete-node/ &clk_32768_ck;
 /delete-node/ &clk_rc32k_ck;
-/delete-node/ &tclkin_ck;
 /delete-node/ &dpll_core_m6_ck;
 /delete-node/ &dpll_mpu_m2_ck;
 /delete-node/ &dpll_ddr_ck;
@@ -40,7 +39,6 @@
 /delete-node/ &pruss_ocp_gclk;
 /delete-node/ &mmu_fck;
 /delete-node/ &timer1_fck;
-/delete-node/ &timer2_fck;
 /delete-node/ &timer3_fck;
 /delete-node/ &timer4_fck;
 /delete-node/ &timer5_fck;
diff --git a/arch/arm/dts/am33xx-strip.dtsi b/arch/arm/dts/am33xx-strip.dtsi
index 0c9d8526304d..b776c9cee740 100644
--- a/arch/arm/dts/am33xx-strip.dtsi
+++ b/arch/arm/dts/am33xx-strip.dtsi
@@ -27,7 +27,6 @@
 /delete-node/ &dcan1;
 /delete-node/ &mailbox;
 /delete-node/ &timer1;
-/delete-node/ &timer2;
 /delete-node/ &timer3;
 /delete-node/ &timer4;
 /delete-node/ &timer5;
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
