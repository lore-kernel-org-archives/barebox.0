Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-f172.google.com ([209.85.215.172])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBpTC-0002Tw-IX
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 17:44:08 +0000
Received: by mail-ea0-f172.google.com with SMTP id l9so1443704eaj.17
 for <barebox@lists.infradead.org>; Fri, 07 Feb 2014 09:43:07 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri,  7 Feb 2014 18:42:53 +0100
Message-Id: <1391794973-32469-2-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1391794973-32469-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1391640009-3399-7-git-send-email-sebastian.hesselbarth@gmail.com>
 <1391794973-32469-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 6/7] ARM: dove: sync with DT files from Linux
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Michael Grzeschik <mgr@pengutronix.de>

This re-syncs Marvell Dove and Solidrun CuBox DT files with current
files from Linux v3.14. Since barebox specific properties are now
kept separated, we don't need to tweak them anymore.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Changelog:
v1->v2:
- split-off Linux DT

Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Michael Grzeschik <mgr@pengutronix.de>
Cc: barebox@lists.infradead.org
---
 arch/arm/dts/dove-cubox.dts |  71 ++--
 arch/arm/dts/dove.dtsi      | 806 +++++++++++++++++++++++++++++++-------------
 2 files changed, 599 insertions(+), 278 deletions(-)

diff --git a/arch/arm/dts/dove-cubox.dts b/arch/arm/dts/dove-cubox.dts
index 61f38fe5a2cb..7a70f4ca502a 100644
--- a/arch/arm/dts/dove-cubox.dts
+++ b/arch/arm/dts/dove-cubox.dts
@@ -1,19 +1,18 @@
 /dts-v1/;
 
-/include/ "dove.dtsi"
+#include "dove.dtsi"
 
 / {
-	compatible = "solidrun,cubox", "marvell,dove";
 	model = "SolidRun CuBox";
+	compatible = "solidrun,cubox", "marvell,dove";
 
 	memory {
 		device_type = "memory";
-		reg = <0x00000000 0x3f000000>;
+		reg = <0x00000000 0x40000000>;
 	};
 
 	chosen {
 		bootargs = "console=ttyS0,115200n8 earlyprintk";
-		linux,stdout-path = &uart0;
 	};
 
 	leds {
@@ -24,7 +23,7 @@
 		power {
 			label = "Power";
 			gpios = <&gpio0 18 1>;
-			linux,default-trigger = "default-on";
+			default-state = "keep";
 		};
 	};
 
@@ -43,6 +42,8 @@
 			regulator-always-on;
 			regulator-boot-on;
 			gpio = <&gpio0 1 0>;
+			pinctrl-0 = <&pmx_gpio_1>;
+			pinctrl-names = "default";
 		};
 	};
 
@@ -55,24 +56,27 @@
 		};
 	};
 
-	video-card {
-		compatible = "marvell,dove-video-card";
-		reg = <0x3f000000 0x1000000>;
-		marvell,external-encoder = <&tda19988>;
+	ir_recv: ir-receiver {
+		compatible = "gpio-ir-receiver";
+		gpios = <&gpio0 19 1>;
+		pinctrl-0 = <&pmx_gpio_19>;
+		pinctrl-names = "default";
 	};
 };
 
 &uart0 { status = "okay"; };
 &sata0 { status = "okay"; };
+&mdio { status = "okay"; };
+&eth { status = "okay"; };
 
-&lcd0 {
-	status = "okay";
-	clocks = <&si5351 0>;
+&ethphy {
+	compatible = "marvell,88e1310";
+	reg = <1>;
 };
 
 &i2c0 {
 	status = "okay";
-	clock-frequency = <400000>;
+	clock-frequency = <100000>;
 
 	si5351: clock-generator {
 		compatible = "silabs,si5351a-msop";
@@ -95,32 +99,21 @@
 			silabs,pll-master;
 		};
 
-		clkout1 {
-			reg = <1>;
-			silabs,drive-strength = <8>;
-			silabs,multisynth-source = <1>;
-			silabs,clock-source = <0>;
-			silabs,pll-master;
-		};
-
 		clkout2 {
 			reg = <2>;
+			silabs,drive-strength = <8>;
 			silabs,multisynth-source = <1>;
 			silabs,clock-source = <0>;
+			silabs,pll-master;
 		};
 	};
-
-	tda19988: hdmi-encoder@70 {
-		compatible = "nxp,tda1998x";
-		reg = <0x70>;
-	};
 };
 
 &sdio0 {
 	status = "okay";
-	bus-width = <4>;
 	/* sdio0 card detect is connected to wrong pin on CuBox */
 	cd-gpios = <&gpio0 12 1>;
+	pinctrl-0 = <&pmx_sdio0 &pmx_gpio_12>;
 };
 
 &spi0 {
@@ -128,28 +121,16 @@
 
 	/* spi0.0: 4M Flash Winbond W25Q32BV */
 	spi-flash@0 {
-		compatible = "winbond,w25q32", "m25p80";
+		compatible = "st,w25q32";
 		spi-max-frequency = <20000000>;
 		reg = <0>;
 	};
 };
 
