Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eZBbZ-00032h-2T
 for barebox@lists.infradead.org; Wed, 10 Jan 2018 08:19:26 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 10 Jan 2018 09:19:11 +0100
Message-Id: <20180110081912.21808-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: socfpga: get rid of clock-frequency assignments
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

The clock framework used to need the clock-frequency property,
even if 0, to work correctly.
This is no longer necessary. So, get rid of the assignments.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/dts/socfpga.dtsi | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/arch/arm/dts/socfpga.dtsi b/arch/arm/dts/socfpga.dtsi
index b3a7f69ffe09..2fe8f8687593 100644
--- a/arch/arm/dts/socfpga.dtsi
+++ b/arch/arm/dts/socfpga.dtsi
@@ -11,17 +11,6 @@
 		mmc0 = &mmc;
 	};
 };
-&osc2 {
-	clock-frequency = <0>;
-};
-
-&f2s_periph_ref_clk {
-	clock-frequency = <0>;
-};
-
-&f2s_sdram_ref_clk {
-	clock-frequency = <0>;
-};
 
 &watchdog0 {
 	resets = <&rst L4WD0_RESET>;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
