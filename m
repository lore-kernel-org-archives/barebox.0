Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8f69-0004ms-QV
 for barebox@lists.infradead.org; Thu, 20 Aug 2020 07:35:04 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 20 Aug 2020 09:34:48 +0200
Message-Id: <20200820073454.17500-7-o.rempel@pengutronix.de>
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
Subject: [PATCH v5 06/12] ARM: dts: unify barebox and barebox,
 env partitions for all Protonic boards
To: barebox@lists.infradead.org, david@protonic.nl
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/dts/imx6dl-plym2m.dts       | 25 +++++++++++++++++++++++++
 arch/arm/dts/imx6dl-prtrvt.dts       |  1 +
 arch/arm/dts/imx6q-prti6q.dts        | 24 +-----------------------
 arch/arm/dts/imx6qdl-prti6q-nor.dtsi | 10 ++++++++++
 arch/arm/dts/imx6qdl-prti6q.dtsi     | 20 ++++++++++++++++++++
 arch/arm/dts/imx6qdl-vicut1.dtsi     | 26 ++++++++++++++++++++++++++
 6 files changed, 83 insertions(+), 23 deletions(-)
 create mode 100644 arch/arm/dts/imx6qdl-prti6q-nor.dtsi

diff --git a/arch/arm/dts/imx6dl-plym2m.dts b/arch/arm/dts/imx6dl-plym2m.dts
index b66321fb46..335cb6f342 100644
--- a/arch/arm/dts/imx6dl-plym2m.dts
+++ b/arch/arm/dts/imx6dl-plym2m.dts
@@ -6,6 +6,7 @@
 /dts-v1/;
 #include <arm/imx6dl.dtsi>
 #include "imx6qdl-prti6q.dtsi"
+#include "imx6qdl-prti6q-nor.dtsi"
 
 / {
 	model = "Plymovent M2M board";
@@ -28,6 +29,20 @@
 	};
 };
 
+&ecspi1 {
+	cs-gpios = <&gpio3 19 GPIO_ACTIVE_HIGH>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi1>;
+	status = "okay";
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <20000000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+	};
+};
 
 &fec {
 	pinctrl-names = "default";
@@ -58,6 +73,16 @@
 		>;
 	};
 
