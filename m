Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fV9pp-0007wY-RK
 for barebox@lists.infradead.org; Tue, 19 Jun 2018 06:10:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Jun 2018 08:09:13 +0200
Message-Id: <20180619060915.13141-4-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] ARM: dts: remove @0 from environment nodes
To: Barebox List <barebox@lists.infradead.org>

The environment nodes do not have a reg property and as such should not
have a @0 suffix. Newer dtc warns about this, so remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../devicetree/bindings/barebox/barebox,environment.rst         | 2 +-
 arch/arm/dts/am335x-afi-gf.dts                                  | 2 +-
 arch/arm/dts/at91sam9263ek.dts                                  | 2 +-
 arch/arm/dts/imx25-karo-tx25.dts                                | 2 +-
 arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts                  | 2 +-
 arch/arm/dts/imx51-babbage.dts                                  | 2 +-
 arch/arm/dts/imx53-ccxmx53.dtsi                                 | 2 +-
 arch/arm/dts/imx53-qsb-common.dtsi                              | 2 +-
 arch/arm/dts/imx53-voipac-dmm-668.dtsi                          | 2 +-
 arch/arm/dts/imx6dl-eltec-hipercam.dts                          | 2 +-
 arch/arm/dts/imx6dl-hummingboard.dts                            | 2 +-
 arch/arm/dts/imx6dl-wandboard.dts                               | 2 +-
 arch/arm/dts/imx6q-hummingboard.dts                             | 2 +-
 arch/arm/dts/imx6q-hummingboard2.dts                            | 2 +-
 arch/arm/dts/imx6q-sabresd.dts                                  | 2 +-
 arch/arm/dts/imx6q-var-custom.dts                               | 2 +-
 arch/arm/dts/imx6q-wandboard.dts                                | 2 +-
 arch/arm/dts/imx6qdl-gw54xx.dtsi                                | 2 +-
 arch/arm/dts/imx6qdl-nitrogen6_max.dtsi                         | 2 +-
 arch/arm/dts/imx6qdl-nitrogen6x.dtsi                            | 2 +-
 arch/arm/dts/imx6qdl-sabrelite.dtsi                             | 2 +-
 arch/arm/dts/imx6qdl-zii-rdu2.dtsi                              | 2 +-
 arch/arm/dts/imx6s-riotboard.dts                                | 2 +-
 arch/arm/dts/imx6sx-sdb.dts                                     | 2 +-
 arch/arm/dts/imx6ul-pico-hobbit.dts                             | 2 +-
 arch/arm/dts/imx6ull-14x14-evk.dts                              | 2 +-
 arch/arm/dts/imx7d-phyboard-zeta.dts                            | 2 +-
 arch/arm/dts/imx7s-warp.dts                                     | 2 +-
 arch/arm/dts/socfpga_arria10_achilles.dts                       | 2 +-
 arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts                  | 2 +-
 arch/arm/dts/socfpga_cyclone5_socdk.dts                         | 2 +-
 arch/arm/dts/socfpga_cyclone5_sockit.dts                        | 2 +-
 arch/arm/dts/socfpga_cyclone5_socrates.dts                      | 2 +-
 arch/arm/dts/tegra124-jetson-tk1.dts                            | 2 +-
 arch/arm/dts/tegra30-beaver.dts                                 | 2 +-
 arch/mips/dts/ar9331-dptechnics-dpt-module.dts                  | 2 +-
 arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts                        | 2 +-
 arch/mips/dts/qca4531-8devices-lima.dts                         | 2 +-
 arch/mips/dts/qemu-malta.dts                                    | 2 +-
 arch/mips/dts/tplink-mr3020.dts                                 | 2 +-
 40 files changed, 40 insertions(+), 40 deletions(-)

diff --git a/Documentation/devicetree/bindings/barebox/barebox,environment.rst b/Documentation/devicetree/bindings/barebox/barebox,environment.rst
index 029e7f04a4..918efd15f5 100644
--- a/Documentation/devicetree/bindings/barebox/barebox,environment.rst
+++ b/Documentation/devicetree/bindings/barebox/barebox,environment.rst
@@ -30,7 +30,7 @@ Example:
 
 .. code-block:: none
 
