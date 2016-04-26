Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1auwaO-00036L-PL
 for barebox@lists.infradead.org; Tue, 26 Apr 2016 06:35:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Apr 2016 08:34:40 +0200
Message-Id: <1461652480-25992-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: dts: Fix partition names
To: Barebox List <barebox@lists.infradead.org>

Partition names shouldn't be continuously numbered, instead the part
behind the '@' should match the reg property. Fix this for all ARM
device trees.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/am335x-phytec-phycard-som.dtsi     | 16 ++++++++--------
 arch/arm/dts/am335x-phytec-phycore-som.dtsi     | 24 ++++++++++++------------
 arch/arm/dts/am335x-phytec-phyflex-som.dtsi     | 24 ++++++++++++------------
 arch/arm/dts/imx25-karo-tx25.dts                |  6 +++---
 arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts  |  6 +++---
 arch/arm/dts/imx27-phytec-phycore-rdk.dts       | 12 ++++++------
 arch/arm/dts/imx53-ccxmx53.dtsi                 |  6 +++---
 arch/arm/dts/imx53-guf-vincell-lt.dts           |  4 ++--
 arch/arm/dts/imx53-voipac-dmm-668.dtsi          |  6 +++---
 arch/arm/dts/imx6dl-eltec-hipercam.dts          |  4 ++--
 arch/arm/dts/imx6dl-hummingboard.dts            |  2 +-
 arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts |  2 +-
 arch/arm/dts/imx6q-dmo-edmqmx6.dts              |  6 +++---
 arch/arm/dts/imx6q-embedsky-e9.dts              |  4 ++--
 arch/arm/dts/imx6q-hummingboard.dts             |  2 +-
 arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi          | 10 +++++-----
 arch/arm/dts/imx6q-phytec-phycore-som-nand.dts  |  2 +-
 arch/arm/dts/imx6q-var-custom.dts               |  6 +++---
 arch/arm/dts/imx6q-var-som.dtsi                 |  6 +++---
 arch/arm/dts/imx6qdl-gw54xx.dtsi                |  2 +-
 arch/arm/dts/imx6qdl-nitrogen6x.dtsi            |  2 +-
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi         | 16 ++++++++--------
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi    | 16 ++++++++--------
 arch/arm/dts/imx6qdl-sabrelite.dtsi             |  2 +-
 arch/arm/dts/imx6qdl-sabresd.dtsi               |  2 +-
 arch/arm/dts/imx6qdl-tx6x.dtsi                  |  2 +-
 arch/arm/dts/imx6s-riotboard.dts                |  2 +-
 arch/arm/dts/rk3188-radxarock.dts               |  2 +-
 28 files changed, 97 insertions(+), 97 deletions(-)

diff --git a/arch/arm/dts/am335x-phytec-phycard-som.dtsi b/arch/arm/dts/am335x-phytec-phycard-som.dtsi
index d1dfa86..f052f0c 100644
--- a/arch/arm/dts/am335x-phytec-phycard-som.dtsi
+++ b/arch/arm/dts/am335x-phytec-phycard-som.dtsi
@@ -185,42 +185,42 @@
 			reg = <0x0 0x20000>;
 		};
 
