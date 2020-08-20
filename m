Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8f69-0004mr-QU
 for barebox@lists.infradead.org; Thu, 20 Aug 2020 07:35:03 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 20 Aug 2020 09:34:53 +0200
Message-Id: <20200820073454.17500-12-o.rempel@pengutronix.de>
In-Reply-To: <20200820073454.17500-1-o.rempel@pengutronix.de>
References: <20200820073454.17500-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v5 11/12] ARM: dts: protonic: properly define PHY nodes on
 lanmcu and plym2m boards
To: barebox@lists.infradead.org, david@protonic.nl
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/dts/imx6dl-lanmcu.dts | 15 ++++++++++++++-
 arch/arm/dts/imx6dl-plym2m.dts | 15 ++++++++++++++-
 2 files changed, 28 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/imx6dl-lanmcu.dts b/arch/arm/dts/imx6dl-lanmcu.dts
index 42f8c91ece..67139930f9 100644
--- a/arch/arm/dts/imx6dl-lanmcu.dts
+++ b/arch/arm/dts/imx6dl-lanmcu.dts
@@ -308,12 +308,25 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_enet>;
 	phy-mode = "rmii";
-	phy-reset-gpios = <&gpio5 22 GPIO_ACTIVE_LOW>;
 	clocks = <&clks IMX6QDL_CLK_ENET>,
 		 <&clks IMX6QDL_CLK_ENET>,
 		 <&clk50m_phy>;
 	clock-names = "ipg", "ahb", "ptp";
 	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		/* Microchip KSZ8081RNA PHY */
+		rgmii_phy: ethernet-phy@0 {
+			reg = <0>;
+			interrupts-extended = <&gpio5 23 IRQ_TYPE_LEVEL_LOW>;
+			reset-gpios = <&gpio5 22 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <10000>;
+			reset-deassert-us = <300>;
+		};
+	};
 };
 
 &uart2 {
diff --git a/arch/arm/dts/imx6dl-plym2m.dts b/arch/arm/dts/imx6dl-plym2m.dts
index d04137e282..e944a14dce 100644
--- a/arch/arm/dts/imx6dl-plym2m.dts
+++ b/arch/arm/dts/imx6dl-plym2m.dts
@@ -54,12 +54,25 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_enet>;
 	phy-mode = "rmii";
-	phy-reset-gpios = <&gpio5 22 GPIO_ACTIVE_LOW>;
 	clocks = <&clks IMX6QDL_CLK_ENET>,
 		 <&clks IMX6QDL_CLK_ENET>,
 		 <&clk50m_phy>;
 	clock-names = "ipg", "ahb", "ptp";
 	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		/* Microchip KSZ8081RNA PHY */
+		rgmii_phy: ethernet-phy@0 {
+			reg = <0>;
+			interrupts-extended = <&gpio5 23 IRQ_TYPE_LEVEL_LOW>;
+			reset-gpios = <&gpio5 22 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <10000>;
+			reset-deassert-us = <300>;
+		};
+	};
 };
 
 &iomuxc {
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
