Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1auwji-0006SY-Qc
 for barebox@lists.infradead.org; Tue, 26 Apr 2016 06:44:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Apr 2016 08:44:20 +0200
Message-Id: <1461653060-13481-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH v2] ARM: i.MX: increase barebox partition sizes
To: Barebox List <barebox@lists.infradead.org>

After doing a 'saveenv' command, it is no longer possible to boot.

The reason for this behaviour is that the 'barebox' partition has
currently
a size of 0x80000 (512 kB), which is not sufficient to store the barebox
binary. This causes the 'barebox' and 'barebox-environment' partitions
to overlap.

Fix this problem by increasing the size of the 'barebox' partition and
by placing the 'barebox-environment' right after it.

This patch increases the barebox partition for all i.MX boards to
0xe0000

Reported-by: Fabio Estevam <festevam@gmail.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---

Changes since v1: rebase on top of "ARM: dts: Fix partition names"

 arch/arm/dts/imx25-karo-tx25.dts                |  6 +++---
 arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts  |  6 +++---
 arch/arm/dts/imx51-babbage.dts                  |  4 ++--
 arch/arm/dts/imx51-genesi-efika-sb.dts          |  8 ++++----
 arch/arm/dts/imx53-ccxmx53.dtsi                 |  6 +++---
 arch/arm/dts/imx53-guf-vincell-lt.dts           |  6 +++---
 arch/arm/dts/imx53-mba53.dts                    |  4 ++--
 arch/arm/dts/imx53-qsb-common.dtsi              |  4 ++--
 arch/arm/dts/imx53-voipac-dmm-668.dtsi          |  6 +++---
 arch/arm/dts/imx6dl-eltec-hipercam.dts          |  6 +++---
 arch/arm/dts/imx6dl-hummingboard.dts            |  6 +++---
 arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts |  6 +++---
 arch/arm/dts/imx6dl-wandboard.dts               |  6 +++---
 arch/arm/dts/imx6q-dmo-edmqmx6.dts              | 18 +++++++++---------
 arch/arm/dts/imx6q-embedsky-e9.dts              | 12 ++++++------
 arch/arm/dts/imx6q-guf-santaro.dts              |  4 ++--
 arch/arm/dts/imx6q-hummingboard.dts             |  6 +++---
 arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi          |  6 +++---
 arch/arm/dts/imx6q-phytec-phycore-som-nand.dts  |  6 +++---
 arch/arm/dts/imx6q-wandboard.dts                |  6 +++---
 arch/arm/dts/imx6qdl-nitrogen6x.dtsi            |  6 +++---
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi         |  6 +++---
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi    |  6 +++---
 arch/arm/dts/imx6qdl-sabrelite.dtsi             |  6 +++---
 arch/arm/dts/imx6qdl-sabresd.dtsi               |  6 +++---
 arch/arm/dts/imx6s-riotboard.dts                |  4 ++--
 arch/arm/dts/imx6sx-sdb.dts                     |  4 ++--
 27 files changed, 85 insertions(+), 85 deletions(-)

diff --git a/arch/arm/dts/imx25-karo-tx25.dts b/arch/arm/dts/imx25-karo-tx25.dts
index 8d79471..76847ff 100644
--- a/arch/arm/dts/imx25-karo-tx25.dts
+++ b/arch/arm/dts/imx25-karo-tx25.dts
@@ -123,12 +123,12 @@
 
 	partition@0 {
 		label = "boot";
-		reg = <0x0 0x80000>;
+		reg = <0x0 0xe0000>;
 	};
 
