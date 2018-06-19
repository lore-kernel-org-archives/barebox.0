Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fV9pa-0007tJ-4w
 for barebox@lists.infradead.org; Tue, 19 Jun 2018 06:09:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Jun 2018 08:09:11 +0200
Message-Id: <20180619060915.13141-2-s.hauer@pengutronix.de>
In-Reply-To: <20180619060915.13141-1-s.hauer@pengutronix.de>
References: <20180619060915.13141-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] ARM: dts: use stdout-path property
To: Barebox List <barebox@lists.infradead.org>

linx,stdout-path has been deprecated. Use stdout-path instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/am335x-baltos-minimal.dts         | 2 +-
 arch/arm/dts/am335x-bone-common.dtsi           | 2 +-
 arch/arm/dts/am335x-phytec-phycard-som.dtsi    | 2 +-
 arch/arm/dts/am335x-phytec-phycore-som.dtsi    | 2 +-
 arch/arm/dts/am335x-phytec-phyflex-som.dtsi    | 2 +-
 arch/arm/dts/dove-cubox-bb.dts                 | 2 +-
 arch/arm/dts/imx25-karo-tx25.dts               | 2 +-
 arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts | 2 +-
 arch/arm/dts/imx53-ccxmx53.dtsi                | 2 +-
 arch/arm/dts/imx53-guf-vincell-lt.dts          | 2 +-
 arch/arm/dts/imx53-guf-vincell.dts             | 2 +-
 arch/arm/dts/imx53-mba53.dts                   | 2 +-
 arch/arm/dts/imx53-voipac-dmm-668.dtsi         | 2 +-
 arch/arm/dts/imx6dl-hummingboard.dts           | 2 +-
 arch/arm/dts/imx6dl-mba6x.dts                  | 2 +-
 arch/arm/dts/imx6dl-phytec-pbab01.dts          | 2 +-
 arch/arm/dts/imx6dl-wandboard.dts              | 2 +-
 arch/arm/dts/imx6q-dmo-edmqmx6.dts             | 2 +-
 arch/arm/dts/imx6q-embedsky-e9.dts             | 2 +-
 arch/arm/dts/imx6q-guf-santaro.dts             | 2 +-
 arch/arm/dts/imx6q-hummingboard.dts            | 2 +-
 arch/arm/dts/imx6q-mba6x.dts                   | 2 +-
 arch/arm/dts/imx6q-phytec-pbaa03.dts           | 2 +-
 arch/arm/dts/imx6q-sabresd.dts                 | 2 +-
 arch/arm/dts/imx6q-var-custom.dts              | 2 +-
 arch/arm/dts/imx6q-wandboard.dts               | 2 +-
 arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi        | 2 +-
 arch/arm/dts/imx6qdl-gw54xx.dtsi               | 2 +-
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi   | 2 +-
 arch/arm/dts/imx6qdl-sabrelite.dtsi            | 2 +-
 arch/arm/dts/imx6qdl-smarc-samx6i.dtsi         | 2 +-
 arch/arm/dts/imx6qdl-tx6x.dtsi                 | 2 +-
 arch/arm/dts/imx6qdl-udoo.dtsi                 | 2 +-
 arch/arm/dts/imx6s-phytec-pbab01.dts           | 2 +-
 arch/arm/dts/imx6s-riotboard.dts               | 2 +-
 arch/arm/dts/imx6ul-phytec-phycore-som.dtsi    | 2 +-
 arch/arm/dts/imx6ul-pico-hobbit.dts            | 2 +-
 arch/arm/dts/rk3188-radxarock.dts              | 2 +-
 arch/arm/dts/socfpga_arria10_achilles.dts      | 2 +-
 39 files changed, 39 insertions(+), 39 deletions(-)

