Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k3GTU-0005ep-DH
 for barebox@lists.infradead.org; Wed, 05 Aug 2020 10:16:45 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed,  5 Aug 2020 12:16:17 +0200
Message-Id: <20200805101628.4698-3-o.rempel@pengutronix.de>
In-Reply-To: <20200805101628.4698-1-o.rempel@pengutronix.de>
References: <20200805101628.4698-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v2 02/13] ARM: dts: imx6: vicut1: fix network support
To: barebox@lists.infradead.org, david@protonic.nl
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Create the PHY node with properly configured phy-mode and reset lines.
In this case we will not need board specific PHY fixups.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/dts/imx6q-vicut1.dts | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/imx6q-vicut1.dts b/arch/arm/dts/imx6q-vicut1.dts
index 9f60ed1ac2..9747b3c62e 100644
--- a/arch/arm/dts/imx6q-vicut1.dts
+++ b/arch/arm/dts/imx6q-vicut1.dts
@@ -19,9 +19,23 @@
 &fec {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_enet>;
-	phy-mode = "rgmii";
-	/* phy-reset-gpios = <&gpio1 25 GPIO_ACTIVE_LOW>; */
+	phy-mode = "rgmii-id";
+	phy-handle = <&rgmii_phy>;
 	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		/* Microchip KSZ9031RNX PHY */
+		rgmii_phy: ethernet-phy@4 {
+			reg = <4>;
+			interrupts-extended = <&gpio1 28 IRQ_TYPE_LEVEL_LOW>;
+			reset-gpios = <&gpio1 25 GPIO_ACTIVE_LOW>;
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