-	partition@80000 {
+	partition@e0000 {
 		label = "environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 
 	partition@100000 {
diff --git a/arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts b/arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts
index 3bae76e..cb02a1d 100644
--- a/arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts
+++ b/arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts
@@ -18,12 +18,12 @@
 &nfc {
 	partition@0 {
 		label = "boot";
-		reg = <0x0 0x80000>;
+		reg = <0x0 0xe0000>;
 	};
 
-	partition@80000 {
+	partition@e0000 {
 		label = "environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 
 	partition@100000 {
diff --git a/arch/arm/dts/imx51-babbage.dts b/arch/arm/dts/imx51-babbage.dts
index f8402ca..bde3031 100644
--- a/arch/arm/dts/imx51-babbage.dts
+++ b/arch/arm/dts/imx51-babbage.dts
@@ -27,9 +27,9 @@
 	#address-cells = <1>;
 	#size-cells = <1>;
 
-	environment_esdhc1: partition@0 {
+	environment_esdhc1: partition@e0000 {
 		label = "barebox-environment";
-		reg = <0x80000 0x20000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
 
diff --git a/arch/arm/dts/imx51-genesi-efika-sb.dts b/arch/arm/dts/imx51-genesi-efika-sb.dts
index 78cb1b7..5a2c3a1 100644
--- a/arch/arm/dts/imx51-genesi-efika-sb.dts
+++ b/arch/arm/dts/imx51-genesi-efika-sb.dts
@@ -415,9 +415,9 @@
 	#address-cells = <1>;
 	#size-cells = <1>;
 
-	partition@0 {
+	partition@e0000 {
 		label = "barebox-environment";
-		reg = <0xc0000 0x40000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
 
@@ -533,9 +533,9 @@
 		#address-cells = <1>;
 		#size-cells = <1>;
 
-		partition@0 {
+		partition@e0000 {
 			label = "barebox-environment";
-			reg = <0x80000 0x80000>;
+			reg = <0xe0000 0x20000>;
 		};
 	};
 };
diff --git a/arch/arm/dts/imx53-ccxmx53.dtsi b/arch/arm/dts/imx53-ccxmx53.dtsi
index 3f4e78f..cfef1cc 100644
--- a/arch/arm/dts/imx53-ccxmx53.dtsi
+++ b/arch/arm/dts/imx53-ccxmx53.dtsi
@@ -232,12 +232,12 @@
 
 	partition@0 {
 		label = "barebox";
-		reg = <0x0 0x80000>;
+		reg = <0x0 0xe0000>;
 	};
 
-	partition@80000 {
+	partition@e0000 {
 		label = "environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 
 	partition@100000 {
diff --git a/arch/arm/dts/imx53-guf-vincell-lt.dts b/arch/arm/dts/imx53-guf-vincell-lt.dts
index 9691e22..bcc378d 100644
--- a/arch/arm/dts/imx53-guf-vincell-lt.dts
+++ b/arch/arm/dts/imx53-guf-vincell-lt.dts
@@ -361,12 +361,12 @@
 
 	partition@0 {
 		label = "barebox";
-		reg = <0x0 0x80000>;
+		reg = <0x0 0xe0000>;
 	};
 
-	bareboxenv: partition@80000 {
+	bareboxenv: partition@e0000 {
 		label = "barebox-environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 
 	partition@100000 {
diff --git a/arch/arm/dts/imx53-mba53.dts b/arch/arm/dts/imx53-mba53.dts
index c908c61..28f463c 100644
--- a/arch/arm/dts/imx53-mba53.dts
+++ b/arch/arm/dts/imx53-mba53.dts
@@ -28,9 +28,9 @@
 	#address-cells = <1>;
 	#size-cells = <1>;
 
-	partition@0 {
+	partition@e0000 {
 		label = "environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
 
diff --git a/arch/arm/dts/imx53-qsb-common.dtsi b/arch/arm/dts/imx53-qsb-common.dtsi
index 85e1b8b..f363af9 100644
--- a/arch/arm/dts/imx53-qsb-common.dtsi
+++ b/arch/arm/dts/imx53-qsb-common.dtsi
@@ -43,9 +43,9 @@
 	#address-cells = <1>;
 	#size-cells = <1>;
 
-	bareboxenv: partition@0 {
+	bareboxenv: partition@e0000 {
 		label = "barebox-environment";
-		reg = <0x80000 0x20000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
 
diff --git a/arch/arm/dts/imx53-voipac-dmm-668.dtsi b/arch/arm/dts/imx53-voipac-dmm-668.dtsi
index 42aacd2..e91c7d0 100644
--- a/arch/arm/dts/imx53-voipac-dmm-668.dtsi
+++ b/arch/arm/dts/imx53-voipac-dmm-668.dtsi
@@ -15,12 +15,12 @@
 
 	partition@0 {
 		label = "barebox";
-		reg = <0x0 0x80000>;
+		reg = <0x0 0xe0000>;
 	};
 
-	partition@80000 {
+	partition@e0000 {
 		label = "environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 
 	partition@100000 {
diff --git a/arch/arm/dts/imx6dl-eltec-hipercam.dts b/arch/arm/dts/imx6dl-eltec-hipercam.dts
index 6f1c496..4fe1744 100644
--- a/arch/arm/dts/imx6dl-eltec-hipercam.dts
+++ b/arch/arm/dts/imx6dl-eltec-hipercam.dts
@@ -37,12 +37,12 @@
 
 		partition@0 {
 			label = "barebox";
-			reg = <0x0 0xc0000>;
+			reg = <0x0 0xe0000>;
 		};
 
-		environment_nor0: partition@c0000 {
+		environment_nor0: partition@e0000 {
 			label = "bareboxenv";
-			reg = <0xc0000 0x8000>;
+			reg = <0xe0000 0x20000>;
 		};
 
 		partition@100000 {
diff --git a/arch/arm/dts/imx6dl-hummingboard.dts b/arch/arm/dts/imx6dl-hummingboard.dts
index 61f8363..7f4d2b4 100644
--- a/arch/arm/dts/imx6dl-hummingboard.dts
+++ b/arch/arm/dts/imx6dl-hummingboard.dts
@@ -29,11 +29,11 @@
 
 	partition@0 {
 		label = "barebox";
-		reg = <0x0 0x80000>;
+		reg = <0x0 0xe0000>;
 	};
 
-	partition@80000 {
+	partition@e0000 {
 		label = "barebox-environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
index b77add8..3f2f1c7 100644
--- a/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
+++ b/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
@@ -53,11 +53,11 @@
 
 	partition@0 {
 		label = "barebox";
-		reg = <0x0 0x80000>;
+		reg = <0x0 0xe0000>;
 	};
 
-	partition@80000 {
+	partition@e0000 {
 		label = "barebox-environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
diff --git a/arch/arm/dts/imx6dl-wandboard.dts b/arch/arm/dts/imx6dl-wandboard.dts
index a867400..873e9d6 100644
--- a/arch/arm/dts/imx6dl-wandboard.dts
+++ b/arch/arm/dts/imx6dl-wandboard.dts
@@ -27,11 +27,11 @@
 
 	partition@0 {
 		label = "barebox";
-		reg = <0x0 0xc0000>;
+		reg = <0x0 0xe0000>;
 	};
 
-	environment_usdhc3: partition@c0000 {
+	environment_usdhc3: partition@e0000 {
 		label = "barebox-environment";
-		reg = <0xc0000 0x40000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
diff --git a/arch/arm/dts/imx6q-dmo-edmqmx6.dts b/arch/arm/dts/imx6q-dmo-edmqmx6.dts
index fb8d56f..3576211 100644
--- a/arch/arm/dts/imx6q-dmo-edmqmx6.dts
+++ b/arch/arm/dts/imx6q-dmo-edmqmx6.dts
@@ -53,12 +53,12 @@
 
 		partition@0 {
 			label = "barebox";
-			reg = <0x0 0x80000>;
+			reg = <0x0 0xe0000>;
 		};
 
-		partition@80000 {
+		partition@e0000 {
 			label = "barebox-environment";
-			reg = <0x80000 0x20000>;
+			reg = <0xe0000 0x20000>;
 		};
 	};
 };
@@ -97,11 +97,11 @@
 
 	partition@0 {
 		label = "barebox";
-		reg = <0x0 0x80000>;
+		reg = <0x0 0xe0000>;
 	};
-	partition@80000 {
+	partition@e0000 {
 		label = "barebox-environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
 
@@ -111,10 +111,10 @@
 
 	partition@0 {
 		label = "barebox";
-		reg = <0x0 0x80000>;
+		reg = <0x0 0xe0000>;
 	};
-	partition@80000 {
+	partition@e0000 {
 		label = "barebox-environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
diff --git a/arch/arm/dts/imx6q-embedsky-e9.dts b/arch/arm/dts/imx6q-embedsky-e9.dts
index 07c01eb..3bbb60b 100644
--- a/arch/arm/dts/imx6q-embedsky-e9.dts
+++ b/arch/arm/dts/imx6q-embedsky-e9.dts
@@ -41,11 +41,11 @@
 
 	partition@0 {
 		label = "barebox";
-		reg = <0x0 0x80000>;
+		reg = <0x0 0xe0000>;
 	};
-	environment_mmc1: partition@80000 {
+	environment_mmc1: partition@e0000 {
 		label = "barebox-environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
 
@@ -55,10 +55,10 @@
 
 	partition@0 {
 		label = "barebox";
-		reg = <0x0 0x80000>;
+		reg = <0x0 0xe0000>;
 	};
-	environment_mmc3: partition@80000 {
+	environment_mmc3: partition@e0000 {
 		label = "barebox-environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
diff --git a/arch/arm/dts/imx6q-guf-santaro.dts b/arch/arm/dts/imx6q-guf-santaro.dts
index 27f538a..2bd1a26 100644
--- a/arch/arm/dts/imx6q-guf-santaro.dts
+++ b/arch/arm/dts/imx6q-guf-santaro.dts
@@ -587,9 +587,9 @@
 	#address-cells = <1>;
 	#size-cells = <1>;
 
-	partition@0 {
+	partition@e0000 {
 		label = "barebox-environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
 
diff --git a/arch/arm/dts/imx6q-hummingboard.dts b/arch/arm/dts/imx6q-hummingboard.dts
index a35f2b2..e707eb9 100644
--- a/arch/arm/dts/imx6q-hummingboard.dts
+++ b/arch/arm/dts/imx6q-hummingboard.dts
@@ -29,11 +29,11 @@
 
 	partition@0 {
 		label = "barebox";
-		reg = <0x0 0x80000>;
+		reg = <0x0 0xe0000>;
 	};
 
-	partition@80000 {
+	partition@e0000 {
 		label = "barebox-environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
diff --git a/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi b/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
index 4eea425..a6ea7b5 100644
--- a/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
+++ b/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
@@ -181,10 +181,10 @@
 
 	partition@0 {
 		label = "barebox";
-		reg = <0x0 0x80000>;
+		reg = <0x0 0xe0000>;
 	};
-	environment_usdhc3: partition@80000 {
+	environment_usdhc3: partition@e0000 {
 		label = "barebox-environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
diff --git a/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
index 26bbed5..aa2c94a 100644
--- a/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
+++ b/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
@@ -62,11 +62,11 @@
 
 	partition@0 {
 		label = "barebox";
-		reg = <0x0 0x80000>;
+		reg = <0x0 0xe0000>;
 	};
 
-	partition@80000 {
+	partition@e0000 {
 		label = "barebox-environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
diff --git a/arch/arm/dts/imx6q-wandboard.dts b/arch/arm/dts/imx6q-wandboard.dts
index 26d8a00..0606727 100644
--- a/arch/arm/dts/imx6q-wandboard.dts
+++ b/arch/arm/dts/imx6q-wandboard.dts
@@ -27,11 +27,11 @@
 
 	partition@0 {
 		label = "barebox";
-		reg = <0x0 0xc0000>;
+		reg = <0x0 0xe0000>;
 	};
 
-	environment_usdhc3: partition@c0000 {
+	environment_usdhc3: partition@e0000 {
 		label = "barebox-environment";
-		reg = <0xc0000 0x40000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
diff --git a/arch/arm/dts/imx6qdl-nitrogen6x.dtsi b/arch/arm/dts/imx6qdl-nitrogen6x.dtsi
index d818b6b..9ff7395 100644
--- a/arch/arm/dts/imx6qdl-nitrogen6x.dtsi
+++ b/arch/arm/dts/imx6qdl-nitrogen6x.dtsi
@@ -31,12 +31,12 @@
 
 	partition@0 {
 		label = "barebox";
-		reg = <0x0 0x80000>;
+		reg = <0x0 0xe0000>;
 	};
 
-	partition@80000 {
+	partition@e0000 {
 		label = "barebox-environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
 
diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
index 81554d2..26f9746 100644
--- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
@@ -180,11 +180,11 @@
 
 	partition@0 {
 		label = "barebox";
-		reg = <0x0 0x80000>;
+		reg = <0x0 0xe0000>;
 	};
 
-	partition@80000 {
+	partition@e0000 {
 		label = "barebox-environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
diff --git a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
index cb1167e..139150e 100644
--- a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -256,11 +256,11 @@
 
 	partition@0 {
 		label = "barebox";
-		reg = <0x0 0x80000>;
+		reg = <0x0 0xe0000>;
 	};
 
-	partition@80000 {
+	partition@e0000 {
 		label = "barebox-environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
diff --git a/arch/arm/dts/imx6qdl-sabrelite.dtsi b/arch/arm/dts/imx6qdl-sabrelite.dtsi
index abe1d19..10b0002 100644
--- a/arch/arm/dts/imx6qdl-sabrelite.dtsi
+++ b/arch/arm/dts/imx6qdl-sabrelite.dtsi
@@ -31,12 +31,12 @@
 
 	partition@0 {
 		label = "barebox";
-		reg = <0x0 0x80000>;
+		reg = <0x0 0xe0000>;
 	};
 
-	partition@80000 {
+	partition@e0000 {
 		label = "barebox-environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
 
diff --git a/arch/arm/dts/imx6qdl-sabresd.dtsi b/arch/arm/dts/imx6qdl-sabresd.dtsi
index 4ebfda3..6b10229 100644
--- a/arch/arm/dts/imx6qdl-sabresd.dtsi
+++ b/arch/arm/dts/imx6qdl-sabresd.dtsi
@@ -31,11 +31,11 @@
 
 	partition@0 {
 		label = "barebox";
-		reg = <0x0 0x80000>;
+		reg = <0x0 0xe0000>;
 	};
 
-	environment_usdhc3: partition@80000 {
+	environment_usdhc3: partition@e0000 {
 		label = "barebox-environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
diff --git a/arch/arm/dts/imx6s-riotboard.dts b/arch/arm/dts/imx6s-riotboard.dts
index 2fc5a3f..09ac534 100644
--- a/arch/arm/dts/imx6s-riotboard.dts
+++ b/arch/arm/dts/imx6s-riotboard.dts
@@ -233,9 +233,9 @@
 		reg = <0x0 0x80000>;
 	};
 
-	environment_usdhc4: partition@80000 {
+	environment_usdhc4: partition@e0000 {
 		label = "barebox-environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
 
diff --git a/arch/arm/dts/imx6sx-sdb.dts b/arch/arm/dts/imx6sx-sdb.dts
index fbf098b..7b60f93 100644
--- a/arch/arm/dts/imx6sx-sdb.dts
+++ b/arch/arm/dts/imx6sx-sdb.dts
@@ -52,9 +52,9 @@
 	#address-cells = <1>;
 	#size-cells = <1>;
 
-	partition@0 {
+	partition@e0000 {
 		label = "barebox-environment";
-		reg = <0x80000 0x20000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
 
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
