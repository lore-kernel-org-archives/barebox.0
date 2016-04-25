Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1auZnK-0007to-Rx
 for barebox@lists.infradead.org; Mon, 25 Apr 2016 06:14:56 +0000
Date: Mon, 25 Apr 2016 08:14:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160425061432.GB7860@pengutronix.de>
References: <1461452493-19431-1-git-send-email-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1461452493-19431-1-git-send-email-festevam@gmail.com>
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
Subject: Re: [PATCH v2] ARM: dts: imx6qdl-sabresd: Fix barebox-environment
 location
To: Fabio Estevam <festevam@gmail.com>
Cc: barebox@lists.infradead.org, sam@ravnborg.org

Hi Fabio,

On Sat, Apr 23, 2016 at 08:01:33PM -0300, Fabio Estevam wrote:
> After doing a 'saveenv' command, it is no longer possible to boot.
> 
> The reason for this behaviour is that the 'barebox' partition has currently
> a size of 0x80000 (512 kB), which is not sufficient to store the barebox
> binary. This causes the 'barebox' and 'barebox-environment' partitions
> to overlap.
> 
> Fix this problem by increasing the size of the 'barebox' partition and
> by placing the 'barebox-environment' right after it.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> ---
> Changes since v1:
> - Also adjust the partition size for 'barebox'.

Since we have this problem on many i.MX boards I prefer fixing this for
all affected boards, see below.

This should solve the problem for the next few years, but next time we
must find a more clever solution.

Sascha

----------------------------8<-------------------------------------

From 54bddad853f07effbe55065c4864a3921c4b2e1e Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Apr 2016 08:05:29 +0200
Subject: [PATCH] ARM: i.MX: increase barebox partition sizes

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
 arch/arm/dts/imx25-karo-tx25.dts                |  4 ++--
 arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts  |  4 ++--
 arch/arm/dts/imx51-babbage.dts                  |  2 +-
 arch/arm/dts/imx51-genesi-efika-sb.dts          |  4 ++--
 arch/arm/dts/imx53-ccxmx53.dtsi                 |  4 ++--
 arch/arm/dts/imx53-guf-vincell-lt.dts           |  4 ++--
 arch/arm/dts/imx53-mba53.dts                    |  2 +-
 arch/arm/dts/imx53-qsb-common.dtsi              |  2 +-
 arch/arm/dts/imx53-voipac-dmm-668.dtsi          |  4 ++--
 arch/arm/dts/imx6dl-eltec-hipercam.dts          |  4 ++--
 arch/arm/dts/imx6dl-hummingboard.dts            |  4 ++--
 arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts |  4 ++--
 arch/arm/dts/imx6dl-wandboard.dts               |  6 +++---
 arch/arm/dts/imx6q-dmo-edmqmx6.dts              | 12 ++++++------
 arch/arm/dts/imx6q-embedsky-e9.dts              |  8 ++++----
 arch/arm/dts/imx6q-guf-santaro.dts              |  2 +-
 arch/arm/dts/imx6q-hummingboard.dts             |  4 ++--
 arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi          |  4 ++--
 arch/arm/dts/imx6q-phytec-phycore-som-nand.dts  |  4 ++--
 arch/arm/dts/imx6q-wandboard.dts                |  6 +++---
 arch/arm/dts/imx6qdl-nitrogen6x.dtsi            |  4 ++--
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi         |  4 ++--
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi    |  4 ++--
 arch/arm/dts/imx6qdl-sabrelite.dtsi             |  4 ++--
 arch/arm/dts/imx6qdl-sabresd.dtsi               |  4 ++--
 arch/arm/dts/imx6s-riotboard.dts                |  2 +-
 arch/arm/dts/imx6sx-sdb.dts                     |  2 +-
 27 files changed, 56 insertions(+), 56 deletions(-)

