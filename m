Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gqbVX-0001jv-HS
 for barebox@lists.infradead.org; Mon, 04 Feb 2019 10:29:48 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23990406AbfBDK3ix3QdR (ORCPT
 <rfc822;barebox@lists.infradead.org>); Mon, 4 Feb 2019 11:29:38 +0100
Date: Mon, 4 Feb 2019 11:29:37 +0100
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20190204102937.GA2663@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: [PATCH] dts: Revert at91 switch to new PMC clock bindings
To: barebox@lists.infradead.org

Recent DTS update brought in switch to the new PMC clock
bindings, however we do not support that yet. Revert this
change until PMC clock bindings support is implemented.

Fixes: 33fdc89d4cbd ("dts: update to v5.0-rc1")
Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
---
 Disclaimer: Runtime tested only on at91sam9g20.

 dts/src/arm/at91sam9260.dtsi       | 308 ++++++++++++++++++++++++---
 dts/src/arm/at91sam9261.dtsi       | 287 +++++++++++++++++++++++--
 dts/src/arm/at91sam9263.dtsi       | 315 +++++++++++++++++++++++++---
 dts/src/arm/at91sam9g15.dtsi       |   4 -
 dts/src/arm/at91sam9g20.dtsi       |  23 +-
 dts/src/arm/at91sam9g25.dtsi       |   4 -
 dts/src/arm/at91sam9g25ek.dts      |   4 +-
 dts/src/arm/at91sam9g35.dtsi       |   4 -
 dts/src/arm/at91sam9rl.dtsi        | 239 +++++++++++++++++++--
 dts/src/arm/at91sam9x25.dtsi       |   4 -
 dts/src/arm/at91sam9x35.dtsi       |   4 -
 dts/src/arm/at91sam9x5.dtsi        | 326 ++++++++++++++++++++++++++---
 dts/src/arm/at91sam9x5_can.dtsi    |  18 +-
 dts/src/arm/at91sam9x5_isi.dtsi    |  11 +-
 dts/src/arm/at91sam9x5_lcd.dtsi    |  19 +-
 dts/src/arm/at91sam9x5_macb0.dtsi  |  11 +-
 dts/src/arm/at91sam9x5_macb1.dtsi  |  11 +-
 dts/src/arm/at91sam9x5_usart3.dtsi |  11 +-
 18 files changed, 1434 insertions(+), 169 deletions(-)

diff --git a/dts/src/arm/at91sam9260.dtsi b/dts/src/arm/at91sam9260.dtsi
index 7cd9c3bc4..9118e29b6 100644
--- a/dts/src/arm/at91sam9260.dtsi
+++ b/dts/src/arm/at91sam9260.dtsi
@@ -113,28 +113,276 @@
 				compatible = "atmel,at91sam9260-pmc", "syscon";
 				reg = <0xfffffc00 0x100>;
 				interrupts = <1 IRQ_TYPE_LEVEL_HIGH 7>;
-				#clock-cells = <2>;
-				clocks = <&slow_xtal>, <&main_xtal>;
-				clock-names = "slow_xtal", "main_xtal";
+				interrupt-controller;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				#interrupt-cells = <1>;
+
+				main_osc: main_osc {
+					compatible = "atmel,at91rm9200-clk-main-osc";
+					#clock-cells = <0>;
+					interrupts-extended = <&pmc AT91_PMC_MOSCS>;
+					clocks = <&main_xtal>;
+				};
+
+				main: mainck {
+					compatible = "atmel,at91rm9200-clk-main";
+					#clock-cells = <0>;
+					clocks = <&main_osc>;
+				};
+
+				slow_rc_osc: slow_rc_osc {
+					compatible = "fixed-clock";
+					#clock-cells = <0>;
+					clock-frequency = <32768>;
+					clock-accuracy = <50000000>;
+				};
+
+				clk32k: slck {
+					compatible = "atmel,at91sam9260-clk-slow";
+					#clock-cells = <0>;
+					clocks = <&slow_rc_osc>, <&slow_xtal>;
+				};
+
+				plla: pllack {
+					compatible = "atmel,at91rm9200-clk-pll";
+					#clock-cells = <0>;
+					interrupts-extended = <&pmc AT91_PMC_LOCKA>;
+					clocks = <&main>;
+					reg = <0>;
+					atmel,clk-input-range = <1000000 32000000>;
+					#atmel,pll-clk-output-range-cells = <4>;
+					atmel,pll-clk-output-ranges = <80000000 160000000 0 1>,
+								<150000000 240000000 2 1>;
+				};
+
+				pllb: pllbck {
+					compatible = "atmel,at91rm9200-clk-pll";
+					#clock-cells = <0>;
+					interrupts-extended = <&pmc AT91_PMC_LOCKB>;
+					clocks = <&main>;
+					reg = <1>;
+					atmel,clk-input-range = <1000000 5000000>;
+					#atmel,pll-clk-output-range-cells = <4>;
+					atmel,pll-clk-output-ranges = <70000000 130000000 1 1>;
+				};
+
+				mck: masterck {
+					compatible = "atmel,at91rm9200-clk-master";
+					#clock-cells = <0>;
+					interrupts-extended = <&pmc AT91_PMC_MCKRDY>;
+					clocks = <&clk32k>, <&main>, <&plla>, <&pllb>;
+					atmel,clk-output-range = <0 105000000>;
+					atmel,clk-divisors = <1 2 4 0>;
+				};
+
+				usb: usbck {
+					compatible = "atmel,at91rm9200-clk-usb";
+					#clock-cells = <0>;
+					atmel,clk-divisors = <1 2 4 0>;
+					clocks = <&pllb>;
+				};
+
+				prog: progck {
+					compatible = "atmel,at91rm9200-clk-programmable";
+					#address-cells = <1>;
+					#size-cells = <0>;
+					interrupt-parent = <&pmc>;
+					clocks = <&clk32k>, <&main>, <&plla>, <&pllb>;
+
+					prog0: prog0 {
+						#clock-cells = <0>;
+						reg = <0>;
+						interrupts = <AT91_PMC_PCKRDY(0)>;
+					};
+
+					prog1: prog1 {
+						#clock-cells = <0>;
+						reg = <1>;
+						interrupts = <AT91_PMC_PCKRDY(1)>;
+					};
+				};
+
+				systemck {
+					compatible = "atmel,at91rm9200-clk-system";
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					uhpck: uhpck {
+						#clock-cells = <0>;
+						reg = <6>;
+						clocks = <&usb>;
+					};
+
+					udpck: udpck {
+						#clock-cells = <0>;
+						reg = <7>;
+						clocks = <&usb>;
+					};
+
+					pck0: pck0 {
+						#clock-cells = <0>;
+						reg = <8>;
+						clocks = <&prog0>;
+					};
+
+					pck1: pck1 {
+						#clock-cells = <0>;
+						reg = <9>;
+						clocks = <&prog1>;
+					};
+				};
+
+				periphck {
+					compatible = "atmel,at91rm9200-clk-peripheral";
+					#address-cells = <1>;
+					#size-cells = <0>;
+					clocks = <&mck>;
+
+					pioA_clk: pioA_clk {
+						#clock-cells = <0>;
+						reg = <2>;
+					};
+
+					pioB_clk: pioB_clk {
+						#clock-cells = <0>;
+						reg = <3>;
+					};
+
+					pioC_clk: pioC_clk {
+						#clock-cells = <0>;
+						reg = <4>;
+					};
+
+					adc_clk: adc_clk {
+						#clock-cells = <0>;
+						reg = <5>;
+					};
+
+					usart0_clk: usart0_clk {
+						#clock-cells = <0>;
+						reg = <6>;
+					};
+
+					usart1_clk: usart1_clk {
+						#clock-cells = <0>;
+						reg = <7>;
+					};
+
+					usart2_clk: usart2_clk {
+						#clock-cells = <0>;
+						reg = <8>;
+					};
+
+					mci0_clk: mci0_clk {
+						#clock-cells = <0>;
+						reg = <9>;
+					};
+
+					udc_clk: udc_clk {
+						#clock-cells = <0>;
+						reg = <10>;
+					};
+
+					twi0_clk: twi0_clk {
+						reg = <11>;
+						#clock-cells = <0>;
+					};
+
+					spi0_clk: spi0_clk {
+						#clock-cells = <0>;
+						reg = <12>;
+					};
+
+					spi1_clk: spi1_clk {
+						#clock-cells = <0>;
+						reg = <13>;
+					};
+
+					ssc0_clk: ssc0_clk {
+						#clock-cells = <0>;
+						reg = <14>;
+					};
+
+					tc0_clk: tc0_clk {
+						#clock-cells = <0>;
+						reg = <17>;
+					};
+
+					tc1_clk: tc1_clk {
+						#clock-cells = <0>;
+						reg = <18>;
+					};
+
+					tc2_clk: tc2_clk {
+						#clock-cells = <0>;
+						reg = <19>;
+					};
+
+					ohci_clk: ohci_clk {
+						#clock-cells = <0>;
+						reg = <20>;
+					};
+
+					macb0_clk: macb0_clk {
+						#clock-cells = <0>;
+						reg = <21>;
+					};
+
+					isi_clk: isi_clk {
+						#clock-cells = <0>;
+						reg = <22>;
+					};
+
+					usart3_clk: usart3_clk {
+						#clock-cells = <0>;
+						reg = <23>;
+					};
+
+					uart0_clk: uart0_clk {
+						#clock-cells = <0>;
+						reg = <24>;
+					};
+
+					uart1_clk: uart1_clk {
+						#clock-cells = <0>;
+						reg = <25>;
+					};
+
+					tc3_clk: tc3_clk {
+						#clock-cells = <0>;
+						reg = <26>;
+					};
+
+					tc4_clk: tc4_clk {
+						#clock-cells = <0>;
+						reg = <27>;
+					};
+
+					tc5_clk: tc5_clk {
+						#clock-cells = <0>;
+						reg = <28>;
+					};
+				};
 			};
 
 			rstc@fffffd00 {
 				compatible = "atmel,at91sam9260-rstc";
 				reg = <0xfffffd00 0x10>;
-				clocks = <&pmc PMC_TYPE_CORE PMC_SLOW>;
+				clocks = <&clk32k>;
 			};
 
 			shdwc@fffffd10 {
 				compatible = "atmel,at91sam9260-shdwc";
 				reg = <0xfffffd10 0x10>;
-				clocks = <&pmc PMC_TYPE_CORE PMC_SLOW>;
+				clocks = <&clk32k>;
 			};
 
 			pit: timer@fffffd30 {
 				compatible = "atmel,at91sam9260-pit";
 				reg = <0xfffffd30 0xf>;
 				interrupts = <1 IRQ_TYPE_LEVEL_HIGH 7>;
-				clocks = <&pmc PMC_TYPE_CORE PMC_MCK>;
+				clocks = <&mck>;
 			};
 
 			tcb0: timer@fffa0000 {
@@ -145,7 +393,7 @@
 				interrupts = <17 IRQ_TYPE_LEVEL_HIGH 0
 					      18 IRQ_TYPE_LEVEL_HIGH 0
 					      19 IRQ_TYPE_LEVEL_HIGH 0>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 17>, <&pmc PMC_TYPE_PERIPHERAL 18>, <&pmc PMC_TYPE_PERIPHERAL 19>, <&pmc PMC_TYPE_CORE PMC_SLOW>;
+				clocks = <&tc0_clk>, <&tc1_clk>, <&tc2_clk>, <&clk32k>;
 				clock-names = "t0_clk", "t1_clk", "t2_clk", "slow_clk";
 			};
 
