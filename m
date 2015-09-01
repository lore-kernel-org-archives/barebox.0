Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZWeqe-0007cu-RO
 for barebox@lists.infradead.org; Tue, 01 Sep 2015 06:15:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  1 Sep 2015 08:14:49 +0200
Message-Id: <1441088089-20649-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1441088089-20649-1-git-send-email-s.hauer@pengutronix.de>
References: <1441088089-20649-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: dts: directly point to partitions in the barebox,
 environment binding
To: Barebox List <barebox@lists.infradead.org>

We can now directly point to the partitions in the barebox,environment
binding. Convert some boards over to it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx27-phytec-phycore-rdk.dts | 8 ++++----
 arch/arm/dts/imx51-babbage.dts            | 4 ++--
 arch/arm/dts/imx53-qsb-common.dtsi        | 4 ++--
 arch/arm/dts/imx6dl-eltec-hipercam.dts    | 4 ++--
 arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi    | 8 ++++----
 arch/arm/dts/imx6q-sabresd.dts            | 2 +-
 arch/arm/dts/imx6q-var-custom.dts         | 2 +-
 arch/arm/dts/imx6q-var-som.dtsi           | 2 +-
 arch/arm/dts/imx6qdl-sabresd.dtsi         | 2 +-
 arch/arm/dts/imx6s-riotboard.dts          | 4 ++--
 10 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/arch/arm/dts/imx27-phytec-phycore-rdk.dts b/arch/arm/dts/imx27-phytec-phycore-rdk.dts
index 9d216af..f602045 100644
--- a/arch/arm/dts/imx27-phytec-phycore-rdk.dts
+++ b/arch/arm/dts/imx27-phytec-phycore-rdk.dts
@@ -10,13 +10,13 @@
 
 		environment-nor {
 			compatible = "barebox,environment";
-			device-path = &nor, "partname:env";
+			device-path = &environment_nor;
 			status = "disabled";
 		};
 
 		environment-nand {
 			compatible = "barebox,environment";
-			device-path = &nfc, "partname:env";
+			device-path = &environment_nand;
 			status = "disabled";
 		};
 	};
@@ -32,7 +32,7 @@
 		reg = <0x00000000 0x00080000>;
 	};
 
-	partition@1 {
+	environment_nand: partition@1 {
 		label = "env";
 		reg = <0x00080000 0x00020000>;
 	};
@@ -54,7 +54,7 @@
 		reg = <0x00000000 0x00080000>;
 	};
 
-	partition@1 {
+	environment_nor: partition@1 {
 		label = "env";
 		reg = <0x00080000 0x00020000>;
 	};
diff --git a/arch/arm/dts/imx51-babbage.dts b/arch/arm/dts/imx51-babbage.dts
index 909774b..f8402ca 100644
--- a/arch/arm/dts/imx51-babbage.dts
+++ b/arch/arm/dts/imx51-babbage.dts
@@ -18,7 +18,7 @@
 
 		environment@0 {
 			compatible = "barebox,environment";
-			device-path = &esdhc1, "partname:barebox-environment";
+			device-path = &environment_esdhc1;
 		};
 	};
 };
@@ -27,7 +27,7 @@
 	#address-cells = <1>;
 	#size-cells = <1>;
 
-	partition@0 {
+	environment_esdhc1: partition@0 {
 		label = "barebox-environment";
 		reg = <0x80000 0x20000>;
 	};
diff --git a/arch/arm/dts/imx53-qsb-common.dtsi b/arch/arm/dts/imx53-qsb-common.dtsi
index 4007a09..bf634e4 100644
--- a/arch/arm/dts/imx53-qsb-common.dtsi
+++ b/arch/arm/dts/imx53-qsb-common.dtsi
@@ -16,7 +16,7 @@
 
 		environment@0 {
 			compatible = "barebox,environment";
-			device-path = &esdhc1, "partname:barebox-environment";
+			device-path = &bareboxenv;
 		};
 	};
 };
@@ -25,7 +25,7 @@
 	#address-cells = <1>;
 	#size-cells = <1>;
 
-	partition@0 {
+	bareboxenv: partition@0 {
 		label = "barebox-environment";
 		reg = <0x80000 0x20000>;
 	};
diff --git a/arch/arm/dts/imx6dl-eltec-hipercam.dts b/arch/arm/dts/imx6dl-eltec-hipercam.dts
index 737752f..166f8f1 100644
--- a/arch/arm/dts/imx6dl-eltec-hipercam.dts
+++ b/arch/arm/dts/imx6dl-eltec-hipercam.dts
@@ -15,7 +15,7 @@
 
 		environment@0 {
 			compatible = "barebox,environment";
-			device-path = &norflash0, "partname:bareboxenv";
+			device-path = &environment_nor0;
 		};
 	};
 };
