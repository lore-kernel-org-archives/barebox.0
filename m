Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YTv4Q-000303-Vg
 for barebox@lists.infradead.org; Fri, 06 Mar 2015 16:25:54 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri,  6 Mar 2015 17:25:18 +0100
Message-Id: <1425659123-5365-5-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1425659123-5365-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1425659123-5365-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 4/9] ARM: dts: socfpga: add qspi node
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/dts/socfpga.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm/dts/socfpga.dtsi b/arch/arm/dts/socfpga.dtsi
index afac867c991d..251d87ed4ea2 100644
--- a/arch/arm/dts/socfpga.dtsi
+++ b/arch/arm/dts/socfpga.dtsi
@@ -587,6 +587,21 @@
 			status = "disabled";
 		};
 
+		qspi: spi@ff705000 {
+			compatible = "cdns,qspi-nor";
+                        #address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0xff705000 0x1000>,
+			      <0xffa00000 0x1000>;
+			interrupts = <0 151 4>;
+			ext-decoder = <0>;  /* external decoder */
+			fifo-depth = <128>;
+			clocks = <&qspi_clk>;
+			clock-names = "qspi_clk";
+			status = "disabled";
+		};
+
+
 		/* Local timer */
 		timer@fffec600 {
 			compatible = "arm,cortex-a9-twd-timer";
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