+	pinctrl_ecspi1: ecspi1grp {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_D17__ECSPI1_MISO		0x100b1
+			MX6QDL_PAD_EIM_D18__ECSPI1_MOSI		0x100b1
+			MX6QDL_PAD_EIM_D16__ECSPI1_SCLK		0x100b1
+			/* CS */
+			MX6QDL_PAD_EIM_D19__GPIO3_IO19		0x000b1
+		>;
+	};
+
 	pinctrl_usbotg: usbotggrp {
 		fsl,pins = <
 			MX6QDL_PAD_EIM_D21__USB_OTG_OC	0x1b0b0
diff --git a/arch/arm/dts/imx6dl-prtrvt.dts b/arch/arm/dts/imx6dl-prtrvt.dts
index 802bd50ae6..c403ba3ea7 100644
--- a/arch/arm/dts/imx6dl-prtrvt.dts
+++ b/arch/arm/dts/imx6dl-prtrvt.dts
@@ -6,6 +6,7 @@
 /dts-v1/;
 #include <arm/imx6dl.dtsi>
 #include "imx6qdl-prti6q.dtsi"
+#include "imx6qdl-prti6q-nor.dtsi"
 #include <dt-bindings/leds/common.h>
 
 / {
diff --git a/arch/arm/dts/imx6q-prti6q.dts b/arch/arm/dts/imx6q-prti6q.dts
index 76bb4d53d3..63a02149f1 100644
--- a/arch/arm/dts/imx6q-prti6q.dts
+++ b/arch/arm/dts/imx6q-prti6q.dts
@@ -6,6 +6,7 @@
 /dts-v1/;
 #include <arm/imx6q.dtsi>
 #include "imx6qdl-prti6q.dtsi"
+#include "imx6qdl-prti6q-nor.dtsi"
 #include <dt-bindings/leds/common.h>
 #include <dt-bindings/sound/fsl-imx-audmux.h>
 
@@ -13,13 +14,6 @@
 	model = "Protonic PRTI6Q board";
 	compatible = "prt,prti6q", "fsl,imx6q";
 
-	chosen {
-		environment {
-			compatible = "barebox,environment";
-			device-path = &ecspi1, "partname:env";
-		};
-	};
-
 	memory@10000000 {
 		device_type = "memory";
 		reg = <0x10000000 0xf0000000>;
@@ -161,24 +155,8 @@
 		compatible = "jedec,spi-nor";
 		reg = <0>;
 		spi-max-frequency = <20000000>;
-
 		#address-cells = <1>;
 		#size-cells = <1>;
-
-		partition@0 {
-			label = "boot";
-			reg = <0x0 0x100000>;
-		};
-
-		partition@100000 {
-			label = "env";
-			reg = <0x100000 0x10000>;
-		};
-
-		partition@110000 {
-			label = "spare";
-			reg = <0x110000 0x2f0000>;
-		};
 	};
 };
 
diff --git a/arch/arm/dts/imx6qdl-prti6q-nor.dtsi b/arch/arm/dts/imx6qdl-prti6q-nor.dtsi
new file mode 100644
index 0000000000..ad718ce421
--- /dev/null
+++ b/arch/arm/dts/imx6qdl-prti6q-nor.dtsi
@@ -0,0 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+
+&ecspi1 {
+	flash@0 {
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0x100000>;
+		};
+	};
+};
diff --git a/arch/arm/dts/imx6qdl-prti6q.dtsi b/arch/arm/dts/imx6qdl-prti6q.dtsi
index ed526d185f..19acca042d 100644
--- a/arch/arm/dts/imx6qdl-prti6q.dtsi
+++ b/arch/arm/dts/imx6qdl-prti6q.dtsi
@@ -9,6 +9,11 @@
 / {
 	chosen {
 		stdout-path = &uart4;
+
+		environment-emmc {
+			compatible = "barebox,environment";
+			device-path = &usdhc3, "partname:barebox-environment";
+		};
 	};
 
 	reg_1v8: regulator-1v8 {
@@ -105,7 +110,22 @@
 	pinctrl-0 = <&pinctrl_usdhc3>;
 	bus-width = <8>;
 	non-removable;
+	no-sdio;
+	no-sd;
 	status = "okay";
+
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@100000 {
+		label = "barebox-environment";
+		reg = <0x100000 0x100000>;
+	};
+
+	partition@200000 {
+		label = "state";
+		reg = <0x200000 0x100000>;
+	};
 };
 
 &iomuxc {
diff --git a/arch/arm/dts/imx6qdl-vicut1.dtsi b/arch/arm/dts/imx6qdl-vicut1.dtsi
index dc18614f89..dbfcf2527c 100644
--- a/arch/arm/dts/imx6qdl-vicut1.dtsi
+++ b/arch/arm/dts/imx6qdl-vicut1.dtsi
@@ -4,6 +4,7 @@
  */
 
 #include "imx6qdl-prti6q.dtsi"
+#include "imx6qdl-prti6q-nor.dtsi"
 #include <dt-bindings/input/input.h>
 
 / {
@@ -74,6 +75,21 @@
 	};
 };
 
+&ecspi1 {
+	cs-gpios = <&gpio3 19 GPIO_ACTIVE_HIGH>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi1>;
+	status = "okay";
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <20000000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+	};
+};
+
 &iomuxc {
 	pinctrl_hog: hoggrp {
 		fsl,pins = <
@@ -151,6 +167,16 @@
 		>;
 	};
 
+	pinctrl_ecspi1: ecspi1grp {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_D17__ECSPI1_MISO		0x100b1
+			MX6QDL_PAD_EIM_D18__ECSPI1_MOSI		0x100b1
+			MX6QDL_PAD_EIM_D16__ECSPI1_SCLK		0x100b1
+			/* CS */
+			MX6QDL_PAD_EIM_D19__GPIO3_IO19		0x000b1
+		>;
+	};
+
 	pinctrl_usbotg: usbotggrp {
 		fsl,pins = <
 			MX6QDL_PAD_EIM_D21__USB_OTG_OC	0x1b0b0
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
