Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WWP7F-00031r-QU
 for barebox@lists.infradead.org; Sat, 05 Apr 2014 11:50:35 +0000
Received: from tellur.localdomain (p57B5F61C.dip0.t-ipconnect.de
 [87.181.246.28]) by lynxeye.de (Postfix) with ESMTPA id 2C91C18B4261
 for <barebox@lists.infradead.org>; Sat,  5 Apr 2014 13:49:31 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sat,  5 Apr 2014 13:52:09 +0200
Message-Id: <1396698731-22184-3-git-send-email-dev@lynxeye.de>
In-Reply-To: <1396698731-22184-1-git-send-email-dev@lynxeye.de>
References: <1396698731-22184-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 3/5] ARM: dts: update Tegra20 base dtsi to Linux 3.14
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/tegra20.dtsi | 195 +++++++++++++++++++++++++++++++++++-----------
 1 file changed, 151 insertions(+), 44 deletions(-)

diff --git a/arch/arm/dts/tegra20.dtsi b/arch/arm/dts/tegra20.dtsi
index df40b54..48d2a7f 100644
--- a/arch/arm/dts/tegra20.dtsi
+++ b/arch/arm/dts/tegra20.dtsi
@@ -1,5 +1,6 @@
 #include <dt-bindings/clock/tegra20-car.h>
 #include <dt-bindings/gpio/tegra-gpio.h>
+#include <dt-bindings/pinctrl/pinctrl-tegra.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 
 #include "skeleton.dtsi"
@@ -16,57 +17,71 @@
 		serial4 = &uarte;
 	};
 
