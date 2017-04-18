Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d0UOx-0003UZ-NX
 for barebox@lists.infradead.org; Tue, 18 Apr 2017 14:46:46 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 18 Apr 2017 16:46:15 +0200
Message-Id: <20170418144615.22989-2-s.trumtrar@pengutronix.de>
In-Reply-To: <20170418144615.22989-1-s.trumtrar@pengutronix.de>
References: <20170418144615.22989-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: socfpga: dtsi: use upstream node
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/dts/socfpga.dtsi | 16 ----------------
 1 file changed, 16 deletions(-)

diff --git a/arch/arm/dts/socfpga.dtsi b/arch/arm/dts/socfpga.dtsi
index 274c491804e0..b3a7f69ffe09 100644
--- a/arch/arm/dts/socfpga.dtsi
+++ b/arch/arm/dts/socfpga.dtsi
@@ -10,22 +10,6 @@
 	aliases {
 		mmc0 = &mmc;
 	};
-
-	soc {
-		qspi: spi@ff705000 {
-			compatible = "cdns,qspi-nor";
-			#address-cells = <1>;
-			#size-cells = <0>;
-			reg = <0xff705000 0x1000>,
-			      <0xffa00000 0x1000>;
-			interrupts = <0 151 4>;
-			ext-decoder = <0>;  /* external decoder */
-			fifo-depth = <128>;
-			clocks = <&qspi_clk>;
-			clock-names = "qspi_clk";
-			status = "disabled";
-		};
-       };
 };
 &osc2 {
 	clock-frequency = <0>;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