diff --git a/arch/arm/dts/am335x-baltos-minimal.dts b/arch/arm/dts/am335x-baltos-minimal.dts
index 13eb91c83e..f939cf6406 100644
--- a/arch/arm/dts/am335x-baltos-minimal.dts
+++ b/arch/arm/dts/am335x-baltos-minimal.dts
@@ -21,7 +21,7 @@
 	compatible = "vscom,onrisc", "ti,am33xx";
 
 	chosen {
-		linux,stdout-path = &uart0;
+		stdout-path = &uart0;
 	};
 
 	cpus {
diff --git a/arch/arm/dts/am335x-bone-common.dtsi b/arch/arm/dts/am335x-bone-common.dtsi
index 0413724e0c..e03ae2a8d3 100644
--- a/arch/arm/dts/am335x-bone-common.dtsi
+++ b/arch/arm/dts/am335x-bone-common.dtsi
@@ -8,7 +8,7 @@
 
 / {
 	chosen {
-		linux,stdout-path = &uart0;
+		stdout-path = &uart0;
 	};
 
 	cpus {
diff --git a/arch/arm/dts/am335x-phytec-phycard-som.dtsi b/arch/arm/dts/am335x-phytec-phycard-som.dtsi
index d608f63e12..6a0442916b 100644
--- a/arch/arm/dts/am335x-phytec-phycard-som.dtsi
+++ b/arch/arm/dts/am335x-phytec-phycard-som.dtsi
@@ -1,6 +1,6 @@
 / {
 	chosen {
-		linux,stdout-path = &uart0;
+		stdout-path = &uart0;
 
 		environment-nand {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/am335x-phytec-phycore-som.dtsi b/arch/arm/dts/am335x-phytec-phycore-som.dtsi
index cf2eef3014..cb2d30a15c 100644
--- a/arch/arm/dts/am335x-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/am335x-phytec-phycore-som.dtsi
@@ -1,6 +1,6 @@
 / {
 	chosen {
-		linux,stdout-path = &uart0;
+		stdout-path = &uart0;
 
 		environment-spi {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/am335x-phytec-phyflex-som.dtsi b/arch/arm/dts/am335x-phytec-phyflex-som.dtsi
index 5b8bb5dda9..465d3fa16c 100644
--- a/arch/arm/dts/am335x-phytec-phyflex-som.dtsi
+++ b/arch/arm/dts/am335x-phytec-phyflex-som.dtsi
@@ -1,6 +1,6 @@
 / {
 	chosen {
-		linux,stdout-path = &uart0;
+		stdout-path = &uart0;
 
 		environment-spi {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/dove-cubox-bb.dts b/arch/arm/dts/dove-cubox-bb.dts
index f7ad55c4e7..83e1d5df50 100644
--- a/arch/arm/dts/dove-cubox-bb.dts
+++ b/arch/arm/dts/dove-cubox-bb.dts
@@ -7,7 +7,7 @@
 
 / {
 	chosen {
-		linux,stdout-path = &uart0;
+		stdout-path = &uart0;
 	};
 
 	leds {
diff --git a/arch/arm/dts/imx25-karo-tx25.dts b/arch/arm/dts/imx25-karo-tx25.dts
index 8d79471a30..d447f9720c 100644
--- a/arch/arm/dts/imx25-karo-tx25.dts
+++ b/arch/arm/dts/imx25-karo-tx25.dts
@@ -17,7 +17,7 @@
 	compatible = "karo,imx25-tx25", "fsl,imx25";
 
 	chosen {
-		linux,stdout-path = &uart1;
+		stdout-path = &uart1;
 
 		environment@0 {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts b/arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts
index cb02a1dfce..b67af8a4ad 100644
--- a/arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts
+++ b/arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts
@@ -6,7 +6,7 @@
 
 / {
 	chosen {
-		linux,stdout-path = &uart1;
+		stdout-path = &uart1;
 
 		environment@0 {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx53-ccxmx53.dtsi b/arch/arm/dts/imx53-ccxmx53.dtsi
index 2ed24b65e4..2493c94ce4 100644
--- a/arch/arm/dts/imx53-ccxmx53.dtsi
+++ b/arch/arm/dts/imx53-ccxmx53.dtsi
@@ -16,7 +16,7 @@
 
 / {
 	chosen {
-		linux,stdout-path = &uart1;
+		stdout-path = &uart1;
 
 		environment@0 {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx53-guf-vincell-lt.dts b/arch/arm/dts/imx53-guf-vincell-lt.dts
index 2b1b54acc5..7a133a5010 100644
--- a/arch/arm/dts/imx53-guf-vincell-lt.dts
+++ b/arch/arm/dts/imx53-guf-vincell-lt.dts
@@ -22,7 +22,7 @@
 	compatible = "guf,imx53-vincell-lt", "fsl,imx53";
 
 	chosen {
-		linux,stdout-path = &uart2;
+		stdout-path = &uart2;
 
 		environment {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx53-guf-vincell.dts b/arch/arm/dts/imx53-guf-vincell.dts
index f743f171d6..d34b59f4d3 100644
--- a/arch/arm/dts/imx53-guf-vincell.dts
+++ b/arch/arm/dts/imx53-guf-vincell.dts
@@ -22,7 +22,7 @@
 	compatible = "guf,imx53-vincell", "fsl,imx53";
 
 	chosen {
-		linux,stdout-path = &uart2;
+		stdout-path = &uart2;
 	};
 
 	clocks {
diff --git a/arch/arm/dts/imx53-mba53.dts b/arch/arm/dts/imx53-mba53.dts
index 6998e4c0cb..53b98e30cf 100644
--- a/arch/arm/dts/imx53-mba53.dts
+++ b/arch/arm/dts/imx53-mba53.dts
@@ -16,7 +16,7 @@
 
 / {
 	chosen {
-		linux,stdout-path = &uart2;
+		stdout-path = &uart2;
 
 		environment-sd {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx53-voipac-dmm-668.dtsi b/arch/arm/dts/imx53-voipac-dmm-668.dtsi
index e91c7d02a2..d60f6330f0 100644
--- a/arch/arm/dts/imx53-voipac-dmm-668.dtsi
+++ b/arch/arm/dts/imx53-voipac-dmm-668.dtsi
@@ -1,6 +1,6 @@
 / {
 	chosen {
-		linux,stdout-path = &uart1;
+		stdout-path = &uart1;
 
 		environment@0 {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx6dl-hummingboard.dts b/arch/arm/dts/imx6dl-hummingboard.dts
index 7f4d2b42f2..7e3dcbb457 100644
--- a/arch/arm/dts/imx6dl-hummingboard.dts
+++ b/arch/arm/dts/imx6dl-hummingboard.dts
@@ -10,7 +10,7 @@
 
 / {
 	chosen {
-		linux,stdout-path = &uart1;
+		stdout-path = &uart1;
 
 		environment@0 {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx6dl-mba6x.dts b/arch/arm/dts/imx6dl-mba6x.dts
index 9520509a1d..cdb0334260 100644
--- a/arch/arm/dts/imx6dl-mba6x.dts
+++ b/arch/arm/dts/imx6dl-mba6x.dts
@@ -18,7 +18,7 @@
 	compatible = "tq,mba6x", "tq,tqma6s", "fsl,imx6dl";
 
 	chosen {
-		linux,stdout-path = &uart2;
+		stdout-path = &uart2;
 	};
 
 	memory {
diff --git a/arch/arm/dts/imx6dl-phytec-pbab01.dts b/arch/arm/dts/imx6dl-phytec-pbab01.dts
index 4b77838926..d10fbf668f 100644
--- a/arch/arm/dts/imx6dl-phytec-pbab01.dts
+++ b/arch/arm/dts/imx6dl-phytec-pbab01.dts
@@ -19,6 +19,6 @@
 	compatible = "phytec,imx6x-pbab01", "phytec,imx6dl-pfla02", "fsl,imx6dl";
 
 	chosen {
-		linux,stdout-path = &uart4;
+		stdout-path = &uart4;
 	};
 };
diff --git a/arch/arm/dts/imx6dl-wandboard.dts b/arch/arm/dts/imx6dl-wandboard.dts
index 873e9d6985..ddfd4156c7 100644
--- a/arch/arm/dts/imx6dl-wandboard.dts
+++ b/arch/arm/dts/imx6dl-wandboard.dts
@@ -4,7 +4,7 @@
 
 / {
 	chosen {
-		linux,stdout-path = &uart1;
+		stdout-path = &uart1;
 
 		environment@0 {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx6q-dmo-edmqmx6.dts b/arch/arm/dts/imx6q-dmo-edmqmx6.dts
index 3576211be4..2b9097c482 100644
--- a/arch/arm/dts/imx6q-dmo-edmqmx6.dts
+++ b/arch/arm/dts/imx6q-dmo-edmqmx6.dts
@@ -15,7 +15,7 @@
 
 / {
 	chosen {
-		linux,stdout-path = &uart2;
+		stdout-path = &uart2;
 
 		environment-sd {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx6q-embedsky-e9.dts b/arch/arm/dts/imx6q-embedsky-e9.dts
index 3bbb60bba3..76c940b709 100644
--- a/arch/arm/dts/imx6q-embedsky-e9.dts
+++ b/arch/arm/dts/imx6q-embedsky-e9.dts
@@ -18,7 +18,7 @@
 
 / {
 	chosen {
-		linux,stdout-path = &uart1;
+		stdout-path = &uart1;
 
 		environment-mmc1 {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx6q-guf-santaro.dts b/arch/arm/dts/imx6q-guf-santaro.dts
index 3217a5bf90..8f886c4e12 100644
--- a/arch/arm/dts/imx6q-guf-santaro.dts
+++ b/arch/arm/dts/imx6q-guf-santaro.dts
@@ -25,7 +25,7 @@
 	};
 
 	chosen {
-		linux,stdout-path = &uart2;
+		stdout-path = &uart2;
 
 		environment-emmc {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx6q-hummingboard.dts b/arch/arm/dts/imx6q-hummingboard.dts
index e707eb91c9..0dcc424317 100644
--- a/arch/arm/dts/imx6q-hummingboard.dts
+++ b/arch/arm/dts/imx6q-hummingboard.dts
@@ -10,7 +10,7 @@
 
 / {
 	chosen {
-		linux,stdout-path = &uart1;
+		stdout-path = &uart1;
 
 		environment@0 {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx6q-mba6x.dts b/arch/arm/dts/imx6q-mba6x.dts
index 69d46b4597..9391c1d6fe 100644
--- a/arch/arm/dts/imx6q-mba6x.dts
+++ b/arch/arm/dts/imx6q-mba6x.dts
@@ -18,7 +18,7 @@
 	compatible = "tq,mba6x", "tq,tqma6q", "fsl,imx6q";
 
 	chosen {
-		linux,stdout-path = &uart2;
+		stdout-path = &uart2;
 	};
 
 	memory {
diff --git a/arch/arm/dts/imx6q-phytec-pbaa03.dts b/arch/arm/dts/imx6q-phytec-pbaa03.dts
index bcb3dd7404..4724a02ad7 100644
--- a/arch/arm/dts/imx6q-phytec-pbaa03.dts
+++ b/arch/arm/dts/imx6q-phytec-pbaa03.dts
@@ -17,7 +17,7 @@
 	compatible = "phytec,imx6q-pbaa03", "phytec,imx6q-pcaaxl3", "fsl,imx6q";
 
 	chosen {
-		linux,stdout-path = &uart3;
+		stdout-path = &uart3;
 	};
 };
 
diff --git a/arch/arm/dts/imx6q-sabresd.dts b/arch/arm/dts/imx6q-sabresd.dts
index 1f92c15242..cf264f480d 100644
--- a/arch/arm/dts/imx6q-sabresd.dts
+++ b/arch/arm/dts/imx6q-sabresd.dts
@@ -21,7 +21,7 @@
 	compatible = "fsl,imx6q-sabresd", "fsl,imx6q";
 
 	chosen {
-		linux,stdout-path = &uart1;
+		stdout-path = &uart1;
 
 		environment@0 {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx6q-var-custom.dts b/arch/arm/dts/imx6q-var-custom.dts
index fe03589454..5a0fa6b3bd 100644
--- a/arch/arm/dts/imx6q-var-custom.dts
+++ b/arch/arm/dts/imx6q-var-custom.dts
@@ -26,7 +26,7 @@
 	compatible = "variscite,imx6q-custom", "variscite,imx6q-som", "fsl,imx6q";
 
 	chosen {
-		linux,stdout-path = &uart1;
+		stdout-path = &uart1;
 
 		environment@0 {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx6q-wandboard.dts b/arch/arm/dts/imx6q-wandboard.dts
index 0606727a11..7edf956ec1 100644
--- a/arch/arm/dts/imx6q-wandboard.dts
+++ b/arch/arm/dts/imx6q-wandboard.dts
@@ -4,7 +4,7 @@
 
 / {
 	chosen {
-		linux,stdout-path = &uart1;
+		stdout-path = &uart1;
 
 		environment@0 {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi b/arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi
index 5c7bcd3226..73878cde0d 100644
--- a/arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi
+++ b/arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi
@@ -2,7 +2,7 @@
 
 / {
 	chosen {
-		linux,stdout-path = &uart1;
+		stdout-path = &uart1;
 
 		environment-emmc {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx6qdl-gw54xx.dtsi b/arch/arm/dts/imx6qdl-gw54xx.dtsi
index 5f8e489aeb..6d120d7e36 100644
--- a/arch/arm/dts/imx6qdl-gw54xx.dtsi
+++ b/arch/arm/dts/imx6qdl-gw54xx.dtsi
@@ -13,7 +13,7 @@
 
  / {
 	chosen {
-		linux,stdout-path = &uart2;
+		stdout-path = &uart2;
 
 		environment@0 {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
index ec14415398..3c197ddf01 100644
--- a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -13,7 +13,7 @@
 
 / {
 	chosen {
-		linux,stdout-path = &uart2;
+		stdout-path = &uart2;
 
 		environment-sd1 {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx6qdl-sabrelite.dtsi b/arch/arm/dts/imx6qdl-sabrelite.dtsi
index 10b0002ec2..99456dafa2 100644
--- a/arch/arm/dts/imx6qdl-sabrelite.dtsi
+++ b/arch/arm/dts/imx6qdl-sabrelite.dtsi
@@ -16,7 +16,7 @@
 / {
 
 	chosen {
-		linux,stdout-path = &uart2;
+		stdout-path = &uart2;
 
 		environment@0 {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx6qdl-smarc-samx6i.dtsi b/arch/arm/dts/imx6qdl-smarc-samx6i.dtsi
index 31a12fe268..363da66ec7 100644
--- a/arch/arm/dts/imx6qdl-smarc-samx6i.dtsi
+++ b/arch/arm/dts/imx6qdl-smarc-samx6i.dtsi
@@ -48,7 +48,7 @@
 
 / {
 	chosen {
-		linux,stdout-path = &uart2;
+		stdout-path = &uart2;
 
 		environment-spinor {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx6qdl-tx6x.dtsi b/arch/arm/dts/imx6qdl-tx6x.dtsi
index 5e0de76fe3..ef0f935370 100644
--- a/arch/arm/dts/imx6qdl-tx6x.dtsi
+++ b/arch/arm/dts/imx6qdl-tx6x.dtsi
@@ -1,6 +1,6 @@
 / {
 	chosen {
-		linux,stdout-path = &uart1;
+		stdout-path = &uart1;
 
 		environment-nand {
 			status = "disabled";
diff --git a/arch/arm/dts/imx6qdl-udoo.dtsi b/arch/arm/dts/imx6qdl-udoo.dtsi
index 18398dafea..ebc103858c 100644
--- a/arch/arm/dts/imx6qdl-udoo.dtsi
+++ b/arch/arm/dts/imx6qdl-udoo.dtsi
@@ -19,7 +19,7 @@
 	compatible = "udoo,imx6qdl-udoo", "fsl,imx6q";
 
 	chosen {
-		linux,stdout-path = &uart2;
+		stdout-path = &uart2;
 	};
 
 	memory {
diff --git a/arch/arm/dts/imx6s-phytec-pbab01.dts b/arch/arm/dts/imx6s-phytec-pbab01.dts
index 95841de7b8..1cb5a237a3 100644
--- a/arch/arm/dts/imx6s-phytec-pbab01.dts
+++ b/arch/arm/dts/imx6s-phytec-pbab01.dts
@@ -19,7 +19,7 @@
 	compatible = "phytec,imx6x-pbab01", "phytec,imx6s-pfla02", "fsl,imx6dl";
 
 	chosen {
-		linux,stdout-path = &uart4;
+		stdout-path = &uart4;
 
 	};
 };
diff --git a/arch/arm/dts/imx6s-riotboard.dts b/arch/arm/dts/imx6s-riotboard.dts
index ddd0d5ba2d..b0a561d8d0 100644
--- a/arch/arm/dts/imx6s-riotboard.dts
+++ b/arch/arm/dts/imx6s-riotboard.dts
@@ -10,7 +10,7 @@
 
 / {
 	chosen {
-		linux,stdout-path = &uart2;
+		stdout-path = &uart2;
 
 		environment@0 {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi b/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi
index 8cec1296a7..2504c9729d 100644
--- a/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi
@@ -12,7 +12,7 @@
 
 / {
 	chosen {
-		linux,stdout-path = &uart1;
+		stdout-path = &uart1;
 
 		environment-nand {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/imx6ul-pico-hobbit.dts b/arch/arm/dts/imx6ul-pico-hobbit.dts
index 478b2411b4..c6fe6d011e 100644
--- a/arch/arm/dts/imx6ul-pico-hobbit.dts
+++ b/arch/arm/dts/imx6ul-pico-hobbit.dts
@@ -2,7 +2,7 @@
 
 / {
 	chosen {
-		linux,stdout-path = &uart1;
+		stdout-path = &uart1;
 
 		environment@0 {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/rk3188-radxarock.dts b/arch/arm/dts/rk3188-radxarock.dts
index cafd4d36ed..daa75b831f 100644
--- a/arch/arm/dts/rk3188-radxarock.dts
+++ b/arch/arm/dts/rk3188-radxarock.dts
@@ -16,7 +16,7 @@
 
 / {
 	chosen {
-		linux,stdout-path = &uart2;
+		stdout-path = &uart2;
 
 		environment {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/socfpga_arria10_achilles.dts b/arch/arm/dts/socfpga_arria10_achilles.dts
index dd991318e2..0411735033 100644
--- a/arch/arm/dts/socfpga_arria10_achilles.dts
+++ b/arch/arm/dts/socfpga_arria10_achilles.dts
@@ -26,7 +26,7 @@
 	};
 
 	chosen {
-		linux,stdout-path = &uart0;
+		stdout-path = &uart0;
 
 		environment@0 {
 			compatible = "barebox,environment";
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
