Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XSQzn-0003zw-RN
 for barebox@lists.infradead.org; Fri, 12 Sep 2014 13:34:40 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 11BC2A0066A
 for <barebox@lists.infradead.org>; Fri, 12 Sep 2014 15:33:57 +0200 (CEST)
From: Christian Hemp <c.hemp@phytec.de>
Date: Fri, 12 Sep 2014 15:33:46 +0200
Message-Id: <1410528827-12722-9-git-send-email-c.hemp@phytec.de>
In-Reply-To: <1410528827-12722-1-git-send-email-c.hemp@phytec.de>
References: <1410528827-12722-1-git-send-email-c.hemp@phytec.de>
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
Subject: [PATCH 09/10] dts:imx6:pfla02: Add env node for SPI-NOR and NAND
To: barebox@lists.infradead.org

Add environment node for NAND and SPI-NOR

Move the environment property to the module file.

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 arch/arm/dts/imx6dl-phytec-pbab01.dts   |    5 ----
 arch/arm/dts/imx6q-phytec-pbab01.dts    |    5 ----
 arch/arm/dts/imx6qdl-phytec-pbab01.dtsi |    9 --------
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi |   34 +++++++++++++++++++++++++++++++
 4 files changed, 34 insertions(+), 19 deletions(-)

diff --git a/arch/arm/dts/imx6dl-phytec-pbab01.dts b/arch/arm/dts/imx6dl-phytec-pbab01.dts
index 0e90c47..4b77838 100644
--- a/arch/arm/dts/imx6dl-phytec-pbab01.dts
+++ b/arch/arm/dts/imx6dl-phytec-pbab01.dts
@@ -20,10 +20,5 @@
 
 	chosen {
 		linux,stdout-path = &uart4;
-
-		environment@0 {
-			compatible = "barebox,environment";
-			device-path = &flash, "partname:barebox-environment";
-		};
 	};
 };
diff --git a/arch/arm/dts/imx6q-phytec-pbab01.dts b/arch/arm/dts/imx6q-phytec-pbab01.dts
index 26046e0..580338d 100644
--- a/arch/arm/dts/imx6q-phytec-pbab01.dts
+++ b/arch/arm/dts/imx6q-phytec-pbab01.dts
@@ -19,10 +19,5 @@
 
 	chosen {
 		linux,stdout-path = &uart4;
-
-		environment@0 {
-			compatible = "barebox,environment";
-			device-path = &flash, "partname:barebox-environment";
-		};
 	};
 };
diff --git a/arch/arm/dts/imx6qdl-phytec-pbab01.dtsi b/arch/arm/dts/imx6qdl-phytec-pbab01.dtsi
index 7d31123..157e130 100644
--- a/arch/arm/dts/imx6qdl-phytec-pbab01.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pbab01.dtsi
@@ -9,15 +9,6 @@
  * http://www.gnu.org/copyleft/gpl.html
  */
 
-/ {
-	chosen {
-		environment@0 {
-			compatible = "barebox,environment";
-			device-path = &flash, "partname:barebox-environment";
-		};
-	};
-};
-
 &fec {
 	status = "okay";
 };
diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
index 4b8e256..5c7bcee 100644
--- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
@@ -9,6 +9,28 @@
  * http://www.gnu.org/copyleft/gpl.html
  */
 
+/ {
+	chosen {
+		environment-nand {
+			compatible = "barebox,environment";
+			device-path = &gpmi, "partname:barebox-environment";
+			status = "disabled";
+		};
+
+		environment-spinor {
+			compatible = "barebox,environment";
+			device-path = &flash, "partname:barebox-environment";
+			status = "disabled";
+		};
+
+		environment-sd {
+			compatible = "barebox,environment";
+			device-path = &usdhc3, "partname:barebox-environment";
+			status = "disabled";
+		};
+	};
+};
+
 &ecspi3 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_ecspi3>;
@@ -214,4 +236,16 @@
         cd-gpios = <&gpio1 27 0>;
         wp-gpios = <&gpio1 29 0>;
         status = "disabled";
+
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0x80000>;
+	};
+	partition@1 {
+		label = "barebox-environment";
+		reg = <0x80000 0x80000>;
+	};
 };
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
