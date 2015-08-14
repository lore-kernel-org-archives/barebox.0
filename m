Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZQAUI-0007Zt-H8
 for barebox@lists.infradead.org; Fri, 14 Aug 2015 08:37:21 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 14 Aug 2015 10:36:42 +0200
Message-Id: <1439541405-15388-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 1/4] ARM: dts: remove most of socfpga barebox-specific dt code
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Instead of using internal devicetree files, use the official ones from
/dts/src/arm.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/dts/socfpga.dtsi                  | 659 +----------------------------
 arch/arm/dts/socfpga_cyclone5.dtsi         |  78 ----
 arch/arm/dts/socfpga_cyclone5_socdk.dts    |  43 +-
 arch/arm/dts/socfpga_cyclone5_sockit.dts   |  45 +-
 arch/arm/dts/socfpga_cyclone5_socrates.dts |  33 +-
 5 files changed, 49 insertions(+), 809 deletions(-)
 delete mode 100644 arch/arm/dts/socfpga_cyclone5.dtsi

diff --git a/arch/arm/dts/socfpga.dtsi b/arch/arm/dts/socfpga.dtsi
index 14c0654b2ad0..d4d498be1301 100644
--- a/arch/arm/dts/socfpga.dtsi
+++ b/arch/arm/dts/socfpga.dtsi
@@ -1,595 +1,12 @@
-/*
- *  Copyright (C) 2012 Altera <www.altera.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program.  If not, see <http://www.gnu.org/licenses/>.
- */
-
-/include/ "skeleton.dtsi"
-
 / {
-	#address-cells = <1>;
-	#size-cells = <1>;
-
 	aliases {
-		ethernet0 = &gmac0;
-		ethernet1 = &gmac1;
-		serial0 = &uart0;
-		serial1 = &uart1;
-		gpio0 = &gpio0;
-		gpio1 = &gpio1;
-		gpio2 = &gpio2;
 		mmc0 = &mmc;
 	};
 
-	cpus {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		cpu@0 {
-			compatible = "arm,cortex-a9";
-			device_type = "cpu";
-			reg = <0>;
-			next-level-cache = <&L2>;
-		};
-		cpu@1 {
-			compatible = "arm,cortex-a9";
-			device_type = "cpu";
-			reg = <1>;
-			next-level-cache = <&L2>;
-		};
-	};
-
-	intc: intc@fffed000 {
-		compatible = "arm,cortex-a9-gic";
-		#interrupt-cells = <3>;
-		interrupt-controller;
-		reg = <0xfffed000 0x1000>,
-		      <0xfffec100 0x100>;
-	};
-
 	soc {
-		#address-cells = <1>;
-		#size-cells = <1>;
-		compatible = "simple-bus";
-		device_type = "soc";
-		interrupt-parent = <&intc>;
-		ranges;
-
-		amba {
-			compatible = "arm,amba-bus";
-			#address-cells = <1>;
-			#size-cells = <1>;
-			ranges;
-
-			pdma: pdma@ffe01000 {
-				compatible = "arm,pl330", "arm,primecell";
-				reg = <0xffe01000 0x1000>;
-				interrupts = <0 180 4>;
-				#dma-cells = <1>;
-				#dma-channels = <8>;
-				#dma-requests = <32>;
-			};
-		};
-
-		clkmgr@ffd04000 {
-				compatible = "altr,clk-mgr";
-				reg = <0xffd04000 0x1000>;
-
-				clocks {
-					#address-cells = <1>;
-					#size-cells = <0>;
-
-					osc: osc1 {
-						#clock-cells = <0>;
-						compatible = "fixed-clock";
-					};
-
-					f2s_periph_ref_clk: f2s_periph_ref_clk {
-						#clock-cells = <0>;
-						compatible = "fixed-clock";
-						clock-frequency = <10000000>;
-					};
-
-					main_pll: main_pll {
-						#address-cells = <1>;
-						#size-cells = <0>;
-						#clock-cells = <0>;
-						compatible = "altr,socfpga-pll-clock";
-						clocks = <&osc>;
-						reg = <0x40>;
-
-						mpuclk: mpuclk {
-							#clock-cells = <0>;
-							compatible = "altr,socfpga-perip-clk";
-							clocks = <&main_pll>;
-							fixed-divider = <2>;
-							reg = <0x48>;
-						};
-
-						mainclk: mainclk {
-							#clock-cells = <0>;
-							compatible = "altr,socfpga-perip-clk";
-							clocks = <&main_pll>;
-							fixed-divider = <4>;
-							reg = <0x4C>;
-						};
-
-						dbg_base_clk: dbg_base_clk {
-							#clock-cells = <0>;
-							compatible = "altr,socfpga-perip-clk";
-							clocks = <&main_pll>;
-							fixed-divider = <4>;
-							reg = <0x50>;
-						};
-
-						main_qspi_clk: main_qspi_clk {
-							#clock-cells = <0>;
-							compatible = "altr,socfpga-perip-clk";
-							clocks = <&main_pll>;
-							reg = <0x54>;
-						};
-
-						main_nand_sdmmc_clk: main_nand_sdmmc_clk {
-							#clock-cells = <0>;
-							compatible = "altr,socfpga-perip-clk";
-							clocks = <&main_pll>;
-							reg = <0x58>;
-						};
-
-						cfg_h2f_usr0_clk: cfg_h2f_usr0_clk {
-							#clock-cells = <0>;
-							compatible = "altr,socfpga-perip-clk";
-							clocks = <&main_pll>;
-							reg = <0x5C>;
-						};
-					};
-
-					periph_pll: periph_pll {
-						#address-cells = <1>;
-						#size-cells = <0>;
-						#clock-cells = <0>;
-						compatible = "altr,socfpga-pll-clock";
-						clocks = <&osc>;
-						reg = <0x80>;
-
-						emac0_clk: emac0_clk {
-							#clock-cells = <0>;
-							compatible = "altr,socfpga-perip-clk";
-							clocks = <&periph_pll>;
-							reg = <0x88>;
-						};
-
-						emac1_clk: emac1_clk {
-							#clock-cells = <0>;
-							compatible = "altr,socfpga-perip-clk";
-							clocks = <&periph_pll>;
-							reg = <0x8C>;
-						};
-
-						per_qspi_clk: per_qsi_clk {
-							#clock-cells = <0>;
-							compatible = "altr,socfpga-perip-clk";
-							clocks = <&periph_pll>;
-							reg = <0x90>;
-						};
-
-						per_nand_mmc_clk: per_nand_mmc_clk {
-							#clock-cells = <0>;
-							compatible = "altr,socfpga-perip-clk";
-							clocks = <&periph_pll>;
-							reg = <0x94>;
-						};
-
-						per_base_clk: per_base_clk {
-							#clock-cells = <0>;
-							compatible = "altr,socfpga-perip-clk";
-							clocks = <&periph_pll>;
-							reg = <0x98>;
-						};
-
-						h2f_usr1_clk: h2f_usr1_clk {
-							#clock-cells = <0>;
-							compatible = "altr,socfpga-perip-clk";
-							clocks = <&periph_pll>;
-							reg = <0x9C>;
-						};
-					};
-
-					sdram_pll: sdram_pll {
-						#address-cells = <1>;
-						#size-cells = <0>;
-						#clock-cells = <0>;
-						compatible = "altr,socfpga-pll-clock";
-						clocks = <&osc>;
-						reg = <0xC0>;
-
-						ddr_dqs_clk: ddr_dqs_clk {
-							#clock-cells = <0>;
-							compatible = "altr,socfpga-perip-clk";
-							clocks = <&sdram_pll>;
-							reg = <0xC8>;
-						};
-
-						ddr_2x_dqs_clk: ddr_2x_dqs_clk {
-							#clock-cells = <0>;
-							compatible = "altr,socfpga-perip-clk";
-							clocks = <&sdram_pll>;
-							reg = <0xCC>;
-						};
-
-						ddr_dq_clk: ddr_dq_clk {
-							#clock-cells = <0>;
-							compatible = "altr,socfpga-perip-clk";
-							clocks = <&sdram_pll>;
-							reg = <0xD0>;
-						};
-
-						h2f_usr2_clk: h2f_usr2_clk {
-							#clock-cells = <0>;
-							compatible = "altr,socfpga-perip-clk";
-							clocks = <&sdram_pll>;
-							reg = <0xD4>;
-						};
-					};
-
-					mpu_periph_clk: mpu_periph_clk {
-						#clock-cells = <0>;
-						compatible = "altr,socfpga-gate-clk";
-						clocks = <&mpuclk>;
-						fixed-divider = <4>;
-					};
-
-					mpu_l2_ram_clk: mpu_l2_ram_clk {
-						#clock-cells = <0>;
-						compatible = "altr,socfpga-gate-clk";
-						clocks = <&mpuclk>;
-						fixed-divider = <2>;
-					};
-
-					l4_main_clk: l4_main_clk {
-						#clock-cells = <0>;
-						compatible = "altr,socfpga-gate-clk";
-						clocks = <&mainclk>;
-						clk-gate = <0x60 0>;
-					};
-
-					l3_main_clk: l3_main_clk {
-						#clock-cells = <0>;
-						compatible = "altr,socfpga-gate-clk";
-						clocks = <&mainclk>;
-					};
-
-					l3_mp_clk: l3_mp_clk {
-						#clock-cells = <0>;
-						compatible = "altr,socfpga-gate-clk";
-						clocks = <&mainclk>;
-						div-reg = <0x64 0 2>;
-						clk-gate = <0x60 1>;
-					};
-
-					l3_sp_clk: l3_sp_clk {
-						#clock-cells = <0>;
-						compatible = "altr,socfpga-gate-clk";
-						clocks = <&mainclk>;
-						div-reg = <0x64 2 2>;
-					};
-
-					l4_mp_clk: l4_mp_clk {
-						#clock-cells = <0>;
-						compatible = "altr,socfpga-gate-clk";
-						clocks = <&mainclk>, <&per_base_clk>;
-						div-reg = <0x64 4 3>;
-						parent-reg = <0x70 0 1>;
-						clk-gate = <0x60 2>;
-					};
-
-					l4_sp_clk: l4_sp_clk {
-						#clock-cells = <0>;
-						compatible = "altr,socfpga-gate-clk";
-						clocks = <&mainclk>, <&per_base_clk>;
-						div-reg = <0x64 7 3>;
-						parent-reg = <0x70 1 1>;
-						clk-gate = <0x60 3>;
-					};
-
-					dbg_at_clk: dbg_at_clk {
-						#clock-cells = <0>;
-						compatible = "altr,socfpga-gate-clk";
-						clocks = <&dbg_base_clk>;
-						div-reg = <0x68 0 2>;
-						clk-gate = <0x60 4>;
-					};
-
-					dbg_clk: dbg_clk {
-						#clock-cells = <0>;
-						compatible = "altr,socfpga-gate-clk";
-						clocks = <&dbg_base_clk>;
-						div-reg = <0x68 2 2>;
-						clk-gate = <0x60 5>;
-					};
-
-					dbg_trace_clk: dbg_trace_clk {
-						#clock-cells = <0>;
-						compatible = "altr,socfpga-gate-clk";
-						clocks = <&dbg_base_clk>;
-						div-reg = <0x6C 0 3>;
-						clk-gate = <0x60 6>;
-					};
-
-					dbg_timer_clk: dbg_timer_clk {
-						#clock-cells = <0>;
-						compatible = "altr,socfpga-gate-clk";
-						clocks = <&dbg_base_clk>;
-						clk-gate = <0x60 7>;
-					};
-
-					cfg_clk: cfg_clk {
-						#clock-cells = <0>;
-						compatible = "altr,socfpga-gate-clk";
-						clocks = <&cfg_h2f_usr0_clk>;
-						clk-gate = <0x60 8>;
-					};
-
-					h2f_user0_clk: h2f_user0_clk {
-						#clock-cells = <0>;
-						compatible = "altr,socfpga-gate-clk";
-						clocks = <&cfg_h2f_usr0_clk>;
-						clk-gate = <0x60 9>;
-					};
-
-					emac_0_clk: emac_0_clk {
-						#clock-cells = <0>;
-						compatible = "altr,socfpga-gate-clk";
-						clocks = <&emac0_clk>;
-						clk-gate = <0xa0 0>;
-					};
-
-					emac_1_clk: emac_1_clk {
-						#clock-cells = <0>;
-						compatible = "altr,socfpga-gate-clk";
-						clocks = <&emac1_clk>;
-						clk-gate = <0xa0 1>;
-					};
-
-					usb_mp_clk: usb_mp_clk {
-						#clock-cells = <0>;
-						compatible = "altr,socfpga-gate-clk";
-						clocks = <&per_base_clk>;
-						clk-gate = <0xa0 2>;
-						div-reg = <0xa4 0 3>;
-					};
-
-					spi_m_clk: spi_m_clk {
-						#clock-cells = <0>;
-						compatible = "altr,socfpga-gate-clk";
-						clocks = <&per_base_clk>;
-						clk-gate = <0xa0 3>;
-						div-reg = <0xa4 3 3>;
-					};
-
-					can0_clk: can0_clk {
-						#clock-cells = <0>;
-						compatible = "altr,socfpga-gate-clk";
-						clocks = <&per_base_clk>;
-						clk-gate = <0xa0 4>;
-						div-reg = <0xa4 6 3>;
-					};
-
-					can1_clk: can1_clk {
-						#clock-cells = <0>;
-						compatible = "altr,socfpga-gate-clk";
-						clocks = <&per_base_clk>;
-						clk-gate = <0xa0 5>;
-						div-reg = <0xa4 9 3>;
-					};
-
-					gpio_db_clk: gpio_db_clk {
-						#clock-cells = <0>;
-						compatible = "altr,socfpga-gate-clk";
-						clocks = <&per_base_clk>;
-						clk-gate = <0xa0 6>;
-						div-reg = <0xa8 0 24>;
-					};
-
-					h2f_user1_clk: h2f_user1_clk {
-						#clock-cells = <0>;
-						compatible = "altr,socfpga-gate-clk";
-						clocks = <&h2f_usr1_clk>;
-						clk-gate = <0xa0 7>;
-					};
-
-					sdmmc_clk: sdmmc_clk {
-						#clock-cells = <0>;
-						compatible = "altr,socfpga-gate-clk";
-						clocks = <&f2s_periph_ref_clk>, <&main_nand_sdmmc_clk>, <&per_nand_mmc_clk>;
-						clk-gate = <0xa0 8>;
-						parent-reg = <0xac 0 2>;
-					};
-
-					nand_x_clk: nand_x_clk {
-						#clock-cells = <0>;
-						compatible = "altr,socfpga-gate-clk";
-						clocks = <&f2s_periph_ref_clk>, <&main_nand_sdmmc_clk>, <&per_nand_mmc_clk>;
-						clk-gate = <0xa0 9>;
-					};
-
-					nand_clk: nand_clk {
-						#clock-cells = <0>;
-						compatible = "altr,socfpga-gate-clk";
-						clocks = <&f2s_periph_ref_clk>, <&main_nand_sdmmc_clk>, <&per_nand_mmc_clk>;
-						clk-gate = <0xa0 10>;
-						fixed-divider = <4>;
-						parent-reg = <0xac 2 2>;
-					};
-
-					qspi_clk: qspi_clk {
-						#clock-cells = <0>;
-						compatible = "altr,socfpga-gate-clk";
-						clocks = <&f2s_periph_ref_clk>, <&main_qspi_clk>, <&per_qspi_clk>;
-						clk-gate = <0xa0 11>;
-						parent-reg = <0xac 4 2>;
-					};
-				};
-			};
-
-		gmac0: ethernet@ff700000 {
-			compatible = "altr,socfpga-stmmac", "snps,dwmac-3.70a", "snps,dwmac";
-			reg = <0xff700000 0x2000>;
-			interrupts = <0 115 4>;
-			interrupt-names = "macirq";
-			mac-address = [00 00 00 00 00 00];/* Filled in by U-Boot */
-			clocks = <&emac_0_clk>;
-			clock-names = "stmmaceth";
-			status = "disabled";
-		};
-
-		gmac1: ethernet@ff702000 {
-			compatible = "altr,socfpga-stmmac", "snps,dwmac-3.70a", "snps,dwmac";
-			reg = <0xff702000 0x2000>;
-			interrupts = <0 120 4>;
-			interrupt-names = "macirq";
-			mac-address = [00 00 00 00 00 00];/* Filled in by U-Boot */
-			clocks = <&emac_1_clk>;
-			clock-names = "stmmaceth";
-			status = "disabled";
-		};
-
-		fpgamgr@ff706000 {
-			compatible = "altr,socfpga-fpga-mgr";
-			reg = <0xff706000 0x1000>,
-			      <0xffb90000 0x1000>;
-		};
-
-		gpio0: gpio@ff708000 {
-			compatible = "snps,dw-apb-gpio";
-			reg = <0xff708000 0x1000>;
-			interrupts = <0 164 4>;
-			width = <29>;
-			virtual_irq_start = <257>;
-			interrupt-controller;
-			#interrupt-cells = <2>;
-			gpio-controller;
-			#gpio-cells = <2>;
-			clocks = <&per_base_clk>;
-		};
-
-		gpio1: gpio@ff709000 {
-			compatible = "snps,dw-apb-gpio";
-			reg = <0xff709000 0x1000>;
-			interrupts = <0 165 4>;
-			width = <29>;
-			virtual_irq_start = <286>;
-			interrupt-controller;
-			#interrupt-cells = <2>;
-			gpio-controller;
-			#gpio-cells = <2>;
-			clocks = <&per_base_clk>;
-		};
-
-		gpio2: gpio@ff70a000 {
-			compatible = "snps,dw-apb-gpio";
-			reg = <0xff70a000 0x1000>;
-			interrupts = <0 166 4>;
-			width = <27>;
-			virtual_irq_start = <315>;
-			interrupt-controller;
-			#interrupt-cells = <2>;
-			gpio-controller;
-			#gpio-cells = <2>;
-			clocks = <&per_base_clk>;
-		};
-
-		L2: l2-cache@fffef000 {
-			compatible = "arm,pl310-cache";
-			reg = <0xfffef000 0x1000>;
-			interrupts = <0 38 0x04>;
-			cache-unified;
-			cache-level = <2>;
-		};
-
-		mmc: dwmmc0@ff704000 {
-			compatible = "altr,socfpga-dw-mshc";
-			reg = <0xff704000 0x1000>;
-			interrupts = <0 139 4>;
-			fifo-depth = <0x400>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-			clocks = <&l4_mp_clk>, <&sdmmc_clk>;
-			clock-names = "biu", "ciu";
-			dw-mshc-ciu-div = <3>;
-		};
-
-		nand0: nand@ff900000 {
-			#address-cells = <0x1>;
-			#size-cells = <0x1>;
-			compatible = "denali,denali-nand-dt";
-			reg = <0xff900000 0x100000>,
-			      <0xffb80000 0x10000>;
-			reg-names = "nand_data", "denali_reg";
-			interrupts = <0x0 0x90 0x4>;
-			dma-mask = <0xffffffff>;
-			clocks = <&nand_clk>;
-			status = "disabled";
-		};
-
-		i2c0: i2c@0xffc04000 {
-			#address-cells = <1>;
-			#size-cells = <0>;
-			compatible = "snps,designware-i2c";
-			reg = <0xffc04000 0x1000>;
-			clock-frequency = <400000000>;
-			clocks = <&l4_sp_clk>;
-			interrupts = <0 158 0x4>;
-			status = "disabled";
-		};
-
-		i2c1: i2c@0xffc05000 {
-			#address-cells = <1>;
-			#size-cells = <0>;
-			compatible = "snps,designware-i2c";
-			reg = <0xffc05000 0x1000>;
-			clock-frequency = <100000000>;
-			clocks = <&l4_sp_clk>;
-			interrupts = <0 159 0x4>;
-			status = "disabled";
-		};
-
-		i2c2: i2c@0xffc06000 {
-			#address-cells = <1>;
-			#size-cells = <0>;
-			compatible = "snps,designware-i2c";
-			reg = <0xffc06000 0x1000>;
-			clock-frequency = <100000000>;
-			clocks = <&l4_sp_clk>;
-			interrupts = <0 160 0x4>;
-			status = "disabled";
-		};
-
-		i2c3: i2c@0xffc07000 {
-			#address-cells = <1>;
-			#size-cells = <0>;
-			compatible = "snps,designware-i2c";
-			reg = <0xffc07000 0x1000>;
-			clock-frequency = <100000000>;
-			clocks = <&l4_sp_clk>;
-			interrupts = <0 161 0x4>;
-			status = "disabled";
-		};
-
 		qspi: spi@ff705000 {
 			compatible = "cdns,qspi-nor";
-                        #address-cells = <1>;
+			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <0xff705000 0x1000>,
 			      <0xffa00000 0x1000>;
@@ -601,68 +18,26 @@
 			status = "disabled";
 		};
 
-		/* Local timer */
-		timer@fffec600 {
-			compatible = "arm,cortex-a9-twd-timer";
-			reg = <0xfffec600 0x100>;
-			interrupts = <1 13 0xf04>;
-			clocks = <&mpu_periph_clk>;
-		};
-
-		timer@ffc08000 {
-			compatible = "snps,dw-apb-timer";
-			interrupts = <0 167 4>;
-			reg = <0xffc08000 0x1000>;
-			clocks = <&osc>;
-		};
-
-		timer@ffc09000 {
-			compatible = "snps,dw-apb-timer";
-			interrupts = <0 168 4>;
-			reg = <0xffc09000 0x1000>;
-			clocks = <&osc>;
-		};
-
-		timer@ffd00000 {
-			compatible = "snps,dw-apb-timer";
-			interrupts = <0 169 4>;
-			reg = <0xffd00000 0x1000>;
-			clocks = <&l4_sp_clk>;
-		};
-
-		timer@ffd01000 {
-			compatible = "snps,dw-apb-timer";
-			interrupts = <0 170 4>;
-			reg = <0xffd01000 0x1000>;
-			clocks = <&l4_sp_clk>;
-		};
-
-		uart0: serial0@ffc02000 {
-			compatible = "snps,dw-apb-uart";
-			reg = <0xffc02000 0x1000>;
-			interrupts = <0 162 4>;
-			reg-shift = <2>;
-			reg-io-width = <4>;
-			clocks = <&l4_sp_clk>;
-		};
-
-		uart1: serial1@ffc03000 {
-			compatible = "snps,dw-apb-uart";
-			reg = <0xffc03000 0x1000>;
-			interrupts = <0 163 4>;
-			reg-shift = <2>;
-			reg-io-width = <4>;
-			clocks = <&l4_sp_clk>;
-		};
-
-		rstmgr@ffd05000 {
-			compatible = "altr,rst-mgr";
-			reg = <0xffd05000 0x1000>;
+		fpgamgr@ff706000 {
+			compatible = "altr,socfpga-fpga-mgr";
+			reg = <0xff706000 0x1000>,
+			      <0xffb90000 0x1000>;
 		};
 
 		system_mgr: sysmgr@ffd08000 {
 			compatible = "altr,sys-mgr", "syscon";
 			reg = <0xffd08000 0x4000>;
 		};
-	};
+       };
+};
+&osc2 {
+	clock-frequency = <0>;
+};
+
+&f2s_periph_ref_clk {
+	clock-frequency = <0>;
+};
+
+&f2s_sdram_ref_clk {
+	clock-frequency = <0>;
 };