@@ -157,7 +405,7 @@
 				interrupts = <26 IRQ_TYPE_LEVEL_HIGH 0
 					      27 IRQ_TYPE_LEVEL_HIGH 0
 					      28 IRQ_TYPE_LEVEL_HIGH 0>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 26>, <&pmc PMC_TYPE_PERIPHERAL 27>, <&pmc PMC_TYPE_PERIPHERAL 28>, <&pmc PMC_TYPE_CORE PMC_SLOW>;
+				clocks = <&tc3_clk>, <&tc4_clk>, <&tc5_clk>, <&clk32k>;
 				clock-names = "t0_clk", "t1_clk", "t2_clk", "slow_clk";
 			};
 
@@ -498,7 +746,7 @@
 					gpio-controller;
 					interrupt-controller;
 					#interrupt-cells = <2>;
-					clocks = <&pmc PMC_TYPE_PERIPHERAL 2>;
+					clocks = <&pioA_clk>;
 				};
 
 				pioB: gpio@fffff600 {
@@ -509,7 +757,7 @@
 					gpio-controller;
 					interrupt-controller;
 					#interrupt-cells = <2>;
-					clocks = <&pmc PMC_TYPE_PERIPHERAL 3>;
+					clocks = <&pioB_clk>;
 				};
 
 				pioC: gpio@fffff800 {
@@ -520,7 +768,7 @@
 					gpio-controller;
 					interrupt-controller;
 					#interrupt-cells = <2>;
-					clocks = <&pmc PMC_TYPE_PERIPHERAL 4>;
+					clocks = <&pioC_clk>;
 				};
 			};
 
@@ -530,7 +778,7 @@
 				interrupts = <1 IRQ_TYPE_LEVEL_HIGH 7>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_dbgu>;
-				clocks = <&pmc PMC_TYPE_CORE PMC_MCK>;
+				clocks = <&mck>;
 				clock-names = "usart";
 				status = "disabled";
 			};
@@ -543,7 +791,7 @@
 				atmel,use-dma-tx;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_usart0>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 6>;
+				clocks = <&usart0_clk>;
 				clock-names = "usart";
 				status = "disabled";
 			};
@@ -556,7 +804,7 @@
 				atmel,use-dma-tx;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_usart1>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 7>;
+				clocks = <&usart1_clk>;
 				clock-names = "usart";
 				status = "disabled";
 			};
@@ -569,7 +817,7 @@
 				atmel,use-dma-tx;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_usart2>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 8>;
+				clocks = <&usart2_clk>;
 				clock-names = "usart";
 				status = "disabled";
 			};
@@ -582,7 +830,7 @@
 				atmel,use-dma-tx;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_usart3>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 23>;
+				clocks = <&usart3_clk>;
 				clock-names = "usart";
 				status = "disabled";
 			};
@@ -595,7 +843,7 @@
 				atmel,use-dma-tx;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_uart0>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 24>;
+				clocks = <&uart0_clk>;
 				clock-names = "usart";
 				status = "disabled";
 			};
@@ -608,7 +856,7 @@
 				atmel,use-dma-tx;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_uart1>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 25>;
+				clocks = <&uart1_clk>;
 				clock-names = "usart";
 				status = "disabled";
 			};
@@ -619,7 +867,7 @@
 				interrupts = <21 IRQ_TYPE_LEVEL_HIGH 3>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_macb_rmii>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 21>, <&pmc PMC_TYPE_PERIPHERAL 21>;
+				clocks = <&macb0_clk>, <&macb0_clk>;
 				clock-names = "hclk", "pclk";
 				status = "disabled";
 			};
@@ -628,7 +876,7 @@
 				compatible = "atmel,at91sam9260-udc";
 				reg = <0xfffa4000 0x4000>;
 				interrupts = <10 IRQ_TYPE_LEVEL_HIGH 2>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 10>, <&pmc PMC_TYPE_SYSTEM 7>;
+				clocks = <&udc_clk>, <&udpck>;
 				clock-names = "pclk", "hclk";
 				status = "disabled";
 			};
@@ -639,7 +887,7 @@
 				interrupts = <11 IRQ_TYPE_LEVEL_HIGH 6>;
 				#address-cells = <1>;
 				#size-cells = <0>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 11>;
+				clocks = <&twi0_clk>;
 				status = "disabled";
 			};
 
@@ -650,7 +898,7 @@
 				#address-cells = <1>;
 				#size-cells = <0>;
 				pinctrl-names = "default";
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 9>;
+				clocks = <&mci0_clk>;
 				clock-names = "mci_clk";
 				status = "disabled";
 			};
@@ -661,7 +909,7 @@
 				interrupts = <14 IRQ_TYPE_LEVEL_HIGH 5>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_ssc0_tx &pinctrl_ssc0_rx>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 14>;
+				clocks = <&ssc0_clk>;
 				clock-names = "pclk";
 				status = "disabled";
 			};
@@ -674,7 +922,7 @@
 				interrupts = <12 IRQ_TYPE_LEVEL_HIGH 3>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_spi0>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 12>;
+				clocks = <&spi0_clk>;
 				clock-names = "spi_clk";
 				status = "disabled";
 			};
@@ -687,7 +935,7 @@
 				interrupts = <13 IRQ_TYPE_LEVEL_HIGH 3>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_spi1>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 13>;
+				clocks = <&spi1_clk>;
 				clock-names = "spi_clk";
 				status = "disabled";
 			};
@@ -698,7 +946,7 @@
 				compatible = "atmel,at91sam9260-adc";
 				reg = <0xfffe0000 0x100>;
 				interrupts = <5 IRQ_TYPE_LEVEL_HIGH 0>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 5>, <&adc_op_clk>;
+				clocks = <&adc_clk>, <&adc_op_clk>;
 				clock-names = "adc_clk", "adc_op_clk";
 				atmel,adc-use-external-triggers;
 				atmel,adc-channels-used = <0xf>;
@@ -733,7 +981,7 @@
 				compatible = "atmel,at91sam9260-rtt";
 				reg = <0xfffffd20 0x10>;
 				interrupts = <1 IRQ_TYPE_LEVEL_HIGH 7>;
-				clocks = <&pmc PMC_TYPE_CORE PMC_SLOW>;
+				clocks = <&clk32k>;
 				status = "disabled";
 			};
 
@@ -741,7 +989,7 @@
 				compatible = "atmel,at91sam9260-wdt";
 				reg = <0xfffffd40 0x10>;
 				interrupts = <1 IRQ_TYPE_LEVEL_HIGH 7>;
-				clocks = <&pmc PMC_TYPE_CORE PMC_SLOW>;
+				clocks = <&clk32k>;
 				atmel,watchdog-type = "hardware";
 				atmel,reset-type = "all";
 				atmel,dbg-halt;
@@ -759,7 +1007,7 @@
 			compatible = "atmel,at91rm9200-ohci", "usb-ohci";
 			reg = <0x00500000 0x100000>;
 			interrupts = <20 IRQ_TYPE_LEVEL_HIGH 2>;
-			clocks = <&pmc PMC_TYPE_PERIPHERAL 20>, <&pmc PMC_TYPE_PERIPHERAL 20>, <&pmc PMC_TYPE_SYSTEM 6>;
+			clocks = <&ohci_clk>, <&ohci_clk>, <&uhpck>;
 			clock-names = "ohci_clk", "hclk", "uhpck";
 			status = "disabled";
 		};
@@ -779,7 +1027,7 @@
 				  0x5 0x0 0x60000000 0x10000000
 				  0x6 0x0 0x70000000 0x10000000
 				  0x7 0x0 0x80000000 0x10000000>;
-			clocks = <&pmc PMC_TYPE_CORE PMC_MCK>;
+			clocks = <&mck>;
 			status = "disabled";
 
 			nand_controller: nand-controller {
diff --git a/dts/src/arm/at91sam9261.dtsi b/dts/src/arm/at91sam9261.dtsi
index 01d700b63..33f09d5ea 100644
--- a/dts/src/arm/at91sam9261.dtsi
+++ b/dts/src/arm/at91sam9261.dtsi
@@ -75,7 +75,7 @@
 			compatible = "atmel,at91rm9200-ohci", "usb-ohci";
 			reg = <0x00500000 0x100000>;
 			interrupts = <20 IRQ_TYPE_LEVEL_HIGH 2>;
-			clocks = <&pmc PMC_TYPE_PERIPHERAL 20>, <&pmc PMC_TYPE_SYSTEM 16>, <&pmc PMC_TYPE_SYSTEM 6>;
+			clocks = <&ohci_clk>, <&hclk0>, <&uhpck>;
 			clock-names = "ohci_clk", "hclk", "uhpck";
 			status = "disabled";
 		};
@@ -86,7 +86,7 @@
 			interrupts = <21 IRQ_TYPE_LEVEL_HIGH 3>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_fb>;
-			clocks = <&pmc PMC_TYPE_PERIPHERAL 21>, <&pmc PMC_TYPE_SYSTEM 17>;
+			clocks = <&lcd_clk>, <&hclk1>;
 			clock-names = "lcdc_clk", "hclk";
 			status = "disabled";
 		};
@@ -106,7 +106,7 @@
 				  0x5 0x0 0x60000000 0x10000000
 				  0x6 0x0 0x70000000 0x10000000
 				  0x7 0x0 0x80000000 0x10000000>;
-			clocks = <&pmc PMC_TYPE_CORE PMC_MCK>;
+			clocks = <&mck>;
 			status = "disabled";
 
 			nand_controller: nand-controller {
@@ -132,7 +132,7 @@
 				interrupts = <17 IRQ_TYPE_LEVEL_HIGH 0>,
 					     <18 IRQ_TYPE_LEVEL_HIGH 0>,
 					     <19 IRQ_TYPE_LEVEL_HIGH 0>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 17>, <&pmc PMC_TYPE_PERIPHERAL 18>, <&pmc PMC_TYPE_PERIPHERAL 19>, <&slow_xtal>;
+				clocks = <&tc0_clk>, <&tc1_clk>, <&tc2_clk>, <&slow_xtal>;
 				clock-names = "t0_clk", "t1_clk", "t2_clk", "slow_clk";
 			};
 
@@ -140,7 +140,7 @@
 				compatible = "atmel,at91sam9261-udc";
 				reg = <0xfffa4000 0x4000>;
 				interrupts = <10 IRQ_TYPE_LEVEL_HIGH 2>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 10>, <&pmc PMC_TYPE_SYSTEM 7>;
+				clocks = <&udc_clk>, <&udpck>;
 				clock-names = "pclk", "hclk";
 				atmel,matrix = <&matrix>;
 				status = "disabled";
@@ -154,7 +154,7 @@
 				pinctrl-0 = <&pinctrl_mmc0_clk>, <&pinctrl_mmc0_slot0_cmd_dat0>, <&pinctrl_mmc0_slot0_dat1_3>;
 				#address-cells = <1>;
 				#size-cells = <0>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 9>;
+				clocks = <&mci0_clk>;
 				clock-names = "mci_clk";
 				status = "disabled";
 			};
@@ -167,7 +167,7 @@
 				interrupts = <11 IRQ_TYPE_LEVEL_HIGH 6>;
 				#address-cells = <1>;
 				#size-cells = <0>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 11>;
+				clocks = <&twi0_clk>;
 				status = "disabled";
 			};
 
@@ -179,7 +179,7 @@
 				atmel,use-dma-tx;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_usart0>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 6>;
+				clocks = <&usart0_clk>;
 				clock-names = "usart";
 				status = "disabled";
 			};
@@ -192,7 +192,7 @@
 				atmel,use-dma-tx;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_usart1>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 7>;
+				clocks = <&usart1_clk>;
 				clock-names = "usart";
 				status = "disabled";
 			};
@@ -205,7 +205,7 @@
 				atmel,use-dma-tx;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_usart2>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 8>;
+				clocks = <&usart2_clk>;
 				clock-names = "usart";
 				status = "disabled";
 			};
