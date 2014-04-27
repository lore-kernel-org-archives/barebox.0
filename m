Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22d.google.com ([2a00:1450:4013:c00::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WeLR2-0007sR-IL
 for barebox@lists.infradead.org; Sun, 27 Apr 2014 09:31:46 +0000
Received: by mail-ee0-f45.google.com with SMTP id d17so3925306eek.32
 for <barebox@lists.infradead.org>; Sun, 27 Apr 2014 02:31:21 -0700 (PDT)
From: Beniamino Galvani <b.galvani@gmail.com>
Date: Sun, 27 Apr 2014 11:30:43 +0200
Message-Id: <1398591044-3616-11-git-send-email-b.galvani@gmail.com>
In-Reply-To: <1398591044-3616-1-git-send-email-b.galvani@gmail.com>
References: <1398591044-3616-1-git-send-email-b.galvani@gmail.com>
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
Subject: [PATCH 10/11] ARM: dts: add Rockchip devicetree files
To: barebox@lists.infradead.org


Signed-off-by: Beniamino Galvani <b.galvani@gmail.com>
---
 arch/arm/dts/rk3188-clocks.dtsi        |  289 +++++++++++++++++++++++++++++++
 arch/arm/dts/rk3188-radxarock.dts      |   32 ++++
 arch/arm/dts/rk3188.dtsi               |  298 ++++++++++++++++++++++++++++++++
 arch/arm/dts/rk3xxx.dtsi               |  134 ++++++++++++++
 include/dt-bindings/pinctrl/rockchip.h |   32 ++++
 5 files changed, 785 insertions(+)
 create mode 100644 arch/arm/dts/rk3188-clocks.dtsi
 create mode 100644 arch/arm/dts/rk3188-radxarock.dts
 create mode 100644 arch/arm/dts/rk3188.dtsi
 create mode 100644 arch/arm/dts/rk3xxx.dtsi
 create mode 100644 include/dt-bindings/pinctrl/rockchip.h

diff --git a/arch/arm/dts/rk3188-clocks.dtsi b/arch/arm/dts/rk3188-clocks.dtsi
new file mode 100644
index 0000000..b1b92dc
--- /dev/null
+++ b/arch/arm/dts/rk3188-clocks.dtsi
@@ -0,0 +1,289 @@
+/*
+ * Copyright (c) 2013 MundoReader S.L.
+ * Author: Heiko Stuebner <heiko@sntech.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+/ {
+	clocks {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		/*
+		 * This is a dummy clock, to be used as placeholder on
+		 * other mux clocks when a specific parent clock is not
+		 * yet implemented. It should be dropped when the driver
+		 * is complete.
+		 */
+		dummy: dummy {
+			compatible = "fixed-clock";
+			clock-frequency = <0>;
+			#clock-cells = <0>;
+		};
+
+		xin24m: xin24m {
+			compatible = "fixed-clock";
+			clock-frequency = <24000000>;
+			#clock-cells = <0>;
+		};
+
+		dummy48m: dummy48m {
+			compatible = "fixed-clock";
+			clock-frequency = <48000000>;
+			#clock-cells = <0>;
+		};
+
+		dummy150m: dummy150m {
+			compatible = "fixed-clock";
+			clock-frequency = <150000000>;
+			#clock-cells = <0>;
+		};
+
+		clk_gates0: gate-clk@200000d0 {
+			compatible = "rockchip,rk2928-gate-clk";
+			reg = <0x200000d0 0x4>;
+			clocks = <&dummy150m>, <&dummy>,
+				 <&dummy>, <&dummy>,
+				 <&dummy>, <&dummy>,
+				 <&dummy>, <&dummy>,
+				 <&dummy>, <&dummy>,
+				 <&dummy>, <&dummy>,
+				 <&dummy>, <&dummy>,
+				 <&dummy>, <&dummy>;
+
+			clock-output-names =
+				"gate_core_periph", "gate_cpu_gpll",
+				"gate_ddrphy", "gate_aclk_cpu",
+				"gate_hclk_cpu", "gate_pclk_cpu",
+				"gate_atclk_cpu", "gate_aclk_core",
+				"reserved", "gate_i2s0",
+				"gate_i2s0_frac", "reserved",
+				"reserved", "gate_spdif",
+				"gate_spdif_frac", "gate_testclk";
+
+			#clock-cells = <1>;
+		};
+
+		clk_gates1: gate-clk@200000d4 {
+			compatible = "rockchip,rk2928-gate-clk";
+			reg = <0x200000d4 0x4>;
+			clocks = <&xin24m>, <&xin24m>,
+				 <&xin24m>, <&dummy>,
+				 <&dummy>, <&xin24m>,
+				 <&xin24m>, <&dummy>,
+				 <&xin24m>, <&dummy>,
+				 <&xin24m>, <&dummy>,
+				 <&xin24m>, <&dummy>,
+				 <&xin24m>, <&dummy>;
+
+			clock-output-names =
+				"gate_timer0", "gate_timer1",
+				"gate_timer3", "gate_jtag",
+				"gate_aclk_lcdc1_src", "gate_otgphy0",
+				"gate_otgphy1", "gate_ddr_gpll",
+				"gate_uart0", "gate_frac_uart0",
+				"gate_uart1", "gate_frac_uart1",
+				"gate_uart2", "gate_frac_uart2",
+				"gate_uart3", "gate_frac_uart3";
+
+			#clock-cells = <1>;
+		};
+
+		clk_gates2: gate-clk@200000d8 {
+			compatible = "rockchip,rk2928-gate-clk";
+			reg = <0x200000d8 0x4>;
+			clocks = <&clk_gates2 1>, <&dummy>,
+				 <&dummy>, <&dummy>,
+				 <&dummy>, <&dummy>,
+				 <&clk_gates2 3>, <&dummy>,
+				 <&dummy>, <&dummy>,
+				 <&dummy>, <&dummy48m>,
+				 <&dummy>, <&dummy48m>,
+				 <&dummy>, <&dummy>;
+
+			clock-output-names =
+				"gate_periph_src", "gate_aclk_periph",
+				"gate_hclk_periph", "gate_pclk_periph",
+				"gate_smc", "gate_mac",
+				"gate_hsadc", "gate_hsadc_frac",
+				"gate_saradc", "gate_spi0",
+				"gate_spi1", "gate_mmc0",
+				"gate_mac_lbtest", "gate_mmc1",
+				"gate_emmc", "reserved";
+
+			#clock-cells = <1>;
+		};
+
+		clk_gates3: gate-clk@200000dc {
+			compatible = "rockchip,rk2928-gate-clk";
+			reg = <0x200000dc 0x4>;
+			clocks = <&dummy>, <&dummy>,
+				 <&dummy>, <&dummy>,
+				 <&xin24m>, <&xin24m>,
+				 <&dummy>, <&dummy>,
+				 <&xin24m>, <&dummy>,
+				 <&dummy>, <&dummy>,
+				 <&dummy>, <&dummy>,
+				 <&xin24m>, <&dummy>;
+
+			clock-output-names =
+				"gate_aclk_lcdc0_src", "gate_dclk_lcdc0",
+				"gate_dclk_lcdc1", "gate_pclkin_cif0",
+				"gate_timer2", "gate_timer4",
+				"gate_hsicphy", "gate_cif0_out",
+				"gate_timer5", "gate_aclk_vepu",
+				"gate_hclk_vepu", "gate_aclk_vdpu",
+				"gate_hclk_vdpu", "reserved",
+				"gate_timer6", "gate_aclk_gpu_src";
+
+			#clock-cells = <1>;
+		};
+
+		clk_gates4: gate-clk@200000e0 {
+			compatible = "rockchip,rk2928-gate-clk";
+			reg = <0x200000e0 0x4>;
+			clocks = <&clk_gates2 2>, <&clk_gates2 3>,
+				 <&clk_gates2 1>, <&clk_gates2 1>,
+				 <&clk_gates2 1>, <&clk_gates2 2>,
+				 <&clk_gates2 2>, <&clk_gates2 2>,
+				 <&clk_gates0 4>, <&clk_gates0 4>,
+				 <&clk_gates0 3>, <&dummy>,
+				 <&clk_gates0 3>, <&dummy>,
+				 <&dummy>, <&dummy>;
+
+			clock-output-names =
+				"gate_hclk_peri_axi_matrix", "gate_pclk_peri_axi_matrix",
+				"gate_aclk_cpu_peri", "gate_aclk_peri_axi_matrix",
+				"gate_aclk_pei_niu", "gate_hclk_usb_peri",
+				"gate_hclk_peri_ahb_arbi", "gate_hclk_emem_peri",
+				"gate_hclk_cpubus", "gate_hclk_ahb2apb",
+				"gate_aclk_strc_sys", "reserved",
+				"gate_aclk_intmem", "reserved",
+				"gate_hclk_imem1", "gate_hclk_imem0";
+
+			#clock-cells = <1>;
+		};
+
+		clk_gates5: gate-clk@200000e4 {
+			compatible = "rockchip,rk2928-gate-clk";
+			reg = <0x200000e4 0x4>;
+			clocks = <&clk_gates0 3>, <&clk_gates2 1>,
+				 <&clk_gates0 5>, <&clk_gates0 5>,
+				 <&clk_gates0 5>, <&clk_gates0 5>,
+				 <&clk_gates0 4>, <&clk_gates0 5>,
+				 <&clk_gates2 1>, <&clk_gates2 2>,
+				 <&clk_gates2 2>, <&clk_gates2 2>,
+				 <&clk_gates2 2>, <&clk_gates4 5>;
+
+			clock-output-names =
+				"gate_aclk_dmac1", "gate_aclk_dmac2",
+				"gate_pclk_efuse", "gate_pclk_tzpc",
+				"gate_pclk_grf", "gate_pclk_pmu",
+				"gate_hclk_rom", "gate_pclk_ddrupctl",
+				"gate_aclk_smc", "gate_hclk_nandc",
+				"gate_hclk_mmc0", "gate_hclk_mmc1",
+				"gate_hclk_emmc", "gate_hclk_otg0";
+
+			#clock-cells = <1>;
+		};
+
+		clk_gates6: gate-clk@200000e8 {
+			compatible = "rockchip,rk2928-gate-clk";
+			reg = <0x200000e8 0x4>;
+			clocks = <&clk_gates3 0>, <&clk_gates0 4>,
+				 <&clk_gates0 4>, <&clk_gates1 4>,
+				 <&clk_gates0 4>, <&clk_gates3 0>,
+				 <&dummy>, <&dummy>,
+				 <&clk_gates3 0>, <&clk_gates0 4>,
+				 <&clk_gates0 4>, <&clk_gates1 4>,
+				 <&clk_gates0 4>, <&clk_gates3 0>;
+
+			clock-output-names =
+				"gate_aclk_lcdc0", "gate_hclk_lcdc0",
+				"gate_hclk_lcdc1", "gate_aclk_lcdc1",
+				"gate_hclk_cif0", "gate_aclk_cif0",
+				"reserved", "reserved",
+				"gate_aclk_ipp", "gate_hclk_ipp",
+				"gate_hclk_rga", "gate_aclk_rga",
+				"gate_hclk_vio_bus", "gate_aclk_vio0";
+
+			#clock-cells = <1>;
+		};
+
+		clk_gates7: gate-clk@200000ec {
+			compatible = "rockchip,rk2928-gate-clk";
+			reg = <0x200000ec 0x4>;
+			clocks = <&clk_gates2 2>, <&clk_gates0 4>,
+				 <&clk_gates0 4>, <&dummy>,
+				 <&dummy>, <&clk_gates2 2>,
+				 <&clk_gates2 2>, <&clk_gates0 5>,
+				 <&dummy>, <&clk_gates0 5>,
+				 <&clk_gates0 5>, <&clk_gates2 3>,
+				 <&clk_gates2 3>, <&clk_gates2 3>,
+				 <&clk_gates2 3>, <&clk_gates2 3>;
+
+			clock-output-names =
+				"gate_hclk_emac", "gate_hclk_spdif",
+				"gate_hclk_i2s0_2ch", "gate_hclk_otg1",
+				"gate_hclk_hsic", "gate_hclk_hsadc",
+				"gate_hclk_pidf", "gate_pclk_timer0",
+				"reserved", "gate_pclk_timer2",
+				"gate_pclk_pwm01", "gate_pclk_pwm23",
+				"gate_pclk_spi0", "gate_pclk_spi1",
+				"gate_pclk_saradc", "gate_pclk_wdt";
+
+			#clock-cells = <1>;
+		};
+
+		clk_gates8: gate-clk@200000f0 {
+			compatible = "rockchip,rk2928-gate-clk";
+			reg = <0x200000f0 0x4>;
+			clocks = <&clk_gates0 5>, <&clk_gates0 5>,
+				 <&clk_gates2 3>, <&clk_gates2 3>,
+				 <&clk_gates0 5>, <&clk_gates0 5>,
+				 <&clk_gates2 3>, <&clk_gates2 3>,
+				 <&clk_gates2 3>, <&clk_gates0 5>,
+				 <&clk_gates0 5>, <&clk_gates0 5>,
+				 <&clk_gates2 3>, <&dummy>;
+
+			clock-output-names =
+				"gate_pclk_uart0", "gate_pclk_uart1",
+				"gate_pclk_uart2", "gate_pclk_uart3",
+				"gate_pclk_i2c0", "gate_pclk_i2c1",
+				"gate_pclk_i2c2", "gate_pclk_i2c3",
+				"gate_pclk_i2c4", "gate_pclk_gpio0",
+				"gate_pclk_gpio1", "gate_pclk_gpio2",
+				"gate_pclk_gpio3", "gate_aclk_gps";
+
+			#clock-cells = <1>;
+		};
+
+		clk_gates9: gate-clk@200000f4 {
+			compatible = "rockchip,rk2928-gate-clk";
+			reg = <0x200000f4 0x4>;
+			clocks = <&dummy>, <&dummy>,
+				 <&dummy>, <&dummy>,
+				 <&dummy>, <&dummy>,
+				 <&dummy>, <&dummy>;
+
+			clock-output-names =
+				"gate_clk_core_dbg", "gate_pclk_dbg",
+				"gate_clk_trace", "gate_atclk",
+				"gate_clk_l2c", "gate_aclk_vio1",
+				"gate_pclk_publ", "gate_aclk_gpu";
+
+			#clock-cells = <1>;
+		};
+	};
+
+};
diff --git a/arch/arm/dts/rk3188-radxarock.dts b/arch/arm/dts/rk3188-radxarock.dts
new file mode 100644
index 0000000..be2a302
--- /dev/null
+++ b/arch/arm/dts/rk3188-radxarock.dts
@@ -0,0 +1,32 @@
+/*
+ * Copyright (c) 2013 Heiko Stuebner <heiko@sntech.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+/dts-v1/;
+#include "rk3188.dtsi"
+
+/ {
+	model = "Radxa Rock";
+
+	memory {
+		reg = <0x60000000 0x80000000>;
+	};
+
+	soc {
+		uart2: serial@20064000 {
+			pinctrl-names = "default";
+			pinctrl-0 = <&uart2_xfer>;
+			status = "okay";
+		};
+	};
+};
diff --git a/arch/arm/dts/rk3188.dtsi b/arch/arm/dts/rk3188.dtsi
new file mode 100644
index 0000000..838da95
--- /dev/null
+++ b/arch/arm/dts/rk3188.dtsi
@@ -0,0 +1,298 @@
+/*
+ * Copyright (c) 2013 MundoReader S.L.
+ * Author: Heiko Stuebner <heiko@sntech.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include "rk3xxx.dtsi"
+#include "rk3188-clocks.dtsi"
+
+/ {
+	compatible = "rockchip,rk3188";
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu@0 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a9";
+			next-level-cache = <&L2>;
+			reg = <0x0>;
+		};
+		cpu@1 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a9";
+			next-level-cache = <&L2>;
+			reg = <0x1>;
+		};
+		cpu@2 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a9";
+			next-level-cache = <&L2>;
+			reg = <0x2>;
+		};
+		cpu@3 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a9";
+			next-level-cache = <&L2>;
+			reg = <0x3>;
+		};
+	};
+
+	soc {
+		global-timer@1013c200 {
+			interrupts = <GIC_PPI 11 0xf04>;
+		};
+
+		local-timer@1013c600 {
+			interrupts = <GIC_PPI 13 0xf04>;
+		};
+
+		sram: sram@10080000 {
+			compatible = "mmio-sram";
+			reg = <0x10080000 0x8000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0 0x10080000 0x8000>;
+
+			smp-sram@0 {
+				compatible = "rockchip,rk3066-smp-sram";
+				reg = <0x0 0x50>;
+			};
+		};
+
+		ethernet@10204000 {
+			compatible = "snps,arc-emac";
+			reg = <0x10204000 0x100>;
+			interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
+			clock-frequency = <50000000>;
+			max-speed = <100>;
+			phy = <&phy0>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&emac0_pins>;
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+			phy0: ethernet-phy@0 {
+				reg = <0>;
+			};
+		};
+
+		pinctrl@20008000 {
+			compatible = "rockchip,rk3188-pinctrl";
+			reg = <0x20008000 0xa0>,
+			      <0x20008164 0x1a0>;
+			reg-names = "base", "pull";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges;
+
+			gpio0: gpio0@0x2000a000 {
+				compatible = "rockchip,rk3188-gpio-bank0";
+				reg = <0x2000a000 0x100>,
+				      <0x20004064 0x8>;
+				interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk_gates8 9>;
+
+				gpio-controller;
+				#gpio-cells = <2>;
+
+				interrupt-controller;
+				#interrupt-cells = <2>;
+			};
+
+			gpio1: gpio1@0x2003c000 {
+				compatible = "rockchip,gpio-bank";
+				reg = <0x2003c000 0x100>;
+				interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk_gates8 10>;
+
+				gpio-controller;
+				#gpio-cells = <2>;
+
+				interrupt-controller;
+				#interrupt-cells = <2>;
+			};
+
+			gpio2: gpio2@2003e000 {
+				compatible = "rockchip,gpio-bank";
+				reg = <0x2003e000 0x100>;
+				interrupts = <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk_gates8 11>;
+
+				gpio-controller;
+				#gpio-cells = <2>;
+
+				interrupt-controller;
+				#interrupt-cells = <2>;
+			};
+
+			gpio3: gpio3@20080000 {
+				compatible = "rockchip,gpio-bank";
+				reg = <0x20080000 0x100>;
+				interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk_gates8 12>;
+
+				gpio-controller;
+				#gpio-cells = <2>;
+
+				interrupt-controller;
+				#interrupt-cells = <2>;
+			};
+
+			pcfg_pull_up: pcfg_pull_up {
+				bias-pull-up;
+			};
+
+			pcfg_pull_down: pcfg_pull_down {
+				bias-pull-down;
+			};
+
+			pcfg_pull_none: pcfg_pull_none {
+				bias-disable;
+			};
+
+			emac0 {
+				emac0_pins: emac0-pins {
+					rockchip,pins = <RK_GPIO3 16 RK_FUNC_2 &pcfg_pull_up>,
+							<RK_GPIO3 17 RK_FUNC_2 &pcfg_pull_up>,
+							<RK_GPIO3 18 RK_FUNC_2 &pcfg_pull_up>,
+							<RK_GPIO3 19 RK_FUNC_2 &pcfg_pull_up>,
+							<RK_GPIO3 20 RK_FUNC_2 &pcfg_pull_up>,
+							<RK_GPIO3 21 RK_FUNC_2 &pcfg_pull_none>,
+							<RK_GPIO3 22 RK_FUNC_2 &pcfg_pull_up>,
+							<RK_GPIO3 23 RK_FUNC_2 &pcfg_pull_up>,
+							<RK_GPIO3 24 RK_FUNC_2 &pcfg_pull_up>,
+							<RK_GPIO3 25 RK_FUNC_2 &pcfg_pull_up>;
+				};
+			};
+
+			uart0 {
+				uart0_xfer: uart0-xfer {
+					rockchip,pins = <RK_GPIO1 0 RK_FUNC_1 &pcfg_pull_none>,
+							<RK_GPIO1 1 RK_FUNC_1 &pcfg_pull_none>;
+				};
+
+				uart0_cts: uart0-cts {
+					rockchip,pins = <RK_GPIO1 2 RK_FUNC_1 &pcfg_pull_none>;
+				};
+
+				uart0_rts: uart0-rts {
+					rockchip,pins = <RK_GPIO1 3 RK_FUNC_1 &pcfg_pull_none>;
+				};
+			};
+
+			uart1 {
+				uart1_xfer: uart1-xfer {
+					rockchip,pins = <RK_GPIO1 4 RK_FUNC_1 &pcfg_pull_none>,
+							<RK_GPIO1 5 RK_FUNC_1 &pcfg_pull_none>;
+				};
+
+				uart1_cts: uart1-cts {
+					rockchip,pins = <RK_GPIO1 6 RK_FUNC_1 &pcfg_pull_none>;
+				};
+
+				uart1_rts: uart1-rts {
+					rockchip,pins = <RK_GPIO1 7 RK_FUNC_1 &pcfg_pull_none>;
+				};
+			};
+
+			uart2 {
+				uart2_xfer: uart2-xfer {
+					rockchip,pins = <RK_GPIO1 8 RK_FUNC_1 &pcfg_pull_none>,
+							<RK_GPIO1 9 RK_FUNC_1 &pcfg_pull_none>;
+				};
+				/* no rts / cts for uart2 */
+			};
+
+			uart3 {
+				uart3_xfer: uart3-xfer {
+					rockchip,pins = <RK_GPIO1 10 RK_FUNC_1 &pcfg_pull_none>,
+							<RK_GPIO1 11 RK_FUNC_1 &pcfg_pull_none>;
+				};
+
+				uart3_cts: uart3-cts {
+					rockchip,pins = <RK_GPIO1 12 RK_FUNC_1 &pcfg_pull_none>;
+				};
+
+				uart3_rts: uart3-rts {
+					rockchip,pins = <RK_GPIO1 13 RK_FUNC_1 &pcfg_pull_none>;
+				};
+			};
+
+			sd0 {
+				sd0_clk: sd0-clk {
+					rockchip,pins = <RK_GPIO3 2 RK_FUNC_1 &pcfg_pull_none>;
+				};
+
+				sd0_cmd: sd0-cmd {
+					rockchip,pins = <RK_GPIO3 3 RK_FUNC_1 &pcfg_pull_none>;
+				};
+
+				sd0_cd: sd0-cd {
+					rockchip,pins = <RK_GPIO3 8 RK_FUNC_1 &pcfg_pull_none>;
+				};
+
+				sd0_wp: sd0-wp {
+					rockchip,pins = <RK_GPIO3 9 RK_FUNC_1 &pcfg_pull_none>;
+				};
+
+				sd0_pwr: sd0-pwr {
+					rockchip,pins = <RK_GPIO3 1 RK_FUNC_1 &pcfg_pull_none>;
+				};
+
+				sd0_bus1: sd0-bus-width1 {
+					rockchip,pins = <RK_GPIO3 4 RK_FUNC_1 &pcfg_pull_none>;
+				};
+
+				sd0_bus4: sd0-bus-width4 {
+					rockchip,pins = <RK_GPIO3 4 RK_FUNC_1 &pcfg_pull_none>,
+							<RK_GPIO3 5 RK_FUNC_1 &pcfg_pull_none>,
+							<RK_GPIO3 6 RK_FUNC_1 &pcfg_pull_none>,
+							<RK_GPIO3 7 RK_FUNC_1 &pcfg_pull_none>;
+				};
+			};
+
+			sd1 {
+				sd1_clk: sd1-clk {
+					rockchip,pins = <RK_GPIO3 21 RK_FUNC_1 &pcfg_pull_none>;
+				};
+
+				sd1_cmd: sd1-cmd {
+					rockchip,pins = <RK_GPIO3 16 RK_FUNC_1 &pcfg_pull_none>;
+				};
+
+				sd1_cd: sd1-cd {
+					rockchip,pins = <RK_GPIO3 22 RK_FUNC_1 &pcfg_pull_none>;
+				};
+
+				sd1_wp: sd1-wp {
+					rockchip,pins = <RK_GPIO3 23 RK_FUNC_1 &pcfg_pull_none>;
+				};
+
+				sd1_bus1: sd1-bus-width1 {
+					rockchip,pins = <RK_GPIO3 17 RK_FUNC_1 &pcfg_pull_none>;
+				};
+
+				sd1_bus4: sd1-bus-width4 {
+					rockchip,pins = <RK_GPIO3 17 RK_FUNC_1 &pcfg_pull_none>,
+							<RK_GPIO3 18 RK_FUNC_1 &pcfg_pull_none>,
+							<RK_GPIO3 19 RK_FUNC_1 &pcfg_pull_none>,
+							<RK_GPIO3 20 RK_FUNC_1 &pcfg_pull_none>;
+				};
+			};
+		};
+	};
+};
diff --git a/arch/arm/dts/rk3xxx.dtsi b/arch/arm/dts/rk3xxx.dtsi
new file mode 100644
index 0000000..26e5a96
--- /dev/null
+++ b/arch/arm/dts/rk3xxx.dtsi
@@ -0,0 +1,134 @@
+/*
+ * Copyright (c) 2013 MundoReader S.L.
+ * Author: Heiko Stuebner <heiko@sntech.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include "skeleton.dtsi"
+
+/ {
+	interrupt-parent = <&gic>;
+
+	soc {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "simple-bus";
+		ranges;
+
+		scu@1013c000 {
+			compatible = "arm,cortex-a9-scu";
+			reg = <0x1013c000 0x100>;
+		};
+
+		pmu@20004000 {
+			compatible = "rockchip,rk3066-pmu";
+			reg = <0x20004000 0x100>;
+		};
+
+		gic: interrupt-controller@1013d000 {
+			compatible = "arm,cortex-a9-gic";
+			interrupt-controller;
+			#interrupt-cells = <3>;
+			reg = <0x1013d000 0x1000>,
+			      <0x1013c100 0x0100>;
+		};
+
+		L2: l2-cache-controller@10138000 {
+			compatible = "arm,pl310-cache";
+			reg = <0x10138000 0x1000>;
+			cache-unified;
+			cache-level = <2>;
+		};
+
+		global-timer@1013c200 {
+			compatible = "arm,cortex-a9-global-timer";
+			reg = <0x1013c200 0x20>;
+			interrupts = <GIC_PPI 11 0x304>;
+			clocks = <&dummy150m>;
+		};
+
+		local-timer@1013c600 {
+			compatible = "arm,cortex-a9-twd-timer";
+			reg = <0x1013c600 0x20>;
+			interrupts = <GIC_PPI 13 0x304>;
+			clocks = <&dummy150m>;
+		};
+
+		uart0: serial@10124000 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0x10124000 0x400>;
+			interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
+			reg-shift = <2>;
+			reg-io-width = <1>;
+			clocks = <&clk_gates1 8>;
+			status = "disabled";
+		};
+
+		uart1: serial@10126000 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0x10126000 0x400>;
+			interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
+			reg-shift = <2>;
+			reg-io-width = <1>;
+			clocks = <&clk_gates1 10>;
+			status = "disabled";
+		};
+
+		uart2: serial@20064000 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0x20064000 0x400>;
+			interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
+			reg-shift = <2>;
+			reg-io-width = <1>;
+			clocks = <&clk_gates1 12>;
+			status = "disabled";
+		};
+
+		uart3: serial@20068000 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0x20068000 0x400>;
+			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
+			reg-shift = <2>;
+			reg-io-width = <1>;
+			clocks = <&clk_gates1 14>;
+			status = "disabled";
+		};
+
+		dwmmc@10214000 {
+			compatible = "rockchip,rk2928-dw-mshc";
+			reg = <0x10214000 0x1000>;
+			interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			clocks = <&clk_gates5 10>, <&clk_gates2 11>;
+			clock-names = "biu", "ciu";
+
+			status = "disabled";
+		};
+
+		dwmmc@10218000 {
+			compatible = "rockchip,rk2928-dw-mshc";
+			reg = <0x10218000 0x1000>;
+			interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			clocks = <&clk_gates5 11>, <&clk_gates2 13>;
+			clock-names = "biu", "ciu";
+
+			status = "disabled";
+		};
+	};
+};
diff --git a/include/dt-bindings/pinctrl/rockchip.h b/include/dt-bindings/pinctrl/rockchip.h
new file mode 100644
index 0000000..cd5788b
--- /dev/null
+++ b/include/dt-bindings/pinctrl/rockchip.h
@@ -0,0 +1,32 @@
+/*
+ * Header providing constants for Rockchip pinctrl bindings.
+ *
+ * Copyright (c) 2013 MundoReader S.L.
+ * Author: Heiko Stuebner <heiko@sntech.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#ifndef __DT_BINDINGS_ROCKCHIP_PINCTRL_H__
+#define __DT_BINDINGS_ROCKCHIP_PINCTRL_H__
+
+#define RK_GPIO0	0
+#define RK_GPIO1	1
+#define RK_GPIO2	2
+#define RK_GPIO3	3
+#define RK_GPIO4	4
+#define RK_GPIO6	6
+
+#define RK_FUNC_GPIO	0
+#define RK_FUNC_1	1
+#define RK_FUNC_2	2
+
+#endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