-		partition@1 {
+		partition@20000 {
 			label = "xload_backup1";
 			reg = <0x20000 0x20000>;
 		};
 
-		partition@2 {
+		partition@40000 {
 			label = "xload_backup2";
 			reg = <0x40000 0x20000>;
 		};
 
-		partition@3 {
+		partition@60000 {
 			label = "xload_backup3";
 			reg = <0x60000 0x20000>;
 		};
 
-		partition@4 {
+		partition@80000 {
 			label = "barebox";
 			reg = <0x80000 0x80000>;
 		};
 
-		partition@5 {
+		partition@100000 {
 			label = "bareboxenv";
 			reg = <0x100000 0x40000>;
 		};
 
-		partition@6 {
+		partition@140000 {
 			label = "oftree";
 			reg = <0x140000 0x40000>;
 		};
 
-		partition@7 {
+		partition@180000 {
 			label = "kernel";
 			reg = <0x180000 0x800000>;
 		};
 
-		partition@8 {
+		partition@980000 {
 			label = "root";
 			reg = <0x980000 0x0>;
 		};
diff --git a/arch/arm/dts/am335x-phytec-phycore-som.dtsi b/arch/arm/dts/am335x-phytec-phycore-som.dtsi
index f3a1d4d..e48d545 100644
--- a/arch/arm/dts/am335x-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/am335x-phytec-phycore-som.dtsi
@@ -174,22 +174,22 @@
 			reg = <0x0 0x20000>;
 		};
 
-		partition@1 {
+		partition@20000 {
 			label = "barebox";
 			reg = <0x20000 0x80000>;
 		};
 
-		partition@2 {
+		partition@a0000 {
 			label = "bareboxenv";
 			reg = <0xa0000 0x20000>;
 		};
 
-		partition@3 {
+		partition@c0000 {
 			label = "oftree";
 			reg = <0xc0000 0x20000>;
 		};
 
-		partition@4 {
+		partition@e0000 {
 			label = "kernel";
 			reg = <0xe0000 0x0>;
 		};
@@ -269,42 +269,42 @@
 			reg = <0x0 0x20000>;
 		};
 
-		partition@1 {
+		partition@20000 {
 			label = "xload_backup1";
 			reg = <0x20000 0x20000>;
 		};
 
-		partition@2 {
+		partition@40000 {
 			label = "xload_backup2";
 			reg = <0x40000 0x20000>;
 		};
 
-		partition@3 {
+		partition@60000 {
 			label = "xload_backup3";
 			reg = <0x60000 0x20000>;
 		};
 
-		partition@4 {
+		partition@80000 {
 			label = "barebox";
 			reg = <0x80000 0x80000>;
 		};
 
-		partition@5 {
+		partition@100000 {
 			label = "bareboxenv";
 			reg = <0x100000 0x40000>;
 		};
 
-		partition@6 {
+		partition@140000 {
 			label = "oftree";
 			reg = <0x140000 0x40000>;
 		};
 
-		partition@7 {
+		partition@180000 {
 			label = "kernel";
 			reg = <0x180000 0x800000>;
 		};
 
-		partition@8 {
+		partition@980000 {
 			label = "root";
 			/*
 			 * Size 0x0 extends partition to
diff --git a/arch/arm/dts/am335x-phytec-phyflex-som.dtsi b/arch/arm/dts/am335x-phytec-phyflex-som.dtsi
index c60943c..6561625 100644
--- a/arch/arm/dts/am335x-phytec-phyflex-som.dtsi
+++ b/arch/arm/dts/am335x-phytec-phyflex-som.dtsi
@@ -165,22 +165,22 @@
 			reg = <0x0 0x20000>;
 		};
 
-		partition@1 {
+		partition@20000 {
 			label = "barebox";
 			reg = <0x20000 0x80000>;
 		};
 
-		partition@2 {
+		partition@a0000 {
 			label = "bareboxenv";
 			reg = <0xa0000 0x20000>;
 		};
 
-		partition@3 {
+		partition@c0000 {
 			label = "oftree";
 			reg = <0xc0000 0x20000>;
                 };
 
-		partition@4 {
+		partition@e0000 {
 			label = "kernel";
 			reg = <0xe0000 0x0>;
 		};
@@ -283,42 +283,42 @@
 			reg = <0x0 0x20000>;
 		};
 
-		partition@1 {
+		partition@20000 {
 			label = "xload_backup1";
 			reg = <0x20000 0x20000>;
 		};
 
-		partition@2 {
+		partition@40000 {
 			label = "xload_backup2";
 			reg = <0x40000 0x20000>;
 		};
 
-		partition@3 {
+		partition@60000 {
 			label = "xload_backup3";
 			reg = <0x60000 0x20000>;
 		};
 
-		partition@4 {
+		partition@80000 {
 			label = "barebox";
 			reg = <0x80000 0x80000>;
 		};
 
-		partition@5 {
+		partition@100000 {
 			label = "bareboxenv";
 			reg = <0x100000 0x40000>;
 		};
 
-		partition@6 {
+		partition@140000 {
 			label = "oftree";
 			reg = <0x140000 0x40000>;
 		};
 
-		partition@7 {
+		partition@180000 {
 			label = "kernel";
 			reg = <0x180000 0x800000>;
 		};
 
-		partition@8 {
+		partition@980000 {
 			label = "root";
 			reg = <0x980000 0x0>;
 		};
diff --git a/arch/arm/dts/imx25-karo-tx25.dts b/arch/arm/dts/imx25-karo-tx25.dts
index d661463..8d79471 100644
--- a/arch/arm/dts/imx25-karo-tx25.dts
+++ b/arch/arm/dts/imx25-karo-tx25.dts
@@ -126,17 +126,17 @@
 		reg = <0x0 0x80000>;
 	};
 
-	partition@1 {
+	partition@80000 {
 		label = "environment";
 		reg = <0x80000 0x80000>;
 	};
 
-	partition@2 {
+	partition@100000 {
 		label = "kernel";
 		reg = <0x100000 0x400000>;
 	};
 
-	partition@3 {
+	partition@500000 {
 		label = "root";
 		reg = <0x500000 0x7b00000>;
 	};
diff --git a/arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts b/arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts
index 3ea1b5b..3bae76e 100644
--- a/arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts
+++ b/arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts
@@ -21,17 +21,17 @@
 		reg = <0x0 0x80000>;
 	};
 
-	partition@1 {
+	partition@80000 {
 		label = "environment";
 		reg = <0x80000 0x80000>;
 	};
 
-	partition@2 {
+	partition@100000 {
 		label = "kernel";
 		reg = <0x100000 0x400000>;
 	};
 
-	partition@3 {
+	partition@500000 {
 		label = "root";
 		reg = <0x500000 0x7b00000>;
 	};
diff --git a/arch/arm/dts/imx27-phytec-phycore-rdk.dts b/arch/arm/dts/imx27-phytec-phycore-rdk.dts
index f602045..fff154c 100644
--- a/arch/arm/dts/imx27-phytec-phycore-rdk.dts
+++ b/arch/arm/dts/imx27-phytec-phycore-rdk.dts
@@ -32,17 +32,17 @@
 		reg = <0x00000000 0x00080000>;
 	};
 
-	environment_nand: partition@1 {
+	environment_nand: partition@80000 {
 		label = "env";
 		reg = <0x00080000 0x00020000>;
 	};
 
-	partition@2 {
+	partition@a0000 {
 		label = "kernel";
 		reg = <0x000a0000 0x00400000>;
 	};
 
-	partition@3 {
+	partition@4a0000 {
 		label = "root";
 		reg = <0x004a0000 0>;
 	};
@@ -54,17 +54,17 @@
 		reg = <0x00000000 0x00080000>;
 	};
 
-	environment_nor: partition@1 {
+	environment_nor: partition@80000 {
 		label = "env";
 		reg = <0x00080000 0x00020000>;
 	};
 
-	partition@2 {
+	partition@a0000 {
 		label = "kernel";
 		reg = <0x000a0000 0x00400000>;
 	};
 
-	partition@3 {
+	partition@4a0000 {
 		label = "root";
 		reg = <0x004a0000 0>;
 	};
diff --git a/arch/arm/dts/imx53-ccxmx53.dtsi b/arch/arm/dts/imx53-ccxmx53.dtsi
index 5553c68..3f4e78f 100644
--- a/arch/arm/dts/imx53-ccxmx53.dtsi
+++ b/arch/arm/dts/imx53-ccxmx53.dtsi
@@ -235,17 +235,17 @@
 		reg = <0x0 0x80000>;
 	};
 
-	partition@1 {
+	partition@80000 {
 		label = "environment";
 		reg = <0x80000 0x80000>;
 	};
 
-	partition@2 {
+	partition@100000 {
 		label = "kernel";
 		reg = <0x100000 0x400000>;
 	};
 
-	partition@3 {
+	partition@500000 {
 		label = "rootfs";
 		reg = <0x500000 0x07B00000>;
 	};
diff --git a/arch/arm/dts/imx53-guf-vincell-lt.dts b/arch/arm/dts/imx53-guf-vincell-lt.dts
index a577ab2..9691e22 100644
--- a/arch/arm/dts/imx53-guf-vincell-lt.dts
+++ b/arch/arm/dts/imx53-guf-vincell-lt.dts
@@ -364,12 +364,12 @@
 		reg = <0x0 0x80000>;
 	};
 
-	bareboxenv: partition@1 {
+	bareboxenv: partition@80000 {
 		label = "barebox-environment";
 		reg = <0x80000 0x80000>;
 	};
 
-	partition@2 {
+	partition@100000 {
 		label = "ubi";
 		reg = <0x100000 0x0>;
 	};
diff --git a/arch/arm/dts/imx53-voipac-dmm-668.dtsi b/arch/arm/dts/imx53-voipac-dmm-668.dtsi
index 6f76d28..42aacd2 100644
--- a/arch/arm/dts/imx53-voipac-dmm-668.dtsi
+++ b/arch/arm/dts/imx53-voipac-dmm-668.dtsi
@@ -18,17 +18,17 @@
 		reg = <0x0 0x80000>;
 	};
 
-	partition@1 {
+	partition@80000 {
 		label = "environment";
 		reg = <0x80000 0x80000>;
 	};
 
-	partition@2 {
+	partition@100000 {
 		label = "kernel";
 		reg = <0x100000 0x400000>;
 	};
 
-	partition@3 {
+	partition@500000 {
 		label = "rootfs";
 		reg = <0x500000 0x07B00000>;
 	};
diff --git a/arch/arm/dts/imx6dl-eltec-hipercam.dts b/arch/arm/dts/imx6dl-eltec-hipercam.dts
index f272e78..6f1c496 100644
--- a/arch/arm/dts/imx6dl-eltec-hipercam.dts
+++ b/arch/arm/dts/imx6dl-eltec-hipercam.dts
@@ -40,12 +40,12 @@
 			reg = <0x0 0xc0000>;
 		};
 
-		environment_nor0: partition@1 {
+		environment_nor0: partition@c0000 {
 			label = "bareboxenv";
 			reg = <0xc0000 0x8000>;
 		};
 
-		partition@2 {
+		partition@100000 {
 			label = "persistent";
 			reg = <0x100000 0xf00000>;
 		};
diff --git a/arch/arm/dts/imx6dl-hummingboard.dts b/arch/arm/dts/imx6dl-hummingboard.dts
index 2314965..61f8363 100644
--- a/arch/arm/dts/imx6dl-hummingboard.dts
+++ b/arch/arm/dts/imx6dl-hummingboard.dts
@@ -32,7 +32,7 @@
 		reg = <0x0 0x80000>;
 	};
 
-	partition@1 {
+	partition@80000 {
 		label = "barebox-environment";
 		reg = <0x80000 0x80000>;
 	};
diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
index 2324f3a..b77add8 100644
--- a/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
+++ b/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
@@ -56,7 +56,7 @@
 		reg = <0x0 0x80000>;
 	};
 
-	partition@1 {
+	partition@80000 {
 		label = "barebox-environment";
 		reg = <0x80000 0x80000>;
 	};
diff --git a/arch/arm/dts/imx6q-dmo-edmqmx6.dts b/arch/arm/dts/imx6q-dmo-edmqmx6.dts
index 071f5f5..fb8d56f 100644
--- a/arch/arm/dts/imx6q-dmo-edmqmx6.dts
+++ b/arch/arm/dts/imx6q-dmo-edmqmx6.dts
@@ -56,7 +56,7 @@
 			reg = <0x0 0x80000>;
 		};
 
-		partition@1 {
+		partition@80000 {
 			label = "barebox-environment";
 			reg = <0x80000 0x20000>;
 		};
@@ -99,7 +99,7 @@
 		label = "barebox";
 		reg = <0x0 0x80000>;
 	};
-	partition@1 {
+	partition@80000 {
 		label = "barebox-environment";
 		reg = <0x80000 0x80000>;
 	};
@@ -113,7 +113,7 @@
 		label = "barebox";
 		reg = <0x0 0x80000>;
 	};
-	partition@1 {
+	partition@80000 {
 		label = "barebox-environment";
 		reg = <0x80000 0x80000>;
 	};
diff --git a/arch/arm/dts/imx6q-embedsky-e9.dts b/arch/arm/dts/imx6q-embedsky-e9.dts
index 726d620..07c01eb 100644
--- a/arch/arm/dts/imx6q-embedsky-e9.dts
+++ b/arch/arm/dts/imx6q-embedsky-e9.dts
@@ -43,7 +43,7 @@
 		label = "barebox";
 		reg = <0x0 0x80000>;
 	};
-	environment_mmc1: partition@1 {
+	environment_mmc1: partition@80000 {
 		label = "barebox-environment";
 		reg = <0x80000 0x80000>;
 	};
@@ -57,7 +57,7 @@
 		label = "barebox";
 		reg = <0x0 0x80000>;
 	};
-	environment_mmc3: partition@1 {
+	environment_mmc3: partition@80000 {
 		label = "barebox-environment";
 		reg = <0x80000 0x80000>;
 	};
diff --git a/arch/arm/dts/imx6q-hummingboard.dts b/arch/arm/dts/imx6q-hummingboard.dts
index e1d2fa8..a35f2b2 100644
--- a/arch/arm/dts/imx6q-hummingboard.dts
+++ b/arch/arm/dts/imx6q-hummingboard.dts
@@ -32,7 +32,7 @@
 		reg = <0x0 0x80000>;
 	};
 
-	partition@1 {
+	partition@80000 {
 		label = "barebox-environment";
 		reg = <0x80000 0x80000>;
 	};
diff --git a/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi b/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
index 0522465..4eea425 100644
--- a/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
+++ b/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
@@ -139,22 +139,22 @@
 		reg = <0x0 0x400000>;
 	};
 
-	environment_nand: partition@1 {
+	environment_nand: partition@400000 {
 		label = "barebox-environment";
 		reg = <0x400000 0x20000>;
 	};
 
-	partition@2 {
+	partition@420000 {
 		label = "oftree";
 		reg = <0x420000 0x20000>;
 	};
 
-	partition@3 {
+	partition@440000 {
 		label = "kernel";
 		reg = <0x440000 0x800000>;
 	};
 
-	partition@4 {
+	partition@C40000 {
 		label = "root";
 		reg = <0xC40000 0x0>;
 	};
@@ -183,7 +183,7 @@
 		label = "barebox";
 		reg = <0x0 0x80000>;
 	};
-	environment_usdhc3: partition@1 {
+	environment_usdhc3: partition@80000 {
 		label = "barebox-environment";
 		reg = <0x80000 0x80000>;
 	};
diff --git a/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
index 06f2f71..26bbed5 100644
--- a/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
+++ b/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
@@ -65,7 +65,7 @@
 		reg = <0x0 0x80000>;
 	};
 
-	partition@1 {
+	partition@80000 {
 		label = "barebox-environment";
 		reg = <0x80000 0x80000>;
 	};
diff --git a/arch/arm/dts/imx6q-var-custom.dts b/arch/arm/dts/imx6q-var-custom.dts
index ef6981e..fe03589 100644
--- a/arch/arm/dts/imx6q-var-custom.dts
+++ b/arch/arm/dts/imx6q-var-custom.dts
@@ -127,17 +127,17 @@
 		reg = <0x0 0x200000>;
 	};
 
-	partition@1 {
+	partition@200000 {
 		label = "barebox-environment";
 		reg = <0x200000 0x20000>;
 	};
 
-	partition@2 {
+	partition@220000 {
 		label = "kernel";
 		reg = <0x220000 0x600000>;
 	};
 
-	partition@3 {
+	partition@820000 {
 		label = "rootfs";
 		reg = <0x820000 0x18000000>;
 	};
diff --git a/arch/arm/dts/imx6q-var-som.dtsi b/arch/arm/dts/imx6q-var-som.dtsi
index d005f31..63a17fc 100644
--- a/arch/arm/dts/imx6q-var-som.dtsi
+++ b/arch/arm/dts/imx6q-var-som.dtsi
@@ -42,17 +42,17 @@
 		reg = <0x0 0x200000>;
 	};
 
-	environment_nand: partition@1 {
+	environment_nand: partition@200000 {
 		label = "barebox-environment";
 		reg = <0x200000 0x20000>;
 	};
 
-	partition@2 {
+	partition@220000 {
 		label = "kernel";
 		reg = <0x220000 0x600000>;
 	};
 
-	partition@3 {
+	partition@820000 {
 		label = "rootfs";
 		reg = <0x820000 0x1F7E0000>;
 	};
diff --git a/arch/arm/dts/imx6qdl-gw54xx.dtsi b/arch/arm/dts/imx6qdl-gw54xx.dtsi
index ea5739d..5f8e489 100644
--- a/arch/arm/dts/imx6qdl-gw54xx.dtsi
+++ b/arch/arm/dts/imx6qdl-gw54xx.dtsi
@@ -31,7 +31,7 @@
 		reg = <0x0 0x400000>;
 	};
 
-	partition@1 {
+	partition@400000 {
 		label = "barebox-environment";
 		reg = <0x400000 0x20000>;
 	};
diff --git a/arch/arm/dts/imx6qdl-nitrogen6x.dtsi b/arch/arm/dts/imx6qdl-nitrogen6x.dtsi
index 8fcd4e4..d818b6b 100644
--- a/arch/arm/dts/imx6qdl-nitrogen6x.dtsi
+++ b/arch/arm/dts/imx6qdl-nitrogen6x.dtsi
@@ -34,7 +34,7 @@
 		reg = <0x0 0x80000>;
 	};
 
-	partition@1 {
+	partition@80000 {
 		label = "barebox-environment";
 		reg = <0x80000 0x80000>;
 	};
diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
index b79ce2c..81554d2 100644
--- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
@@ -66,17 +66,17 @@
 			reg = <0x0 0x100000>;
 		};
 
-		partition@1 {
+		partition@100000 {
 			label = "barebox-environment";
 			reg = <0x100000 0x20000>;
 		};
 
-		partition@2 {
+		partition@120000 {
 			label = "oftree";
 			reg = <0x120000 0x20000>;
 		};
 
-		partition@3 {
+		partition@140000 {
 			label = "kernel";
 			reg = <0x140000 0x0>;
 		};
@@ -108,22 +108,22 @@
 		reg = <0x0 0x400000>;
 	};
 
-	partition@1 {
+	partition@400000 {
 		label = "barebox-environment";
 		reg = <0x400000 0x100000>;
 	};
 
-	partition@2 {
+	partition@500000 {
 		label = "oftree";
 		reg = <0x500000 0x100000>;
 	};
 
-	partition@3 {
+	partition@600000 {
 		label = "kernel";
 		reg = <0x600000 0x800000>;
 	};
 
-	partition@4 {
+	partition@e00000 {
 		label = "root";
 		reg = <0xe00000 0x0>;
 	};
@@ -183,7 +183,7 @@
 		reg = <0x0 0x80000>;
 	};
 
-	partition@1 {
+	partition@80000 {
 		label = "barebox-environment";
 		reg = <0x80000 0x80000>;
 	};
diff --git a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
index 2a975d1..cb1167e 100644
--- a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -55,17 +55,17 @@
 			reg = <0x0 0x100000>;
 		};
 
-		partition@1 {
+		partition@100000 {
 			label = "barebox-environment";
 			reg = <0x100000 0x20000>;
 		};
 
-		partition@2 {
+		partition@120000 {
 			label = "oftree";
 			reg = <0x120000 0x20000>;
 		};
 
-		partition@3 {
+		partition@140000 {
 			label = "kernel";
 			reg = <0x140000 0x0>;
 		};
@@ -91,22 +91,22 @@
 		reg = <0x0 0x400000>;
 	};
 
-	partition@1 {
+	partition@400000 {
 		label = "barebox-environment";
 		reg = <0x400000 0x100000>;
 	};
 
-	partition@2 {
+	partition@500000 {
 		label = "oftree";
 		reg = <0x500000 0x100000>;
 	};
 
-	partition@3 {
+	partition@600000 {
 		label = "kernel";
 		reg = <0x600000 0x800000>;
 	};
 
-	partition@4 {
+	partition@e00000 {
 		label = "root";
 		reg = <0xe00000 0x0>;
 	};
@@ -259,7 +259,7 @@
 		reg = <0x0 0x80000>;
 	};
 
-	partition@1 {
+	partition@80000 {
 		label = "barebox-environment";
 		reg = <0x80000 0x80000>;
 	};
diff --git a/arch/arm/dts/imx6qdl-sabrelite.dtsi b/arch/arm/dts/imx6qdl-sabrelite.dtsi
index d5a6ff4..abe1d19 100644
--- a/arch/arm/dts/imx6qdl-sabrelite.dtsi
+++ b/arch/arm/dts/imx6qdl-sabrelite.dtsi
@@ -34,7 +34,7 @@
 		reg = <0x0 0x80000>;
 	};
 
-	partition@1 {
+	partition@80000 {
 		label = "barebox-environment";
 		reg = <0x80000 0x80000>;
 	};
diff --git a/arch/arm/dts/imx6qdl-sabresd.dtsi b/arch/arm/dts/imx6qdl-sabresd.dtsi
index 32318cf..4ebfda3 100644
--- a/arch/arm/dts/imx6qdl-sabresd.dtsi
+++ b/arch/arm/dts/imx6qdl-sabresd.dtsi
@@ -34,7 +34,7 @@
 		reg = <0x0 0x80000>;
 	};
 
-	environment_usdhc3: partition@1 {
+	environment_usdhc3: partition@80000 {
 		label = "barebox-environment";
 		reg = <0x80000 0x80000>;
 	};
diff --git a/arch/arm/dts/imx6qdl-tx6x.dtsi b/arch/arm/dts/imx6qdl-tx6x.dtsi
index 9c5d676..3898425 100644
--- a/arch/arm/dts/imx6qdl-tx6x.dtsi
+++ b/arch/arm/dts/imx6qdl-tx6x.dtsi
@@ -32,7 +32,7 @@
 		reg = <0x0 0x400000>;
 	};
 
-	partition@1 {
+	partition@400000 {
 		label = "barebox-environment";
 		reg = <0x400000 0x100000>;
 	};
diff --git a/arch/arm/dts/imx6s-riotboard.dts b/arch/arm/dts/imx6s-riotboard.dts
index 3d0a930..2fc5a3f 100644
--- a/arch/arm/dts/imx6s-riotboard.dts
+++ b/arch/arm/dts/imx6s-riotboard.dts
@@ -233,7 +233,7 @@
 		reg = <0x0 0x80000>;
 	};
 
-	environment_usdhc4: partition@1 {
+	environment_usdhc4: partition@80000 {
 		label = "barebox-environment";
 		reg = <0x80000 0x80000>;
 	};
diff --git a/arch/arm/dts/rk3188-radxarock.dts b/arch/arm/dts/rk3188-radxarock.dts
index 47b2487..cafd4d3 100644
--- a/arch/arm/dts/rk3188-radxarock.dts
+++ b/arch/arm/dts/rk3188-radxarock.dts
@@ -34,7 +34,7 @@
 		label = "barebox";
 		reg = <0x0 0x80000>;
 	};
-	partition@1 {
+	partition@80000 {
 		label = "barebox-environment";
 		reg = <0x80000 0x80000>;
 	};
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