@@ -216,7 +216,7 @@
 				interrupts = <14 IRQ_TYPE_LEVEL_HIGH 5>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_ssc0_tx &pinctrl_ssc0_rx>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 14>;
+				clocks = <&ssc0_clk>;
 				clock-names = "pclk";
 				status = "disabled";
 			};
@@ -227,7 +227,7 @@
 				interrupts = <15 IRQ_TYPE_LEVEL_HIGH 5>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_ssc1_tx &pinctrl_ssc1_rx>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 15>;
+				clocks = <&ssc1_clk>;
 				clock-names = "pclk";
 				status = "disabled";
 			};
@@ -238,7 +238,7 @@
 				interrupts = <16 IRQ_TYPE_LEVEL_HIGH 5>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_ssc2_tx &pinctrl_ssc2_rx>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 16>;
+				clocks = <&ssc2_clk>;
 				clock-names = "pclk";
 				status = "disabled";
 			};
@@ -252,7 +252,7 @@
 				interrupts = <12 IRQ_TYPE_LEVEL_HIGH 3>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_spi0>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 12>;
+				clocks = <&spi0_clk>;
 				clock-names = "spi_clk";
 				status = "disabled";
 			};
@@ -265,7 +265,7 @@
 				interrupts = <13 IRQ_TYPE_LEVEL_HIGH 3>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_spi1>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 13>;
+				clocks = <&spi1_clk>;
 				clock-names = "spi_clk";
 				status = "disabled";
 			};
@@ -299,7 +299,7 @@
 				interrupts = <1 IRQ_TYPE_LEVEL_HIGH 7>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_dbgu>;
-				clocks = <&pmc PMC_TYPE_CORE PMC_MCK>;
+				clocks = <&mck>;
 				clock-names = "usart";
 				status = "disabled";
 			};
@@ -563,7 +563,7 @@
 					gpio-controller;
 					interrupt-controller;
 					#interrupt-cells = <2>;
-					clocks = <&pmc PMC_TYPE_PERIPHERAL 2>;
+					clocks = <&pioA_clk>;
 				};
 
 				pioB: gpio@fffff600 {
@@ -574,7 +574,7 @@
 					gpio-controller;
 					interrupt-controller;
 					#interrupt-cells = <2>;
-					clocks = <&pmc PMC_TYPE_PERIPHERAL 3>;
+					clocks = <&pioB_clk>;
 				};
 
 				pioC: gpio@fffff800 {
@@ -585,7 +585,7 @@
 					gpio-controller;
 					interrupt-controller;
 					#interrupt-cells = <2>;
-					clocks = <&pmc PMC_TYPE_PERIPHERAL 4>;
+					clocks = <&pioC_clk>;
 				};
 			};
 
@@ -593,9 +593,250 @@
 				compatible = "atmel,at91sam9261-pmc", "syscon";
 				reg = <0xfffffc00 0x100>;
 				interrupts = <1 IRQ_TYPE_LEVEL_HIGH 7>;
-				#clock-cells = <2>;
-				clocks = <&slow_xtal>, <&main_xtal>;
-				clock-names = "slow_xtal", "main_xtal";
+				interrupt-controller;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				#interrupt-cells = <1>;
+
+				main_osc: main_osc {
+					compatible = "atmel,at91rm9200-clk-main-osc";
+					#clock-cells = <0>;
+					interrupts-extended = <&pmc AT91_PMC_MOSCS>;
+					clocks = <&main_xtal>;
+				};
+
+				main: mainck {
+					compatible = "atmel,at91rm9200-clk-main";
+					#clock-cells = <0>;
+					clocks = <&main_osc>;
+				};
+
+				plla: pllack {
+					compatible = "atmel,at91rm9200-clk-pll";
+					#clock-cells = <0>;
+					interrupts-extended = <&pmc AT91_PMC_LOCKA>;
+					clocks = <&main>;
+					reg = <0>;
+					atmel,clk-input-range = <1000000 32000000>;
+					#atmel,pll-clk-output-range-cells = <4>;
+					atmel,pll-clk-output-ranges = <80000000 200000000 0 1>,
+								<190000000 240000000 2 1>;
+				};
+
+				pllb: pllbck {
+					compatible = "atmel,at91rm9200-clk-pll";
+					#clock-cells = <0>;
+					interrupts-extended = <&pmc AT91_PMC_LOCKB>;
+					clocks = <&main>;
+					reg = <1>;
+					atmel,clk-input-range = <1000000 5000000>;
+					#atmel,pll-clk-output-range-cells = <4>;
+					atmel,pll-clk-output-ranges = <70000000 130000000 1 1>;
+				};
+
+				mck: masterck {
+					compatible = "atmel,at91rm9200-clk-master";
+					#clock-cells = <0>;
+					interrupts-extended = <&pmc AT91_PMC_MCKRDY>;
+					clocks = <&slow_xtal>, <&main>, <&plla>, <&pllb>;
+					atmel,clk-output-range = <0 94000000>;
+					atmel,clk-divisors = <1 2 4 0>;
+				};
+
+				usb: usbck {
+					compatible = "atmel,at91rm9200-clk-usb";
+					#clock-cells = <0>;
+					atmel,clk-divisors = <1 2 4 0>;
+					clocks = <&pllb>;
+				};
+
+				prog: progck {
+					compatible = "atmel,at91rm9200-clk-programmable";
+					#address-cells = <1>;
+					#size-cells = <0>;
+					interrupt-parent = <&pmc>;
+					clocks = <&slow_xtal>, <&main>, <&plla>, <&pllb>;
+
+					prog0: prog0 {
+						#clock-cells = <0>;
+						reg = <0>;
+						interrupts = <AT91_PMC_PCKRDY(0)>;
+					};
+
+					prog1: prog1 {
+						#clock-cells = <0>;
+						reg = <1>;
+						interrupts = <AT91_PMC_PCKRDY(1)>;
+					};
+
+					prog2: prog2 {
+						#clock-cells = <0>;
+						reg = <2>;
+						interrupts = <AT91_PMC_PCKRDY(2)>;
+					};
+
+					prog3: prog3 {
+						#clock-cells = <0>;
+						reg = <3>;
+						interrupts = <AT91_PMC_PCKRDY(3)>;
+					};
+				};
+
+				systemck {
+					compatible = "atmel,at91rm9200-clk-system";
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					uhpck: uhpck {
+						#clock-cells = <0>;
+						reg = <6>;
+						clocks = <&usb>;
+					};
+
+					udpck: udpck {
+						#clock-cells = <0>;
+						reg = <7>;
+						clocks = <&usb>;
+					};
+
+					pck0: pck0 {
+						#clock-cells = <0>;
+						reg = <8>;
+						clocks = <&prog0>;
+					};
+
+					pck1: pck1 {
+						#clock-cells = <0>;
+						reg = <9>;
+						clocks = <&prog1>;
+					};
+
+					pck2: pck2 {
+						#clock-cells = <0>;
+						reg = <10>;
+						clocks = <&prog2>;
+					};
+
+					pck3: pck3 {
+						#clock-cells = <0>;
+						reg = <11>;
+						clocks = <&prog3>;
+					};
+
+					hclk0: hclk0 {
+						#clock-cells = <0>;
+						reg = <16>;
+						clocks = <&mck>;
+					};
+
+					hclk1: hclk1 {
+						#clock-cells = <0>;
+						reg = <17>;
+						clocks = <&mck>;
+					};
+				};
+
+				periphck {
+					compatible = "atmel,at91rm9200-clk-peripheral";
+					#address-cells = <1>;
+					#size-cells = <0>;
+					clocks = <&mck>;
+
+					pioA_clk: pioA_clk {
+						#clock-cells = <0>;
+						reg = <2>;
+					};
+
+					pioB_clk: pioB_clk {
+						#clock-cells = <0>;
+						reg = <3>;
+					};
+
+					pioC_clk: pioC_clk {
+						#clock-cells = <0>;
+						reg = <4>;
+					};
+
+					usart0_clk: usart0_clk {
+						#clock-cells = <0>;
+						reg = <6>;
+					};
+
+					usart1_clk: usart1_clk {
+						#clock-cells = <0>;
+						reg = <7>;
+					};
+
+					usart2_clk: usart2_clk {
+						#clock-cells = <0>;
+						reg = <8>;
+					};
+
+					mci0_clk: mci0_clk {
+						#clock-cells = <0>;
+						reg = <9>;
+					};
+
+					udc_clk: udc_clk {
+						#clock-cells = <0>;
+						reg = <10>;
+					};
+
+					twi0_clk: twi0_clk {
+						reg = <11>;
+						#clock-cells = <0>;
+					};
+
+					spi0_clk: spi0_clk {
+						#clock-cells = <0>;
+						reg = <12>;
+					};
+
+					spi1_clk: spi1_clk {
+						#clock-cells = <0>;
+						reg = <13>;
+					};
+
+					ssc0_clk: ssc0_clk {
+						#clock-cells = <0>;
+						reg = <14>;
+					};
+
+					ssc1_clk: ssc1_clk {
+						#clock-cells = <0>;
+						reg = <15>;
+					};
+
+					ssc2_clk: ssc2_clk {
+						#clock-cells = <0>;
+						reg = <16>;
+					};
+
+					tc0_clk: tc0_clk {
+						#clock-cells = <0>;
+						reg = <17>;
+					};
+
+					tc1_clk: tc1_clk {
+						#clock-cells = <0>;
+						reg = <18>;
+					};
+
+					tc2_clk: tc2_clk {
+						#clock-cells = <0>;
+						reg = <19>;
+					};
+
+					ohci_clk: ohci_clk {
+						#clock-cells = <0>;
+						reg = <20>;
+					};
+
+					lcd_clk: lcd_clk {
+						#clock-cells = <0>;
+						reg = <21>;
+					};
+				};
 			};
 
 			rstc@fffffd00 {
@@ -614,7 +855,7 @@
 				compatible = "atmel,at91sam9260-pit";
 				reg = <0xfffffd30 0xf>;
 				interrupts = <1 IRQ_TYPE_LEVEL_HIGH 7>;
-				clocks = <&pmc PMC_TYPE_CORE PMC_MCK>;
+				clocks = <&mck>;
 			};
 
 			rtc@fffffd20 {
diff --git a/dts/src/arm/at91sam9263.dtsi b/dts/src/arm/at91sam9263.dtsi
index c5766da4e..af68a86c9 100644
--- a/dts/src/arm/at91sam9263.dtsi
+++ b/dts/src/arm/at91sam9263.dtsi
@@ -96,9 +96,264 @@
 				compatible = "atmel,at91sam9263-pmc", "syscon";
 				reg = <0xfffffc00 0x100>;
 				interrupts = <1 IRQ_TYPE_LEVEL_HIGH 7>;
-				#clock-cells = <2>;
-				clocks = <&slow_xtal>, <&main_xtal>;
-				clock-names = "slow_xtal", "main_xtal";
+				interrupt-controller;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				#interrupt-cells = <1>;
+
+				main_osc: main_osc {
+					compatible = "atmel,at91rm9200-clk-main-osc";
+					#clock-cells = <0>;
+					interrupts-extended = <&pmc AT91_PMC_MOSCS>;
+					clocks = <&main_xtal>;
+				};
+
+				main: mainck {
+					compatible = "atmel,at91rm9200-clk-main";
+					#clock-cells = <0>;
+					clocks = <&main_osc>;
+				};
+
+				plla: pllack {
+					compatible = "atmel,at91rm9200-clk-pll";
+					#clock-cells = <0>;
+					interrupts-extended = <&pmc AT91_PMC_LOCKA>;
+					clocks = <&main>;
+					reg = <0>;
+					atmel,clk-input-range = <1000000 32000000>;
+					#atmel,pll-clk-output-range-cells = <4>;
+					atmel,pll-clk-output-ranges = <80000000 200000000 0 1>,
+								<190000000 240000000 2 1>;
+				};
+
+				pllb: pllbck {
+					compatible = "atmel,at91rm9200-clk-pll";
+					#clock-cells = <0>;
+					interrupts-extended = <&pmc AT91_PMC_LOCKB>;
+					clocks = <&main>;
+					reg = <1>;
+					atmel,clk-input-range = <1000000 32000000>;
+					#atmel,pll-clk-output-range-cells = <4>;
+					atmel,pll-clk-output-ranges = <80000000 200000000 0 1>,
+								<190000000 240000000 2 1>;
+				};
+
+				mck: masterck {
+					compatible = "atmel,at91rm9200-clk-master";
+					#clock-cells = <0>;
+					interrupts-extended = <&pmc AT91_PMC_MCKRDY>;
+					clocks = <&slow_xtal>, <&main>, <&plla>, <&pllb>;
+					atmel,clk-output-range = <0 120000000>;
+					atmel,clk-divisors = <1 2 4 0>;
+				};
+
+				usb: usbck {
+					compatible = "atmel,at91rm9200-clk-usb";
+					#clock-cells = <0>;
+					atmel,clk-divisors = <1 2 4 0>;
+					clocks = <&pllb>;
+				};
+
+				prog: progck {
+					compatible = "atmel,at91rm9200-clk-programmable";
+					#address-cells = <1>;
+					#size-cells = <0>;
+					interrupt-parent = <&pmc>;
+					clocks = <&slow_xtal>, <&main>, <&plla>, <&pllb>;
+
+					prog0: prog0 {
+						#clock-cells = <0>;
+						reg = <0>;
+						interrupts = <AT91_PMC_PCKRDY(0)>;
+					};
+
+					prog1: prog1 {
+						#clock-cells = <0>;
+						reg = <1>;
+						interrupts = <AT91_PMC_PCKRDY(1)>;
+					};
+
+					prog2: prog2 {
+						#clock-cells = <0>;
+						reg = <2>;
+						interrupts = <AT91_PMC_PCKRDY(2)>;
+					};
+
+					prog3: prog3 {
+						#clock-cells = <0>;
+						reg = <3>;
+						interrupts = <AT91_PMC_PCKRDY(3)>;
+					};
+				};
+
+				systemck {
+					compatible = "atmel,at91rm9200-clk-system";
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					uhpck: uhpck {
+						#clock-cells = <0>;
+						reg = <6>;
+						clocks = <&usb>;
+					};
+
+					udpck: udpck {
+						#clock-cells = <0>;
+						reg = <7>;
+						clocks = <&usb>;
+					};
+
+					pck0: pck0 {
+						#clock-cells = <0>;
+						reg = <8>;
+						clocks = <&prog0>;
+					};
+
+					pck1: pck1 {
+						#clock-cells = <0>;
+						reg = <9>;
+						clocks = <&prog1>;
+					};
+
+					pck2: pck2 {
+						#clock-cells = <0>;
+						reg = <10>;
+						clocks = <&prog2>;
+					};
+
+					pck3: pck3 {
+						#clock-cells = <0>;
+						reg = <11>;
+						clocks = <&prog3>;
+					};
+				};
+
+				periphck {
+					compatible = "atmel,at91rm9200-clk-peripheral";
+					#address-cells = <1>;
+					#size-cells = <0>;
+					clocks = <&mck>;
+
+					pioA_clk: pioA_clk {
+						#clock-cells = <0>;
+						reg = <2>;
+					};
+
+					pioB_clk: pioB_clk {
+						#clock-cells = <0>;
+						reg = <3>;
+					};
+
+					pioCDE_clk: pioCDE_clk {
+						#clock-cells = <0>;
+						reg = <4>;
+					};
+
+					usart0_clk: usart0_clk {
+						#clock-cells = <0>;
+						reg = <7>;
+					};
+
+					usart1_clk: usart1_clk {
+						#clock-cells = <0>;
+						reg = <8>;
+					};
+
+					usart2_clk: usart2_clk {
+						#clock-cells = <0>;
+						reg = <9>;
+					};
+
+					mci0_clk: mci0_clk {
+						#clock-cells = <0>;
+						reg = <10>;
+					};
+
+					mci1_clk: mci1_clk {
+						#clock-cells = <0>;
+						reg = <11>;
+					};
+
+					can_clk: can_clk {
+						#clock-cells = <0>;
+						reg = <12>;
+					};
+
+					twi0_clk: twi0_clk {
+						#clock-cells = <0>;
+						reg = <13>;
+					};
+
+					spi0_clk: spi0_clk {
+						#clock-cells = <0>;
+						reg = <14>;
+					};
+
+					spi1_clk: spi1_clk {
+						#clock-cells = <0>;
+						reg = <15>;
+					};
+
+					ssc0_clk: ssc0_clk {
+						#clock-cells = <0>;
+						reg = <16>;
+					};
+
+					ssc1_clk: ssc1_clk {
+						#clock-cells = <0>;
+						reg = <17>;
+					};
+
+					ac97_clk: ac97_clk {
+						#clock-cells = <0>;
+						reg = <18>;
+					};
+
+					tcb_clk: tcb_clk {
+						#clock-cells = <0>;
+						reg = <19>;
+					};
+
+					pwm_clk: pwm_clk {
+						#clock-cells = <0>;
+						reg = <20>;
+					};
+
+					macb0_clk: macb0_clk {
+						#clock-cells = <0>;
+						reg = <21>;
+					};
+
+					g2de_clk: g2de_clk {
+						#clock-cells = <0>;
+						reg = <23>;
+					};
+
+					udc_clk: udc_clk {
+						#clock-cells = <0>;
+						reg = <24>;
+					};
+
+					isi_clk: isi_clk {
+						#clock-cells = <0>;
+						reg = <25>;
+					};
+
+					lcd_clk: lcd_clk {
+						#clock-cells = <0>;
+						reg = <26>;
+					};
+
+					dma_clk: dma_clk {
+						#clock-cells = <0>;
+						reg = <27>;
+					};
+
+					ohci_clk: ohci_clk {
+						#clock-cells = <0>;
+						reg = <29>;
+					};
+				};
 			};
 
 			ramc0: ramc@ffffe200 {
@@ -130,7 +385,7 @@
 				compatible = "atmel,at91sam9260-pit";
 				reg = <0xfffffd30 0xf>;
 				interrupts = <1 IRQ_TYPE_LEVEL_HIGH 7>;
-				clocks = <&pmc PMC_TYPE_CORE PMC_MCK>;
+				clocks = <&mck>;
 			};
 
 			tcb0: timer@fff7c000 {
@@ -139,7 +394,7 @@
 				#size-cells = <0>;
 				reg = <0xfff7c000 0x100>;
 				interrupts = <19 IRQ_TYPE_LEVEL_HIGH 0>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 19>, <&slow_xtal>;
+				clocks = <&tcb_clk>, <&slow_xtal>;
 				clock-names = "t0_clk", "slow_clk";
 			};
 