diff --git a/arch/arm/dts/socfpga_cyclone5.dtsi b/arch/arm/dts/socfpga_cyclone5.dtsi
deleted file mode 100644
index ee2ec6c61c29..000000000000
--- a/arch/arm/dts/socfpga_cyclone5.dtsi
+++ /dev/null
@@ -1,78 +0,0 @@
-/*
- *  Copyright (C) 2012 Altera Corporation <www.altera.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program.  If not, see <http://www.gnu.org/licenses/>.
- */
-
-/dts-v1/;
-/include/ "socfpga.dtsi"
-
-/ {
-	soc {
-		clkmgr@ffd04000 {
-			clocks {
-				osc1 {
-					clock-frequency = <25000000>;
-				};
-			};
-		};
-
-		ethernet@ff702000 {
-			phy-mode = "rgmii";
-			snps,phy-addr = <0xffffffff>; /* probe for phy addr */
-			status = "okay";
-		};
-
-		dwmmc0@ff704000 {
-			num-slots = <1>;
-			supports-highspeed;
-			broken-cd;
-			altr,sysmgr = <&system_mgr>;
-			altr,dw-mshc-sdr-timing = <0 3>;
-
-			slot@0 {
-				reg = <0>;
-				bus-width = <4>;
-			};
-		};
-
-		timer@ffc08000 {
-			clock-frequency = <100000000>;
-		};
-
-		timer@ffc09000 {
-			clock-frequency = <100000000>;
-		};
-
-		timer@ffd00000 {
-			clock-frequency = <25000000>;
-		};
-
-		timer@ffd01000 {
-			clock-frequency = <25000000>;
-		};
-
-		serial0@ffc02000 {
-			clock-frequency = <100000000>;
-		};
-
-		serial1@ffc03000 {
-			clock-frequency = <100000000>;
-		};
-
-		sysmgr@ffd08000 {
-			cpu1-start-addr = <0xffd080c4>;
-		};
-	};
-};
diff --git a/arch/arm/dts/socfpga_cyclone5_socdk.dts b/arch/arm/dts/socfpga_cyclone5_socdk.dts
index fec321a9d582..f93ac105c46f 100644
--- a/arch/arm/dts/socfpga_cyclone5_socdk.dts
+++ b/arch/arm/dts/socfpga_cyclone5_socdk.dts
@@ -15,51 +15,12 @@
  * along with this program.  If not, see <http://www.gnu.org/licenses/>.
  */
 
