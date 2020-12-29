Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kuLXL-0003qn-SF
 for barebox@lists.infradead.org; Tue, 29 Dec 2020 20:24:08 +0000
Received: from astat.fritz.box (a89-183-40-219.net-htp.de [89.183.40.219])
 by lynxeye.de (Postfix) with ESMTPA id 1E1A5E74225
 for <barebox@lists.infradead.org>; Tue, 29 Dec 2020 21:23:32 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue, 29 Dec 2020 21:23:28 +0100
Message-Id: <20201229202328.13857-1-dev@lynxeye.de>
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
Subject: [PATCH] ARM: imx8mq: reclock ARM PLL to 800MHz
To: barebox@lists.infradead.org

The BootROM sets up the ARM PLL to run at 1.6GHz and then uses the
divider after the PLL the achieve a CPU clock rate of 800MHz. New Linux
kernels (>= 5.8) switch to a clock path that bypasses the divider, as
the divider should not be used for CPU clock frequencies >1GHz. If the
BootROM setup is left unchanged this causes the CPU clock to jump to
the full 1.6GHz until CPUfreq takes over and reprograms the PLL. This
rate is outside of the chip specification and leads to crashes.

Fix this by reclocking the ARM PLL to 800MHz.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/imx8mq.dtsi | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/imx8mq.dtsi b/arch/arm/dts/imx8mq.dtsi
index ec8347f38fa8..e56cdfe1308e 100644
--- a/arch/arm/dts/imx8mq.dtsi
+++ b/arch/arm/dts/imx8mq.dtsi
@@ -17,7 +17,9 @@
 			  <&clk IMX8MQ_CLK_USDHC2>,
 			  <&clk IMX8MQ_CLK_ENET_AXI>,
 			  <&clk IMX8MQ_CLK_ENET_TIMER>,
-			  <&clk IMX8MQ_CLK_ENET_REF>;
+			  <&clk IMX8MQ_CLK_ENET_REF>,
+			  <&clk IMX8MQ_ARM_PLL>,
+			  <&clk IMX8MQ_CLK_A53_DIV>;
 
 	assigned-clock-parents =  <&clk IMX8MQ_SYS1_PLL_400M>,
 				  <&clk IMX8MQ_SYS1_PLL_400M>,
@@ -29,5 +31,7 @@
 			       <200000000>,
 			       <266000000>,
 			       <25000000>,
-			       <125000000>;
+			       <125000000>,
+			       <800000000>,
+			       <800000000>;
 };
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