@@ -481,7 +736,7 @@
 					gpio-controller;
 					interrupt-controller;
 					#interrupt-cells = <2>;
-					clocks = <&pmc PMC_TYPE_PERIPHERAL 2>;
+					clocks = <&pioA_clk>;
 				};
 
 				pioB: gpio@fffff400 {
@@ -492,7 +747,7 @@
 					gpio-controller;
 					interrupt-controller;
 					#interrupt-cells = <2>;
-					clocks = <&pmc PMC_TYPE_PERIPHERAL 3>;
+					clocks = <&pioB_clk>;
 				};
 
 				pioC: gpio@fffff600 {
@@ -503,7 +758,7 @@
 					gpio-controller;
 					interrupt-controller;
 					#interrupt-cells = <2>;
-					clocks = <&pmc PMC_TYPE_PERIPHERAL 4>;
+					clocks = <&pioCDE_clk>;
 				};
 
 				pioD: gpio@fffff800 {
@@ -514,7 +769,7 @@
 					gpio-controller;
 					interrupt-controller;
 					#interrupt-cells = <2>;
-					clocks = <&pmc PMC_TYPE_PERIPHERAL 4>;
+					clocks = <&pioCDE_clk>;
 				};
 
 				pioE: gpio@fffffa00 {
@@ -525,7 +780,7 @@
 					gpio-controller;
 					interrupt-controller;
 					#interrupt-cells = <2>;
-					clocks = <&pmc PMC_TYPE_PERIPHERAL 4>;
+					clocks = <&pioCDE_clk>;
 				};
 			};
 
@@ -535,7 +790,7 @@
 				interrupts = <1 IRQ_TYPE_LEVEL_HIGH 7>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_dbgu>;
-				clocks = <&pmc PMC_TYPE_CORE PMC_MCK>;
+				clocks = <&mck>;
 				clock-names = "usart";
 				status = "disabled";
 			};
@@ -548,7 +803,7 @@
 				atmel,use-dma-tx;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_usart0>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 7>;
+				clocks = <&usart0_clk>;
 				clock-names = "usart";
 				status = "disabled";
 			};
@@ -561,7 +816,7 @@
 				atmel,use-dma-tx;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_usart1>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 8>;
+				clocks = <&usart1_clk>;
 				clock-names = "usart";
 				status = "disabled";
 			};
@@ -574,7 +829,7 @@
 				atmel,use-dma-tx;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_usart2>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 9>;
+				clocks = <&usart2_clk>;
 				clock-names = "usart";
 				status = "disabled";
 			};
@@ -585,7 +840,7 @@
 				interrupts = <16 IRQ_TYPE_LEVEL_HIGH 5>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_ssc0_tx &pinctrl_ssc0_rx>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 16>;
+				clocks = <&ssc0_clk>;
 				clock-names = "pclk";
 				status = "disabled";
 			};
@@ -596,7 +851,7 @@
 				interrupts = <17 IRQ_TYPE_LEVEL_HIGH 5>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_ssc1_tx &pinctrl_ssc1_rx>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 17>;
+				clocks = <&ssc1_clk>;
 				clock-names = "pclk";
 				status = "disabled";
 			};
@@ -607,7 +862,7 @@
 				interrupts = <18 IRQ_TYPE_LEVEL_HIGH 5>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_ac97>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 18>;
+				clocks = <&ac97_clk>;
 				clock-names = "ac97_clk";
 				status = "disabled";
 			};
@@ -618,7 +873,7 @@
 				interrupts = <21 IRQ_TYPE_LEVEL_HIGH 3>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_macb_rmii>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 21>, <&pmc PMC_TYPE_PERIPHERAL 21>;
+				clocks = <&macb0_clk>, <&macb0_clk>;
 				clock-names = "hclk", "pclk";
 				status = "disabled";
 			};
@@ -627,7 +882,7 @@
 				compatible = "atmel,at91sam9263-udc";
 				reg = <0xfff78000 0x4000>;
 				interrupts = <24 IRQ_TYPE_LEVEL_HIGH 2>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 24>, <&pmc PMC_TYPE_SYSTEM 7>;
+				clocks = <&udc_clk>, <&udpck>;
 				clock-names = "pclk", "hclk";
 				status = "disabled";
 			};
@@ -638,7 +893,7 @@
 				interrupts = <13 IRQ_TYPE_LEVEL_HIGH 6>;
 				#address-cells = <1>;
 				#size-cells = <0>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 13>;
+				clocks = <&twi0_clk>;
 				status = "disabled";
 			};
 
@@ -649,7 +904,7 @@
 				pinctrl-names = "default";
 				#address-cells = <1>;
 				#size-cells = <0>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 10>;
+				clocks = <&mci0_clk>;
 				clock-names = "mci_clk";
 				status = "disabled";
 			};
@@ -661,7 +916,7 @@
 				pinctrl-names = "default";
 				#address-cells = <1>;
 				#size-cells = <0>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 11>;
