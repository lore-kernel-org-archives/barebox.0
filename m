Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ab9Jn-0002ER-CI
 for barebox@lists.infradead.org; Wed, 02 Mar 2016 16:08:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  2 Mar 2016 17:07:37 +0100
Message-Id: <1456934863-30990-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1456934863-30990-1-git-send-email-s.hauer@pengutronix.de>
References: <1456934863-30990-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/7] ARM: i.MX: karo-tx6: Factor out a common tx6 dtsi file
To: Barebox List <barebox@lists.infradead.org>

The stuff we currently have in the i.MX6q dts file can be reused for
the i.MX6dl variants, so factor out a common dtsi file.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx6dl-tx6u-801x.dts | 58 +-------------------------------------
 arch/arm/dts/imx6qdl-tx6x.dtsi    | 59 +++++++++++++++++++++++++++++++++++++++
 2 files changed, 60 insertions(+), 57 deletions(-)
 create mode 100644 arch/arm/dts/imx6qdl-tx6x.dtsi

diff --git a/arch/arm/dts/imx6dl-tx6u-801x.dts b/arch/arm/dts/imx6dl-tx6u-801x.dts
index a480408..b6018a6 100644
--- a/arch/arm/dts/imx6dl-tx6u-801x.dts
+++ b/arch/arm/dts/imx6dl-tx6u-801x.dts
@@ -1,65 +1,9 @@
 #include <arm/imx6dl-tx6u-801x.dts>
 #include "imx6qdl.dtsi"
+#include "imx6qdl-tx6x.dtsi"
 
 / {
 	model = "Ka-Ro electronics TX6U-801x Module";
 	compatible = "karo,imx6dl-tx6dl", "fsl,imx6dl";
-
-	chosen {
-		linux,stdout-path = &uart1;
-
-		environment@0 {
-			compatible = "barebox,environment";
-			device-path = &gpmi, "partname:barebox-environment";
-		};
-	};
-};
-
-&gpmi {
-	partition@0 {
-		label = "barebox";
-		reg = <0x0 0x400000>;
-	};
-
-	partition@1 {
-		label = "barebox-environment";
-		reg = <0x400000 0x100000>;
-	};
 };
 
-&iomuxc {
-	imx6qdl-tx6 {
-		pinctrl_hog: hoggrp {
-			fsl,pins = <
-				MX6QDL_PAD_EIM_A18__GPIO2_IO20		0x1b0b1 /* LED */
-				MX6QDL_PAD_SD3_DAT2__GPIO7_IO06		0x1b0b1 /* ETN PHY RESET */
-				MX6QDL_PAD_SD3_DAT4__GPIO7_IO01		0x1b0b1 /* ETN PHY INT */
-				MX6QDL_PAD_EIM_A25__GPIO5_IO02		0x1b0b1 /* PWR BTN */
-				MX6QDL_PAD_EIM_D20__GPIO3_IO20		0x1b0b1 /* ETN PHY POWER */
-			>;
-		};
-
-		pinctrl_enet: enetgrp {
-			fsl,pins = <
-				MX6QDL_PAD_ENET_MDC__ENET_MDC		0x1b0b0
-				MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x1b0b0
-				MX6QDL_PAD_ENET_RXD0__ENET_RX_DATA0	0x1b0b0
-				MX6QDL_PAD_ENET_RXD1__ENET_RX_DATA1	0x1b0b0
-				MX6QDL_PAD_ENET_RX_ER__ENET_RX_ER	0x1b0b0
-				MX6QDL_PAD_ENET_TX_EN__ENET_TX_EN	0x1b0b0
-				MX6QDL_PAD_ENET_TXD0__ENET_TX_DATA0	0x1b0b0
-				MX6QDL_PAD_ENET_TXD1__ENET_TX_DATA1	0x1b0b0
-				MX6QDL_PAD_ENET_CRS_DV__ENET_RX_EN	0x1b0b0
-				MX6QDL_PAD_GPIO_16__ENET_REF_CLK	0x4001b0b0
-			>;
-		};
-	};
-};
-
-&fec {
-	phy-reset-duration = <22>;
-};
-
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x620>;
-};
diff --git a/arch/arm/dts/imx6qdl-tx6x.dtsi b/arch/arm/dts/imx6qdl-tx6x.dtsi
new file mode 100644
index 0000000..7584e43
--- /dev/null
+++ b/arch/arm/dts/imx6qdl-tx6x.dtsi
@@ -0,0 +1,59 @@
+/ {
+	chosen {
+		linux,stdout-path = &uart1;
+
+		environment-nand {
+			compatible = "barebox,environment";
+			device-path = &gpmi, "partname:barebox-environment";
+		};
+	};
+};
+
+&fec {
+	phy-reset-duration = <22>;
+};
+
+&gpmi {
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0x400000>;
+	};
+
+	partition@1 {
+		label = "barebox-environment";
+		reg = <0x400000 0x100000>;
+	};
+};
+
+&iomuxc {
+	imx6qdl-tx6 {
+		pinctrl_hog: hoggrp {
+			fsl,pins = <
+				MX6QDL_PAD_EIM_A18__GPIO2_IO20		0x1b0b1 /* LED */
+				MX6QDL_PAD_SD3_DAT2__GPIO7_IO06		0x1b0b1 /* ETN PHY RESET */
+				MX6QDL_PAD_SD3_DAT4__GPIO7_IO01		0x1b0b1 /* ETN PHY INT */
+				MX6QDL_PAD_EIM_A25__GPIO5_IO02		0x1b0b1 /* PWR BTN */
+				MX6QDL_PAD_EIM_D20__GPIO3_IO20		0x1b0b1 /* ETN PHY POWER */
+			>;
+		};
+
+		pinctrl_enet: enetgrp {
+			fsl,pins = <
+				MX6QDL_PAD_ENET_MDC__ENET_MDC		0x1b0b0
+				MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x1b0b0
+				MX6QDL_PAD_ENET_RXD0__ENET_RX_DATA0	0x1b0b0
+				MX6QDL_PAD_ENET_RXD1__ENET_RX_DATA1	0x1b0b0
+				MX6QDL_PAD_ENET_RX_ER__ENET_RX_ER	0x1b0b0
+				MX6QDL_PAD_ENET_TX_EN__ENET_TX_EN	0x1b0b0
+				MX6QDL_PAD_ENET_TXD0__ENET_TX_DATA0	0x1b0b0
+				MX6QDL_PAD_ENET_TXD1__ENET_TX_DATA1	0x1b0b0
+				MX6QDL_PAD_ENET_CRS_DV__ENET_RX_EN	0x1b0b0
+				MX6QDL_PAD_GPIO_16__ENET_REF_CLK	0x4001b0b0
+			>;
+		};
+	};
+};
+
+&ocotp {
+	barebox,provide-mac-address = <&fec 0x620>;
+};
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