diff --git a/arch/arm/dts/imx25-karo-tx25.dts b/arch/arm/dts/imx25-karo-tx25.dts
index d661463..6e28ac9 100644
--- a/arch/arm/dts/imx25-karo-tx25.dts
+++ b/arch/arm/dts/imx25-karo-tx25.dts
@@ -123,12 +123,12 @@
 
 	partition@0 {
 		label = "boot";
-		reg = <0x0 0x80000>;
+		reg = <0x0 0xe0000>;
 	};
 
 	partition@1 {
 		label = "environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 
 	partition@2 {
diff --git a/arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts b/arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts
index 3ea1b5b..daa1e0f 100644
--- a/arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts
+++ b/arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts
@@ -18,12 +18,12 @@
 &nfc {
 	partition@0 {
 		label = "boot";
-		reg = <0x0 0x80000>;
+		reg = <0x0 0xe0000>;
 	};
 
 	partition@1 {
 		label = "environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 
 	partition@2 {
diff --git a/arch/arm/dts/imx51-babbage.dts b/arch/arm/dts/imx51-babbage.dts
index f8402ca..c7eeb45 100644
--- a/arch/arm/dts/imx51-babbage.dts
+++ b/arch/arm/dts/imx51-babbage.dts
@@ -29,7 +29,7 @@
 
 	environment_esdhc1: partition@0 {
 		label = "barebox-environment";
-		reg = <0x80000 0x20000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
 
diff --git a/arch/arm/dts/imx51-genesi-efika-sb.dts b/arch/arm/dts/imx51-genesi-efika-sb.dts
index 78cb1b7..8b237b3 100644
--- a/arch/arm/dts/imx51-genesi-efika-sb.dts
+++ b/arch/arm/dts/imx51-genesi-efika-sb.dts
@@ -417,7 +417,7 @@
 
 	partition@0 {
 		label = "barebox-environment";
-		reg = <0xc0000 0x40000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
 
@@ -535,7 +535,7 @@
 
 		partition@0 {
 			label = "barebox-environment";
-			reg = <0x80000 0x80000>;
+			reg = <0xe0000 0x20000>;
 		};
 	};
 };
diff --git a/arch/arm/dts/imx53-ccxmx53.dtsi b/arch/arm/dts/imx53-ccxmx53.dtsi
index 5553c68..da10757 100644
--- a/arch/arm/dts/imx53-ccxmx53.dtsi
+++ b/arch/arm/dts/imx53-ccxmx53.dtsi
@@ -232,12 +232,12 @@
 
 	partition@0 {
 		label = "barebox";
-		reg = <0x0 0x80000>;
+		reg = <0x0 0xe0000>;
 	};
 
 	partition@1 {
 		label = "environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 
 	partition@2 {
diff --git a/arch/arm/dts/imx53-guf-vincell-lt.dts b/arch/arm/dts/imx53-guf-vincell-lt.dts
index a577ab2..d004f9f 100644
--- a/arch/arm/dts/imx53-guf-vincell-lt.dts
+++ b/arch/arm/dts/imx53-guf-vincell-lt.dts
@@ -361,12 +361,12 @@
 
 	partition@0 {
 		label = "barebox";
-		reg = <0x0 0x80000>;
+		reg = <0x0 0xe0000>;
 	};
 
 	bareboxenv: partition@1 {
 		label = "barebox-environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 
 	partition@2 {
diff --git a/arch/arm/dts/imx53-mba53.dts b/arch/arm/dts/imx53-mba53.dts
index c908c61..cca1383 100644
--- a/arch/arm/dts/imx53-mba53.dts
+++ b/arch/arm/dts/imx53-mba53.dts
@@ -30,7 +30,7 @@
 
 	partition@0 {
 		label = "environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
 
diff --git a/arch/arm/dts/imx53-qsb-common.dtsi b/arch/arm/dts/imx53-qsb-common.dtsi
index 85e1b8b..5dd1e4e 100644
--- a/arch/arm/dts/imx53-qsb-common.dtsi
+++ b/arch/arm/dts/imx53-qsb-common.dtsi
@@ -45,7 +45,7 @@
 
 	bareboxenv: partition@0 {
 		label = "barebox-environment";
-		reg = <0x80000 0x20000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
 
diff --git a/arch/arm/dts/imx53-voipac-dmm-668.dtsi b/arch/arm/dts/imx53-voipac-dmm-668.dtsi
index 6f76d28..f7eed8d 100644
--- a/arch/arm/dts/imx53-voipac-dmm-668.dtsi
+++ b/arch/arm/dts/imx53-voipac-dmm-668.dtsi
@@ -15,12 +15,12 @@
 
 	partition@0 {
 		label = "barebox";
-		reg = <0x0 0x80000>;
+		reg = <0x0 0xe0000>;
 	};
 
 	partition@1 {
 		label = "environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 
 	partition@2 {
diff --git a/arch/arm/dts/imx6dl-eltec-hipercam.dts b/arch/arm/dts/imx6dl-eltec-hipercam.dts
index f272e78..7f7746c 100644
--- a/arch/arm/dts/imx6dl-eltec-hipercam.dts
+++ b/arch/arm/dts/imx6dl-eltec-hipercam.dts
@@ -37,12 +37,12 @@
 
 		partition@0 {
 			label = "barebox";
-			reg = <0x0 0xc0000>;
+			reg = <0x0 0xe0000>;
 		};
 
 		environment_nor0: partition@1 {
 			label = "bareboxenv";
-			reg = <0xc0000 0x8000>;
+			reg = <0xe0000 0x20000>;
 		};
 
 		partition@2 {
diff --git a/arch/arm/dts/imx6dl-hummingboard.dts b/arch/arm/dts/imx6dl-hummingboard.dts
index 2314965..0152d6f 100644
--- a/arch/arm/dts/imx6dl-hummingboard.dts
+++ b/arch/arm/dts/imx6dl-hummingboard.dts
@@ -29,11 +29,11 @@
 
 	partition@0 {
 		label = "barebox";
-		reg = <0x0 0x80000>;
+		reg = <0x0 0xe0000>;
 	};
 
 	partition@1 {
 		label = "barebox-environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
diff --git a/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
index 2324f3a..2fce915 100644
--- a/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
+++ b/arch/arm/dts/imx6dl-phytec-phycore-som-nand.dts
@@ -53,11 +53,11 @@
 
 	partition@0 {
 		label = "barebox";
-		reg = <0x0 0x80000>;
+		reg = <0x0 0xe0000>;
 	};
 
 	partition@1 {
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
index 071f5f5..d0362f5 100644
--- a/arch/arm/dts/imx6q-dmo-edmqmx6.dts
+++ b/arch/arm/dts/imx6q-dmo-edmqmx6.dts
@@ -53,12 +53,12 @@
 
 		partition@0 {
 			label = "barebox";
-			reg = <0x0 0x80000>;
+			reg = <0x0 0xe0000>;
 		};
 
 		partition@1 {
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
 	partition@1 {
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
 	partition@1 {
 		label = "barebox-environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
diff --git a/arch/arm/dts/imx6q-embedsky-e9.dts b/arch/arm/dts/imx6q-embedsky-e9.dts
index 726d620..c4a9e41 100644
--- a/arch/arm/dts/imx6q-embedsky-e9.dts
+++ b/arch/arm/dts/imx6q-embedsky-e9.dts
@@ -41,11 +41,11 @@
 
 	partition@0 {
 		label = "barebox";
-		reg = <0x0 0x80000>;
+		reg = <0x0 0xe0000>;
 	};
 	environment_mmc1: partition@1 {
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
 	environment_mmc3: partition@1 {
 		label = "barebox-environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
diff --git a/arch/arm/dts/imx6q-guf-santaro.dts b/arch/arm/dts/imx6q-guf-santaro.dts
index 27f538a..74731d4 100644
--- a/arch/arm/dts/imx6q-guf-santaro.dts
+++ b/arch/arm/dts/imx6q-guf-santaro.dts
@@ -589,7 +589,7 @@
 
 	partition@0 {
 		label = "barebox-environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
 
diff --git a/arch/arm/dts/imx6q-hummingboard.dts b/arch/arm/dts/imx6q-hummingboard.dts
index e1d2fa8..0a83e80 100644
--- a/arch/arm/dts/imx6q-hummingboard.dts
+++ b/arch/arm/dts/imx6q-hummingboard.dts
@@ -29,11 +29,11 @@
 
 	partition@0 {
 		label = "barebox";
-		reg = <0x0 0x80000>;
+		reg = <0x0 0xe0000>;
 	};
 
 	partition@1 {
 		label = "barebox-environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
diff --git a/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi b/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
index 0522465..107100e 100644
--- a/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
+++ b/arch/arm/dts/imx6q-phytec-pcaaxl3.dtsi
@@ -181,10 +181,10 @@
 
 	partition@0 {
 		label = "barebox";
-		reg = <0x0 0x80000>;
+		reg = <0x0 0xe0000>;
 	};
 	environment_usdhc3: partition@1 {
 		label = "barebox-environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
diff --git a/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts b/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
index 06f2f71..b4564c2 100644
--- a/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
+++ b/arch/arm/dts/imx6q-phytec-phycore-som-nand.dts
@@ -62,11 +62,11 @@
 
 	partition@0 {
 		label = "barebox";
-		reg = <0x0 0x80000>;
+		reg = <0x0 0xe0000>;
 	};
 
 	partition@1 {
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
index 8fcd4e4..4a6b724 100644
--- a/arch/arm/dts/imx6qdl-nitrogen6x.dtsi
+++ b/arch/arm/dts/imx6qdl-nitrogen6x.dtsi
@@ -31,12 +31,12 @@
 
 	partition@0 {
 		label = "barebox";
-		reg = <0x0 0x80000>;
+		reg = <0x0 0xe0000>;
 	};
 
 	partition@1 {
 		label = "barebox-environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
 
diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
index b79ce2c..c3a0aa8 100644
--- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
@@ -180,11 +180,11 @@
 
 	partition@0 {
 		label = "barebox";
-		reg = <0x0 0x80000>;
+		reg = <0x0 0xe0000>;
 	};
 
 	partition@1 {
 		label = "barebox-environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
diff --git a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
index 2a975d1..12f6766 100644
--- a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -256,11 +256,11 @@
 
 	partition@0 {
 		label = "barebox";
-		reg = <0x0 0x80000>;
+		reg = <0x0 0xe0000>;
 	};
 
 	partition@1 {
 		label = "barebox-environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
diff --git a/arch/arm/dts/imx6qdl-sabrelite.dtsi b/arch/arm/dts/imx6qdl-sabrelite.dtsi
index d5a6ff4..4de3aea 100644
--- a/arch/arm/dts/imx6qdl-sabrelite.dtsi
+++ b/arch/arm/dts/imx6qdl-sabrelite.dtsi
@@ -31,12 +31,12 @@
 
 	partition@0 {
 		label = "barebox";
-		reg = <0x0 0x80000>;
+		reg = <0x0 0xe0000>;
 	};
 
 	partition@1 {
 		label = "barebox-environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
 
diff --git a/arch/arm/dts/imx6qdl-sabresd.dtsi b/arch/arm/dts/imx6qdl-sabresd.dtsi
index 32318cf..f8746fa 100644
--- a/arch/arm/dts/imx6qdl-sabresd.dtsi
+++ b/arch/arm/dts/imx6qdl-sabresd.dtsi
@@ -31,11 +31,11 @@
 
 	partition@0 {
 		label = "barebox";
-		reg = <0x0 0x80000>;
+		reg = <0x0 0xe0000>;
 	};
 
 	environment_usdhc3: partition@1 {
 		label = "barebox-environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
diff --git a/arch/arm/dts/imx6s-riotboard.dts b/arch/arm/dts/imx6s-riotboard.dts
index 3d0a930..322dab0 100644
--- a/arch/arm/dts/imx6s-riotboard.dts
+++ b/arch/arm/dts/imx6s-riotboard.dts
@@ -235,7 +235,7 @@
 
 	environment_usdhc4: partition@1 {
 		label = "barebox-environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
 
diff --git a/arch/arm/dts/imx6sx-sdb.dts b/arch/arm/dts/imx6sx-sdb.dts
index fbf098b..3cd1401 100644
--- a/arch/arm/dts/imx6sx-sdb.dts
+++ b/arch/arm/dts/imx6sx-sdb.dts
@@ -54,7 +54,7 @@
 
 	partition@0 {
 		label = "barebox-environment";
-		reg = <0x80000 0x20000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
 
-- 
2.8.0.rc3

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