+				clocks = <&mci1_clk>;
 				clock-names = "mci_clk";
 				status = "disabled";
 			};
@@ -685,7 +940,7 @@
 				interrupts = <14 IRQ_TYPE_LEVEL_HIGH 3>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_spi0>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 14>;
+				clocks = <&spi0_clk>;
 				clock-names = "spi_clk";
 				status = "disabled";
 			};
@@ -698,7 +953,7 @@
 				interrupts = <15 IRQ_TYPE_LEVEL_HIGH 3>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_spi1>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 15>;
+				clocks = <&spi1_clk>;
 				clock-names = "spi_clk";
 				status = "disabled";
 			};
@@ -708,7 +963,7 @@
 				reg = <0xfffb8000 0x300>;
 				interrupts = <20 IRQ_TYPE_LEVEL_HIGH 4>;
 				#pwm-cells = <3>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 20>;
+				clocks = <&pwm_clk>;
 				clock-names = "pwm_clk";
 				status = "disabled";
 			};
@@ -719,7 +974,7 @@
 				interrupts = <12 IRQ_TYPE_LEVEL_HIGH 3>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_can_rx_tx>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 12>;
+				clocks = <&can_clk>;
 				clock-names = "can_clk";
 			};
 
@@ -752,7 +1007,7 @@
 			interrupts = <26 IRQ_TYPE_LEVEL_HIGH 3>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_fb>;
-			clocks = <&pmc PMC_TYPE_PERIPHERAL 26>, <&pmc PMC_TYPE_PERIPHERAL 26>;
+			clocks = <&lcd_clk>, <&lcd_clk>;
 			clock-names = "lcdc_clk", "hclk";
 			status = "disabled";
 		};
@@ -761,7 +1016,7 @@
 			compatible = "atmel,at91rm9200-ohci", "usb-ohci";
 			reg = <0x00a00000 0x100000>;
 			interrupts = <29 IRQ_TYPE_LEVEL_HIGH 2>;
-			clocks = <&pmc PMC_TYPE_PERIPHERAL 29>, <&pmc PMC_TYPE_PERIPHERAL 29>, <&pmc PMC_TYPE_SYSTEM 6>;
+			clocks = <&ohci_clk>, <&ohci_clk>, <&uhpck>;
 			clock-names = "ohci_clk", "hclk", "uhpck";
 			status = "disabled";
 		};
@@ -779,7 +1034,7 @@
 				  0x3 0x0 0x40000000 0x10000000
 				  0x4 0x0 0x50000000 0x10000000
 				  0x5 0x0 0x60000000 0x10000000>;
-			clocks = <&pmc PMC_TYPE_CORE PMC_MCK>;
+			clocks = <&mck>;
 			status = "disabled";
 
 			nand_controller0: nand-controller {
@@ -800,7 +1055,7 @@
 			reg = <0x80000000 0x20000000>;
 			ranges = <0x0 0x0 0x80000000 0x10000000
 				  0x1 0x0 0x90000000 0x10000000>;
-			clocks = <&pmc PMC_TYPE_CORE PMC_MCK>;
+			clocks = <&mck>;
 			status = "disabled";
 
 			nand_controller1: nand-controller {
diff --git a/dts/src/arm/at91sam9g15.dtsi b/dts/src/arm/at91sam9g15.dtsi
index b34a6c65b..27de7dc0f 100644
--- a/dts/src/arm/at91sam9g15.dtsi
+++ b/dts/src/arm/at91sam9g15.dtsi
@@ -24,10 +24,6 @@
 				       0x003fffff 0x003f8000 0x00000000  /* pioD */
 				      >;
 			};
-
-			pmc: pmc@fffffc00 {
-				compatible = "atmel,at91sam9g15-pmc", "atmel,at91sam9x5-pmc", "syscon";
-			};
 		};
 	};
 };
diff --git a/dts/src/arm/at91sam9g20.dtsi b/dts/src/arm/at91sam9g20.dtsi
index e976fd6bc..90705ee60 100644
--- a/dts/src/arm/at91sam9g20.dtsi
+++ b/dts/src/arm/at91sam9g20.dtsi
@@ -40,7 +40,28 @@
 			};
 
 			pmc: pmc@fffffc00 {
-				compatible = "atmel,at91sam9g20-pmc", "atmel,at91sam9260-pmc", "syscon";
+				plla: pllack {
+					atmel,clk-input-range = <2000000 32000000>;
+					atmel,pll-clk-output-ranges = <745000000 800000000 0 0>,
+								<695000000 750000000 1 0>,
+								<645000000 700000000 2 0>,
+								<595000000 650000000 3 0>,
+								<545000000 600000000 0 1>,
+								<495000000 550000000 1 1>,
+								<445000000 500000000 2 1>,
+								<400000000 450000000 3 1>;
+				};
+
+				pllb: pllbck {
+					compatible = "atmel,at91sam9g20-clk-pllb";
+					atmel,clk-input-range = <2000000 32000000>;
+					atmel,pll-clk-output-ranges = <30000000 100000000 0 0>;
+				};
+
+				mck: masterck {
+					atmel,clk-output-range = <0 133000000>;
+					atmel,clk-divisors = <1 2 4 6>;
+				};
 			};
 		};
 	};
diff --git a/dts/src/arm/at91sam9g25.dtsi b/dts/src/arm/at91sam9g25.dtsi
index d8bb56253..0898213f3 100644
--- a/dts/src/arm/at91sam9g25.dtsi
+++ b/dts/src/arm/at91sam9g25.dtsi
@@ -26,10 +26,6 @@
 				       0x003fffff 0x003f8000 0x00000000  /* pioD */
 				      >;
 			};
-
-			pmc: pmc@fffffc00 {
-				compatible = "atmel,at91sam9g25-pmc", "atmel,at91sam9x5-pmc", "syscon";
-			};
 		};
 	};
 };
diff --git a/dts/src/arm/at91sam9g25ek.dts b/dts/src/arm/at91sam9g25ek.dts
index ac730812a..31fecc2cd 100644
--- a/dts/src/arm/at91sam9g25ek.dts
+++ b/dts/src/arm/at91sam9g25ek.dts
@@ -32,9 +32,9 @@
 					pinctrl-0 = <&pinctrl_pck0_as_isi_mck &pinctrl_sensor_power &pinctrl_sensor_reset>;
 					resetb-gpios = <&pioA 7 GPIO_ACTIVE_LOW>;
 					pwdn-gpios = <&pioA 13 GPIO_ACTIVE_HIGH>;
-					clocks = <&pmc PMC_TYPE_SYSTEM 8>;
+					clocks = <&pck0>;
 					clock-names = "xvclk";
-					assigned-clocks = <&pmc PMC_TYPE_SYSTEM 8>;
+					assigned-clocks = <&pck0>;
 					assigned-clock-rates = <25000000>;
 					status = "okay";
 
diff --git a/dts/src/arm/at91sam9g35.dtsi b/dts/src/arm/at91sam9g35.dtsi
index 333e158fe..ff4115886 100644
--- a/dts/src/arm/at91sam9g35.dtsi
+++ b/dts/src/arm/at91sam9g35.dtsi
@@ -25,10 +25,6 @@
 				       0x003fffff 0x003f8000 0x00000000  /* pioD */
 				      >;
 			};
-
-			pmc: pmc@fffffc00 {
-				compatible = "atmel,at91sam9g35-pmc", "atmel,at91sam9x5-pmc", "syscon";
-			};
 		};
 	};
 };
diff --git a/dts/src/arm/at91sam9rl.dtsi b/dts/src/arm/at91sam9rl.dtsi
index 3862ff2f2..8fb22030f 100644
--- a/dts/src/arm/at91sam9rl.dtsi
+++ b/dts/src/arm/at91sam9rl.dtsi
@@ -88,7 +88,7 @@
 			interrupts = <23 IRQ_TYPE_LEVEL_HIGH 3>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_fb>;
-			clocks = <&pmc PMC_TYPE_PERIPHERAL 23>, <&pmc PMC_TYPE_PERIPHERAL 23>;
+			clocks = <&lcd_clk>, <&lcd_clk>;
 			clock-names = "hclk", "lcdc_clk";
 			status = "disabled";
 		};
@@ -106,7 +106,7 @@
 				  0x3 0x0 0x40000000 0x10000000
 				  0x4 0x0 0x50000000 0x10000000
 				  0x5 0x0 0x60000000 0x10000000>;
-			clocks = <&pmc PMC_TYPE_CORE PMC_MCK>;
+			clocks = <&mck>;
 			status = "disabled";
 
 			nand_controller: nand-controller {
@@ -132,7 +132,7 @@
 				interrupts = <16 IRQ_TYPE_LEVEL_HIGH 0>,
 					     <17 IRQ_TYPE_LEVEL_HIGH 0>,
 					     <18 IRQ_TYPE_LEVEL_HIGH 0>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 16>, <&pmc PMC_TYPE_PERIPHERAL 17>, <&pmc PMC_TYPE_PERIPHERAL 18>, <&clk32k>;
+				clocks = <&tc0_clk>, <&tc1_clk>, <&tc2_clk>, <&clk32k>;
 				clock-names = "t0_clk", "t1_clk", "t2_clk", "slow_clk";
 			};
 
@@ -143,7 +143,7 @@
 				#address-cells = <1>;
 				#size-cells = <0>;
 				pinctrl-names = "default";
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 10>;
+				clocks = <&mci0_clk>;
 				clock-names = "mci_clk";
 				status = "disabled";
 			};
@@ -154,7 +154,7 @@
 				interrupts = <11 IRQ_TYPE_LEVEL_HIGH 6>;
 				#address-cells = <1>;
 				#size-cells = <0>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 11>;
+				clocks = <&twi0_clk>;
 				status = "disabled";
 			};
 
@@ -175,7 +175,7 @@
 				atmel,use-dma-tx;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_usart0>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 6>;
+				clocks = <&usart0_clk>;
 				clock-names = "usart";
 				status = "disabled";
 			};
@@ -188,7 +188,7 @@
 				atmel,use-dma-tx;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_usart1>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 7>;
+				clocks = <&usart1_clk>;
 				clock-names = "usart";
 				status = "disabled";
 			};
@@ -201,7 +201,7 @@
 				atmel,use-dma-tx;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_usart2>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 8>;
+				clocks = <&usart2_clk>;
 				clock-names = "usart";
 				status = "disabled";
 			};
@@ -214,7 +214,7 @@
 				atmel,use-dma-tx;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_usart3>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 9>;
+				clocks = <&usart3_clk>;
 				clock-names = "usart";
 				status = "disabled";
 			};
@@ -242,7 +242,7 @@
 				reg = <0xfffc8000 0x300>;
 				interrupts = <19 IRQ_TYPE_LEVEL_HIGH 4>;
 				#pwm-cells = <3>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 19>;
+				clocks = <&pwm_clk>;
 				clock-names = "pwm_clk";
 				status = "disabled";
 			};
@@ -255,7 +255,7 @@
 				interrupts = <13 IRQ_TYPE_LEVEL_HIGH 3>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_spi0>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 13>;
+				clocks = <&spi0_clk>;
 				clock-names = "spi_clk";
 				status = "disabled";
 			};
@@ -266,7 +266,7 @@
 				compatible = "atmel,at91sam9rl-adc";
 				reg = <0xfffd0000 0x100>;
 				interrupts = <20 IRQ_TYPE_LEVEL_HIGH 0>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 20>, <&adc_op_clk>;
+				clocks = <&adc_clk>, <&adc_op_clk>;
 				clock-names = "adc_clk", "adc_op_clk";
 				atmel,adc-use-external-triggers;
 				atmel,adc-channels-used = <0x3f>;
