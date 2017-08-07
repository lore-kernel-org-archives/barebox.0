Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1deid2-0005Mr-Ly
 for barebox@lists.infradead.org; Mon, 07 Aug 2017 14:03:34 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1deich-0002ro-5r
 for barebox@lists.infradead.org; Mon, 07 Aug 2017 16:03:11 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon,  7 Aug 2017 16:03:11 +0200
Message-Id: <20170807140311.3515-2-l.stach@pengutronix.de>
In-Reply-To: <20170807140311.3515-1-l.stach@pengutronix.de>
References: <20170807140311.3515-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: imx7: sabreSD: remove duplicate DT nodes
To: barebox@lists.infradead.org

The latest upstream DTs have been merged, so remove the now duplicate
DT nodes.

Fixes: a0a5a7b84ff8 (ARM: i.MX: Add support for NXP i.MX7 SABRESD board)
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/dts/imx7d-sdb.dts | 40 ----------------------------------------
 1 file changed, 40 deletions(-)

diff --git a/arch/arm/dts/imx7d-sdb.dts b/arch/arm/dts/imx7d-sdb.dts
index 2e48196f9f7e..b90ada61b805 100644
--- a/arch/arm/dts/imx7d-sdb.dts
+++ b/arch/arm/dts/imx7d-sdb.dts
@@ -8,7 +8,6 @@
  */
 
 #include <arm/imx7d-sdb.dts>
-#include "imx7s.dtsi"
 
 / {
 	chosen {
@@ -19,33 +18,6 @@
 		device_type = "memory";
 		reg = <0x80000000 0x40000000>;
 	};
-
-	/*
-	 * This definition is present in the latest kernel DTS file,
-	 * and could be removed once Barebox catches up.
-	 *
-	 * Ditto for pinctrl_spi4
-	 */
-	spi4 {
-		compatible = "spi-gpio";
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_spi4>;
-		gpio-sck = <&gpio1 13 GPIO_ACTIVE_HIGH>;
-		gpio-mosi = <&gpio1 9 GPIO_ACTIVE_HIGH>;
-		cs-gpios = <&gpio1 12 GPIO_ACTIVE_HIGH>;
-		num-chipselects = <1>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		extended_io: gpio-expander@0 {
-			compatible = "fairchild,74hc595";
-			gpio-controller;
-			#gpio-cells = <2>;
-			reg = <0>;
-			registers-number = <1>;
-			spi-max-frequency = <100000>;
-		};
-	};
 };
 
 &extended_io {
@@ -56,15 +28,3 @@
 		line-name = "enet-rst-b";
 	};
 };
-
-&iomuxc {
-	imx7d-sdb {
-		pinctrl_spi4: spi4grp {
-			fsl,pins = <
-				MX7D_PAD_GPIO1_IO09__GPIO1_IO9	0x59
-				MX7D_PAD_GPIO1_IO12__GPIO1_IO12	0x59
-				MX7D_PAD_GPIO1_IO13__GPIO1_IO13	0x59
-			>;
-		};
-	};
-};
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
