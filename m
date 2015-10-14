Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZmMHs-0004c0-9m
 for barebox@lists.infradead.org; Wed, 14 Oct 2015 13:40:13 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 14 Oct 2015 15:39:38 +0200
Message-Id: <1444829979-1100-5-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1444829979-1100-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1444829979-1100-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 5/6] ARM: i.MX6qdl: add caam node
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/dts/imx6qdl.dtsi | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm/dts/imx6qdl.dtsi b/arch/arm/dts/imx6qdl.dtsi
index 828be9ce0dbb..d5e7ee2fe547 100644
--- a/arch/arm/dts/imx6qdl.dtsi
+++ b/arch/arm/dts/imx6qdl.dtsi
@@ -1,3 +1,4 @@
+#include <dt-bindings/clock/imx6qdl-clock.h>
 
 / {
 	aliases {
@@ -7,4 +8,26 @@
 		pwm3 = &pwm4;
 		ipu0 = &ipu1;
 	};
+
+	crypto: caam@2100000 {
+		compatible = "fsl,sec-v4.0", "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		reg = <0x2100000 0x1000>;
+		ranges = <0 0x2100000 0x40000>;
+		clocks = <&clks IMX6QDL_CAAM_MEM>,
+			 <&clks IMX6QDL_CAAM_ACLK>,
+			 <&clks IMX6QDL_CAAM_IPG>,
+			 <&clks IMX6QDL_CLK_EIM_SLOW>;
+		clock-names = "caam_mem", "caam_aclk", "caam_ipg", "caam_emi_slow";
+		interrupt-parent = <&intc>;
+
+		sec_jr0: jr0@1000 {
+			compatible = "fsl,sec-v4.0-job-ring";
+			reg = <0x1000 0x1000>;
+			interrupt-parent = <&intc>;
+			interrupts = <0 105 0x4>;
+		};
+
+	};
 };
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