@@ -304,7 +304,7 @@
 				reg = <0x00600000 0x100000>,
 				      <0xfffd4000 0x4000>;
 				interrupts = <22 IRQ_TYPE_LEVEL_HIGH 2>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 22>, <&pmc PMC_TYPE_CORE PMC_UTMI>;
+				clocks = <&udphs_clk>, <&utmi>;
 				clock-names = "pclk", "hclk";
 				status = "disabled";
 
@@ -366,7 +366,7 @@
 				reg = <0xffffe600 0x200>;
 				interrupts = <21 IRQ_TYPE_LEVEL_HIGH 0>;
 				#dma-cells = <2>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 21>;
+				clocks = <&dma0_clk>;
 				clock-names = "dma_clk";
 			};
 
@@ -399,7 +399,7 @@
 				interrupts = <1 IRQ_TYPE_LEVEL_HIGH 7>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_dbgu>;
-				clocks = <&pmc PMC_TYPE_CORE PMC_MCK>;
+				clocks = <&mck>;
 				clock-names = "usart";
 				status = "disabled";
 			};
@@ -794,7 +794,7 @@
 					gpio-controller;
 					interrupt-controller;
 					#interrupt-cells = <2>;
-					clocks = <&pmc PMC_TYPE_PERIPHERAL 2>;
+					clocks = <&pioA_clk>;
 				};
 
 				pioB: gpio@fffff600 {
@@ -805,7 +805,7 @@
 					gpio-controller;
 					interrupt-controller;
 					#interrupt-cells = <2>;
-					clocks = <&pmc PMC_TYPE_PERIPHERAL 3>;
+					clocks = <&pioB_clk>;
 				};
 
 				pioC: gpio@fffff800 {
@@ -816,7 +816,7 @@
 					gpio-controller;
 					interrupt-controller;
 					#interrupt-cells = <2>;
-					clocks = <&pmc PMC_TYPE_PERIPHERAL 4>;
+					clocks = <&pioC_clk>;
 				};
 
 				pioD: gpio@fffffa00 {
@@ -827,7 +827,7 @@
 					gpio-controller;
 					interrupt-controller;
 					#interrupt-cells = <2>;
-					clocks = <&pmc PMC_TYPE_PERIPHERAL 5>;
+					clocks = <&pioD_clk>;
 				};
 			};
 
@@ -835,9 +835,202 @@
 				compatible = "atmel,at91sam9rl-pmc", "syscon";
 				reg = <0xfffffc00 0x100>;
 				interrupts = <1 IRQ_TYPE_LEVEL_HIGH 7>;
-				#clock-cells = <2>;
-				clocks = <&clk32k>, <&main_xtal>;
-				clock-names = "slow_clk", "main_xtal";
+				interrupt-controller;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				#interrupt-cells = <1>;
+
+				main: mainck {
+					compatible = "atmel,at91rm9200-clk-main";
+					#clock-cells = <0>;
+					interrupts-extended = <&pmc AT91_PMC_MOSCS>;
+					clocks = <&main_xtal>;
+				};
+
+				plla: pllack {
+					compatible = "atmel,at91rm9200-clk-pll";
+					#clock-cells = <0>;
+					interrupts-extended = <&pmc AT91_PMC_LOCKA>;
+					clocks = <&main>;
+					reg = <0>;
+					atmel,clk-input-range = <1000000 32000000>;
+					#atmel,pll-clk-output-range-cells = <3>;
+					atmel,pll-clk-output-ranges = <80000000 200000000 0>,
+								<190000000 240000000 2>;
+				};
+
+				utmi: utmick {
+					compatible = "atmel,at91sam9x5-clk-utmi";
+					#clock-cells = <0>;
+					interrupt-parent = <&pmc>;
+					interrupts = <AT91_PMC_LOCKU>;
+					clocks = <&main>;
+				};
+
+				mck: masterck {
+					compatible = "atmel,at91rm9200-clk-master";
+					#clock-cells = <0>;
+					interrupts-extended = <&pmc AT91_PMC_MCKRDY>;
+					clocks = <&clk32k>, <&main>, <&plla>, <&utmi>;
+					atmel,clk-output-range = <0 94000000>;
+					atmel,clk-divisors = <1 2 4 0>;
+				};
+
+				prog: progck {
+					compatible = "atmel,at91rm9200-clk-programmable";
+					#address-cells = <1>;
+					#size-cells = <0>;
+					interrupt-parent = <&pmc>;
+					clocks = <&clk32k>, <&main>, <&plla>, <&utmi>, <&mck>;
+
+					prog0: prog0 {
+						#clock-cells = <0>;
+						reg = <0>;
+						interrupts = <AT91_PMC_PCKRDY(0)>;
+					};
+
+					prog1: prog1 {
+						#clock-cells = <0>;
+						reg = <1>;
+						interrupts = <AT91_PMC_PCKRDY(1)>;
+					};
+				};
+
+				systemck {
+					compatible = "atmel,at91rm9200-clk-system";
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					pck0: pck0 {
+						#clock-cells = <0>;
+						reg = <8>;
+						clocks = <&prog0>;
+					};
+
+					pck1: pck1 {
+						#clock-cells = <0>;
+						reg = <9>;
+						clocks = <&prog1>;
+					};
+
+				};
+
+				periphck {
+					compatible = "atmel,at91rm9200-clk-peripheral";
+					#address-cells = <1>;
+					#size-cells = <0>;
+					clocks = <&mck>;
+
+					pioA_clk: pioA_clk {
+						#clock-cells = <0>;
+						reg = <2>;
+					};
+
+					pioB_clk: pioB_clk {
+						#clock-cells = <0>;
+						reg = <3>;
+					};
+
+					pioC_clk: pioC_clk {
+						#clock-cells = <0>;
+						reg = <4>;
+					};
+
+					pioD_clk: pioD_clk {
+						#clock-cells = <0>;
+						reg = <5>;
+					};
+
+					usart0_clk: usart0_clk {
+						#clock-cells = <0>;
+						reg = <6>;
+					};
+
+					usart1_clk: usart1_clk {
+						#clock-cells = <0>;
+						reg = <7>;
+					};
+
+					usart2_clk: usart2_clk {
+						#clock-cells = <0>;
+						reg = <8>;
+					};
+
+					usart3_clk: usart3_clk {
+						#clock-cells = <0>;
+						reg = <9>;
+					};
+
+					mci0_clk: mci0_clk {
+						#clock-cells = <0>;
+						reg = <10>;
+					};
+
+					twi0_clk: twi0_clk {
+						#clock-cells = <0>;
+						reg = <11>;
+					};
+
+					twi1_clk: twi1_clk {
+						#clock-cells = <0>;
+						reg = <12>;
+					};
+
+					spi0_clk: spi0_clk {
+						#clock-cells = <0>;
+						reg = <13>;
+					};
+
+					ssc0_clk: ssc0_clk {
+						#clock-cells = <0>;
+						reg = <14>;
+					};
+
+					ssc1_clk: ssc1_clk {
+						#clock-cells = <0>;
+						reg = <15>;
+					};
+
+					tc0_clk: tc0_clk {
+						#clock-cells = <0>;
+						reg = <16>;
+					};
+
+					tc1_clk: tc1_clk {
+						#clock-cells = <0>;
+						reg = <17>;
+					};
+
+					tc2_clk: tc2_clk {
+						#clock-cells = <0>;
+						reg = <18>;
+					};
+
+					pwm_clk: pwm_clk {
+						#clock-cells = <0>;
+						reg = <19>;
+					};
+
+					adc_clk: adc_clk {
+						#clock-cells = <0>;
+						reg = <20>;
+					};
+
+					dma0_clk: dma0_clk {
+						#clock-cells = <0>;
+						reg = <21>;
+					};
+
+					udphs_clk: udphs_clk {
+						#clock-cells = <0>;
+						reg = <22>;
+					};
+
+					lcd_clk: lcd_clk {
+						#clock-cells = <0>;
+						reg = <23>;
+					};
+				};
 			};
 
 			rstc@fffffd00 {
@@ -856,7 +1049,7 @@
 				compatible = "atmel,at91sam9260-pit";
 				reg = <0xfffffd30 0xf>;
 				interrupts = <1 IRQ_TYPE_LEVEL_HIGH 7>;
-				clocks = <&pmc PMC_TYPE_CORE PMC_MCK>;
+				clocks = <&mck>;
 			};
 
 			watchdog@fffffd40 {
diff --git a/dts/src/arm/at91sam9x25.dtsi b/dts/src/arm/at91sam9x25.dtsi
index a99703a26..3c5fa3388 100644
--- a/dts/src/arm/at91sam9x25.dtsi
+++ b/dts/src/arm/at91sam9x25.dtsi
@@ -27,10 +27,6 @@
 				       0x003fffff 0x003f8000 0x00000000  /* pioD */
 				      >;
 			};
-
-			pmc: pmc@fffffc00 {
-				compatible = "atmel,at91sam9x25-pmc", "atmel,at91sam9x5-pmc", "syscon";
-			};
 		};
 	};
 };
diff --git a/dts/src/arm/at91sam9x35.dtsi b/dts/src/arm/at91sam9x35.dtsi
index bca274d33..d9054e816 100644
--- a/dts/src/arm/at91sam9x35.dtsi
+++ b/dts/src/arm/at91sam9x35.dtsi
@@ -26,10 +26,6 @@
 				       0x003fffff 0x003f8000 0x00000000  /* pioD */
 				      >;
 			};
-
-			pmc: pmc@fffffc00 {
-				compatible = "atmel,at91sam9x35-pmc", "atmel,at91sam9x5-pmc", "syscon";
-			};
 		};
 	};
 };
diff --git a/dts/src/arm/at91sam9x5.dtsi b/dts/src/arm/at91sam9x5.dtsi
index 07443a387..11c0ef102 100644
--- a/dts/src/arm/at91sam9x5.dtsi
+++ b/dts/src/arm/at91sam9x5.dtsi
@@ -111,7 +111,7 @@
 			ramc0: ramc@ffffe800 {
 				compatible = "atmel,at91sam9g45-ddramc";
 				reg = <0xffffe800 0x200>;
-				clocks = <&pmc PMC_TYPE_SYSTEM 2>;
+				clocks = <&ddrck>;
 				clock-names = "ddrck";
 			};
 
@@ -124,9 +124,269 @@
 				compatible = "atmel,at91sam9x5-pmc", "syscon";
 				reg = <0xfffffc00 0x200>;
 				interrupts = <1 IRQ_TYPE_LEVEL_HIGH 7>;