-	host1x {
+	host1x@50000000 {
 		compatible = "nvidia,tegra20-host1x", "simple-bus";
 		reg = <0x50000000 0x00024000>;
 		interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>, /* syncpt */
 			     <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>; /* general */
 		clocks = <&tegra_car TEGRA20_CLK_HOST1X>;
+		resets = <&tegra_car 28>;
+		reset-names = "host1x";
 
 		#address-cells = <1>;
 		#size-cells = <1>;
 
 		ranges = <0x54000000 0x54000000 0x04000000>;
 
-		mpe {
+		mpe@54040000 {
 			compatible = "nvidia,tegra20-mpe";
 			reg = <0x54040000 0x00040000>;
 			interrupts = <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&tegra_car TEGRA20_CLK_MPE>;
+			resets = <&tegra_car 60>;
+			reset-names = "mpe";
 		};
 
-		vi {
+		vi@54080000 {
 			compatible = "nvidia,tegra20-vi";
 			reg = <0x54080000 0x00040000>;
 			interrupts = <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&tegra_car TEGRA20_CLK_VI>;
+			resets = <&tegra_car 20>;
+			reset-names = "vi";
 		};
 
-		epp {
+		epp@540c0000 {
 			compatible = "nvidia,tegra20-epp";
 			reg = <0x540c0000 0x00040000>;
 			interrupts = <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&tegra_car TEGRA20_CLK_EPP>;
+			resets = <&tegra_car 19>;
+			reset-names = "epp";
 		};
 
-		isp {
+		isp@54100000 {
 			compatible = "nvidia,tegra20-isp";
 			reg = <0x54100000 0x00040000>;
 			interrupts = <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&tegra_car TEGRA20_CLK_ISP>;
+			resets = <&tegra_car 23>;
+			reset-names = "isp";
 		};
 
-		gr2d {
+		gr2d@54140000 {
 			compatible = "nvidia,tegra20-gr2d";
 			reg = <0x54140000 0x00040000>;
 			interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&tegra_car TEGRA20_CLK_GR2D>;
+			resets = <&tegra_car 21>;
+			reset-names = "2d";
 		};
 
-		gr3d {
+		gr3d@54140000 {
 			compatible = "nvidia,tegra20-gr3d";
-			reg = <0x54180000 0x00040000>;
+			reg = <0x54140000 0x00040000>;
 			clocks = <&tegra_car TEGRA20_CLK_GR3D>;
+			resets = <&tegra_car 24>;
+			reset-names = "3d";
 		};
 
 		dc@54200000 {
@@ -75,7 +90,11 @@
 			interrupts = <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&tegra_car TEGRA20_CLK_DISP1>,
 				 <&tegra_car TEGRA20_CLK_PLL_P>;
-			clock-names = "disp1", "parent";
+			clock-names = "dc", "parent";
+			resets = <&tegra_car 27>;
+			reset-names = "dc";
+
+			nvidia,head = <0>;
 
 			rgb {
 				status = "disabled";
@@ -88,24 +107,30 @@
 			interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&tegra_car TEGRA20_CLK_DISP2>,
 				 <&tegra_car TEGRA20_CLK_PLL_P>;
-			clock-names = "disp2", "parent";
+			clock-names = "dc", "parent";
+			resets = <&tegra_car 26>;
+			reset-names = "dc";
+
+			nvidia,head = <1>;
 
 			rgb {
 				status = "disabled";
 			};
 		};
 
-		hdmi {
+		hdmi@54280000 {
 			compatible = "nvidia,tegra20-hdmi";
 			reg = <0x54280000 0x00040000>;
 			interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&tegra_car TEGRA20_CLK_HDMI>,
 				 <&tegra_car TEGRA20_CLK_PLL_D_OUT0>;
 			clock-names = "hdmi", "parent";
+			resets = <&tegra_car 51>;
+			reset-names = "hdmi";
 			status = "disabled";
 		};
 
-		tvo {
+		tvo@542c0000 {
 			compatible = "nvidia,tegra20-tvo";
 			reg = <0x542c0000 0x00040000>;
 			interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>;
@@ -113,10 +138,12 @@
 			status = "disabled";
 		};
 
-		dsi {
+		dsi@542c0000 {
 			compatible = "nvidia,tegra20-dsi";
-			reg = <0x54300000 0x00040000>;
+			reg = <0x542c0000 0x00040000>;
 			clocks = <&tegra_car TEGRA20_CLK_DSI>;
+			resets = <&tegra_car 48>;
+			reset-names = "dsi";
 			status = "disabled";
 		};
 	};
@@ -129,7 +156,7 @@
 		clocks = <&tegra_car TEGRA20_CLK_TWD>;
 	};
 
-	intc: interrupt-controller {
+	intc: interrupt-controller@50041000 {
 		compatible = "arm,cortex-a9-gic";
 		reg = <0x50041000 0x1000
 		       0x50040100 0x0100>;
@@ -137,7 +164,7 @@
 		#interrupt-cells = <3>;
 	};
 
-	cache-controller {
+	cache-controller@50043000 {
 		compatible = "arm,pl310-cache";
 		reg = <0x50043000 0x1000>;
 		arm,data-latency = <5 5 2>;
@@ -156,13 +183,14 @@
 		clocks = <&tegra_car TEGRA20_CLK_TIMER>;
 	};
 
-	tegra_car: clock {
+	tegra_car: clock@60006000 {
 		compatible = "nvidia,tegra20-car";
 		reg = <0x60006000 0x1000>;
 		#clock-cells = <1>;
+		#reset-cells = <1>;
 	};
 
-	apbdma: dma {
+	apbdma: dma@6000a000 {
 		compatible = "nvidia,tegra20-apbdma";
 		reg = <0x6000a000 0x1200>;
 		interrupts = <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH>,
@@ -182,14 +210,17 @@
 			     <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&tegra_car TEGRA20_CLK_APBDMA>;
+		resets = <&tegra_car 34>;
+		reset-names = "dma";
+		#dma-cells = <1>;
 	};
 
-	ahb {
+	ahb@6000c004 {
 		compatible = "nvidia,tegra20-ahb";
 		reg = <0x6000c004 0x10c>; /* AHB Arbitration + Gizmo Controller */
 	};
 
-	gpio: gpio {
+	gpio: gpio@6000d000 {
 		compatible = "nvidia,tegra20-gpio";
 		reg = <0x6000d000 0x1000>;
 		interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>,
@@ -205,7 +236,7 @@
 		interrupt-controller;
 	};
 
-	pinmux: pinmux {
+	pinmux: pinmux@70000014 {
 		compatible = "nvidia,tegra20-pinmux";
 		reg = <0x70000014 0x10   /* Tri-state registers */
 		       0x70000080 0x20   /* Mux registers */
@@ -213,17 +244,20 @@
 		       0x70000868 0xa8>; /* Pad control registers */
 	};
 
-	das {
+	das@70000c00 {
 		compatible = "nvidia,tegra20-das";
 		reg = <0x70000c00 0x80>;
 	};
 
-	tegra_ac97: ac97 {
+	tegra_ac97: ac97@70002000 {
 		compatible = "nvidia,tegra20-ac97";
 		reg = <0x70002000 0x200>;
 		interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
-		nvidia,dma-request-selector = <&apbdma 12>;
 		clocks = <&tegra_car TEGRA20_CLK_AC97>;
+		resets = <&tegra_car 3>;
+		reset-names = "ac97";
+		dmas = <&apbdma 12>, <&apbdma 12>;
+		dma-names = "rx", "tx";
 		status = "disabled";
 	};
 
@@ -231,8 +265,11 @@
 		compatible = "nvidia,tegra20-i2s";
 		reg = <0x70002800 0x200>;
 		interrupts = <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>;
-		nvidia,dma-request-selector = <&apbdma 2>;
 		clocks = <&tegra_car TEGRA20_CLK_I2S1>;
+		resets = <&tegra_car 11>;
+		reset-names = "i2s";
+		dmas = <&apbdma 2>, <&apbdma 2>;
+		dma-names = "rx", "tx";
 		status = "disabled";
 	};
 
@@ -240,8 +277,11 @@
 		compatible = "nvidia,tegra20-i2s";
 		reg = <0x70002a00 0x200>;
 		interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
-		nvidia,dma-request-selector = <&apbdma 1>;
 		clocks = <&tegra_car TEGRA20_CLK_I2S2>;
+		resets = <&tegra_car 18>;
+		reset-names = "i2s";
+		dmas = <&apbdma 1>, <&apbdma 1>;
+		dma-names = "rx", "tx";
 		status = "disabled";
 	};
 
@@ -257,8 +297,11 @@
 		reg = <0x70006000 0x40>;
 		reg-shift = <2>;
 		interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
-		nvidia,dma-request-selector = <&apbdma 8>;
 		clocks = <&tegra_car TEGRA20_CLK_UARTA>;
+		resets = <&tegra_car 6>;
+		reset-names = "serial";
+		dmas = <&apbdma 8>, <&apbdma 8>;
+		dma-names = "rx", "tx";
 		status = "disabled";
 	};
 
@@ -267,8 +310,11 @@
 		reg = <0x70006040 0x40>;
 		reg-shift = <2>;
 		interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
-		nvidia,dma-request-selector = <&apbdma 9>;
 		clocks = <&tegra_car TEGRA20_CLK_UARTB>;
+		resets = <&tegra_car 7>;
+		reset-names = "serial";
+		dmas = <&apbdma 9>, <&apbdma 9>;
+		dma-names = "rx", "tx";
 		status = "disabled";
 	};
 
@@ -277,8 +323,11 @@
 		reg = <0x70006200 0x100>;
 		reg-shift = <2>;
 		interrupts = <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>;
-		nvidia,dma-request-selector = <&apbdma 10>;
 		clocks = <&tegra_car TEGRA20_CLK_UARTC>;
+		resets = <&tegra_car 55>;
+		reset-names = "serial";
+		dmas = <&apbdma 10>, <&apbdma 10>;
+		dma-names = "rx", "tx";
 		status = "disabled";
 	};
 
@@ -287,8 +336,11 @@
 		reg = <0x70006300 0x100>;
 		reg-shift = <2>;
 		interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
-		nvidia,dma-request-selector = <&apbdma 19>;
 		clocks = <&tegra_car TEGRA20_CLK_UARTD>;
+		resets = <&tegra_car 65>;
+		reset-names = "serial";
+		dmas = <&apbdma 19>, <&apbdma 19>;
+		dma-names = "rx", "tx";
 		status = "disabled";
 	};
 
@@ -297,20 +349,25 @@
 		reg = <0x70006400 0x100>;
 		reg-shift = <2>;
 		interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>;
-		nvidia,dma-request-selector = <&apbdma 20>;
 		clocks = <&tegra_car TEGRA20_CLK_UARTE>;
+		resets = <&tegra_car 66>;
+		reset-names = "serial";
+		dmas = <&apbdma 20>, <&apbdma 20>;
+		dma-names = "rx", "tx";
 		status = "disabled";
 	};
 
-	pwm: pwm {
+	pwm: pwm@7000a000 {
 		compatible = "nvidia,tegra20-pwm";
 		reg = <0x7000a000 0x100>;
 		#pwm-cells = <2>;
 		clocks = <&tegra_car TEGRA20_CLK_PWM>;
+		resets = <&tegra_car 17>;
+		reset-names = "pwm";
 		status = "disabled";
 	};
 
-	rtc {
+	rtc@7000e000 {
 		compatible = "nvidia,tegra20-rtc";
 		reg = <0x7000e000 0x100>;
 		interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
@@ -326,6 +383,10 @@
 		clocks = <&tegra_car TEGRA20_CLK_I2C1>,
 			 <&tegra_car TEGRA20_CLK_PLL_P_OUT3>;
 		clock-names = "div-clk", "fast-clk";
+		resets = <&tegra_car 12>;
+		reset-names = "i2c";
+		dmas = <&apbdma 21>, <&apbdma 21>;
+		dma-names = "rx", "tx";
 		status = "disabled";
 	};
 
@@ -333,10 +394,13 @@
 		compatible = "nvidia,tegra20-sflash";
 		reg = <0x7000c380 0x80>;
 		interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
-		nvidia,dma-request-selector = <&apbdma 11>;
 		#address-cells = <1>;
 		#size-cells = <0>;
 		clocks = <&tegra_car TEGRA20_CLK_SPI>;
+		resets = <&tegra_car 43>;
+		reset-names = "spi";
+		dmas = <&apbdma 11>, <&apbdma 11>;
+		dma-names = "rx", "tx";
 		status = "disabled";
 	};
 
@@ -349,6 +413,10 @@
 		clocks = <&tegra_car TEGRA20_CLK_I2C2>,
 			 <&tegra_car TEGRA20_CLK_PLL_P_OUT3>;
 		clock-names = "div-clk", "fast-clk";
+		resets = <&tegra_car 54>;
+		reset-names = "i2c";
+		dmas = <&apbdma 22>, <&apbdma 22>;
+		dma-names = "rx", "tx";
 		status = "disabled";
 	};
 
@@ -361,6 +429,10 @@
 		clocks = <&tegra_car TEGRA20_CLK_I2C3>,
 			 <&tegra_car TEGRA20_CLK_PLL_P_OUT3>;
 		clock-names = "div-clk", "fast-clk";
+		resets = <&tegra_car 67>;
+		reset-names = "i2c";
+		dmas = <&apbdma 23>, <&apbdma 23>;
+		dma-names = "rx", "tx";
 		status = "disabled";
 	};
 
@@ -373,6 +445,10 @@
 		clocks = <&tegra_car TEGRA20_CLK_DVC>,
 			 <&tegra_car TEGRA20_CLK_PLL_P_OUT3>;
 		clock-names = "div-clk", "fast-clk";
+		resets = <&tegra_car 47>;
+		reset-names = "i2c";
+		dmas = <&apbdma 24>, <&apbdma 24>;
+		dma-names = "rx", "tx";
 		status = "disabled";
 	};
 
@@ -380,10 +456,13 @@
 		compatible = "nvidia,tegra20-slink";
 		reg = <0x7000d400 0x200>;
 		interrupts = <GIC_SPI 59 IRQ_TYPE_LEVEL_HIGH>;
-		nvidia,dma-request-selector = <&apbdma 15>;
 		#address-cells = <1>;
 		#size-cells = <0>;
 		clocks = <&tegra_car TEGRA20_CLK_SBC1>;
+		resets = <&tegra_car 41>;
+		reset-names = "spi";
+		dmas = <&apbdma 15>, <&apbdma 15>;
+		dma-names = "rx", "tx";
 		status = "disabled";
 	};
 
@@ -391,10 +470,13 @@
 		compatible = "nvidia,tegra20-slink";
 		reg = <0x7000d600 0x200>;
 		interrupts = <GIC_SPI 82 IRQ_TYPE_LEVEL_HIGH>;
-		nvidia,dma-request-selector = <&apbdma 16>;
 		#address-cells = <1>;
 		#size-cells = <0>;
 		clocks = <&tegra_car TEGRA20_CLK_SBC2>;
+		resets = <&tegra_car 44>;
+		reset-names = "spi";
+		dmas = <&apbdma 16>, <&apbdma 16>;
+		dma-names = "rx", "tx";
 		status = "disabled";
 	};
 
@@ -402,10 +484,13 @@
 		compatible = "nvidia,tegra20-slink";
 		reg = <0x7000d800 0x200>;
 		interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
-		nvidia,dma-request-selector = <&apbdma 17>;
 		#address-cells = <1>;
 		#size-cells = <0>;
 		clocks = <&tegra_car TEGRA20_CLK_SBC3>;
+		resets = <&tegra_car 46>;
+		reset-names = "spi";
+		dmas = <&apbdma 17>, <&apbdma 17>;
+		dma-names = "rx", "tx";
 		status = "disabled";
 	};
 
@@ -413,22 +498,27 @@
 		compatible = "nvidia,tegra20-slink";
 		reg = <0x7000da00 0x200>;
 		interrupts = <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH>;
-		nvidia,dma-request-selector = <&apbdma 18>;
 		#address-cells = <1>;
 		#size-cells = <0>;
 		clocks = <&tegra_car TEGRA20_CLK_SBC4>;
+		resets = <&tegra_car 68>;
+		reset-names = "spi";
+		dmas = <&apbdma 18>, <&apbdma 18>;
+		dma-names = "rx", "tx";
 		status = "disabled";
 	};
 
-	kbc {
+	kbc@7000e200 {
 		compatible = "nvidia,tegra20-kbc";
 		reg = <0x7000e200 0x100>;
 		interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&tegra_car TEGRA20_CLK_KBC>;
+		resets = <&tegra_car 36>;
+		reset-names = "kbc";
 		status = "disabled";
 	};
 
-	pmc {
+	pmc@7000e400 {
 		compatible = "nvidia,tegra20-pmc";
 		reg = <0x7000e400 0x400>;
 		clocks = <&tegra_car TEGRA20_CLK_PCLK>, <&clk32k_in>;
@@ -442,7 +532,7 @@
 		interrupts = <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>;
 	};
 
-	iommu {
+	iommu@7000f024 {
 		compatible = "nvidia,tegra20-gart";
 		reg = <0x7000f024 0x00000018	/* controller registers */
 		       0x58000000 0x02000000>;	/* GART aperture */
@@ -455,7 +545,7 @@
 		#size-cells = <0>;
 	};
 
-	pcie-controller {
+	pcie-controller@80003000 {
 		compatible = "nvidia,tegra20-pcie";
 		device_type = "pci";
 		reg = <0x80003000 0x00000800   /* PADS registers */
@@ -478,9 +568,12 @@
 
 		clocks = <&tegra_car TEGRA20_CLK_PEX>,
 			 <&tegra_car TEGRA20_CLK_AFI>,
-			 <&tegra_car TEGRA20_CLK_PCIE_XCLK>,
 			 <&tegra_car TEGRA20_CLK_PLL_E>;
-		clock-names = "pex", "afi", "pcie_xclk", "pll_e";
+		clock-names = "pex", "afi", "pll_e";
+		resets = <&tegra_car 70>,
+		         <&tegra_car 72>,
+		         <&tegra_car 74>;
+		reset-names = "pex", "afi", "pcie_x";
 		status = "disabled";
 
 		pci@1,0 {
@@ -517,6 +610,8 @@
 		phy_type = "utmi";
 		nvidia,has-legacy-mode;
 		clocks = <&tegra_car TEGRA20_CLK_USBD>;
+		resets = <&tegra_car 22>;
+		reset-names = "usb";
 		nvidia,needs-double-reset;
 		nvidia,phy = <&phy1>;
 		status = "disabled";
@@ -548,6 +643,8 @@
 		interrupts = <GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>;
 		phy_type = "ulpi";
 		clocks = <&tegra_car TEGRA20_CLK_USB2>;
+		resets = <&tegra_car 58>;
+		reset-names = "usb";
 		nvidia,phy = <&phy2>;
 		status = "disabled";
 	};
@@ -569,6 +666,8 @@
 		interrupts = <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>;
 		phy_type = "utmi";
 		clocks = <&tegra_car TEGRA20_CLK_USB3>;
+		resets = <&tegra_car 59>;
+		reset-names = "usb";
 		nvidia,phy = <&phy3>;
 		status = "disabled";
 	};
@@ -597,6 +696,8 @@
 		reg = <0xc8000000 0x200>;
 		interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&tegra_car TEGRA20_CLK_SDMMC1>;
+		resets = <&tegra_car 14>;
+		reset-names = "sdhci";
 		status = "disabled";
 	};
 
@@ -605,6 +706,8 @@
 		reg = <0xc8000200 0x200>;
 		interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&tegra_car TEGRA20_CLK_SDMMC2>;
+		resets = <&tegra_car 9>;
+		reset-names = "sdhci";
 		status = "disabled";
 	};
 
@@ -613,6 +716,8 @@
 		reg = <0xc8000400 0x200>;
 		interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&tegra_car TEGRA20_CLK_SDMMC3>;
+		resets = <&tegra_car 69>;
+		reset-names = "sdhci";
 		status = "disabled";
 	};
 
@@ -621,6 +726,8 @@
 		reg = <0xc8000600 0x200>;
 		interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&tegra_car TEGRA20_CLK_SDMMC4>;
+		resets = <&tegra_car 15>;
+		reset-names = "sdhci";
 		status = "disabled";
 	};
 
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