-/include/ "socfpga_cyclone5.dtsi"
+#include <arm/socfpga_cyclone5_socdk.dts>
+#include "socfpga.dtsi"
 
 / {
 	model = "Altera SOCFPGA Cyclone V SoC Development Kit";
 	compatible = "altr,socdk", "altr,socfpga-cyclone5", "altr,socfpga";
-
-	chosen {
-	};
-
-	memory {
-		name = "memory";
-		device_type = "memory";
-		reg = <0x0 0x0>;
-	};
-
-	aliases {
-		ethernet0 = &gmac1;
-	};
-
-	regulator_3_3v: 3-3-v-regulator {
-		compatible = "regulator-fixed";
-		regulator-name = "3.3V";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-	};
-};
-
-&gmac1 {
-	status = "okay";
-	phy-mode = "rgmii";
-
-	rxd0-skew-ps = <0>;
-	rxd1-skew-ps = <0>;
-	rxd2-skew-ps = <0>;
-	rxd3-skew-ps = <0>;
-	txen-skew-ps = <0>;
-	txc-skew-ps = <2600>;
-	rxdv-skew-ps = <0>;
-	rxc-skew-ps = <2000>;
-};
-
-&mmc {
-	cd-gpios = <&gpio1 18 0>;
-	vmmc-supply = <&regulator_3_3v>;
-	vqmmc-supply = <&regulator_3_3v>;
 };
 
 &qspi {
diff --git a/arch/arm/dts/socfpga_cyclone5_sockit.dts b/arch/arm/dts/socfpga_cyclone5_sockit.dts
index 1c3fb4d39c0b..8b37574e5dff 100644
--- a/arch/arm/dts/socfpga_cyclone5_sockit.dts
+++ b/arch/arm/dts/socfpga_cyclone5_sockit.dts
@@ -15,21 +15,13 @@
  * along with this program.  If not, see <http://www.gnu.org/licenses/>.
  */
 
-/include/ "socfpga_cyclone5.dtsi"
+#include <arm/socfpga_cyclone5_sockit.dts>
+#include "socfpga.dtsi"
 
 / {
 	model = "Terasic SoCkit";
 	compatible = "terasic,sockit", "altr,socfpga";
 
-	chosen {
-	};
-
-	memory {
-		name = "memory";
-		device_type = "memory";
-		reg = <0x0 0x0>;
-	};
-
 	leds: gpio-leds {
 	};
 
@@ -37,28 +29,36 @@
 	};
 };
 
