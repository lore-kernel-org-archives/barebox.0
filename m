Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x229.google.com ([2a00:1450:4013:c01::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UsdNG-0003gx-2P
 for barebox@lists.infradead.org; Fri, 28 Jun 2013 18:26:28 +0000
Received: by mail-ea0-f169.google.com with SMTP id h15so1222888eak.28
 for <barebox@lists.infradead.org>; Fri, 28 Jun 2013 11:25:58 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 28 Jun 2013 20:25:47 +0200
Message-Id: <1372443947-12599-7-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1372443947-12599-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1372443947-12599-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 6/6] ARM: mvebu: import DT files for Dove SoC and SolidRun
 CuBox
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

This imports dove.dtsi and dove-cubox.dts from Linux kernel with timer
node added.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: barebox@lists.infradead.org
---
 arch/arm/dts/dove-cubox.dts |  154 +++++++++++++++++++++++
 arch/arm/dts/dove.dtsi      |  285 +++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 439 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/dts/dove-cubox.dts
 create mode 100644 arch/arm/dts/dove.dtsi

diff --git a/arch/arm/dts/dove-cubox.dts b/arch/arm/dts/dove-cubox.dts
new file mode 100644
index 0000000..b7dc243
--- /dev/null
+++ b/arch/arm/dts/dove-cubox.dts
@@ -0,0 +1,154 @@
+/dts-v1/;
+
+/include/ "dove.dtsi"
+
+/ {
+	compatible = "solidrun,cubox", "marvell,dove";
+	model = "SolidRun CuBox";
+
+	memory {
+		device_type = "memory";
+		reg = <0x00000000 0x3f000000>;
+	};
+
+	chosen {
+		bootargs = "console=ttyS0,115200n8 earlyprintk";
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-0 = <&pmx_gpio_18>;
+		pinctrl-names = "default";
+
+		power {
+			label = "Power";
+			gpios = <&gpio0 18 1>;
+			linux,default-trigger = "default-on";
+		};
+	};
+
+	regulators {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		usb_power: regulator@1 {
+			compatible = "regulator-fixed";
+			reg = <1>;
+			regulator-name = "USB Power";
+			regulator-min-microvolt = <5000000>;
+			regulator-max-microvolt = <5000000>;
+			enable-active-high;
+			regulator-always-on;
+			regulator-boot-on;
+			gpio = <&gpio0 1 0>;
+		};
+	};
+
+	clocks {
+		/* 25MHz reference crystal */
+		ref25: oscillator {
+			compatible = "fixed-clock";
+			#clock-cells = <0>;
+			clock-frequency = <25000000>;
+		};
+	};
+
+	video-card {
+		compatible = "marvell,dove-video-card";
+		reg = <0x3f000000 0x1000000>;
+		marvell,external-encoder = <&tda19988>;
+	};
+};
+
+&uart0 { status = "okay"; };
+&sata0 { status = "okay"; };
+
+&lcd0 {
+	status = "okay";
+	clocks = <&si5351 0>;
+};
+
+&i2c0 {
+	status = "okay";
+	clock-frequency = <400000>;
+
+	si5351: clock-generator {
+		compatible = "silabs,si5351a-msop";
+		reg = <0x60>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		#clock-cells = <1>;
+
+		/* connect xtal input to 25MHz reference */
+		clocks = <&ref25>;
+
+		/* connect xtal input as source of pll0 and pll1 */
+		silabs,pll-source = <0 0>, <1 0>;
+
+		clkout0 {
+			reg = <0>;
+			silabs,drive-strength = <8>;
+			silabs,multisynth-source = <0>;
+			silabs,clock-source = <0>;
+			silabs,pll-master;
+		};
+
+		clkout1 {
+			reg = <1>;
+			silabs,drive-strength = <8>;
+			silabs,multisynth-source = <1>;
+			silabs,clock-source = <0>;
+			silabs,pll-master;
+		};
+
+		clkout2 {
+			reg = <2>;
+			silabs,multisynth-source = <1>;
+			silabs,clock-source = <0>;
+		};
+	};
+
+	tda19988: hdmi-encoder@70 {
+		compatible = "nxp,tda1998x";
+		reg = <0x70>;
+	};
+};
+
+&sdio0 {
+	status = "okay";
+        bus-width = <4>;
+	/* sdio0 card detect is connected to wrong pin on CuBox */
+	cd-gpios = <&gpio0 12 1>;
+};
+
+&spi0 {
+	status = "okay";
+
+	/* spi0.0: 4M Flash Winbond W25Q32BV */
+	spi-flash@0 {
+		compatible = "winbond,w25q32", "m25p80";
+		spi-max-frequency = <20000000>;
+		reg = <0>;
+	};
+};
+
+&pinctrl {
+	pinctrl-0 = <&pmx_gpio_1 &pmx_gpio_12>;
+	pinctrl-names = "default";
+
+	pmx_gpio_1: pmx-gpio-1 {
+		marvell,pins = "mpp1";
+		marvell,function = "gpio";
+	};
+
+	pmx_gpio_12: pmx-gpio-12 {
+		marvell,pins = "mpp12";
+		marvell,function = "gpio";
+	};
+
+	pmx_gpio_18: pmx-gpio-18 {
+		marvell,pins = "mpp18";
+		marvell,function = "gpio";
+	};
+};
diff --git a/arch/arm/dts/dove.dtsi b/arch/arm/dts/dove.dtsi
new file mode 100644
index 0000000..98b7e29
--- /dev/null
+++ b/arch/arm/dts/dove.dtsi
@@ -0,0 +1,285 @@
+/include/ "skeleton.dtsi"
+
+/ {
+	compatible = "marvell,dove";
+	model = "Marvell Armada 88AP510 SoC";
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	aliases {
+		gpio0 = &gpio0;
+		gpio1 = &gpio1;
+		gpio2 = &gpio2;
+	};
+
+	soc@f1000000 {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		interrupt-parent = <&intc>;
+
+		ranges = <0xc8000000 0xc8000000 0x0100000   /* CESA SRAM   1M */
+		          0xe0000000 0xe0000000 0x8000000   /* PCIe0 Mem 128M */
+		          0xe8000000 0xe8000000 0x8000000   /* PCIe1 Mem 128M */
+		          0xf0000000 0xf0000000 0x0100000   /* ScratchPad  1M */
+		          0x00000000 0xf1000000 0x1000000   /* SB/NB regs 16M */
+		          0xf2000000 0xf2000000 0x0100000   /* PCIe0 I/O   1M */
+		          0xf2100000 0xf2100000 0x0100000   /* PCIe0 I/O   1M */
+		          0xf8000000 0xf8000000 0x8000000>; /* BootROM   128M */
+
+		l2: l2-cache {
+			compatible = "marvell,tauros2-cache";
+			marvell,tauros2-cache-features = <0>;
+		};
+
+		timer: timer@20300 {
+			compatible = "marvell,orion-timer";
+                        reg = <0x20300 0x30>;
+		};
+
+		intc: interrupt-controller@20204 {
+			compatible = "marvell,orion-intc";
+			interrupt-controller;
+			#interrupt-cells = <1>;
+			reg = <0x20204 0x04>, <0x20214 0x04>;
+		};
+
+		core_clk: core-clocks@d0214 {
+			compatible = "marvell,dove-core-clock";
+			reg = <0xd0214 0x4>;
+			#clock-cells = <1>;
+		};
+
+		gate_clk: clock-gating-control@d0038 {
+			compatible = "marvell,dove-gating-clock";
+			reg = <0xd0038 0x4>;
+			clocks = <&core_clk 0>;
+			#clock-cells = <1>;
+		};
+
+		thermal: thermal@d001c {
+			compatible = "marvell,dove-thermal";
+			reg = <0xd001c 0x0c>, <0xd005c 0x08>;
+		};
+
+		uart0: serial@12000 {
+			compatible = "ns16550a";
+			reg = <0x12000 0x100>;
+			reg-shift = <2>;
+			interrupts = <7>;
+			clocks = <&core_clk 0>;
+			status = "disabled";
+		};
+
+		uart1: serial@12100 {
+			compatible = "ns16550a";
+			reg = <0x12100 0x100>;
+			reg-shift = <2>;
+			interrupts = <8>;
+			clocks = <&core_clk 0>;
+			status = "disabled";
+		};
+
+		uart2: serial@12200 {
+			compatible = "ns16550a";
+			reg = <0x12000 0x100>;
+			reg-shift = <2>;
+			interrupts = <9>;
+			clocks = <&core_clk 0>;
+			status = "disabled";
+		};
+
+		uart3: serial@12300 {
+			compatible = "ns16550a";
+			reg = <0x12100 0x100>;
+			reg-shift = <2>;
+			interrupts = <10>;
+			clocks = <&core_clk 0>;
+			status = "disabled";
+		};
+
+		gpio0: gpio@d0400 {
+			compatible = "marvell,orion-gpio";
+			#gpio-cells = <2>;
+			gpio-controller;
+			reg = <0xd0400 0x20>;
+			ngpios = <32>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			interrupts = <12>, <13>, <14>, <60>;
+		};
+
+		gpio1: gpio@d0420 {
+			compatible = "marvell,orion-gpio";
+			#gpio-cells = <2>;
+			gpio-controller;
+			reg = <0xd0420 0x20>;
+			ngpios = <32>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			interrupts = <61>;
+		};
+
+		gpio2: gpio@e8400 {
+			compatible = "marvell,orion-gpio";
+			#gpio-cells = <2>;
+			gpio-controller;
+			reg = <0xe8400 0x0c>;
+			ngpios = <8>;
+		};
+
+		pinctrl: pinctrl@d0200 {
+			compatible = "marvell,dove-pinctrl";
+			reg = <0xd0200 0x10>;
+			clocks = <&gate_clk 22>;
+		};
+
+		spi0: spi@10600 {
+			compatible = "marvell,orion-spi";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			cell-index = <0>;
+			interrupts = <6>;
+			reg = <0x10600 0x28>;
+			clocks = <&core_clk 0>;
+			status = "disabled";
+		};
+
+		spi1: spi@14600 {
+			compatible = "marvell,dove-spi";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			cell-index = <1>;
+			interrupts = <5>;
+			reg = <0x14600 0x28>;
+			clocks = <&core_clk 0>;
+			status = "disabled";
+		};
+
+		i2c0: i2c@11000 {
+			compatible = "marvell,mv64xxx-i2c";
+			reg = <0x11000 0x20>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			interrupts = <11>;
+			clock-frequency = <400000>;
+			timeout-ms = <1000>;
+			clocks = <&core_clk 0>;
+			status = "disabled";
+		};
+
+		ehci0: usb-host@50000 {
+			compatible = "marvell,orion-ehci";
+			reg = <0x50000 0x1000>;
+			interrupts = <24>;
+			clocks = <&gate_clk 0>;
+			status = "okay";
+		};
+
+		ehci1: usb-host@51000 {
+			compatible = "marvell,orion-ehci";
+			reg = <0x51000 0x1000>;
+			interrupts = <25>;
+			clocks = <&gate_clk 1>;
+			status = "okay";
+		};
+
+		sdio0: sdio@92000 {
+			compatible = "marvell,dove-sdhci";
+			reg = <0x92000 0x100>;
+			interrupts = <35>, <37>;
+			clocks = <&gate_clk 8>;
+			status = "disabled";
+		};
+
+		sdio1: sdio@90000 {
+			compatible = "marvell,dove-sdhci";
+			reg = <0x90000 0x100>;
+			interrupts = <36>, <38>;
+			clocks = <&gate_clk 9>;
+			status = "disabled";
+		};
+
+		sata0: sata@a0000 {
+			compatible = "marvell,orion-sata";
+			reg = <0xa0000 0x2400>;
+			interrupts = <62>;
+			clocks = <&gate_clk 3>;
+			nr-ports = <1>;
+			status = "disabled";
+		};
+
+		rtc@d8500 {
+			compatible = "marvell,orion-rtc";
+			reg = <0xd8500 0x20>;
+		};
+
+		crypto: crypto@30000 {
+			compatible = "marvell,orion-crypto";
+			reg = <0x30000 0x10000>,
+			      <0xc8000000 0x800>;
+			reg-names = "regs", "sram";
+			interrupts = <31>;
+			clocks = <&gate_clk 15>;
+			status = "okay";
+		};
+
+		xor0: dma-engine@60800 {
+			compatible = "marvell,orion-xor";
+			reg = <0x60800 0x100
+			       0x60a00 0x100>;
+			clocks = <&gate_clk 23>;
+			status = "okay";
+
+			channel0 {
+				interrupts = <39>;
+				dmacap,memcpy;
+				dmacap,xor;
+			};
+
+			channel1 {
+				interrupts = <40>;
+				dmacap,memset;
+				dmacap,memcpy;
+				dmacap,xor;
+			};
+		};
+
+		xor1: dma-engine@60900 {
+			compatible = "marvell,orion-xor";
+			reg = <0x60900 0x100
+			       0x60b00 0x100>;
+			clocks = <&gate_clk 24>;
+			status = "okay";
+
+			channel0 {
+				interrupts = <42>;
+				dmacap,memcpy;
+				dmacap,xor;
+			};
+
+			channel1 {
+				interrupts = <43>;
+				dmacap,memset;
+				dmacap,memcpy;
+				dmacap,xor;
+			};
+		};
+		
+		lcd0: lcd-controller@820000 {
+			compatible = "marvell,dove-lcd";
+			reg = <0x820000 0x200>;
+			interrupts = <47>;
+			clocks = <0>;
+			status = "disabled";
+		};
+		
+		lcd1: lcd-controller@810000 {
+			compatible = "marvell,dove-lcd";
+			reg = <0x810000 0x200>;
+			interrupts = <46>;
+			clocks = <0>;
+			status = "disabled";
+		};
+	};
+};
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