-  environment@0 {
+  environment {
   	compatible = "barebox,environment";
   	device-path = &flash, "partname:barebox-environment";
   };
diff --git a/arch/arm/dts/am335x-afi-gf.dts b/arch/arm/dts/am335x-afi-gf.dts
index 479c6cf170..d0860b8905 100644
--- a/arch/arm/dts/am335x-afi-gf.dts
+++ b/arch/arm/dts/am335x-afi-gf.dts
@@ -17,7 +17,7 @@
 	chosen {
 		stdout-path = &uart2;
 
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &environment_spi;
 		};
diff --git a/arch/arm/dts/at91sam9263ek.dts b/arch/arm/dts/at91sam9263ek.dts
index 3681b845d9..7fe283ced7 100644
--- a/arch/arm/dts/at91sam9263ek.dts
+++ b/arch/arm/dts/at91sam9263ek.dts
@@ -1,7 +1,7 @@
 #include <arm/at91sam9263ek.dts>
 / {
 	chosen {
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &nand_controller, "partname:bareboxenv";
 		};
diff --git a/arch/arm/dts/imx25-karo-tx25.dts b/arch/arm/dts/imx25-karo-tx25.dts
index d447f9720c..9296e90b07 100644
--- a/arch/arm/dts/imx25-karo-tx25.dts
+++ b/arch/arm/dts/imx25-karo-tx25.dts
@@ -19,7 +19,7 @@
 	chosen {
 		stdout-path = &uart1;
 
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &nfc, "partname:environment";
 		};
diff --git a/arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts b/arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts
index b67af8a4ad..abfbd5061e 100644
--- a/arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts
+++ b/arch/arm/dts/imx27-phytec-phycard-s-rdk-bb.dts
@@ -8,7 +8,7 @@
 	chosen {
 		stdout-path = &uart1;
 
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &nfc, "partname:environment";
 		};
diff --git a/arch/arm/dts/imx51-babbage.dts b/arch/arm/dts/imx51-babbage.dts
index bde3031d1b..5147195617 100644
--- a/arch/arm/dts/imx51-babbage.dts
+++ b/arch/arm/dts/imx51-babbage.dts
@@ -16,7 +16,7 @@
 	chosen {
 		stdout-path = &uart1;
 
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &environment_esdhc1;
 		};
diff --git a/arch/arm/dts/imx53-ccxmx53.dtsi b/arch/arm/dts/imx53-ccxmx53.dtsi
index 2493c94ce4..d925ba44d7 100644
--- a/arch/arm/dts/imx53-ccxmx53.dtsi
+++ b/arch/arm/dts/imx53-ccxmx53.dtsi
@@ -18,7 +18,7 @@
 	chosen {
 		stdout-path = &uart1;
 
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &nfc, "partname:environment";
 		};
diff --git a/arch/arm/dts/imx53-qsb-common.dtsi b/arch/arm/dts/imx53-qsb-common.dtsi
index f363af975d..24bbd6741a 100644
--- a/arch/arm/dts/imx53-qsb-common.dtsi
+++ b/arch/arm/dts/imx53-qsb-common.dtsi
@@ -14,7 +14,7 @@
 	chosen {
 		stdout-path = &uart1;
 
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &bareboxenv;
 		};
diff --git a/arch/arm/dts/imx53-voipac-dmm-668.dtsi b/arch/arm/dts/imx53-voipac-dmm-668.dtsi
index d60f6330f0..c4c17c2e8e 100644
--- a/arch/arm/dts/imx53-voipac-dmm-668.dtsi
+++ b/arch/arm/dts/imx53-voipac-dmm-668.dtsi
@@ -2,7 +2,7 @@
 	chosen {
 		stdout-path = &uart1;
 
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &nfc, "partname:environment";
 		};
diff --git a/arch/arm/dts/imx6dl-eltec-hipercam.dts b/arch/arm/dts/imx6dl-eltec-hipercam.dts
index 4fe174437e..fe336040c3 100644
--- a/arch/arm/dts/imx6dl-eltec-hipercam.dts
+++ b/arch/arm/dts/imx6dl-eltec-hipercam.dts
@@ -14,7 +14,7 @@
 	chosen {
 		stdout-path = &uart1;
 
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &environment_nor0;
 		};
diff --git a/arch/arm/dts/imx6dl-hummingboard.dts b/arch/arm/dts/imx6dl-hummingboard.dts
index 7e3dcbb457..5bfa4704b2 100644
--- a/arch/arm/dts/imx6dl-hummingboard.dts
+++ b/arch/arm/dts/imx6dl-hummingboard.dts
@@ -12,7 +12,7 @@
 	chosen {
 		stdout-path = &uart1;
 
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &usdhc2, "partname:barebox-environment";
 		};
diff --git a/arch/arm/dts/imx6dl-wandboard.dts b/arch/arm/dts/imx6dl-wandboard.dts
index ddfd4156c7..0a7a7182a5 100644
--- a/arch/arm/dts/imx6dl-wandboard.dts
+++ b/arch/arm/dts/imx6dl-wandboard.dts
@@ -6,7 +6,7 @@
 	chosen {
 		stdout-path = &uart1;
 
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &environment_usdhc3;
 		};
diff --git a/arch/arm/dts/imx6q-hummingboard.dts b/arch/arm/dts/imx6q-hummingboard.dts
index 0dcc424317..b10acf2cbb 100644
--- a/arch/arm/dts/imx6q-hummingboard.dts
+++ b/arch/arm/dts/imx6q-hummingboard.dts
@@ -12,7 +12,7 @@
 	chosen {
 		stdout-path = &uart1;
 
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &usdhc2, "partname:barebox-environment";
 		};
diff --git a/arch/arm/dts/imx6q-hummingboard2.dts b/arch/arm/dts/imx6q-hummingboard2.dts
index 89065581b8..6c41ab7396 100644
--- a/arch/arm/dts/imx6q-hummingboard2.dts
+++ b/arch/arm/dts/imx6q-hummingboard2.dts
@@ -52,7 +52,7 @@
 	compatible = "solidrun,hummingboard2/q", "fsl,imx6q";
 
 	chosen {
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &usdhc3, "partname:barebox-environment";
 		};
diff --git a/arch/arm/dts/imx6q-sabresd.dts b/arch/arm/dts/imx6q-sabresd.dts
index cf264f480d..21180df324 100644
--- a/arch/arm/dts/imx6q-sabresd.dts
+++ b/arch/arm/dts/imx6q-sabresd.dts
@@ -23,7 +23,7 @@
 	chosen {
 		stdout-path = &uart1;
 
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &environment_usdhc3;
 		};
diff --git a/arch/arm/dts/imx6q-var-custom.dts b/arch/arm/dts/imx6q-var-custom.dts
index 5a0fa6b3bd..9fc364ed9a 100644
--- a/arch/arm/dts/imx6q-var-custom.dts
+++ b/arch/arm/dts/imx6q-var-custom.dts
@@ -28,7 +28,7 @@
 	chosen {
 		stdout-path = &uart1;
 
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &environment_nand;
 		};
diff --git a/arch/arm/dts/imx6q-wandboard.dts b/arch/arm/dts/imx6q-wandboard.dts
index 7edf956ec1..d96f057961 100644
--- a/arch/arm/dts/imx6q-wandboard.dts
+++ b/arch/arm/dts/imx6q-wandboard.dts
@@ -6,7 +6,7 @@
 	chosen {
 		stdout-path = &uart1;
 
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &environment_usdhc3;
 		};
diff --git a/arch/arm/dts/imx6qdl-gw54xx.dtsi b/arch/arm/dts/imx6qdl-gw54xx.dtsi
index 6d120d7e36..23e08f7d92 100644
--- a/arch/arm/dts/imx6qdl-gw54xx.dtsi
+++ b/arch/arm/dts/imx6qdl-gw54xx.dtsi
@@ -15,7 +15,7 @@
 	chosen {
 		stdout-path = &uart2;
 
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &gpmi, "partname:barebox-environment";
 		};
diff --git a/arch/arm/dts/imx6qdl-nitrogen6_max.dtsi b/arch/arm/dts/imx6qdl-nitrogen6_max.dtsi
index 26c685c529..19fe7881b3 100644
--- a/arch/arm/dts/imx6qdl-nitrogen6_max.dtsi
+++ b/arch/arm/dts/imx6qdl-nitrogen6_max.dtsi
@@ -42,7 +42,7 @@
  
 / {
 	chosen {
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &flash, "partname:barebox-environment";
 		};
diff --git a/arch/arm/dts/imx6qdl-nitrogen6x.dtsi b/arch/arm/dts/imx6qdl-nitrogen6x.dtsi
index 76e55e057c..53fdb722d0 100644
--- a/arch/arm/dts/imx6qdl-nitrogen6x.dtsi
+++ b/arch/arm/dts/imx6qdl-nitrogen6x.dtsi
@@ -16,7 +16,7 @@
 
 / {
 	chosen {
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &flash, "partname:barebox-environment";
 		};
diff --git a/arch/arm/dts/imx6qdl-sabrelite.dtsi b/arch/arm/dts/imx6qdl-sabrelite.dtsi
index 99456dafa2..ec3d364bde 100644
--- a/arch/arm/dts/imx6qdl-sabrelite.dtsi
+++ b/arch/arm/dts/imx6qdl-sabrelite.dtsi
@@ -18,7 +18,7 @@
 	chosen {
 		stdout-path = &uart2;
 
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &flash, "partname:barebox-environment";
 		};
diff --git a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
index 7586afe2fe..7ab569b789 100644
--- a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
+++ b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
@@ -43,7 +43,7 @@
 
 / {
 	chosen {
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &nor_flash, "partname:barebox-environment";
 		};
diff --git a/arch/arm/dts/imx6s-riotboard.dts b/arch/arm/dts/imx6s-riotboard.dts
index b0a561d8d0..9efef039a7 100644
--- a/arch/arm/dts/imx6s-riotboard.dts
+++ b/arch/arm/dts/imx6s-riotboard.dts
@@ -12,7 +12,7 @@
 	chosen {
 		stdout-path = &uart2;
 
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &environment_usdhc4;
 		};
diff --git a/arch/arm/dts/imx6sx-sdb.dts b/arch/arm/dts/imx6sx-sdb.dts
index 7b60f9326a..88832840b2 100644
--- a/arch/arm/dts/imx6sx-sdb.dts
+++ b/arch/arm/dts/imx6sx-sdb.dts
@@ -12,7 +12,7 @@
 
 / {
 	chosen {
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &usdhc4, "partname:barebox-environment";
 		};
diff --git a/arch/arm/dts/imx6ul-pico-hobbit.dts b/arch/arm/dts/imx6ul-pico-hobbit.dts
index c6fe6d011e..2f37b724b6 100644
--- a/arch/arm/dts/imx6ul-pico-hobbit.dts
+++ b/arch/arm/dts/imx6ul-pico-hobbit.dts
@@ -4,7 +4,7 @@
 	chosen {
 		stdout-path = &uart1;
 
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &environment_usdhc1;
 		};
diff --git a/arch/arm/dts/imx6ull-14x14-evk.dts b/arch/arm/dts/imx6ull-14x14-evk.dts
index 9afe6402a2..6712e10739 100644
--- a/arch/arm/dts/imx6ull-14x14-evk.dts
+++ b/arch/arm/dts/imx6ull-14x14-evk.dts
@@ -2,7 +2,7 @@
 
 /{
 	chosen {
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &environment_usdhc2;
 		};
diff --git a/arch/arm/dts/imx7d-phyboard-zeta.dts b/arch/arm/dts/imx7d-phyboard-zeta.dts
index 28fd2dc445..fbd0da2383 100644
--- a/arch/arm/dts/imx7d-phyboard-zeta.dts
+++ b/arch/arm/dts/imx7d-phyboard-zeta.dts
@@ -15,7 +15,7 @@
 	chosen {
 		stdout-path = &uart5;
 
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &bareboxenv;
 		};
diff --git a/arch/arm/dts/imx7s-warp.dts b/arch/arm/dts/imx7s-warp.dts
index 1a92e09d14..49d4c7f294 100644
--- a/arch/arm/dts/imx7s-warp.dts
+++ b/arch/arm/dts/imx7s-warp.dts
@@ -13,7 +13,7 @@
 	chosen {
 		stdout-path = &uart1;
 
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &bareboxenv;
 		};
diff --git a/arch/arm/dts/socfpga_arria10_achilles.dts b/arch/arm/dts/socfpga_arria10_achilles.dts
index 0411735033..059a92c413 100644
--- a/arch/arm/dts/socfpga_arria10_achilles.dts
+++ b/arch/arm/dts/socfpga_arria10_achilles.dts
@@ -28,7 +28,7 @@
 	chosen {
 		stdout-path = &uart0;
 
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &mmc, "partname:1";
 			file-path = "barebox.env";
diff --git a/arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts b/arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts
index 8854ade434..234995bc46 100644
--- a/arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts
+++ b/arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts
@@ -25,7 +25,7 @@
 	chosen {
 		stdout-path = &uart0;
 
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &mmc, "partname:1";
 			file-path = "barebox.env";
diff --git a/arch/arm/dts/socfpga_cyclone5_socdk.dts b/arch/arm/dts/socfpga_cyclone5_socdk.dts
index dfb6273cae..f0a6ae98ed 100644
--- a/arch/arm/dts/socfpga_cyclone5_socdk.dts
+++ b/arch/arm/dts/socfpga_cyclone5_socdk.dts
@@ -23,7 +23,7 @@
 	compatible = "altr,socdk", "altr,socfpga-cyclone5", "altr,socfpga";
 
 	chosen {
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &mmc, "partname:1";
 			file-path = "barebox.env";
diff --git a/arch/arm/dts/socfpga_cyclone5_sockit.dts b/arch/arm/dts/socfpga_cyclone5_sockit.dts
index 8830afeb9a..23e07c964c 100644
--- a/arch/arm/dts/socfpga_cyclone5_sockit.dts
+++ b/arch/arm/dts/socfpga_cyclone5_sockit.dts
@@ -25,7 +25,7 @@
 	chosen {
 		stdout-path = &uart0;
 
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &mmc, "partname:1";
 			file-path = "barebox.env";
diff --git a/arch/arm/dts/socfpga_cyclone5_socrates.dts b/arch/arm/dts/socfpga_cyclone5_socrates.dts
index 93253af7ec..e731b55a6c 100644
--- a/arch/arm/dts/socfpga_cyclone5_socrates.dts
+++ b/arch/arm/dts/socfpga_cyclone5_socrates.dts
@@ -22,7 +22,7 @@
 	chosen {
 		stdout-path = &uart0;
 
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &mmc, "partname:1";
 			file-path = "barebox.env";
diff --git a/arch/arm/dts/tegra124-jetson-tk1.dts b/arch/arm/dts/tegra124-jetson-tk1.dts
index 00ae58fb27..00eef6cacd 100644
--- a/arch/arm/dts/tegra124-jetson-tk1.dts
+++ b/arch/arm/dts/tegra124-jetson-tk1.dts
@@ -5,7 +5,7 @@
 	chosen {
 		stdout-path = &uartd;
 
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &emmc, "partname:boot1";
 		};
diff --git a/arch/arm/dts/tegra30-beaver.dts b/arch/arm/dts/tegra30-beaver.dts
index 3e7f879d68..acbdd318b1 100644
--- a/arch/arm/dts/tegra30-beaver.dts
+++ b/arch/arm/dts/tegra30-beaver.dts
@@ -16,7 +16,7 @@
 	chosen {
 		stdout-path = &uarta;
 
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &emmc, "partname:boot1";
 		};
diff --git a/arch/mips/dts/ar9331-dptechnics-dpt-module.dts b/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
index 2c38bbc090..103d889b0e 100644
--- a/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
+++ b/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
@@ -7,7 +7,7 @@
 	};
 
 	chosen {
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &spiflash, "partname:barebox-environment";
 		};
diff --git a/arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts b/arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts
index 5216cdc1e2..dd9d33b2da 100644
--- a/arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts
+++ b/arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts
@@ -22,7 +22,7 @@
 	chosen {
 		stdout-path = &uart0;
 
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &spiflash, "partname:barebox-environment";
 		};
diff --git a/arch/mips/dts/qca4531-8devices-lima.dts b/arch/mips/dts/qca4531-8devices-lima.dts
index 7b03bc4be1..4b960e12bf 100644
--- a/arch/mips/dts/qca4531-8devices-lima.dts
+++ b/arch/mips/dts/qca4531-8devices-lima.dts
@@ -22,7 +22,7 @@
 	chosen {
 		stdout-path = &uart0;
 
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &spiflash, "partname:barebox-environment";
 		};
diff --git a/arch/mips/dts/qemu-malta.dts b/arch/mips/dts/qemu-malta.dts
index 9b0c594e87..5a392f97a7 100644
--- a/arch/mips/dts/qemu-malta.dts
+++ b/arch/mips/dts/qemu-malta.dts
@@ -7,7 +7,7 @@
 	compatible = "qemu,malta";
 
 	chosen {
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &nor0, "partname:barebox-environment";
 		};
diff --git a/arch/mips/dts/tplink-mr3020.dts b/arch/mips/dts/tplink-mr3020.dts
index 6f1ad13504..982cffc250 100644
--- a/arch/mips/dts/tplink-mr3020.dts
+++ b/arch/mips/dts/tplink-mr3020.dts
@@ -7,7 +7,7 @@
 	};
 
 	chosen {
-		environment@0 {
+		environment {
 			compatible = "barebox,environment";
 			device-path = &spiflash, "partname:barebox-environment";
 		};
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