+&gpio1 {
+	status = "okay";
+};
+
+&gpio2 {
+	status = "okay";
+};
+
 &leds {
 	compatible = "gpio-leds";
 
 	led@0 {
 		label = "0";
-		gpios = <&gpio1 24 0>;
+		gpios = <&portb 24 0>;
 		linux,default-trigger = "heartbeat";
 	};
 
 	led@1 {
 		label = "1";
-		gpios = <&gpio1 25 0>;
+		gpios = <&portb 25 0>;
 	};
 
 	led@2 {
 		label = "2";
-		gpios = <&gpio1 26 0>;
+		gpios = <&portb 26 0>;
 	};
 
 	led@3 {
 		label = "3";
-		gpios = <&gpio1 27 0>;
+		gpios = <&portb 27 0>;
 	};
 };
 
@@ -67,38 +67,29 @@
 
         key@0 {
 		label = "F1";
-		gpios = <&gpio2 21 0>;
+		gpios = <&portc 21 0>;
 		linux,code = <59>;
 	};
 
         key@1 {
 		label = "F2";
-		gpios = <&gpio2 22 0>;
+		gpios = <&portc 22 0>;
 		linux,code = <60>;
 	};
 
         key@2 {
 		label = "F3";
-		gpios = <&gpio2 23 0>;
+		gpios = <&portc 23 0>;
 		linux,code = <61>;
 	};
 
         key@3 {
 		label = "F4";
-		gpios = <&gpio2 24 0>;
+		gpios = <&portc 24 0>;
 		linux,code = <62>;
 	};
 };
 
