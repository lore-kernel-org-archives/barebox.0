Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cPQ99-00015u-7c
 for barebox@lists.infradead.org; Fri, 06 Jan 2017 08:45:13 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri,  6 Jan 2017 09:44:43 +0100
Message-Id: <20170106084443.21426-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH] ARM: socfpga: dtsi: remove fpgamgr+sysmgr entry
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

The fpgamgr and sysmgr bindings are now in the upstream dtsi.
Remove them.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/dts/socfpga.dtsi | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/arch/arm/dts/socfpga.dtsi b/arch/arm/dts/socfpga.dtsi
index 5b141c23914c..274c491804e0 100644
--- a/arch/arm/dts/socfpga.dtsi
+++ b/arch/arm/dts/socfpga.dtsi
@@ -25,17 +25,6 @@
 			clock-names = "qspi_clk";
 			status = "disabled";
 		};
-
-		fpgamgr@ff706000 {
-			compatible = "altr,socfpga-fpga-mgr";
-			reg = <0xff706000 0x1000>,
-			      <0xffb90000 0x1000>;
-		};
-
-		system_mgr: sysmgr@ffd08000 {
-			compatible = "altr,sys-mgr", "syscon";
-			reg = <0xffd08000 0x4000>;
-		};
        };
 };
 &osc2 {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