-				#clock-cells = <2>;
-				clocks = <&clk32k>, <&main_xtal>;
-				clock-names = "slow_clk", "main_xtal";
+				interrupt-controller;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				#interrupt-cells = <1>;
+
+				main_rc_osc: main_rc_osc {
+					compatible = "atmel,at91sam9x5-clk-main-rc-osc";
+					#clock-cells = <0>;
+					interrupts-extended = <&pmc AT91_PMC_MOSCRCS>;
+					clock-frequency = <12000000>;
+					clock-accuracy = <50000000>;
+				};
+
+				main_osc: main_osc {
+					compatible = "atmel,at91rm9200-clk-main-osc";
+					#clock-cells = <0>;
+					interrupts-extended = <&pmc AT91_PMC_MOSCS>;
+					clocks = <&main_xtal>;
+				};
+
+				main: mainck {
+					compatible = "atmel,at91sam9x5-clk-main";
+					#clock-cells = <0>;
+					interrupts-extended = <&pmc AT91_PMC_MOSCSELS>;
+					clocks = <&main_rc_osc>, <&main_osc>;
+				};
+
+				plla: pllack {
+					compatible = "atmel,at91rm9200-clk-pll";
+					#clock-cells = <0>;
+					interrupts-extended = <&pmc AT91_PMC_LOCKA>;
+					clocks = <&main>;
+					reg = <0>;
+					atmel,clk-input-range = <2000000 32000000>;
+					#atmel,pll-clk-output-range-cells = <4>;
+					atmel,pll-clk-output-ranges = <745000000 800000000 0 0
+								       695000000 750000000 1 0
+								       645000000 700000000 2 0
+								       595000000 650000000 3 0
+								       545000000 600000000 0 1
+								       495000000 555000000 1 1
+								       445000000 500000000 2 1
+								       400000000 450000000 3 1>;
+				};
+
+				plladiv: plladivck {
+					compatible = "atmel,at91sam9x5-clk-plldiv";
+					#clock-cells = <0>;
+					clocks = <&plla>;
+				};
+
+				utmi: utmick {
+					compatible = "atmel,at91sam9x5-clk-utmi";
+					#clock-cells = <0>;
+					interrupts-extended = <&pmc AT91_PMC_LOCKU>;
+					clocks = <&main>;
+				};
+
+				mck: masterck {
+					compatible = "atmel,at91sam9x5-clk-master";
+					#clock-cells = <0>;
+					interrupts-extended = <&pmc AT91_PMC_MCKRDY>;
+					clocks = <&clk32k>, <&main>, <&plladiv>, <&utmi>;
+					atmel,clk-output-range = <0 133333333>;
+					atmel,clk-divisors = <1 2 4 3>;
+					atmel,master-clk-have-div3-pres;
+				};
+
+				usb: usbck {
+					compatible = "atmel,at91sam9x5-clk-usb";
+					#clock-cells = <0>;
+					clocks = <&plladiv>, <&utmi>;
+				};
+
+				prog: progck {
+					compatible = "atmel,at91sam9x5-clk-programmable";
+					#address-cells = <1>;
+					#size-cells = <0>;
+					interrupt-parent = <&pmc>;
+					clocks = <&clk32k>, <&main>, <&plladiv>, <&utmi>, <&mck>;
+
+					prog0: prog0 {
+						#clock-cells = <0>;
+						reg = <0>;
+						interrupts = <AT91_PMC_PCKRDY(0)>;
+					};
+
+					prog1: prog1 {
+						#clock-cells = <0>;
+						reg = <1>;
+						interrupts = <AT91_PMC_PCKRDY(1)>;
+					};
+				};
+
+				smd: smdclk {
+					compatible = "atmel,at91sam9x5-clk-smd";
+					#clock-cells = <0>;
+					clocks = <&plladiv>, <&utmi>;
+				};
+
+				systemck {
+					compatible = "atmel,at91rm9200-clk-system";
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					ddrck: ddrck {
+						#clock-cells = <0>;
+						reg = <2>;
+						clocks = <&mck>;
+					};
+
+					smdck: smdck {
+						#clock-cells = <0>;
+						reg = <4>;
+						clocks = <&smd>;
+					};
+
+					uhpck: uhpck {
+						#clock-cells = <0>;
+						reg = <6>;
+						clocks = <&usb>;
+					};
+
+					udpck: udpck {
+						#clock-cells = <0>;
+						reg = <7>;
+						clocks = <&usb>;
+					};
+
+					pck0: pck0 {
+						#clock-cells = <0>;
+						reg = <8>;
+						clocks = <&prog0>;
+					};
+
+					pck1: pck1 {
+						#clock-cells = <0>;
+						reg = <9>;
+						clocks = <&prog1>;
+					};
+				};
+
+				periphck {
+					compatible = "atmel,at91sam9x5-clk-peripheral";
+					#address-cells = <1>;
+					#size-cells = <0>;
+					clocks = <&mck>;
+
+					pioAB_clk: pioAB_clk {
+						#clock-cells = <0>;
+						reg = <2>;
+					};
+
+					pioCD_clk: pioCD_clk {
+						#clock-cells = <0>;
+						reg = <3>;
+					};
+
+					smd_clk: smd_clk {
+						#clock-cells = <0>;
+						reg = <4>;
+					};
+
+					usart0_clk: usart0_clk {
+						#clock-cells = <0>;
+						reg = <5>;
+					};
+
+					usart1_clk: usart1_clk {
+						#clock-cells = <0>;
+						reg = <6>;
+					};
+
+					usart2_clk: usart2_clk {
+						#clock-cells = <0>;
+						reg = <7>;
+					};
+
+					twi0_clk: twi0_clk {
+						reg = <9>;
+						#clock-cells = <0>;
+					};
+
+					twi1_clk: twi1_clk {
+						#clock-cells = <0>;
+						reg = <10>;
+					};
+
+					twi2_clk: twi2_clk {
+						#clock-cells = <0>;
+						reg = <11>;
+					};
+
+					mci0_clk: mci0_clk {
+						#clock-cells = <0>;
+						reg = <12>;
+					};
+
+					spi0_clk: spi0_clk {
+						#clock-cells = <0>;
+						reg = <13>;
+					};
+
+					spi1_clk: spi1_clk {
+						#clock-cells = <0>;
+						reg = <14>;
+					};
+
+					uart0_clk: uart0_clk {
+						#clock-cells = <0>;
+						reg = <15>;
+					};
+
+					uart1_clk: uart1_clk {
+						#clock-cells = <0>;
+						reg = <16>;
+					};
+
+					tcb0_clk: tcb0_clk {
+						#clock-cells = <0>;
+						reg = <17>;
+					};
+
+					pwm_clk: pwm_clk {
+						#clock-cells = <0>;
+						reg = <18>;
+					};
+
+					adc_clk: adc_clk {
+						#clock-cells = <0>;
+						reg = <19>;
+					};
+
+					dma0_clk: dma0_clk {
+						#clock-cells = <0>;
+						reg = <20>;
+					};
+
+					dma1_clk: dma1_clk {
+						#clock-cells = <0>;
+						reg = <21>;
+					};
+
+					uhphs_clk: uhphs_clk {
+						#clock-cells = <0>;
+						reg = <22>;
+					};
+
+					udphs_clk: udphs_clk {
+						#clock-cells = <0>;
+						reg = <23>;
+					};
+
+					mci1_clk: mci1_clk {
+						#clock-cells = <0>;
+						reg = <26>;
+					};
+
+					ssc0_clk: ssc0_clk {
+						#clock-cells = <0>;
+						reg = <28>;
+					};
+				};
 			};
 
 			reset_controller: rstc@fffffe00 {
@@ -145,7 +405,7 @@
 				compatible = "atmel,at91sam9260-pit";
 				reg = <0xfffffe30 0xf>;
 				interrupts = <1 IRQ_TYPE_LEVEL_HIGH 7>;
-				clocks = <&pmc PMC_TYPE_CORE PMC_MCK>;
+				clocks = <&mck>;
 			};
 
 			sckc@fffffe50 {
@@ -178,7 +438,7 @@
 				#size-cells = <0>;
 				reg = <0xf8008000 0x100>;
 				interrupts = <17 IRQ_TYPE_LEVEL_HIGH 0>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 17>, <&clk32k>;
+				clocks = <&tcb0_clk>, <&clk32k>;
 				clock-names = "t0_clk", "slow_clk";
 			};
 
@@ -188,7 +448,7 @@
 				#size-cells = <0>;
 				reg = <0xf800c000 0x100>;
 				interrupts = <17 IRQ_TYPE_LEVEL_HIGH 0>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 17>, <&clk32k>;
+				clocks = <&tcb0_clk>, <&clk32k>;
 				clock-names = "t0_clk", "slow_clk";
 			};
 
@@ -197,7 +457,7 @@
 				reg = <0xffffec00 0x200>;
 				interrupts = <20 IRQ_TYPE_LEVEL_HIGH 0>;
 				#dma-cells = <2>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 20>;
+				clocks = <&dma0_clk>;
 				clock-names = "dma_clk";
 			};
 
@@ -206,7 +466,7 @@
 				reg = <0xffffee00 0x200>;
 				interrupts = <21 IRQ_TYPE_LEVEL_HIGH 0>;
 				#dma-cells = <2>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 21>;
+				clocks = <&dma1_clk>;
 				clock-names = "dma_clk";
 			};
 
@@ -604,7 +864,7 @@
 					gpio-controller;
 					interrupt-controller;
 					#interrupt-cells = <2>;
-					clocks = <&pmc PMC_TYPE_PERIPHERAL 2>;
+					clocks = <&pioAB_clk>;
 				};
 
 				pioB: gpio@fffff600 {
@@ -616,7 +876,7 @@
 					#gpio-lines = <19>;
 					interrupt-controller;
 					#interrupt-cells = <2>;
-					clocks = <&pmc PMC_TYPE_PERIPHERAL 2>;
+					clocks = <&pioAB_clk>;
 				};
 
 				pioC: gpio@fffff800 {
@@ -627,7 +887,7 @@
 					gpio-controller;
 					interrupt-controller;
 					#interrupt-cells = <2>;
-					clocks = <&pmc PMC_TYPE_PERIPHERAL 3>;
+					clocks = <&pioCD_clk>;
 				};
 
 				pioD: gpio@fffffa00 {
@@ -639,7 +899,7 @@
 					#gpio-lines = <22>;
 					interrupt-controller;
 					#interrupt-cells = <2>;
-					clocks = <&pmc PMC_TYPE_PERIPHERAL 3>;
+					clocks = <&pioCD_clk>;
 				};
 			};
 
@@ -652,7 +912,7 @@
 				dma-names = "tx", "rx";
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_ssc0_tx &pinctrl_ssc0_rx>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 28>;
+				clocks = <&ssc0_clk>;
 				clock-names = "pclk";
 				status = "disabled";
 			};
@@ -664,7 +924,7 @@
 				dmas = <&dma0 1 AT91_DMA_CFG_PER_ID(0)>;
 				dma-names = "rxtx";
 				pinctrl-names = "default";
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 12>;
+				clocks = <&mci0_clk>;
 				clock-names = "mci_clk";
 				#address-cells = <1>;
 				#size-cells = <0>;
@@ -678,7 +938,7 @@
 				dmas = <&dma1 1 AT91_DMA_CFG_PER_ID(0)>;
 				dma-names = "rxtx";
 				pinctrl-names = "default";
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 26>;
+				clocks = <&mci1_clk>;
 				clock-names = "mci_clk";
 				#address-cells = <1>;
 				#size-cells = <0>;
@@ -694,7 +954,7 @@
 				dmas = <&dma1 1 AT91_DMA_CFG_PER_ID(8)>,
 				       <&dma1 1 (AT91_DMA_CFG_PER_ID(9) | AT91_DMA_CFG_FIFOCFG_ASAP)>;
 				dma-names = "tx", "rx";
-				clocks = <&pmc PMC_TYPE_CORE PMC_MCK>;
+				clocks = <&mck>;
 				clock-names = "usart";
 				status = "disabled";
 			};
@@ -708,7 +968,7 @@
 				dmas = <&dma0 1 AT91_DMA_CFG_PER_ID(3)>,
 				       <&dma0 1 (AT91_DMA_CFG_PER_ID(4) | AT91_DMA_CFG_FIFOCFG_ASAP)>;
 				dma-names = "tx", "rx";
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 5>;
+				clocks = <&usart0_clk>;
 				clock-names = "usart";
 				status = "disabled";
 			};
@@ -722,7 +982,7 @@
 				dmas = <&dma0 1 AT91_DMA_CFG_PER_ID(5)>,
 				       <&dma0 1 (AT91_DMA_CFG_PER_ID(6) | AT91_DMA_CFG_FIFOCFG_ASAP)>;
 				dma-names = "tx", "rx";
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 6>;
+				clocks = <&usart1_clk>;
 				clock-names = "usart";
 				status = "disabled";
 			};