@@ -39,7 +39,7 @@
 			reg = <0x0 0xc0000>;
 		};
 
-		partition@1 {
+		environment_nor0: partition@1 {
 			label = "bareboxenv";
 			reg = <0xc0000 0x8000>;
 		};
diff --git a/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi b/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
index 6435ab7..97cf78a 100644
--- a/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
+++ b/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
@@ -19,13 +19,13 @@
 	chosen {
 		environment-sd {
 			compatible = "barebox,environment";
-			device-path = &usdhc3, "partname:barebox-environment";
+			device-path = &environment_usdhc3;
 			status = "disabled";
 		};
 
 		environment-nand {
 			compatible = "barebox,environment";
-			device-path = &gpmi, "partname:barebox-environment";
+			device-path = &environment_nand;
 			status = "disabled";
 		};
 	};
@@ -139,7 +139,7 @@
 		reg = <0x0 0x400000>;
 	};
 
-	partition@1 {
+	environment_nand: partition@1 {
 		label = "barebox-environment";
 		reg = <0x400000 0x20000>;
 	};
@@ -183,7 +183,7 @@
 		label = "barebox";
 		reg = <0x0 0x80000>;
 	};
-	partition@1 {
+	environment_usdhc3: partition@1 {
 		label = "barebox-environment";
 		reg = <0x80000 0x80000>;
 	};
diff --git a/arch/arm/dts/imx6q-sabresd.dts b/arch/arm/dts/imx6q-sabresd.dts
index 71ca855..1f92c15 100644
--- a/arch/arm/dts/imx6q-sabresd.dts
+++ b/arch/arm/dts/imx6q-sabresd.dts
@@ -25,7 +25,7 @@
 
 		environment@0 {
 			compatible = "barebox,environment";
-			device-path = &usdhc3, "partname:barebox-environment";
+			device-path = &environment_usdhc3;
 		};
 	};
 };
diff --git a/arch/arm/dts/imx6q-var-custom.dts b/arch/arm/dts/imx6q-var-custom.dts
index 795114d..ef6981e 100644
--- a/arch/arm/dts/imx6q-var-custom.dts
+++ b/arch/arm/dts/imx6q-var-custom.dts
@@ -30,7 +30,7 @@
 
 		environment@0 {
 			compatible = "barebox,environment";
-			device-path = &gpmi, "partname:barebox-environment";
+			device-path = &environment_nand;
 		};
 
 	};
diff --git a/arch/arm/dts/imx6q-var-som.dtsi b/arch/arm/dts/imx6q-var-som.dtsi
index 7926911..d005f31 100644
--- a/arch/arm/dts/imx6q-var-som.dtsi
+++ b/arch/arm/dts/imx6q-var-som.dtsi
@@ -42,7 +42,7 @@
 		reg = <0x0 0x200000>;
 	};
 
-	partition@1 {
+	environment_nand: partition@1 {
 		label = "barebox-environment";
 		reg = <0x200000 0x20000>;
 	};
diff --git a/arch/arm/dts/imx6qdl-sabresd.dtsi b/arch/arm/dts/imx6qdl-sabresd.dtsi
index 54201bd..32318cf 100644
--- a/arch/arm/dts/imx6qdl-sabresd.dtsi
+++ b/arch/arm/dts/imx6qdl-sabresd.dtsi
@@ -34,7 +34,7 @@
 		reg = <0x0 0x80000>;
 	};
 
-	partition@1 {
+	environment_usdhc3: partition@1 {
 		label = "barebox-environment";
 		reg = <0x80000 0x80000>;
 	};
diff --git a/arch/arm/dts/imx6s-riotboard.dts b/arch/arm/dts/imx6s-riotboard.dts
index 117c00a..a522dd9 100644
--- a/arch/arm/dts/imx6s-riotboard.dts
+++ b/arch/arm/dts/imx6s-riotboard.dts
@@ -17,7 +17,7 @@
 
 		environment@0 {
 			compatible = "barebox,environment";
-			device-path = &usdhc4, "partname:barebox-environment";
+			device-path = &environment_usdhc4;
 		};
 	};
 
@@ -232,7 +232,7 @@
 		reg = <0x0 0x80000>;
 	};
 
-	partition@1 {
+	environment_usdhc4: partition@1 {
 		label = "barebox-environment";
 		reg = <0x80000 0x80000>;
 	};
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
