Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dA13V-0001Qq-Rj
 for barebox@lists.infradead.org; Sun, 14 May 2017 21:28:00 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sun, 14 May 2017 23:26:26 +0200
Message-Id: <1494797186-3338-2-git-send-email-akurz@blala.de>
In-Reply-To: <1494797186-3338-1-git-send-email-akurz@blala.de>
References: <1494797186-3338-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH 2/2] ARM: i.MX50: Kindle-MX50 DT fixes
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

* fix IOMUX for MAX14656 IRQ, it requires a pull-up to work
* enable UART console for Model EY21
* set up IOMUX for EY21 GPIO lid-close hall sensor
* remove IOMUX for non-existing EY21 GPIO keys
* replace space indention with tabs

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/dts/imx50-kindle-common.dtsi |  2 +-
 arch/arm/dts/imx50-kindle-d01100.dts  |  6 +++---
 arch/arm/dts/imx50-kindle-d01200.dts  |  2 +-
 arch/arm/dts/imx50-kindle-ey21.dts    | 13 ++++++++++---
 4 files changed, 15 insertions(+), 8 deletions(-)

diff --git a/arch/arm/dts/imx50-kindle-common.dtsi b/arch/arm/dts/imx50-kindle-common.dtsi
index a6ea504..048e953 100644
--- a/arch/arm/dts/imx50-kindle-common.dtsi
+++ b/arch/arm/dts/imx50-kindle-common.dtsi
@@ -124,7 +124,7 @@
 
 		pinctrl_charger_detect: chargerdetectgrp {
 			fsl,pins = <
-				MX50_PAD_OWIRE__GPIO6_26		0x84
+				MX50_PAD_OWIRE__GPIO6_26		0xe4
 			>;
 		};
 	};
diff --git a/arch/arm/dts/imx50-kindle-d01100.dts b/arch/arm/dts/imx50-kindle-d01100.dts
index 23bfbb5..55171d7 100644
--- a/arch/arm/dts/imx50-kindle-d01100.dts
+++ b/arch/arm/dts/imx50-kindle-d01100.dts
@@ -34,8 +34,8 @@
 	pinctrl-0 = <&pinctrl_hog>;
 
 	imx50-kindle-d01100 {
-                pinctrl_hog: hoggrp {
-                        fsl,pins = <
+		pinctrl_hog: hoggrp {
+			fsl,pins = <
 				MX50_PAD_EIM_EB1__GPIO1_20		0xc0
 				MX50_PAD_EIM_EB0__GPIO1_19		0xc0
 				MX50_PAD_EIM_CS2__GPIO1_16		0xc0
@@ -60,7 +60,7 @@
 		pinctrl-0 = <&pinctrl_charger_detect>;
 		interrupt-parent = <&gpio6>;
 		interrupts = <26 IRQ_TYPE_LEVEL_HIGH>;
-        };
+	};
 
 	smart-battery@55 {
 		compatible = "ti,bq27210";
diff --git a/arch/arm/dts/imx50-kindle-d01200.dts b/arch/arm/dts/imx50-kindle-d01200.dts
index d8e5ed3..cf65966 100644
--- a/arch/arm/dts/imx50-kindle-d01200.dts
+++ b/arch/arm/dts/imx50-kindle-d01200.dts
@@ -68,7 +68,7 @@
 		pinctrl-0 = <&pinctrl_charger_detect>;
 		interrupt-parent = <&gpio6>;
 		interrupts = <26 IRQ_TYPE_LEVEL_HIGH>;
-        };
+	};
 
 	smart-battery@55 {
 		compatible = "ti,bq27210";
diff --git a/arch/arm/dts/imx50-kindle-ey21.dts b/arch/arm/dts/imx50-kindle-ey21.dts
index 0be7001..3b8b5d8 100644
--- a/arch/arm/dts/imx50-kindle-ey21.dts
+++ b/arch/arm/dts/imx50-kindle-ey21.dts
@@ -19,6 +19,10 @@
 	model = "Amazon Kindle EY21";
 	compatible = "amazon,kindle-ey21", "fsl,imx50";
 
+	chosen {
+		linux,stdout-path = &uart1;
+	};
+
 	memory {
 		device_type = "memory";
 		reg = <0x70000000 0x10000000>;
@@ -27,9 +31,12 @@
 
 &iomuxc {
 	imx50-kindle-ey21 {
-		pinctrl_gpiokey: gpiokeygrp {
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_hog>;
+
+		pinctrl_hog: hoggrp {
 			fsl,pins = <
-				MX50_PAD_EIM_EB1__GPIO1_20		0x40
+				MX50_PAD_SD2_WP__GPIO5_16	0xe4 /* hall */
 			>;
 		};
 	};
@@ -48,7 +55,7 @@
 		pinctrl-0 = <&pinctrl_charger_detect>;
 		interrupt-parent = <&gpio6>;
 		interrupts = <26 IRQ_TYPE_LEVEL_HIGH>;
-        };
+	};
 
 	smart-battery@55 {
 		compatible = "ti,bq27210";
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