@@ -736,7 +996,7 @@
 				dmas = <&dma1 1 AT91_DMA_CFG_PER_ID(12)>,
 				       <&dma1 1 (AT91_DMA_CFG_PER_ID(13) | AT91_DMA_CFG_FIFOCFG_ASAP)>;
 				dma-names = "tx", "rx";
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 7>;
+				clocks = <&usart2_clk>;
 				clock-names = "usart";
 				status = "disabled";
 			};
@@ -752,7 +1012,7 @@
 				#size-cells = <0>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_i2c0>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 9>;
+				clocks = <&twi0_clk>;
 				status = "disabled";
 			};
 
@@ -767,7 +1027,7 @@
 				#size-cells = <0>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_i2c1>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 10>;
+				clocks = <&twi1_clk>;
 				status = "disabled";
 			};
 
@@ -782,7 +1042,7 @@
 				#size-cells = <0>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_i2c2>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 11>;
+				clocks = <&twi2_clk>;
 				status = "disabled";
 			};
 
@@ -792,7 +1052,7 @@
 				interrupts = <15 IRQ_TYPE_LEVEL_HIGH 5>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_uart0>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 15>;
+				clocks = <&uart0_clk>;
 				clock-names = "usart";
 				status = "disabled";
 			};
@@ -803,7 +1063,7 @@
 				interrupts = <16 IRQ_TYPE_LEVEL_HIGH 5>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_uart1>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 16>;
+				clocks = <&uart1_clk>;
 				clock-names = "usart";
 				status = "disabled";
 			};
@@ -814,7 +1074,7 @@
 				compatible = "atmel,at91sam9x5-adc";
 				reg = <0xf804c000 0x100>;
 				interrupts = <19 IRQ_TYPE_LEVEL_HIGH 0>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 19>,
+				clocks = <&adc_clk>,
 					 <&adc_op_clk>;
 				clock-names = "adc_clk", "adc_op_clk";
 				atmel,adc-use-external-triggers;
@@ -861,7 +1121,7 @@
 				dma-names = "tx", "rx";
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_spi0>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 13>;
+				clocks = <&spi0_clk>;
 				clock-names = "spi_clk";
 				status = "disabled";
 			};
@@ -877,7 +1137,7 @@
 				dma-names = "tx", "rx";
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_spi1>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 14>;
+				clocks = <&spi1_clk>;
 				clock-names = "spi_clk";
 				status = "disabled";
 			};
@@ -889,7 +1149,7 @@
 				reg = <0x00500000 0x80000
 				       0xf803c000 0x400>;
 				interrupts = <23 IRQ_TYPE_LEVEL_HIGH 0>;
-				clocks = <&pmc PMC_TYPE_CORE PMC_UTMI>, <&pmc PMC_TYPE_PERIPHERAL 23>;
+				clocks = <&utmi>, <&udphs_clk>;
 				clock-names = "hclk", "pclk";
 				status = "disabled";
 
@@ -969,7 +1229,7 @@
 				compatible = "atmel,at91sam9rl-pwm";
 				reg = <0xf8034000 0x300>;
 				interrupts = <18 IRQ_TYPE_LEVEL_HIGH 4>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 18>;
+				clocks = <&pwm_clk>;
 				#pwm-cells = <3>;
 				status = "disabled";
 			};
@@ -979,7 +1239,7 @@
 			compatible = "atmel,at91rm9200-ohci", "usb-ohci";
 			reg = <0x00600000 0x100000>;
 			interrupts = <22 IRQ_TYPE_LEVEL_HIGH 2>;
-			clocks = <&pmc PMC_TYPE_PERIPHERAL 22>, <&pmc PMC_TYPE_PERIPHERAL 22>, <&pmc PMC_TYPE_SYSTEM 6>;
+			clocks = <&uhphs_clk>, <&uhphs_clk>, <&uhpck>;
 			clock-names = "ohci_clk", "hclk", "uhpck";
 			status = "disabled";
 		};
@@ -988,7 +1248,7 @@
 			compatible = "atmel,at91sam9g45-ehci", "usb-ehci";
 			reg = <0x00700000 0x100000>;
 			interrupts = <22 IRQ_TYPE_LEVEL_HIGH 2>;
-			clocks = <&pmc PMC_TYPE_CORE PMC_UTMI>, <&pmc PMC_TYPE_PERIPHERAL 22>;
+			clocks = <&utmi>, <&uhphs_clk>;
 			clock-names = "usb_clk", "ehci_clk";
 			status = "disabled";
 		};
@@ -1006,7 +1266,7 @@
 				  0x3 0x0 0x40000000 0x10000000
 				  0x4 0x0 0x50000000 0x10000000
 				  0x5 0x0 0x60000000 0x10000000>;
-			clocks = <&pmc PMC_TYPE_CORE PMC_MCK>;
+			clocks = <&mck>;
 			status = "disabled";
 
 			nand_controller: nand-controller {
diff --git a/dts/src/arm/at91sam9x5_can.dtsi b/dts/src/arm/at91sam9x5_can.dtsi
index 125f9e3b4..8eb2f9c1b 100644
--- a/dts/src/arm/at91sam9x5_can.dtsi
+++ b/dts/src/arm/at91sam9x5_can.dtsi
@@ -13,13 +13,27 @@
 / {
 	ahb {
 		apb {
+			pmc: pmc@fffffc00 {
+				periphck {
+					can0_clk: can0_clk {
+						#clock-cells = <0>;
+						reg = <29>;
+					};
+
+					can1_clk: can1_clk {
+						#clock-cells = <0>;
+						reg = <30>;
+					};
+				};
+			};
+
 			can0: can@f8000000 {
 				compatible = "atmel,at91sam9x5-can";
 				reg = <0xf8000000 0x300>;
 				interrupts = <29 IRQ_TYPE_LEVEL_HIGH 3>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_can0_rx_tx>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 29>;
+				clocks = <&can0_clk>;
 				clock-names = "can_clk";
 				status = "disabled";
 			};
@@ -30,7 +44,7 @@
 				interrupts = <30 IRQ_TYPE_LEVEL_HIGH 3>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_can1_rx_tx>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 30>;
+				clocks = <&can1_clk>;
 				clock-names = "can_clk";
 				status = "disabled";
 			};
diff --git a/dts/src/arm/at91sam9x5_isi.dtsi b/dts/src/arm/at91sam9x5_isi.dtsi
index c3e45b57b..8fc45ca4d 100644
--- a/dts/src/arm/at91sam9x5_isi.dtsi
+++ b/dts/src/arm/at91sam9x5_isi.dtsi
@@ -44,13 +44,22 @@
 				};
 			};
 
+			pmc: pmc@fffffc00 {
+				periphck {
+					isi_clk: isi_clk {
+						#clock-cells = <0>;
+						reg = <25>;
+					};
+				};
+			};
+
 			isi: isi@f8048000 {
 				compatible = "atmel,at91sam9g45-isi";
 				reg = <0xf8048000 0x4000>;
 				interrupts = <25 IRQ_TYPE_LEVEL_HIGH 5>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_isi_data_0_7>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 25>;
+				clocks = <&isi_clk>;
 				clock-names = "isi_clk";
 				status = "disabled";
 				port {
diff --git a/dts/src/arm/at91sam9x5_lcd.dtsi b/dts/src/arm/at91sam9x5_lcd.dtsi
index 12595fb11..1629db9dd 100644
--- a/dts/src/arm/at91sam9x5_lcd.dtsi
+++ b/dts/src/arm/at91sam9x5_lcd.dtsi
@@ -17,7 +17,7 @@
 				compatible = "atmel,at91sam9x5-hlcdc";
 				reg = <0xf8038000 0x4000>;
 				interrupts = <25 IRQ_TYPE_LEVEL_HIGH 0>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 25>, <&pmc PMC_TYPE_SYSTEM 3>, <&clk32k>;
+				clocks = <&lcdc_clk>, <&lcdck>, <&clk32k>;
 				clock-names = "periph_clk","sys_clk", "slow_clk";
 				status = "disabled";
 
@@ -143,6 +143,23 @@
 					};
 				};
 			};
+
+			pmc: pmc@fffffc00 {
+				periphck {
+					lcdc_clk: lcdc_clk {
+						#clock-cells = <0>;
+						reg = <25>;
+					};
+				};
+
+				systemck {
+					lcdck: lcdck {
+						#clock-cells = <0>;
+						reg = <3>;
+						clocks = <&mck>;
+					};
+				};
+			};
 		};
 	};
 };
diff --git a/dts/src/arm/at91sam9x5_macb0.dtsi b/dts/src/arm/at91sam9x5_macb0.dtsi
index 57c2e5a4f..73d7e3096 100644
--- a/dts/src/arm/at91sam9x5_macb0.dtsi
+++ b/dts/src/arm/at91sam9x5_macb0.dtsi
@@ -43,13 +43,22 @@
 				};
 			};
 
+			pmc: pmc@fffffc00 {
+				periphck {
+					macb0_clk: macb0_clk {
+						#clock-cells = <0>;
+						reg = <24>;
+					};
+				};
+			};
+
 			macb0: ethernet@f802c000 {
 				compatible = "cdns,at91sam9260-macb", "cdns,macb";
 				reg = <0xf802c000 0x100>;
 				interrupts = <24 IRQ_TYPE_LEVEL_HIGH 3>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_macb0_rmii>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 24>, <&pmc PMC_TYPE_PERIPHERAL 24>;
+				clocks = <&macb0_clk>, <&macb0_clk>;
 				clock-names = "hclk", "pclk";
 				status = "disabled";
 			};
diff --git a/dts/src/arm/at91sam9x5_macb1.dtsi b/dts/src/arm/at91sam9x5_macb1.dtsi
index 59b8da87d..d81980c40 100644
--- a/dts/src/arm/at91sam9x5_macb1.dtsi
+++ b/dts/src/arm/at91sam9x5_macb1.dtsi
@@ -31,13 +31,22 @@
 				};
 			};
 
+			pmc: pmc@fffffc00 {
+				periphck {
+					macb1_clk: macb1_clk {
+						#clock-cells = <0>;
+						reg = <27>;
+					};
+				};
+			};
+
 			macb1: ethernet@f8030000 {
 				compatible = "cdns,at91sam9260-macb", "cdns,macb";
 				reg = <0xf8030000 0x100>;
 				interrupts = <27 IRQ_TYPE_LEVEL_HIGH 3>;
 				pinctrl-names = "default";
 				pinctrl-0 = <&pinctrl_macb1_rmii>;
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 27>, <&pmc PMC_TYPE_PERIPHERAL 27>;
+				clocks = <&macb1_clk>, <&macb1_clk>;
 				clock-names = "hclk", "pclk";
 				status = "disabled";
 			};
diff --git a/dts/src/arm/at91sam9x5_usart3.dtsi b/dts/src/arm/at91sam9x5_usart3.dtsi
index 9102dfbed..a32d12b40 100644
--- a/dts/src/arm/at91sam9x5_usart3.dtsi
+++ b/dts/src/arm/at91sam9x5_usart3.dtsi
@@ -42,6 +42,15 @@
 				};
 			};
 
+			pmc: pmc@fffffc00 {
+				periphck {
+					usart3_clk: usart3_clk {
+						#clock-cells = <0>;
+						reg = <8>;
+					};
+				};
+			};
+
 			usart3: serial@f8028000 {
 				compatible = "atmel,at91sam9260-usart";
 				reg = <0xf8028000 0x200>;
@@ -51,7 +60,7 @@
 				dmas = <&dma1 1 AT91_DMA_CFG_PER_ID(14)>,
 				       <&dma1 1 (AT91_DMA_CFG_PER_ID(15) | AT91_DMA_CFG_FIFOCFG_ASAP)>;
 				dma-names = "tx", "rx";
-				clocks = <&pmc PMC_TYPE_PERIPHERAL 8>;
+				clocks = <&usart3_clk>;
 				clock-names = "usart";
 				status = "disabled";
 			};
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