-&pinctrl {
-	pinctrl-0 = <&pmx_gpio_1 &pmx_gpio_12>;
+&audio1 {
+	status = "okay";
+	clocks = <&gate_clk 13>, <&si5351 2>;
+	clock-names = "internal", "extclk";
+	pinctrl-0 = <&pmx_audio1_i2s1_spdifo &pmx_audio1_extclk>;
 	pinctrl-names = "default";
-
-	pmx_gpio_1: pmx-gpio-1 {
-		marvell,pins = "mpp1";
-		marvell,function = "gpio";
-	};
-
-	pmx_gpio_12: pmx-gpio-12 {
-		marvell,pins = "mpp12";
-		marvell,function = "gpio";
-	};
-
-	pmx_gpio_18: pmx-gpio-18 {
-		marvell,pins = "mpp18";
-		marvell,function = "gpio";
-	};
 };
diff --git a/arch/arm/dts/dove.dtsi b/arch/arm/dts/dove.dtsi
index 32fbf28dd987..2b76524f4aa7 100644
--- a/arch/arm/dts/dove.dtsi
+++ b/arch/arm/dts/dove.dtsi
@@ -1,10 +1,11 @@
 /include/ "skeleton.dtsi"
 
+#define MBUS_ID(target,attributes) (((target) << 24) | ((attributes) << 16))
+
 / {
 	compatible = "marvell,dove";
 	model = "Marvell Armada 88AP510 SoC";
-	#address-cells = <1>;
-	#size-cells = <1>;
+	interrupt-parent = <&intc>;
 
 	aliases {
 		gpio0 = &gpio0;
@@ -12,275 +13,614 @@
 		gpio2 = &gpio2;
 	};
 
-	soc@f1000000 {
-		compatible = "simple-bus";
+	cpus {
 		#address-cells = <1>;
-		#size-cells = <1>;
-		interrupt-parent = <&intc>;
-
-		ranges = <0xc8000000 0xc8000000 0x0100000   /* CESA SRAM   1M */
-		          0xe0000000 0xe0000000 0x8000000   /* PCIe0 Mem 128M */
-		          0xe8000000 0xe8000000 0x8000000   /* PCIe1 Mem 128M */
-		          0xf0000000 0xf0000000 0x0100000   /* ScratchPad  1M */
-		          0x00000000 0xf1000000 0x1000000   /* SB/NB regs 16M */
-		          0xf2000000 0xf2000000 0x0100000   /* PCIe0 I/O   1M */
-		          0xf2100000 0xf2100000 0x0100000   /* PCIe0 I/O   1M */
-		          0xf8000000 0xf8000000 0x8000000>; /* BootROM   128M */
-
-		l2: l2-cache {
-			compatible = "marvell,tauros2-cache";
-			marvell,tauros2-cache-features = <0>;
-		};
+		#size-cells = <0>;
 
-		timer: timer@20300 {
-			compatible = "marvell,orion-timer";
-			reg = <0x20300 0x30>;
-			clocks = <&core_clk 0>;
+		cpu0: cpu@0 {
+			compatible = "marvell,pj4a", "marvell,sheeva-v7";
+			device_type = "cpu";
+			next-level-cache = <&l2>;
+			reg = <0>;
 		};
+	};
 
-		intc: interrupt-controller@20204 {
-			compatible = "marvell,orion-intc";
-			interrupt-controller;
-			#interrupt-cells = <1>;
-			reg = <0x20204 0x04>, <0x20214 0x04>;
-		};
+	l2: l2-cache {
+		compatible = "marvell,tauros2-cache";
+		marvell,tauros2-cache-features = <0>;
+	};
 
-		core_clk: core-clocks@d0214 {
-			compatible = "marvell,dove-core-clock";
-			reg = <0xd0214 0x4>;
-			#clock-cells = <1>;
-		};
+	mbus {
+		compatible = "marvell,dove-mbus", "marvell,mbus", "simple-bus";
+		#address-cells = <2>;
+		#size-cells = <1>;
+		controller = <&mbusc>;
+		pcie-mem-aperture = <0xe0000000 0x10000000>; /* 256M MEM space */
+		pcie-io-aperture  = <0xf2000000 0x00200000>; /*   2M I/O space */
+
+		ranges = <MBUS_ID(0xf0, 0x01) 0 0xf1000000 0x0100000   /* MBUS regs  1M */
+			  MBUS_ID(0xf0, 0x02) 0 0xf1800000 0x1000000   /* AXI  regs 16M */
+			  MBUS_ID(0x01, 0xfd) 0 0xf8000000 0x8000000   /* BootROM  128M */
+			  MBUS_ID(0x03, 0x01) 0 0xc8000000 0x0100000   /* CESA SRAM  1M */
+			  MBUS_ID(0x0d, 0x00) 0 0xf0000000 0x0100000>; /* PMU  SRAM  1M */
+
+		pcie: pcie-controller {
+			compatible = "marvell,dove-pcie";
+			status = "disabled";
+			device_type = "pci";
+			#address-cells = <3>;
+			#size-cells = <2>;
+
+			msi-parent = <&intc>;
+			bus-range = <0x00 0xff>;
+
+			ranges = <0x82000000 0x0 0x40000 MBUS_ID(0xf0, 0x01) 0x40000 0 0x2000
+			          0x82000000 0x0 0x80000 MBUS_ID(0xf0, 0x01) 0x80000 0 0x2000
+				  0x82000000 0x1 0x0 MBUS_ID(0x04, 0xe8) 0 1 0   /* Port 0.0 Mem */
+				  0x81000000 0x1 0x0 MBUS_ID(0x04, 0xe0) 0 1 0   /* Port 0.0 I/O */
+				  0x82000000 0x2 0x0 MBUS_ID(0x08, 0xe8) 0 1 0   /* Port 1.0 Mem */
+				  0x81000000 0x2 0x0 MBUS_ID(0x08, 0xe0) 0 1 0>; /* Port 1.0 I/O */
+
+			pcie-port@0 {
+				device_type = "pci";
+				status = "disabled";
+				assigned-addresses = <0x82000800 0 0x40000 0 0x2000>;
+				reg = <0x0800 0 0 0 0>;
+				clocks = <&gate_clk 4>;
+				marvell,pcie-port = <0>;
+
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges = <0x82000000 0 0 0x82000000 0x1 0 1 0
+				          0x81000000 0 0 0x81000000 0x1 0 1 0>;
+
+				#interrupt-cells = <1>;
+				interrupt-map-mask = <0 0 0 0>;
+				interrupt-map = <0 0 0 0 &intc 16>;
+			};
 
-		gate_clk: clock-gating-control@d0038 {
-			compatible = "marvell,dove-gating-clock";
-			reg = <0xd0038 0x4>;
-			clocks = <&core_clk 0>;
-			#clock-cells = <1>;
+			pcie-port@1 {
+				device_type = "pci";
+				status = "disabled";
+				assigned-addresses = <0x82002800 0 0x80000 0 0x2000>;
+				reg = <0x1000 0 0 0 0>;
+				clocks = <&gate_clk 5>;
+				marvell,pcie-port = <1>;
+
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges = <0x82000000 0 0 0x82000000 0x2 0 1 0
+				          0x81000000 0 0 0x81000000 0x2 0 1 0>;
+
+				#interrupt-cells = <1>;
+				interrupt-map-mask = <0 0 0 0>;
+				interrupt-map = <0 0 0 0 &intc 18>;
+			};
 		};
 
-		thermal: thermal@d001c {
-			compatible = "marvell,dove-thermal";
-			reg = <0xd001c 0x0c>, <0xd005c 0x08>;
-		};
+		internal-regs {
+			compatible = "simple-bus";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0x00000000 MBUS_ID(0xf0, 0x01) 0 0x0100000   /* MBUS regs  1M */
+				  0x00800000 MBUS_ID(0xf0, 0x02) 0 0x1000000   /* AXI  regs 16M */
+				  0xffffe000 MBUS_ID(0x03, 0x01) 0 0x0000800   /* CESA SRAM  2k */
+				  0xfffff000 MBUS_ID(0x0d, 0x00) 0 0x0000800>; /* PMU  SRAM  2k */
+
+			spi0: spi-ctrl@10600 {
+				compatible = "marvell,orion-spi";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				cell-index = <0>;
+				interrupts = <6>;
+				reg = <0x10600 0x28>;
+				clocks = <&core_clk 0>;
+				pinctrl-0 = <&pmx_spi0>;
+				pinctrl-names = "default";
+				status = "disabled";
+			};
 
-		uart0: serial@12000 {
-			compatible = "ns16550a";
-			reg = <0x12000 0x20>;
-			reg-shift = <2>;
-			interrupts = <7>;
-			clocks = <&core_clk 0>;
-			status = "disabled";
-		};
+			i2c0: i2c-ctrl@11000 {
+				compatible = "marvell,mv64xxx-i2c";
+				reg = <0x11000 0x20>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				interrupts = <11>;
+				clock-frequency = <400000>;
+				timeout-ms = <1000>;
+				clocks = <&core_clk 0>;
+				status = "disabled";
+			};
 
-		uart1: serial@12100 {
-			compatible = "ns16550a";
-			reg = <0x12100 0x20>;
-			reg-shift = <2>;
-			interrupts = <8>;
-			clocks = <&core_clk 0>;
-			status = "disabled";
-		};
+			uart0: serial@12000 {
+				compatible = "ns16550a";
+				reg = <0x12000 0x100>;
+				reg-shift = <2>;
+				interrupts = <7>;
+				clocks = <&core_clk 0>;
+				status = "disabled";
+			};
 
-		uart2: serial@12200 {
-			compatible = "ns16550a";
-			reg = <0x12000 0x20>;
-			reg-shift = <2>;
-			interrupts = <9>;
-			clocks = <&core_clk 0>;
-			status = "disabled";
-		};
+			uart1: serial@12100 {
+				compatible = "ns16550a";
+				reg = <0x12100 0x100>;
+				reg-shift = <2>;
+				interrupts = <8>;
+				clocks = <&core_clk 0>;
+				pinctrl-0 = <&pmx_uart1>;
+				pinctrl-names = "default";
+				status = "disabled";
+			};
 
-		uart3: serial@12300 {
-			compatible = "ns16550a";
-			reg = <0x12100 0x20>;
-			reg-shift = <2>;
-			interrupts = <10>;
-			clocks = <&core_clk 0>;
-			status = "disabled";
-		};
+			uart2: serial@12200 {
+				compatible = "ns16550a";
+				reg = <0x12000 0x100>;
+				reg-shift = <2>;
+				interrupts = <9>;
+				clocks = <&core_clk 0>;
+				status = "disabled";
+			};
 
-		gpio0: gpio@d0400 {
-			compatible = "marvell,orion-gpio";
-			#gpio-cells = <2>;
-			gpio-controller;
-			reg = <0xd0400 0x20>;
-			ngpios = <32>;
-			interrupt-controller;
-			#interrupt-cells = <2>;
-			interrupts = <12>, <13>, <14>, <60>;
-		};
+			uart3: serial@12300 {
+				compatible = "ns16550a";
+				reg = <0x12100 0x100>;
+				reg-shift = <2>;
+				interrupts = <10>;
+				clocks = <&core_clk 0>;
+				status = "disabled";
+			};
 
-		gpio1: gpio@d0420 {
-			compatible = "marvell,orion-gpio";
-			#gpio-cells = <2>;
-			gpio-controller;
-			reg = <0xd0420 0x20>;
-			ngpios = <32>;
-			interrupt-controller;
-			#interrupt-cells = <2>;
-			interrupts = <61>;
-		};
+			spi1: spi-ctrl@14600 {
+				compatible = "marvell,orion-spi";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				cell-index = <1>;
+				interrupts = <5>;
+				reg = <0x14600 0x28>;
+				clocks = <&core_clk 0>;
+				status = "disabled";
+			};
 
-		gpio2: gpio@e8400 {
-			compatible = "marvell,orion-gpio";
-			#gpio-cells = <2>;
-			gpio-controller;
-			reg = <0xe8400 0x0c>;
-			ngpios = <8>;
-		};
+			mbusc: mbus-ctrl@20000 {
+				compatible = "marvell,mbus-controller";
+				reg = <0x20000 0x80>, <0x800100 0x8>;
+			};
 
-		pinctrl: pinctrl@d0200 {
-			compatible = "marvell,dove-pinctrl";
-			reg = <0xd0200 0x10>;
-			clocks = <&gate_clk 22>;
-		};
+			bridge_intc: bridge-interrupt-ctrl@20110 {
+				compatible = "marvell,orion-bridge-intc";
+				interrupt-controller;
+				#interrupt-cells = <1>;
+				reg = <0x20110 0x8>;
+				interrupts = <0>;
+				marvell,#interrupts = <5>;
+			};
 
-		spi0: spi@10600 {
-			compatible = "marvell,orion-spi";
-			#address-cells = <1>;
-			#size-cells = <0>;
-			cell-index = <0>;
-			interrupts = <6>;
-			reg = <0x10600 0x28>;
-			clocks = <&core_clk 0>;
-			status = "disabled";
-		};
+			intc: main-interrupt-ctrl@20200 {
+				compatible = "marvell,orion-intc";
+				interrupt-controller;
+				#interrupt-cells = <1>;
+				reg = <0x20200 0x10>, <0x20210 0x10>;
+			};
 
-		spi1: spi@14600 {
-			compatible = "marvell,dove-spi";
-			#address-cells = <1>;
-			#size-cells = <0>;
-			cell-index = <1>;
-			interrupts = <5>;
-			reg = <0x14600 0x28>;
-			clocks = <&core_clk 0>;
-			status = "disabled";
-		};
+			timer: timer@20300 {
+				compatible = "marvell,orion-timer";
+				reg = <0x20300 0x20>;
+				interrupt-parent = <&bridge_intc>;
+				interrupts = <1>, <2>;
+				clocks = <&core_clk 0>;
+			};
 
-		i2c0: i2c@11000 {
-			compatible = "marvell,mv64xxx-i2c";
-			reg = <0x11000 0x20>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-			interrupts = <11>;
-			clock-frequency = <400000>;
-			timeout-ms = <1000>;
-			clocks = <&core_clk 0>;
-			status = "disabled";
-		};
+			crypto: crypto-engine@30000 {
+				compatible = "marvell,orion-crypto";
+				reg = <0x30000 0x10000>,
+				      <0xffffe000 0x800>;
+				reg-names = "regs", "sram";
+				interrupts = <31>;
+				clocks = <&gate_clk 15>;
+				status = "okay";
+			};
 
-		ehci0: usb-host@50000 {
-			compatible = "marvell,orion-ehci";
-			reg = <0x50000 0x1000>;
-			interrupts = <24>;
-			clocks = <&gate_clk 0>;
-			status = "okay";
-		};
+			ehci0: usb-host@50000 {
+				compatible = "marvell,orion-ehci";
+				reg = <0x50000 0x1000>;
+				interrupts = <24>;
+				clocks = <&gate_clk 0>;
+				status = "okay";
+			};
 
-		ehci1: usb-host@51000 {
-			compatible = "marvell,orion-ehci";
-			reg = <0x51000 0x1000>;
-			interrupts = <25>;
-			clocks = <&gate_clk 1>;
-			status = "okay";
-		};
+			ehci1: usb-host@51000 {
+				compatible = "marvell,orion-ehci";
+				reg = <0x51000 0x1000>;
+				interrupts = <25>;
+				clocks = <&gate_clk 1>;
+				status = "okay";
+			};
 
-		sdio0: sdio@92000 {
-			compatible = "marvell,dove-sdhci";
-			reg = <0x92000 0x100>;
-			interrupts = <35>, <37>;
-			clocks = <&gate_clk 8>;
-			status = "disabled";
-		};
+			xor0: dma-engine@60800 {
+				compatible = "marvell,orion-xor";
+				reg = <0x60800 0x100
+				       0x60a00 0x100>;
+				clocks = <&gate_clk 23>;
+				status = "okay";
+
+				channel0 {
+					interrupts = <39>;
+					dmacap,memcpy;
+					dmacap,xor;
+				};
+
+				channel1 {
+					interrupts = <40>;
+					dmacap,memcpy;
+					dmacap,xor;
+				};
+			};
 
-		sdio1: sdio@90000 {
-			compatible = "marvell,dove-sdhci";
-			reg = <0x90000 0x100>;
-			interrupts = <36>, <38>;
-			clocks = <&gate_clk 9>;
-			status = "disabled";
-		};
+			xor1: dma-engine@60900 {
+				compatible = "marvell,orion-xor";
+				reg = <0x60900 0x100
+				       0x60b00 0x100>;
+				clocks = <&gate_clk 24>;
+				status = "okay";
+
+				channel0 {
+					interrupts = <42>;
+					dmacap,memcpy;
+					dmacap,xor;
+				};
+
+				channel1 {
+					interrupts = <43>;
+					dmacap,memcpy;
+					dmacap,xor;
+				};
+			};
 
-		sata0: sata@a0000 {
-			compatible = "marvell,orion-sata";
-			reg = <0xa0000 0x2400>;
-			interrupts = <62>;
-			clocks = <&gate_clk 3>;
-			nr-ports = <1>;
-			status = "disabled";
-		};
+			sdio1: sdio-host@90000 {
+				compatible = "marvell,dove-sdhci";
+				reg = <0x90000 0x100>;
+				interrupts = <36>, <38>;
+				clocks = <&gate_clk 9>;
+				pinctrl-0 = <&pmx_sdio1>;
+				pinctrl-names = "default";
+				status = "disabled";
+			};
 
-		rtc@d8500 {
-			compatible = "marvell,orion-rtc";
-			reg = <0xd8500 0x20>;
-		};
+			eth: ethernet-ctrl@72000 {
+				compatible = "marvell,orion-eth";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <0x72000 0x4000>;
+				clocks = <&gate_clk 2>;
+				marvell,tx-checksum-limit = <1600>;
+				status = "disabled";
+
+				ethernet-port@0 {
+					compatible = "marvell,orion-eth-port";
+					reg = <0>;
+					interrupts = <29>;
+					/* overwrite MAC address in bootloader */
+					local-mac-address = [00 00 00 00 00 00];
+					phy-handle = <&ethphy>;
+				};
+			};
 
-		crypto: crypto@30000 {
-			compatible = "marvell,orion-crypto";
-			reg = <0x30000 0x10000>,
-			      <0xc8000000 0x800>;
-			reg-names = "regs", "sram";
-			interrupts = <31>;
-			clocks = <&gate_clk 15>;
-			status = "okay";
-		};
+			mdio: mdio-bus@72004 {
+				compatible = "marvell,orion-mdio";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <0x72004 0x84>;
+				interrupts = <30>;
+				clocks = <&gate_clk 2>;
+				status = "disabled";
+
+				ethphy: ethernet-phy {
+					/* set phy address in board file */
+				};
+			};
 
-		xor0: dma-engine@60800 {
-			compatible = "marvell,orion-xor";
-			reg = <0x60800 0x100
-			       0x60a00 0x100>;
-			clocks = <&gate_clk 23>;
-			status = "okay";
+			sdio0: sdio-host@92000 {
+				compatible = "marvell,dove-sdhci";
+				reg = <0x92000 0x100>;
+				interrupts = <35>, <37>;
+				clocks = <&gate_clk 8>;
+				pinctrl-0 = <&pmx_sdio0>;
+				pinctrl-names = "default";
+				status = "disabled";
+			};
 
-			channel0 {
-				interrupts = <39>;
-				dmacap,memcpy;
-				dmacap,xor;
+			sata0: sata-host@a0000 {
+				compatible = "marvell,orion-sata";
+				reg = <0xa0000 0x2400>;
+				interrupts = <62>;
+				clocks = <&gate_clk 3>;
+				phys = <&sata_phy0>;
+				phy-names = "port0";
+				nr-ports = <1>;
+				status = "disabled";
 			};
 
-			channel1 {
-				interrupts = <40>;
-				dmacap,memset;
-				dmacap,memcpy;
-				dmacap,xor;
+			sata_phy0: sata-phy@a2000 {
+				compatible = "marvell,mvebu-sata-phy";
+				reg = <0xa2000 0x0334>;
+				clocks = <&gate_clk 3>;
+				clock-names = "sata";
+				#phy-cells = <0>;
+				status = "ok";
 			};
-		};
 
-		xor1: dma-engine@60900 {
-			compatible = "marvell,orion-xor";
-			reg = <0x60900 0x100
-			       0x60b00 0x100>;
-			clocks = <&gate_clk 24>;
-			status = "okay";
+			audio0: audio-controller@b0000 {
+				compatible = "marvell,dove-audio";
+				reg = <0xb0000 0x2210>;
+				interrupts = <19>, <20>;
+				clocks = <&gate_clk 12>;
+				clock-names = "internal";
+				status = "disabled";
+			};
 
-			channel0 {
-				interrupts = <42>;
-				dmacap,memcpy;
-				dmacap,xor;
+			audio1: audio-controller@b4000 {
+				compatible = "marvell,dove-audio";
+				reg = <0xb4000 0x2210>;
+				interrupts = <21>, <22>;
+				clocks = <&gate_clk 13>;
+				clock-names = "internal";
+				status = "disabled";
 			};
 
-			channel1 {
-				interrupts = <43>;
-				dmacap,memset;
-				dmacap,memcpy;
-				dmacap,xor;
+			thermal: thermal-diode@d001c {
+				compatible = "marvell,dove-thermal";
+				reg = <0xd001c 0x0c>, <0xd005c 0x08>;
 			};
-		};
 
-		lcd0: lcd-controller@820000 {
-			compatible = "marvell,dove-lcd";
-			reg = <0x820000 0x200>;
-			interrupts = <47>;
-			clocks = <0>;
-			status = "disabled";
-		};
+			gate_clk: clock-gating-ctrl@d0038 {
+				compatible = "marvell,dove-gating-clock";
+				reg = <0xd0038 0x4>;
+				clocks = <&core_clk 0>;
+				#clock-cells = <1>;
+			};
 
-		lcd1: lcd-controller@810000 {
-			compatible = "marvell,dove-lcd";
-			reg = <0x810000 0x200>;
-			interrupts = <46>;
-			clocks = <0>;
-			status = "disabled";
+			pmu_intc: pmu-interrupt-ctrl@d0050 {
+				compatible = "marvell,dove-pmu-intc";
+				interrupt-controller;
+				#interrupt-cells = <1>;
+				reg = <0xd0050 0x8>;
+				interrupts = <33>;
+				marvell,#interrupts = <7>;
+			};
+
+			pinctrl: pin-ctrl@d0200 {
+				compatible = "marvell,dove-pinctrl";
+				reg = <0xd0200 0x10>;
+				clocks = <&gate_clk 22>;
+
+				pmx_gpio_0: pmx-gpio-0 {
+					marvell,pins = "mpp0";
+					marvell,function = "gpio";
+				};
+
+				pmx_gpio_1: pmx-gpio-1 {
+					marvell,pins = "mpp1";
+					marvell,function = "gpio";
+				};
+
+				pmx_gpio_2: pmx-gpio-2 {
+					marvell,pins = "mpp2";
+					marvell,function = "gpio";
+				};
+
+				pmx_gpio_3: pmx-gpio-3 {
+					marvell,pins = "mpp3";
+					marvell,function = "gpio";
+				};
+
+				pmx_gpio_4: pmx-gpio-4 {
+					marvell,pins = "mpp4";
+					marvell,function = "gpio";
+				};
+
+				pmx_gpio_5: pmx-gpio-5 {
+					marvell,pins = "mpp5";
+					marvell,function = "gpio";
+				};
+
+				pmx_gpio_6: pmx-gpio-6 {
+					marvell,pins = "mpp6";
+					marvell,function = "gpio";
+				};
+
+				pmx_gpio_7: pmx-gpio-7 {
+					marvell,pins = "mpp7";
+					marvell,function = "gpio";
+				};
+
+				pmx_gpio_8: pmx-gpio-8 {
+					marvell,pins = "mpp8";
+					marvell,function = "gpio";
+				};
+
+				pmx_gpio_9: pmx-gpio-9 {
+					marvell,pins = "mpp9";
+					marvell,function = "gpio";
+				};
+
+				pmx_gpio_10: pmx-gpio-10 {
+					marvell,pins = "mpp10";
+					marvell,function = "gpio";
+				};
+
+				pmx_gpio_11: pmx-gpio-11 {
+					marvell,pins = "mpp11";
+					marvell,function = "gpio";
+				};
+
+				pmx_gpio_12: pmx-gpio-12 {
+					marvell,pins = "mpp12";
+					marvell,function = "gpio";
+				};
+
+				pmx_gpio_13: pmx-gpio-13 {
+					marvell,pins = "mpp13";
+					marvell,function = "gpio";
+				};
+
+				pmx_audio1_extclk: pmx-audio1-extclk {
+					marvell,pins = "mpp13";
+					marvell,function = "audio1";
+				};
+
+				pmx_gpio_14: pmx-gpio-14 {
+					marvell,pins = "mpp14";
+					marvell,function = "gpio";
+				};
+
+				pmx_gpio_15: pmx-gpio-15 {
+					marvell,pins = "mpp15";
+					marvell,function = "gpio";
+				};
+
+				pmx_gpio_16: pmx-gpio-16 {
+					marvell,pins = "mpp16";
+					marvell,function = "gpio";
+				};
+
+				pmx_gpio_17: pmx-gpio-17 {
+					marvell,pins = "mpp17";
+					marvell,function = "gpio";
+				};
+
+				pmx_gpio_18: pmx-gpio-18 {
+					marvell,pins = "mpp18";
+					marvell,function = "gpio";
+				};
+
+				pmx_gpio_19: pmx-gpio-19 {
+					marvell,pins = "mpp19";
+					marvell,function = "gpio";
+				};
+
+				pmx_gpio_20: pmx-gpio-20 {
+					marvell,pins = "mpp20";
+					marvell,function = "gpio";
+				};
+
+				pmx_gpio_21: pmx-gpio-21 {
+					marvell,pins = "mpp21";
+					marvell,function = "gpio";
+				};
+
+				pmx_camera: pmx-camera {
+					marvell,pins = "mpp_camera";
+					marvell,function = "camera";
+				};
+
+				pmx_camera_gpio: pmx-camera-gpio {
+					marvell,pins = "mpp_camera";
+					marvell,function = "gpio";
+				};
+
+				pmx_sdio0: pmx-sdio0 {
+					marvell,pins = "mpp_sdio0";
+					marvell,function = "sdio0";
+				};
+
+				pmx_sdio0_gpio: pmx-sdio0-gpio {
+					marvell,pins = "mpp_sdio0";
+					marvell,function = "gpio";
+				};
+
+				pmx_sdio1: pmx-sdio1 {
+					marvell,pins = "mpp_sdio1";
+					marvell,function = "sdio1";
+				};
+
+				pmx_sdio1_gpio: pmx-sdio1-gpio {
+					marvell,pins = "mpp_sdio1";
+					marvell,function = "gpio";
+				};
+
+				pmx_audio1_gpio: pmx-audio1-gpio {
+					marvell,pins = "mpp_audio1";
+					marvell,function = "gpio";
+				};
+
+				pmx_audio1_i2s1_spdifo: pmx-audio1-i2s1-spdifo {
+					marvell,pins = "mpp_audio1";
+					marvell,function = "i2s1/spdifo";
+				};
+
+				pmx_spi0: pmx-spi0 {
+					marvell,pins = "mpp_spi0";
+					marvell,function = "spi0";
+				};
+
+				pmx_spi0_gpio: pmx-spi0-gpio {
+					marvell,pins = "mpp_spi0";
+					marvell,function = "gpio";
+				};
+
+				pmx_uart1: pmx-uart1 {
+					marvell,pins = "mpp_uart1";
+					marvell,function = "uart1";
+				};
+
+				pmx_uart1_gpio: pmx-uart1-gpio {
+					marvell,pins = "mpp_uart1";
+					marvell,function = "gpio";
+				};
+
+				pmx_nand: pmx-nand {
+					marvell,pins = "mpp_nand";
+					marvell,function = "nand";
+				};
+
+				pmx_nand_gpo: pmx-nand-gpo {
+					marvell,pins = "mpp_nand";
+					marvell,function = "gpo";
+				};
+			};
+
+			core_clk: core-clocks@d0214 {
+				compatible = "marvell,dove-core-clock";
+				reg = <0xd0214 0x4>;
+				#clock-cells = <1>;
+			};
+
+			gpio0: gpio-ctrl@d0400 {
+				compatible = "marvell,orion-gpio";
+				#gpio-cells = <2>;
+				gpio-controller;
+				reg = <0xd0400 0x20>;
+				ngpios = <32>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				interrupts = <12>, <13>, <14>, <60>;
+			};
+
+			gpio1: gpio-ctrl@d0420 {
+				compatible = "marvell,orion-gpio";
+				#gpio-cells = <2>;
+				gpio-controller;
+				reg = <0xd0420 0x20>;
+				ngpios = <32>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				interrupts = <61>;
+			};
+
+			rtc: real-time-clock@d8500 {
+				compatible = "marvell,orion-rtc";
+				reg = <0xd8500 0x20>;
+				interrupt-parent = <&pmu_intc>;
+				interrupts = <5>;
+			};
+
+			gpio2: gpio-ctrl@e8400 {
+				compatible = "marvell,orion-gpio";
+				#gpio-cells = <2>;
+				gpio-controller;
+				reg = <0xe8400 0x0c>;
+				ngpios = <8>;
+			};
 		};
 	};
 };
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