-&gmac1 {
-	phy-mode = "rgmii";
-	status = "okay";
-};
-
-&mmc {
-	status = "okay";
-};
-
 &i2c0 {
 	status = "disabled";
 
diff --git a/arch/arm/dts/socfpga_cyclone5_socrates.dts b/arch/arm/dts/socfpga_cyclone5_socrates.dts
index 125ad1b8502d..29b41f10433f 100644
--- a/arch/arm/dts/socfpga_cyclone5_socrates.dts
+++ b/arch/arm/dts/socfpga_cyclone5_socrates.dts
@@ -15,23 +15,23 @@
  * along with this program.  If not, see <http://www.gnu.org/licenses/>.
  */
 
-/include/ "socfpga_cyclone5.dtsi"
+#include <arm/socfpga_cyclone5_socrates.dts>
+#include "socfpga.dtsi"
 
 / {
 	model = "EBV SoCrates";
 	compatible = "ebv,socrates", "altr,socfpga";
 
-	chosen {
+	leds: gpio-leds {
 	};
+};
 
-	memory {
-		name = "memory";
-		device_type = "memory";
-		reg = <0x0 0x0>;
-	};
+&gpio0 {
+	status = "okay";
+};
 
-	leds: gpio-leds {
-	};
+&gpio1 {
+	status = "okay";
 };
 
 &leds {
@@ -39,30 +39,21 @@
 
 	led@0 {
 		label = "0";
-		gpios = <&gpio0 28 1>;
+		gpios = <&porta 28 1>;
 		linux,default-trigger = "heartbeat";
 	};
 
 	led@1 {
 		label = "1";
-		gpios = <&gpio1 19 1>;
+		gpios = <&portb 19 1>;
 	};
 
 	led@2 {
 		label = "2";
-		gpios = <&gpio1 25 1>;
+		gpios = <&portb 25 1>;
 	};
 };
 
-&gmac1 {
-	phy-mode = "rgmii";
-	status = "okay";
-};
-
-&mmc {
-	status = "okay";
-};
-
 &qspi {
 	status = "okay";
 
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
