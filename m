Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VLUU8-0005Oz-8s
 for barebox@lists.infradead.org; Mon, 16 Sep 2013 08:49:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 07/11] ARM: Add Altera SoCFPGA support
Date: Mon, 16 Sep 2013 10:48:16 +0200
Message-Id: <1379321300-8085-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1379321300-8085-1-git-send-email-s.hauer@pengutronix.de>
References: <1379321300-8085-1-git-send-email-s.hauer@pengutronix.de>
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
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                                   |   12 +
 arch/arm/Makefile                                  |    1 +
 arch/arm/dts/socfpga.dtsi                          |  648 +++
 arch/arm/dts/socfpga_cyclone5.dtsi                 |   78 +
 arch/arm/mach-socfpga/Kconfig                      |   11 +
 arch/arm/mach-socfpga/Makefile                     |    4 +
 arch/arm/mach-socfpga/bootsource.c                 |   57 +
 arch/arm/mach-socfpga/clock-manager.c              |  285 ++
 arch/arm/mach-socfpga/freeze-controller.c          |  218 +
 arch/arm/mach-socfpga/generic.c                    |  116 +
 arch/arm/mach-socfpga/include/mach/clkdev.h        |    7 +
 arch/arm/mach-socfpga/include/mach/clock-manager.h |  188 +
 arch/arm/mach-socfpga/include/mach/debug_ll.h      |   55 +
 .../mach-socfpga/include/mach/freeze-controller.h  |   85 +
 arch/arm/mach-socfpga/include/mach/generic.h       |   16 +
 arch/arm/mach-socfpga/include/mach/nic301.h        |   34 +
 arch/arm/mach-socfpga/include/mach/pll_config.h    |   53 +
 arch/arm/mach-socfpga/include/mach/reset-manager.h |   93 +
 arch/arm/mach-socfpga/include/mach/scan-manager.h  |  131 +
 arch/arm/mach-socfpga/include/mach/sdram.h         |  399 ++
 arch/arm/mach-socfpga/include/mach/sdram_config.h  |  161 +
 arch/arm/mach-socfpga/include/mach/sequencer.c     | 4324 ++++++++++++++++++++
 arch/arm/mach-socfpga/include/mach/sequencer.h     |  448 ++
 arch/arm/mach-socfpga/include/mach/socfpga-regs.h  |   18 +
 .../arm/mach-socfpga/include/mach/system-manager.h |   68 +
 arch/arm/mach-socfpga/init.c                       |   58 +
 arch/arm/mach-socfpga/iocsr-config-cyclone5.c      |  649 +++
 arch/arm/mach-socfpga/nic301.c                     |   40 +
 arch/arm/mach-socfpga/reset-manager.c              |   51 +
 arch/arm/mach-socfpga/scan-manager.c               |  220 +
 arch/arm/mach-socfpga/system-manager.c             |   33 +
 arch/arm/mach-socfpga/xload.c                      |  125 +
 images/.gitignore                                  |    1 +
 images/Makefile                                    |    3 +-
 images/Makefile.socfpga                            |   19 +
 35 files changed, 8708 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/dts/socfpga.dtsi
 create mode 100644 arch/arm/dts/socfpga_cyclone5.dtsi
 create mode 100644 arch/arm/mach-socfpga/Kconfig
 create mode 100644 arch/arm/mach-socfpga/Makefile
 create mode 100644 arch/arm/mach-socfpga/bootsource.c
 create mode 100644 arch/arm/mach-socfpga/clock-manager.c
 create mode 100644 arch/arm/mach-socfpga/freeze-controller.c
 create mode 100644 arch/arm/mach-socfpga/generic.c
 create mode 100644 arch/arm/mach-socfpga/include/mach/clkdev.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/clock-manager.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/debug_ll.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/freeze-controller.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/generic.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/nic301.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/pll_config.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/reset-manager.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/scan-manager.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/sdram.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/sdram_config.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/sequencer.c
 create mode 100644 arch/arm/mach-socfpga/include/mach/sequencer.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/socfpga-regs.h
 create mode 100644 arch/arm/mach-socfpga/include/mach/system-manager.h
 create mode 100644 arch/arm/mach-socfpga/init.c
 create mode 100644 arch/arm/mach-socfpga/iocsr-config-cyclone5.c
 create mode 100644 arch/arm/mach-socfpga/nic301.c
 create mode 100644 arch/arm/mach-socfpga/reset-manager.c
 create mode 100644 arch/arm/mach-socfpga/scan-manager.c
 create mode 100644 arch/arm/mach-socfpga/system-manager.c
 create mode 100644 arch/arm/mach-socfpga/xload.c
 create mode 100644 images/Makefile.socfpga

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 687acca..398bc90 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -117,6 +117,17 @@ config ARCH_PXA
 	bool "Intel/Marvell PXA based"
 	select GENERIC_GPIO
 
+config ARCH_SOCFPGA
+	bool "Altera SOCFPGA cyclone5"
+	select HAS_DEBUG_LL
+	select ARM_SMP_TWD
+	select CPU_V7
+	select COMMON_CLK
+	select CLKDEV_LOOKUP
+	select GENERIC_GPIO
+	select GPIOLIB
+	select HAVE_PBL_MULTI_IMAGES
+
 config ARCH_S3C24xx
 	bool "Samsung S3C2410, S3C2440"
 	select ARCH_SAMSUNG
@@ -183,6 +194,7 @@ source arch/arm/mach-nomadik/Kconfig
 source arch/arm/mach-omap/Kconfig
 source arch/arm/mach-pxa/Kconfig
 source arch/arm/mach-samsung/Kconfig
+source arch/arm/mach-socfpga/Kconfig
 source arch/arm/mach-versatile/Kconfig
 source arch/arm/mach-vexpress/Kconfig
 source arch/arm/mach-tegra/Kconfig
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 590a0d8..18226c1 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -64,6 +64,7 @@ machine-$(CONFIG_ARCH_NETX)		:= netx
 machine-$(CONFIG_ARCH_OMAP)		:= omap
 machine-$(CONFIG_ARCH_PXA)		:= pxa
 machine-$(CONFIG_ARCH_SAMSUNG)		:= samsung
+machine-$(CONFIG_ARCH_SOCFPGA)		:= socfpga
 machine-$(CONFIG_ARCH_VERSATILE)	:= versatile
 machine-$(CONFIG_ARCH_VEXPRESS)		:= vexpress
 machine-$(CONFIG_ARCH_TEGRA)		:= tegra
diff --git a/arch/arm/dts/socfpga.dtsi b/arch/arm/dts/socfpga.dtsi
new file mode 100644
index 0000000..3368b45
--- /dev/null
+++ b/arch/arm/dts/socfpga.dtsi
@@ -0,0 +1,648 @@
+/*
+ *  Copyright (C) 2012 Altera <www.altera.com>
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
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+/include/ "skeleton.dtsi"
+
+/ {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	aliases {
+		ethernet0 = &gmac0;
+		ethernet1 = &gmac1;
+		serial0 = &uart0;
+		serial1 = &uart1;
+		gpio0 = &gpio0;
+		gpio1 = &gpio1;
+		gpio2 = &gpio2;
+		mmc0 = &mmc;
+	};
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu@0 {
+			compatible = "arm,cortex-a9";
+			device_type = "cpu";
+			reg = <0>;
+			next-level-cache = <&L2>;
+		};
+		cpu@1 {
+			compatible = "arm,cortex-a9";
+			device_type = "cpu";
+			reg = <1>;
+			next-level-cache = <&L2>;
+		};
+	};
+
+	intc: intc@fffed000 {
+		compatible = "arm,cortex-a9-gic";
+		#interrupt-cells = <3>;
+		interrupt-controller;
+		reg = <0xfffed000 0x1000>,
+		      <0xfffec100 0x100>;
+	};
+
+	soc {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "simple-bus";
+		device_type = "soc";
+		interrupt-parent = <&intc>;
+		ranges;
+
+		amba {
+			compatible = "arm,amba-bus";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges;
+
+			pdma: pdma@ffe01000 {
+				compatible = "arm,pl330", "arm,primecell";
+				reg = <0xffe01000 0x1000>;
+				interrupts = <0 180 4>;
+				#dma-cells = <1>;
+				#dma-channels = <8>;
+				#dma-requests = <32>;
+			};
+		};
+
+		clkmgr@ffd04000 {
+				compatible = "altr,clk-mgr";
+				reg = <0xffd04000 0x1000>;
+
+				clocks {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					osc: osc1 {
+						#clock-cells = <0>;
+						compatible = "fixed-clock";
+					};
+
+					f2s_periph_ref_clk: f2s_periph_ref_clk {
+						#clock-cells = <0>;
+						compatible = "fixed-clock";
+						clock-frequency = <10000000>;
+					};
+
+					main_pll: main_pll {
+						#address-cells = <1>;
+						#size-cells = <0>;
+						#clock-cells = <0>;
+						compatible = "altr,socfpga-pll-clock";
+						clocks = <&osc>;
+						reg = <0x40>;
+
+						mpuclk: mpuclk {
+							#clock-cells = <0>;
+							compatible = "altr,socfpga-perip-clk";
+							clocks = <&main_pll>;
+							fixed-divider = <2>;
+							reg = <0x48>;
+						};
+
+						mainclk: mainclk {
+							#clock-cells = <0>;
+							compatible = "altr,socfpga-perip-clk";
+							clocks = <&main_pll>;
+							fixed-divider = <4>;
+							reg = <0x4C>;
+						};
+
+						dbg_base_clk: dbg_base_clk {
+							#clock-cells = <0>;
+							compatible = "altr,socfpga-perip-clk";
+							clocks = <&main_pll>;
+							fixed-divider = <4>;
+							reg = <0x50>;
+						};
+
+						main_qspi_clk: main_qspi_clk {
+							#clock-cells = <0>;
+							compatible = "altr,socfpga-perip-clk";
+							clocks = <&main_pll>;
+							reg = <0x54>;
+						};
+
+						main_nand_sdmmc_clk: main_nand_sdmmc_clk {
+							#clock-cells = <0>;
+							compatible = "altr,socfpga-perip-clk";
+							clocks = <&main_pll>;
+							reg = <0x58>;
+						};
+
+						cfg_h2f_usr0_clk: cfg_h2f_usr0_clk {
+							#clock-cells = <0>;
+							compatible = "altr,socfpga-perip-clk";
+							clocks = <&main_pll>;
+							reg = <0x5C>;
+						};
+					};
+
+					periph_pll: periph_pll {
+						#address-cells = <1>;
+						#size-cells = <0>;
+						#clock-cells = <0>;
+						compatible = "altr,socfpga-pll-clock";
+						clocks = <&osc>;
+						reg = <0x80>;
+
+						emac0_clk: emac0_clk {
+							#clock-cells = <0>;
+							compatible = "altr,socfpga-perip-clk";
+							clocks = <&periph_pll>;
+							reg = <0x88>;
+						};
+
+						emac1_clk: emac1_clk {
+							#clock-cells = <0>;
+							compatible = "altr,socfpga-perip-clk";
+							clocks = <&periph_pll>;
+							reg = <0x8C>;
+						};
+
+						per_qspi_clk: per_qsi_clk {
+							#clock-cells = <0>;
+							compatible = "altr,socfpga-perip-clk";
+							clocks = <&periph_pll>;
+							reg = <0x90>;
+						};
+
+						per_nand_mmc_clk: per_nand_mmc_clk {
+							#clock-cells = <0>;
+							compatible = "altr,socfpga-perip-clk";
+							clocks = <&periph_pll>;
+							reg = <0x94>;
+						};
+
+						per_base_clk: per_base_clk {
+							#clock-cells = <0>;
+							compatible = "altr,socfpga-perip-clk";
+							clocks = <&periph_pll>;
+							reg = <0x98>;
+						};
+
+						h2f_usr1_clk: h2f_usr1_clk {
+							#clock-cells = <0>;
+							compatible = "altr,socfpga-perip-clk";
+							clocks = <&periph_pll>;
+							reg = <0x9C>;
+						};
+					};
+
+					sdram_pll: sdram_pll {
+						#address-cells = <1>;
+						#size-cells = <0>;
+						#clock-cells = <0>;
+						compatible = "altr,socfpga-pll-clock";
+						clocks = <&osc>;
+						reg = <0xC0>;
+
+						ddr_dqs_clk: ddr_dqs_clk {
+							#clock-cells = <0>;
+							compatible = "altr,socfpga-perip-clk";
+							clocks = <&sdram_pll>;
+							reg = <0xC8>;
+						};
+
+						ddr_2x_dqs_clk: ddr_2x_dqs_clk {
+							#clock-cells = <0>;
+							compatible = "altr,socfpga-perip-clk";
+							clocks = <&sdram_pll>;
+							reg = <0xCC>;
+						};
+
+						ddr_dq_clk: ddr_dq_clk {
+							#clock-cells = <0>;
+							compatible = "altr,socfpga-perip-clk";
+							clocks = <&sdram_pll>;
+							reg = <0xD0>;
+						};
+
+						h2f_usr2_clk: h2f_usr2_clk {
+							#clock-cells = <0>;
+							compatible = "altr,socfpga-perip-clk";
+							clocks = <&sdram_pll>;
+							reg = <0xD4>;
+						};
+					};
+
+					mpu_periph_clk: mpu_periph_clk {
+						#clock-cells = <0>;
+						compatible = "altr,socfpga-gate-clk";
+						clocks = <&mpuclk>;
+						fixed-divider = <4>;
+					};
+
+					mpu_l2_ram_clk: mpu_l2_ram_clk {
+						#clock-cells = <0>;
+						compatible = "altr,socfpga-gate-clk";
+						clocks = <&mpuclk>;
+						fixed-divider = <2>;
+					};
+
+					l4_main_clk: l4_main_clk {
+						#clock-cells = <0>;
+						compatible = "altr,socfpga-gate-clk";
+						clocks = <&mainclk>;
+						clk-gate = <0x60 0>;
+					};
+
+					l3_main_clk: l3_main_clk {
+						#clock-cells = <0>;
+						compatible = "altr,socfpga-gate-clk";
+						clocks = <&mainclk>;
+					};
+
+					l3_mp_clk: l3_mp_clk {
+						#clock-cells = <0>;
+						compatible = "altr,socfpga-gate-clk";
+						clocks = <&mainclk>;
+						div-reg = <0x64 0 2>;
+						clk-gate = <0x60 1>;
+					};
+
+					l3_sp_clk: l3_sp_clk {
+						#clock-cells = <0>;
+						compatible = "altr,socfpga-gate-clk";
+						clocks = <&mainclk>;
+						div-reg = <0x64 2 2>;
+					};
+
+					l4_mp_clk: l4_mp_clk {
+						#clock-cells = <0>;
+						compatible = "altr,socfpga-gate-clk";
+						clocks = <&mainclk>, <&per_base_clk>;
+						div-reg = <0x64 4 3>;
+						parent-reg = <0x70 0 1>;
+						clk-gate = <0x60 2>;
+					};
+
+					l4_sp_clk: l4_sp_clk {
+						#clock-cells = <0>;
+						compatible = "altr,socfpga-gate-clk";
+						clocks = <&mainclk>, <&per_base_clk>;
+						div-reg = <0x64 7 3>;
+						parent-reg = <0x70 1 1>;
+						clk-gate = <0x60 3>;
+					};
+
+					dbg_at_clk: dbg_at_clk {
+						#clock-cells = <0>;
+						compatible = "altr,socfpga-gate-clk";
+						clocks = <&dbg_base_clk>;
+						div-reg = <0x68 0 2>;
+						clk-gate = <0x60 4>;
+					};
+
+					dbg_clk: dbg_clk {
+						#clock-cells = <0>;
+						compatible = "altr,socfpga-gate-clk";
+						clocks = <&dbg_base_clk>;
+						div-reg = <0x68 2 2>;
+						clk-gate = <0x60 5>;
+					};
+
+					dbg_trace_clk: dbg_trace_clk {
+						#clock-cells = <0>;
+						compatible = "altr,socfpga-gate-clk";
+						clocks = <&dbg_base_clk>;
+						div-reg = <0x6C 0 3>;
+						clk-gate = <0x60 6>;
+					};
+
+					dbg_timer_clk: dbg_timer_clk {
+						#clock-cells = <0>;
+						compatible = "altr,socfpga-gate-clk";
+						clocks = <&dbg_base_clk>;
+						clk-gate = <0x60 7>;
+					};
+
+					cfg_clk: cfg_clk {
+						#clock-cells = <0>;
+						compatible = "altr,socfpga-gate-clk";
+						clocks = <&cfg_h2f_usr0_clk>;
+						clk-gate = <0x60 8>;
+					};
+
+					h2f_user0_clk: h2f_user0_clk {
+						#clock-cells = <0>;
+						compatible = "altr,socfpga-gate-clk";
+						clocks = <&cfg_h2f_usr0_clk>;
+						clk-gate = <0x60 9>;
+					};
+
+					emac_0_clk: emac_0_clk {
+						#clock-cells = <0>;
+						compatible = "altr,socfpga-gate-clk";
+						clocks = <&emac0_clk>;
+						clk-gate = <0xa0 0>;
+					};
+
+					emac_1_clk: emac_1_clk {
+						#clock-cells = <0>;
+						compatible = "altr,socfpga-gate-clk";
+						clocks = <&emac1_clk>;
+						clk-gate = <0xa0 1>;
+					};
+
+					usb_mp_clk: usb_mp_clk {
+						#clock-cells = <0>;
+						compatible = "altr,socfpga-gate-clk";
+						clocks = <&per_base_clk>;
+						clk-gate = <0xa0 2>;
+						div-reg = <0xa4 0 3>;
+					};
+
+					spi_m_clk: spi_m_clk {
+						#clock-cells = <0>;
+						compatible = "altr,socfpga-gate-clk";
+						clocks = <&per_base_clk>;
+						clk-gate = <0xa0 3>;
+						div-reg = <0xa4 3 3>;
+					};
+
+					can0_clk: can0_clk {
+						#clock-cells = <0>;
+						compatible = "altr,socfpga-gate-clk";
+						clocks = <&per_base_clk>;
+						clk-gate = <0xa0 4>;
+						div-reg = <0xa4 6 3>;
+					};
+
+					can1_clk: can1_clk {
+						#clock-cells = <0>;
+						compatible = "altr,socfpga-gate-clk";
+						clocks = <&per_base_clk>;
+						clk-gate = <0xa0 5>;
+						div-reg = <0xa4 9 3>;
+					};
+
+					gpio_db_clk: gpio_db_clk {
+						#clock-cells = <0>;
+						compatible = "altr,socfpga-gate-clk";
+						clocks = <&per_base_clk>;
+						clk-gate = <0xa0 6>;
+						div-reg = <0xa8 0 24>;
+					};
+
+					h2f_user1_clk: h2f_user1_clk {
+						#clock-cells = <0>;
+						compatible = "altr,socfpga-gate-clk";
+						clocks = <&h2f_usr1_clk>;
+						clk-gate = <0xa0 7>;
+					};
+
+					sdmmc_clk: sdmmc_clk {
+						#clock-cells = <0>;
+						compatible = "altr,socfpga-gate-clk";
+						clocks = <&f2s_periph_ref_clk>, <&main_nand_sdmmc_clk>, <&per_nand_mmc_clk>;
+						clk-gate = <0xa0 8>;
+						parent-reg = <0xac 0 2>;
+					};
+
+					nand_x_clk: nand_x_clk {
+						#clock-cells = <0>;
+						compatible = "altr,socfpga-gate-clk";
+						clocks = <&f2s_periph_ref_clk>, <&main_nand_sdmmc_clk>, <&per_nand_mmc_clk>;
+						clk-gate = <0xa0 9>;
+					};
+
+					nand_clk: nand_clk {
+						#clock-cells = <0>;
+						compatible = "altr,socfpga-gate-clk";
+						clocks = <&f2s_periph_ref_clk>, <&main_nand_sdmmc_clk>, <&per_nand_mmc_clk>;
+						clk-gate = <0xa0 10>;
+						fixed-divider = <4>;
+						parent-reg = <0xac 2 2>;
+					};
+
+					qspi_clk: qspi_clk {
+						#clock-cells = <0>;
+						compatible = "altr,socfpga-gate-clk";
+						clocks = <&f2s_periph_ref_clk>, <&main_qspi_clk>, <&per_qspi_clk>;
+						clk-gate = <0xa0 11>;
+						parent-reg = <0xac 4 2>;
+					};
+				};
+			};
+
+		gmac0: ethernet@ff700000 {
+			compatible = "altr,socfpga-stmmac", "snps,dwmac-3.70a", "snps,dwmac";
+			reg = <0xff700000 0x2000>;
+			interrupts = <0 115 4>;
+			interrupt-names = "macirq";
+			mac-address = [00 00 00 00 00 00];/* Filled in by U-Boot */
+			clocks = <&emac_0_clk>;
+			clock-names = "stmmaceth";
+			status = "disabled";
+		};
+
+		gmac1: ethernet@ff702000 {
+			compatible = "altr,socfpga-stmmac", "snps,dwmac-3.70a", "snps,dwmac";
+			reg = <0xff702000 0x2000>;
+			interrupts = <0 120 4>;
+			interrupt-names = "macirq";
+			mac-address = [00 00 00 00 00 00];/* Filled in by U-Boot */
+			clocks = <&emac_1_clk>;
+			clock-names = "stmmaceth";
+			status = "disabled";
+		};
+
+		gpio0: gpio@ff708000 {
+			compatible = "snps,dw-apb-gpio";
+			reg = <0xff708000 0x1000>;
+			interrupts = <0 164 4>;
+			width = <29>;
+			virtual_irq_start = <257>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			clocks = <&per_base_clk>;
+		};
+
+		gpio1: gpio@ff709000 {
+			compatible = "snps,dw-apb-gpio";
+			reg = <0xff709000 0x1000>;
+			interrupts = <0 165 4>;
+			width = <29>;
+			virtual_irq_start = <286>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			clocks = <&per_base_clk>;
+		};
+
+		gpio2: gpio@ff70a000 {
+			compatible = "snps,dw-apb-gpio";
+			reg = <0xff70a000 0x1000>;
+			interrupts = <0 166 4>;
+			width = <27>;
+			virtual_irq_start = <315>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			clocks = <&per_base_clk>;
+		};
+
+		L2: l2-cache@fffef000 {
+			compatible = "arm,pl310-cache";
+			reg = <0xfffef000 0x1000>;
+			interrupts = <0 38 0x04>;
+			cache-unified;
+			cache-level = <2>;
+		};
+
+		mmc: dwmmc0@ff704000 {
+			compatible = "altr,socfpga-dw-mshc";
+			reg = <0xff704000 0x1000>;
+			interrupts = <0 139 4>;
+			fifo-depth = <0x400>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			clocks = <&l4_mp_clk>, <&sdmmc_clk>;
+			clock-names = "biu", "ciu";
+			dw-mshc-ciu-div = <3>;
+		};
+
+		nand0: nand@ff900000 {
+			#address-cells = <0x1>;
+			#size-cells = <0x1>;
+			compatible = "denali,denali-nand-dt";
+			reg = <0xff900000 0x100000>,
+			      <0xffb80000 0x10000>;
+			reg-names = "nand_data", "denali_reg";
+			interrupts = <0x0 0x90 0x4>;
+			dma-mask = <0xffffffff>;
+			clocks = <&nand_clk>;
+			status = "disabled";
+		};
+
+		i2c0: i2c@0xffc04000 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			compatible = "snps,designware-i2c";
+			reg = <0xffc04000 0x1000>;
+			clock-frequency = <400000000>;
+			clocks = <&l4_sp_clk>;
+			interrupts = <0 158 0x4>;
+			status = "disabled";
+		};
+
+		i2c1: i2c@0xffc05000 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			compatible = "snps,designware-i2c";
+			reg = <0xffc05000 0x1000>;
+			clock-frequency = <100000000>;
+			clocks = <&l4_sp_clk>;
+			interrupts = <0 159 0x4>;
+			status = "disabled";
+		};
+
+		i2c2: i2c@0xffc06000 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			compatible = "snps,designware-i2c";
+			reg = <0xffc06000 0x1000>;
+			clock-frequency = <100000000>;
+			clocks = <&l4_sp_clk>;
+			interrupts = <0 160 0x4>;
+			status = "disabled";
+		};
+
+		i2c3: i2c@0xffc07000 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			compatible = "snps,designware-i2c";
+			reg = <0xffc07000 0x1000>;
+			clock-frequency = <100000000>;
+			clocks = <&l4_sp_clk>;
+			interrupts = <0 161 0x4>;
+			status = "disabled";
+		};
+
+		/* Local timer */
+		timer@fffec600 {
+			compatible = "arm,cortex-a9-twd-timer";
+			reg = <0xfffec600 0x100>;
+			interrupts = <1 13 0xf04>;
+			clocks = <&mpu_periph_clk>;
+		};
+
+		timer@ffc08000 {
+			compatible = "snps,dw-apb-timer";
+			interrupts = <0 167 4>;
+			reg = <0xffc08000 0x1000>;
+			clocks = <&osc>;
+		};
+
+		timer@ffc09000 {
+			compatible = "snps,dw-apb-timer";
+			interrupts = <0 168 4>;
+			reg = <0xffc09000 0x1000>;
+			clocks = <&osc>;
+		};
+
+		timer@ffd00000 {
+			compatible = "snps,dw-apb-timer";
+			interrupts = <0 169 4>;
+			reg = <0xffd00000 0x1000>;
+			clocks = <&l4_sp_clk>;
+		};
+
+		timer@ffd01000 {
+			compatible = "snps,dw-apb-timer";
+			interrupts = <0 170 4>;
+			reg = <0xffd01000 0x1000>;
+			clocks = <&l4_sp_clk>;
+		};
+
+		uart0: serial0@ffc02000 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0xffc02000 0x1000>;
+			interrupts = <0 162 4>;
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			clocks = <&l4_sp_clk>;
+		};
+
+		uart1: serial1@ffc03000 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0xffc03000 0x1000>;
+			interrupts = <0 163 4>;
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			clocks = <&l4_sp_clk>;
+		};
+
+		rstmgr@ffd05000 {
+			compatible = "altr,rst-mgr";
+			reg = <0xffd05000 0x1000>;
+		};
+
+		system_mgr: sysmgr@ffd08000 {
+			compatible = "altr,sys-mgr", "syscon";
+			reg = <0xffd08000 0x4000>;
+		};
+	};
+};
diff --git a/arch/arm/dts/socfpga_cyclone5.dtsi b/arch/arm/dts/socfpga_cyclone5.dtsi
new file mode 100644
index 0000000..ee2ec6c
--- /dev/null
+++ b/arch/arm/dts/socfpga_cyclone5.dtsi
@@ -0,0 +1,78 @@
+/*
+ *  Copyright (C) 2012 Altera Corporation <www.altera.com>
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
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+/dts-v1/;
+/include/ "socfpga.dtsi"
+
+/ {
+	soc {
+		clkmgr@ffd04000 {
+			clocks {
+				osc1 {
+					clock-frequency = <25000000>;
+				};
+			};
+		};
+
+		ethernet@ff702000 {
+			phy-mode = "rgmii";
+			snps,phy-addr = <0xffffffff>; /* probe for phy addr */
+			status = "okay";
+		};
+
+		dwmmc0@ff704000 {
+			num-slots = <1>;
+			supports-highspeed;
+			broken-cd;
+			altr,sysmgr = <&system_mgr>;
+			altr,dw-mshc-sdr-timing = <0 3>;
+
+			slot@0 {
+				reg = <0>;
+				bus-width = <4>;
+			};
+		};
+
+		timer@ffc08000 {
+			clock-frequency = <100000000>;
+		};
+
+		timer@ffc09000 {
+			clock-frequency = <100000000>;
+		};
+
+		timer@ffd00000 {
+			clock-frequency = <25000000>;
+		};
+
+		timer@ffd01000 {
+			clock-frequency = <25000000>;
+		};
+
+		serial0@ffc02000 {
+			clock-frequency = <100000000>;
+		};
+
+		serial1@ffc03000 {
+			clock-frequency = <100000000>;
+		};
+
+		sysmgr@ffd08000 {
+			cpu1-start-addr = <0xffd080c4>;
+		};
+	};
+};
diff --git a/arch/arm/mach-socfpga/Kconfig b/arch/arm/mach-socfpga/Kconfig
new file mode 100644
index 0000000..e6c4c34
--- /dev/null
+++ b/arch/arm/mach-socfpga/Kconfig
@@ -0,0 +1,11 @@
+if ARCH_SOCFPGA
+
+config ARCH_SOCFPGA_XLOAD
+	bool
+	prompt "Build preloader image"
+
+config ARCH_TEXT_BASE
+	hex
+	default 0x00100000 if MACH_SOCFPGA_CYCLONE5
+
+endif
diff --git a/arch/arm/mach-socfpga/Makefile b/arch/arm/mach-socfpga/Makefile
new file mode 100644
index 0000000..d8bf067
--- /dev/null
+++ b/arch/arm/mach-socfpga/Makefile
@@ -0,0 +1,4 @@
+obj-y += generic.o nic301.o bootsource.o reset-manager.o
+pbl-y += init.o freeze-controller.o scan-manager.o system-manager.o
+pbl-y += clock-manager.o iocsr-config-cyclone5.o
+obj-$(CONFIG_ARCH_SOCFPGA_XLOAD) += xload.o
diff --git a/arch/arm/mach-socfpga/bootsource.c b/arch/arm/mach-socfpga/bootsource.c
new file mode 100644
index 0000000..739f0b5
--- /dev/null
+++ b/arch/arm/mach-socfpga/bootsource.c
@@ -0,0 +1,57 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <bootsource.h>
+#include <environment.h>
+#include <init.h>
+#include <io.h>
+#include <mach/socfpga-regs.h>
+#include <mach/system-manager.h>
+
+#define SYSMGR_BOOTINFO	0x14
+
+static int socfpga_boot_save_loc(void)
+{
+	enum bootsource src = BOOTSOURCE_UNKNOWN;
+	uint32_t val;
+
+	val = readl(CYCLONE5_SYSMGR_ADDRESS + SYSMGR_BOOTINFO);
+
+	switch (val & 0x7) {
+	case 0:
+		/* reserved */
+		break;
+	case 1:
+		/* FPGA, currently not decoded */
+		break;
+	case 2:
+	case 3:
+		src = BOOTSOURCE_NAND;
+		break;
+	case 4:
+	case 5:
+		src = BOOTSOURCE_MMC;
+		break;
+	case 6:
+	case 7:
+		src = BOOTSOURCE_SPI;
+		break;
+	}
+
+	bootsource_set(src);
+	bootsource_set_instance(0);
+
+	return 0;
+}
+core_initcall(socfpga_boot_save_loc);
diff --git a/arch/arm/mach-socfpga/clock-manager.c b/arch/arm/mach-socfpga/clock-manager.c
new file mode 100644
index 0000000..13ca69b
--- /dev/null
+++ b/arch/arm/mach-socfpga/clock-manager.c
@@ -0,0 +1,285 @@
+/*
+ *  Copyright (C) 2012 Altera Corporation <www.altera.com>
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
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#include <common.h>
+#include <io.h>
+#include <mach/clock-manager.h>
+#include <mach/socfpga-regs.h>
+#include <mach/generic.h>
+
+static inline void cm_wait_for_lock(void __iomem *cm, uint32_t mask)
+{
+	while ((readl(cm + CLKMGR_INTER_ADDRESS) & mask) != mask);
+}
+
+/* function to poll in the fsm busy bit */
+static inline void cm_wait4fsm(void __iomem *cm)
+{
+	while (readl(cm + CLKMGR_STAT_ADDRESS) & 1);
+}
+
+/*
+ * function to write the bypass register which requires a poll of the
+ * busy bit
+ */
+static inline void cm_write_bypass(void __iomem *cm, uint32_t val)
+{
+	writel(val, cm + CLKMGR_BYPASS_ADDRESS);
+	cm_wait4fsm(cm);
+}
+
+/* function to write the ctrl register which requires a poll of the busy bit */
+static inline void cm_write_ctrl(void __iomem *cm, uint32_t val)
+{
+	writel(val, cm + CLKMGR_CTRL_ADDRESS);
+	cm_wait4fsm(cm);
+}
+
+/* function to write a clock register that has phase information */
+static inline void cm_write_with_phase(uint32_t value,
+	void __iomem *reg, uint32_t mask)
+{
+	/* poll until phase is zero */
+	while (readl(reg) & mask);
+
+	writel(value, reg);
+
+	while (readl(reg) & mask);
+}
+
+/*
+ * Setup clocks while making no assumptions of the
+ * previous state of the clocks.
+ *
+ * - Start by being paranoid and gate all sw managed clocks
+ * - Put all plls in bypass
+ * - Put all plls VCO registers back to reset value (bgpwr dwn).
+ * - Put peripheral and main pll src to reset value to avoid glitch.
+ * - Delay 5 us.
+ * - Deassert bg pwr dn and set numerator and denominator
+ * - Start 7 us timer.
+ * - set internal dividers
+ * - Wait for 7 us timer.
+ * - Enable plls
+ * - Set external dividers while plls are locking
+ * - Wait for pll lock
+ * - Assert/deassert outreset all.
+ * - Take all pll's out of bypass
+ * - Clear safe mode
+ * - set source main and peripheral clocks
+ * - Ungate clocks
+ */
+void socfpga_cm_basic_init(const struct socfpga_cm_config *cfg)
+{
+	uint32_t mainvco, periphvco, val;
+	void *cm = (void *)CYCLONE5_CLKMGR_ADDRESS;
+
+	/* Start by being paranoid and gate all sw managed clocks */
+
+	/*
+	 * We need to disable nandclk
+	 * and then do another apb access before disabling
+	 * gatting off the rest of the periperal clocks.
+	 */
+	val = readl(cm + CLKMGR_PERPLLGRP_EN_ADDRESS);
+	val &= ~CLKMGR_PERPLLGRP_EN_NANDCLK_MASK;
+	writel(val, cm + CLKMGR_PERPLLGRP_EN_ADDRESS);
+
+	/* DO NOT GATE OFF DEBUG CLOCKS & BRIDGE CLOCKS */
+	writel(CLKMGR_MAINPLLGRP_EN_DBGTIMERCLK_MASK |
+		CLKMGR_MAINPLLGRP_EN_DBGTRACECLK_MASK |
+		CLKMGR_MAINPLLGRP_EN_DBGCLK_MASK |
+		CLKMGR_MAINPLLGRP_EN_DBGATCLK_MASK |
+		CLKMGR_MAINPLLGRP_EN_S2FUSER0CLK_MASK |
+		CLKMGR_MAINPLLGRP_EN_L4MPCLK_MASK,
+		cm + CLKMGR_MAINPLLGRP_EN_ADDRESS);
+
+	writel(0, cm + CLKMGR_SDRPLLGRP_EN_ADDRESS);
+
+	/* now we can gate off the rest of the peripheral clocks */
+	writel(0, cm + CLKMGR_PERPLLGRP_EN_ADDRESS);
+
+	/* Put all plls in bypass */
+	cm_write_bypass(cm,
+		CLKMGR_BYPASS_PERPLL_SET(1) |
+		CLKMGR_BYPASS_SDRPLL_SET(1) |
+		CLKMGR_BYPASS_MAINPLL_SET(1));
+
+	/*
+	 * Put all plls VCO registers back to reset value.
+	 * Some code might have messed with them.
+	 */
+	writel(CLKMGR_MAINPLLGRP_VCO_RESET_VALUE,
+		cm + CLKMGR_MAINPLLGRP_VCO_ADDRESS);
+	writel(CLKMGR_PERPLLGRP_VCO_RESET_VALUE,
+		cm + CLKMGR_PERPLLGRP_VCO_ADDRESS);
+	writel(CLKMGR_SDRPLLGRP_VCO_RESET_VALUE,
+		cm + CLKMGR_SDRPLLGRP_VCO_ADDRESS);
+
+	/*
+	 * The clocks to the flash devices and the L4_MAIN clocks can
+	 * glitch when coming out of safe mode if their source values
+	 * are different from their reset value.  So the trick it to
+	 * put them back to their reset state, and change input
+	 * after exiting safe mode but before ungating the clocks.
+	 */
+	writel(CLKMGR_PERPLLGRP_SRC_RESET_VALUE,
+		cm + CLKMGR_PERPLLGRP_SRC_ADDRESS);
+	writel(CLKMGR_MAINPLLGRP_L4SRC_RESET_VALUE,
+		cm + CLKMGR_MAINPLLGRP_L4SRC_ADDRESS);
+
+	/* read back for the required 5 us delay. */
+	readl(cm + CLKMGR_MAINPLLGRP_VCO_ADDRESS);
+	readl(cm + CLKMGR_PERPLLGRP_VCO_ADDRESS);
+	readl(cm + CLKMGR_SDRPLLGRP_VCO_ADDRESS);
+
+	/*
+	 * We made sure bgpwr down was assert for 5 us. Now deassert BG PWR DN
+	 * with numerator and denominator.
+	 */
+	writel(cfg->main_vco_base | CLKMGR_MAINPLLGRP_VCO_REGEXTSEL_MASK,
+		cm + CLKMGR_MAINPLLGRP_VCO_ADDRESS);
+	writel(cfg->peri_vco_base | CLKMGR_PERPLLGRP_VCO_REGEXTSEL_MASK,
+		cm + CLKMGR_PERPLLGRP_VCO_ADDRESS);
+	writel(cfg->sdram_vco_base | CLKMGR_SDRPLLGRP_VCO_REGEXTSEL_MASK,
+		cm + CLKMGR_SDRPLLGRP_VCO_ADDRESS);
+
+	writel(cfg->mpuclk, cm + CLKMGR_MAINPLLGRP_MPUCLK_ADDRESS);
+	writel(cfg->mainclk, cm + CLKMGR_MAINPLLGRP_MAINCLK_ADDRESS);
+	writel(cfg->dbgatclk, cm + CLKMGR_MAINPLLGRP_DBGATCLK_ADDRESS);
+	writel(cfg->cfg2fuser0clk, cm + CLKMGR_MAINPLLGRP_CFGS2FUSER0CLK_ADDRESS);
+	writel(cfg->emac0clk, cm + CLKMGR_PERPLLGRP_EMAC0CLK_ADDRESS);
+	writel(cfg->emac1clk, cm + CLKMGR_PERPLLGRP_EMAC1CLK_ADDRESS);
+	writel(cfg->mainqspiclk, cm + CLKMGR_MAINPLLGRP_MAINQSPICLK_ADDRESS);
+	writel(cfg->perqspiclk, cm + CLKMGR_PERPLLGRP_PERQSPICLK_ADDRESS);
+	writel(cfg->pernandsdmmcclk, cm + CLKMGR_PERPLLGRP_PERNANDSDMMCCLK_ADDRESS);
+	writel(cfg->perbaseclk, cm + CLKMGR_PERPLLGRP_PERBASECLK_ADDRESS);
+	writel(cfg->s2fuser1clk, cm + CLKMGR_PERPLLGRP_S2FUSER1CLK_ADDRESS);
+
+	/* 7 us must have elapsed before we can enable the VCO */
+	__udelay(7);
+
+	/* Enable vco */
+	writel(cfg->main_vco_base | CLKMGR_MAINPLLGRP_VCO_EN_SET(1),
+			cm + CLKMGR_MAINPLLGRP_VCO_ADDRESS);
+	writel(cfg->peri_vco_base | CLKMGR_MAINPLLGRP_VCO_EN_SET(1),
+			cm + CLKMGR_PERPLLGRP_VCO_ADDRESS);
+	writel(cfg->sdram_vco_base | CLKMGR_MAINPLLGRP_VCO_EN_SET(1),
+			cm + CLKMGR_SDRPLLGRP_VCO_ADDRESS);
+
+	/* setup dividers while plls are locking */
+
+	/* L3 MP and L3 SP */
+	writel(cfg->maindiv, cm + CLKMGR_MAINPLLGRP_MAINDIV_ADDRESS);
+	writel(cfg->dbgdiv, cm + CLKMGR_MAINPLLGRP_DBGDIV_ADDRESS);
+	writel(cfg->tracediv, cm + CLKMGR_MAINPLLGRP_TRACEDIV_ADDRESS);
+
+	/* L4 MP, L4 SP, can0, and can1 */
+	writel(cfg->perdiv, cm + CLKMGR_PERPLLGRP_DIV_ADDRESS);
+	writel(cfg->gpiodiv, cm + CLKMGR_PERPLLGRP_GPIODIV_ADDRESS);
+
+	cm_wait_for_lock(cm, CLKMGR_INTER_SDRPLLLOCKED_MASK |
+			CLKMGR_INTER_PERPLLLOCKED_MASK  |
+			CLKMGR_INTER_MAINPLLLOCKED_MASK);
+
+	/* write the sdram clock counters before toggling outreset all */
+	writel(cfg->ddrdqsclk & CLKMGR_SDRPLLGRP_DDRDQSCLK_CNT_MASK,
+		cm + CLKMGR_SDRPLLGRP_DDRDQSCLK_ADDRESS);
+
+	writel(cfg->ddr2xdqsclk & CLKMGR_SDRPLLGRP_DDR2XDQSCLK_CNT_MASK,
+		cm + CLKMGR_SDRPLLGRP_DDR2XDQSCLK_ADDRESS);
+
+	writel(cfg->ddrdqclk & CLKMGR_SDRPLLGRP_DDRDQCLK_CNT_MASK,
+		cm + CLKMGR_SDRPLLGRP_DDRDQCLK_ADDRESS);
+
+	writel(cfg->s2fuser2clk & CLKMGR_SDRPLLGRP_S2FUSER2CLK_CNT_MASK,
+		cm + CLKMGR_SDRPLLGRP_S2FUSER2CLK_ADDRESS);
+
+	/*
+	 * after locking, but before taking out of bypass
+	 * assert/deassert outresetall
+	 */
+	mainvco = readl(cm + CLKMGR_MAINPLLGRP_VCO_ADDRESS);
+
+	/* assert main outresetall */
+	writel(mainvco | CLKMGR_MAINPLLGRP_VCO_OUTRESETALL_MASK,
+		cm + CLKMGR_MAINPLLGRP_VCO_ADDRESS);
+
+	periphvco = readl(cm + CLKMGR_PERPLLGRP_VCO_ADDRESS);
+
+	/* assert pheriph outresetall */
+	writel(periphvco | CLKMGR_PERPLLGRP_VCO_OUTRESETALL_MASK,
+		cm + CLKMGR_PERPLLGRP_VCO_ADDRESS);
+
+	/* assert sdram outresetall */
+	writel(cfg->sdram_vco_base | CLKMGR_MAINPLLGRP_VCO_EN_SET(1) |
+		CLKMGR_SDRPLLGRP_VCO_OUTRESETALL_SET(1),
+		cm + CLKMGR_SDRPLLGRP_VCO_ADDRESS);
+
+	/* deassert main outresetall */
+	writel(mainvco & ~CLKMGR_MAINPLLGRP_VCO_OUTRESETALL_MASK,
+		cm + CLKMGR_MAINPLLGRP_VCO_ADDRESS);
+
+	/* deassert pheriph outresetall */
+	writel(periphvco & ~CLKMGR_PERPLLGRP_VCO_OUTRESETALL_MASK,
+		cm + CLKMGR_PERPLLGRP_VCO_ADDRESS);
+
+	/* deassert sdram outresetall */
+	writel(cfg->sdram_vco_base | CLKMGR_MAINPLLGRP_VCO_EN_SET(1),
+		cm + CLKMGR_SDRPLLGRP_VCO_ADDRESS);
+
+	/*
+	 * now that we've toggled outreset all, all the clocks
+	 * are aligned nicely; so we can change any phase.
+	 */
+	cm_write_with_phase(cfg->ddrdqsclk,
+		cm + CLKMGR_SDRPLLGRP_DDRDQSCLK_ADDRESS,
+		CLKMGR_SDRPLLGRP_DDRDQSCLK_PHASE_MASK);
+
+	/* SDRAM DDR2XDQSCLK */
+	cm_write_with_phase(cfg->ddr2xdqsclk,
+		cm + CLKMGR_SDRPLLGRP_DDR2XDQSCLK_ADDRESS,
+		CLKMGR_SDRPLLGRP_DDR2XDQSCLK_PHASE_MASK);
+
+	cm_write_with_phase(cfg->ddrdqclk,
+		cm + CLKMGR_SDRPLLGRP_DDRDQCLK_ADDRESS,
+		CLKMGR_SDRPLLGRP_DDRDQCLK_PHASE_MASK);
+
+	cm_write_with_phase(cfg->s2fuser2clk,
+		cm + CLKMGR_SDRPLLGRP_S2FUSER2CLK_ADDRESS,
+		CLKMGR_SDRPLLGRP_S2FUSER2CLK_PHASE_MASK);
+
+	/* Take all three PLLs out of bypass when safe mode is cleared. */
+	cm_write_bypass(cm, 0);
+
+	/* clear safe mode */
+	val = readl(cm + CLKMGR_CTRL_ADDRESS);
+	val |= CLKMGR_CTRL_SAFEMODE_SET(CLKMGR_CTRL_SAFEMODE_MASK);
+	cm_write_ctrl(cm, val);
+
+	/*
+	 * now that safe mode is clear with clocks gated
+	 * it safe to change the source mux for the flashes the the L4_MAIN
+	 */
+	writel(cfg->persrc, cm + CLKMGR_PERPLLGRP_SRC_ADDRESS);
+	writel(cfg->l4src, cm + CLKMGR_MAINPLLGRP_L4SRC_ADDRESS);
+
+	/* Now ungate non-hw-managed clocks */
+	writel(~0, cm + CLKMGR_MAINPLLGRP_EN_ADDRESS);
+	writel(~0, cm + CLKMGR_PERPLLGRP_EN_ADDRESS);
+	writel(~0, cm + CLKMGR_SDRPLLGRP_EN_ADDRESS);
+}
diff --git a/arch/arm/mach-socfpga/freeze-controller.c b/arch/arm/mach-socfpga/freeze-controller.c
new file mode 100644
index 0000000..570bdeb
--- /dev/null
+++ b/arch/arm/mach-socfpga/freeze-controller.c
@@ -0,0 +1,218 @@
+/*
+ *  Copyright (C) 2012 Altera Corporation <www.altera.com>
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
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#include <common.h>
+#include <io.h>
+#include <mach/generic.h>
+#include <mach/freeze-controller.h>
+
+#define SYSMGR_FRZCTRL_LOOP_PARAM       (1000)
+#define SYSMGR_FRZCTRL_DELAY_LOOP_PARAM (10)
+
+/*
+ * sys_mgr_frzctrl_freeze_req
+ * Freeze HPS IOs
+ */
+int sys_mgr_frzctrl_freeze_req(enum frz_channel_id channel_id)
+{
+	uint32_t reg, val;
+	void *sm = (void *)CYCLONE5_SYSMGR_ADDRESS;
+
+	/* select software FSM */
+	writel(SYSMGR_FRZCTRL_SRC_VIO1_ENUM_SW,
+		(sm + SYSMGR_FRZCTRL_SRC_ADDRESS));
+
+	/* Freeze channel ID checking and base address */
+	switch (channel_id) {
+	case FREEZE_CHANNEL_0:
+	case FREEZE_CHANNEL_1:
+	case FREEZE_CHANNEL_2:
+		reg = SYSMGR_FRZCTRL_VIOCTRL_ADDRESS + (channel_id << SYSMGR_FRZCTRL_VIOCTRL_SHIFT);
+
+		/*
+		 * Assert active low enrnsl, plniotri
+		 * and niotri signals
+		 */
+		val = readl(sm + reg);
+		val &= ~(SYSMGR_FRZCTRL_VIOCTRL_SLEW_MASK
+			| SYSMGR_FRZCTRL_VIOCTRL_WKPULLUP_MASK
+			| SYSMGR_FRZCTRL_VIOCTRL_TRISTATE_MASK);
+		writel(val, sm + reg);
+
+		/*
+		 * Note: Delay for 20ns at min
+		 * Assert active low bhniotri signal and de-assert
+		 * active high csrdone
+		 */
+		val = readl(sm + reg);
+		val &= ~(SYSMGR_FRZCTRL_VIOCTRL_BUSHOLD_MASK | SYSMGR_FRZCTRL_VIOCTRL_CFG_MASK);
+		writel(val, sm + reg);
+
+		break;
+
+	case FREEZE_CHANNEL_3:
+		/*
+		 * Assert active low enrnsl, plniotri and
+		 * niotri signals
+		 */
+		val = readl(sm + SYSMGR_FRZCTRL_HIOCTRL_ADDRESS);
+		val &= ~(SYSMGR_FRZCTRL_HIOCTRL_SLEW_MASK
+			| SYSMGR_FRZCTRL_HIOCTRL_WKPULLUP_MASK
+			| SYSMGR_FRZCTRL_HIOCTRL_TRISTATE_MASK);
+		writel(val, sm + SYSMGR_FRZCTRL_HIOCTRL_ADDRESS);
+
+		/*
+		 * Note: Delay for 40ns at min
+		 * assert active low bhniotri & nfrzdrv signals,
+		 * de-assert active high csrdone and assert
+		 * active high frzreg and nfrzdrv signals
+		 */
+		val = readl(sm + SYSMGR_FRZCTRL_HIOCTRL_ADDRESS);
+		val &= ~(SYSMGR_FRZCTRL_HIOCTRL_BUSHOLD_MASK
+			| SYSMGR_FRZCTRL_HIOCTRL_CFG_MASK);
+		val |= SYSMGR_FRZCTRL_HIOCTRL_REGRST_MASK
+			| SYSMGR_FRZCTRL_HIOCTRL_OCTRST_MASK;
+		writel(val, sm + SYSMGR_FRZCTRL_HIOCTRL_ADDRESS);
+
+		/*
+		 * Note: Delay for 40ns at min
+		 * assert active high reinit signal and de-assert
+		 * active high pllbiasen signals
+		 */
+		val = readl(sm + SYSMGR_FRZCTRL_HIOCTRL_ADDRESS);
+		val &= ~(SYSMGR_FRZCTRL_HIOCTRL_OCT_CFGEN_CALSTART_MASK);
+		val |= SYSMGR_FRZCTRL_HIOCTRL_DLLRST_MASK;
+		writel(val, sm + SYSMGR_FRZCTRL_HIOCTRL_ADDRESS);
+
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+/*
+ * sys_mgr_frzctrl_thaw_req
+ * Unfreeze/Thaw HPS IOs
+ */
+int sys_mgr_frzctrl_thaw_req(enum frz_channel_id channel_id)
+{
+	uint32_t reg, val;
+	void *sm = (void *)CYCLONE5_SYSMGR_ADDRESS;
+
+	/* select software FSM */
+	writel(SYSMGR_FRZCTRL_SRC_VIO1_ENUM_SW, sm + SYSMGR_FRZCTRL_SRC_ADDRESS);
+
+	/* Freeze channel ID checking and base address */
+	switch (channel_id) {
+	case FREEZE_CHANNEL_0:
+	case FREEZE_CHANNEL_1:
+	case FREEZE_CHANNEL_2:
+		reg = SYSMGR_FRZCTRL_VIOCTRL_ADDRESS +
+			(channel_id << SYSMGR_FRZCTRL_VIOCTRL_SHIFT);
+
+		/*
+		 * Assert active low bhniotri signal and
+		 * de-assert active high csrdone
+		 */
+		val = readl(sm + reg);
+		val |= SYSMGR_FRZCTRL_VIOCTRL_BUSHOLD_MASK |
+			SYSMGR_FRZCTRL_VIOCTRL_CFG_MASK;
+		writel(val, sm + reg);
+
+		/*
+		 * Note: Delay for 20ns at min
+		 * de-assert active low plniotri and niotri signals
+		 */
+		val = readl(sm + reg);
+		val |= SYSMGR_FRZCTRL_VIOCTRL_WKPULLUP_MASK |
+			SYSMGR_FRZCTRL_VIOCTRL_TRISTATE_MASK;
+		writel(val, sm + reg);
+
+		/*
+		 * Note: Delay for 20ns at min
+		 * de-assert active low enrnsl signal
+		 */
+		val = readl(sm + reg);
+		val |= SYSMGR_FRZCTRL_VIOCTRL_SLEW_MASK;
+		writel(val, sm + reg);
+
+		break;
+
+	case FREEZE_CHANNEL_3:
+		/* de-assert active high reinit signal */
+		val = readl(sm + SYSMGR_FRZCTRL_HIOCTRL_ADDRESS);
+		val &= ~SYSMGR_FRZCTRL_HIOCTRL_DLLRST_MASK;
+		writel(val, sm + SYSMGR_FRZCTRL_HIOCTRL_ADDRESS);
+
+		/*
+		 * Note: Delay for 40ns at min
+		 * assert active high pllbiasen signals
+		 */
+		val = readl(sm + SYSMGR_FRZCTRL_HIOCTRL_ADDRESS);
+		val |= SYSMGR_FRZCTRL_HIOCTRL_OCT_CFGEN_CALSTART_MASK;
+		writel(val, sm + SYSMGR_FRZCTRL_HIOCTRL_ADDRESS);
+
+		/*
+		 * Delay 1000 intosc. intosc is based on eosc1
+		 * At 25MHz this would be 40us. Play safe, we have time...
+		 */
+		__udelay(1000);
+
+		/*
+		 * de-assert active low bhniotri signals,
+		 * assert active high csrdone and nfrzdrv signal
+		 */
+		val = readl(sm + SYSMGR_FRZCTRL_HIOCTRL_ADDRESS);
+		val |= SYSMGR_FRZCTRL_HIOCTRL_BUSHOLD_MASK |
+			SYSMGR_FRZCTRL_HIOCTRL_CFG_MASK;
+		val &= ~SYSMGR_FRZCTRL_HIOCTRL_OCTRST_MASK;
+		writel(val, sm + SYSMGR_FRZCTRL_HIOCTRL_ADDRESS);
+
+		/* Delay 33 intosc */
+		__udelay(100);
+
+		/* de-assert active low plniotri and niotri signals */
+		val = readl(sm + SYSMGR_FRZCTRL_HIOCTRL_ADDRESS);
+		val |= SYSMGR_FRZCTRL_HIOCTRL_WKPULLUP_MASK |
+			SYSMGR_FRZCTRL_HIOCTRL_TRISTATE_MASK;
+		writel(val, sm + SYSMGR_FRZCTRL_HIOCTRL_ADDRESS);
+
+		/*
+		 * Note: Delay for 40ns at min
+		 * de-assert active high frzreg signal
+		 */
+		val = readl(sm + SYSMGR_FRZCTRL_HIOCTRL_ADDRESS);
+		val &= ~SYSMGR_FRZCTRL_HIOCTRL_REGRST_MASK;
+		writel(val, sm + SYSMGR_FRZCTRL_HIOCTRL_ADDRESS);
+
+		/*
+		 * Note: Delay for 40ns at min
+		 * de-assert active low enrnsl signal
+		 */
+		val = readl(sm + SYSMGR_FRZCTRL_HIOCTRL_ADDRESS);
+		val |= SYSMGR_FRZCTRL_HIOCTRL_SLEW_MASK;
+		writel(val, sm + SYSMGR_FRZCTRL_HIOCTRL_ADDRESS);
+
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
diff --git a/arch/arm/mach-socfpga/generic.c b/arch/arm/mach-socfpga/generic.c
new file mode 100644
index 0000000..2eec4d0
--- /dev/null
+++ b/arch/arm/mach-socfpga/generic.c
@@ -0,0 +1,116 @@
+#include <common.h>
+#include <malloc.h>
+#include <envfs.h>
+#include <init.h>
+#include <io.h>
+#include <fs.h>
+#include <net/designware.h>
+#include <linux/clkdev.h>
+#include <linux/clk.h>
+#include <linux/stat.h>
+#include <asm/memory.h>
+#include <mach/system-manager.h>
+#include <mach/socfpga-regs.h>
+#include <mach/nic301.h>
+
+#define SYSMGR_SDMMCGRP_CTRL_REG	(CYCLONE5_SYSMGR_ADDRESS + 0x108)
+#define SYSMGR_SDMMC_CTRL_SMPLSEL(smplsel)	(((smplsel) & 0x7) << 3)
+#define SYSMGR_SDMMC_CTRL_DRVSEL(drvsel)	((drvsel) & 0x7)
+
+static int socfpga_detect_sdram(void)
+{
+	void __iomem *base = (void *)CYCLONE5_SDR_ADDRESS;
+	uint32_t dramaddrw, ctrlwidth, memsize;
+	int colbits, rowbits, bankbits;
+	int width_bytes;
+
+	dramaddrw = readl(base + 0x5000 + 0x2c);
+
+	colbits = dramaddrw & 0x1f;
+	rowbits = (dramaddrw >> 5) & 0x1f;
+	bankbits = (dramaddrw >> 10) & 0x7;
+
+	ctrlwidth = readl(base + 0x5000 + 0x60);
+
+	switch (ctrlwidth & 0x3) {
+	default:
+	case 0:
+		width_bytes = 1;
+		break;
+	case 1:
+		width_bytes = 2;
+		break;
+	case 2:
+		width_bytes = 4;
+		break;
+	}
+
+	memsize = (1 << colbits) * (1 << rowbits) * (1 << bankbits) * width_bytes;
+
+	pr_debug("%s: colbits: %d rowbits: %d bankbits: %d width: %d => memsize: 0x%08x\n",
+			__func__, colbits, rowbits, bankbits, width_bytes, memsize);
+
+	arm_add_mem_device("ram0", 0x0, memsize);
+
+	return 0;
+}
+
+static int socfpga_init(void)
+{
+	uint32_t val;
+
+	/* Clearing emac0 PHY interface select to 0 */
+	val = readl(CONFIG_SYSMGR_EMAC_CTRL);
+	val &= ~(SYSMGR_EMACGRP_CTRL_PHYSEL_MASK << SYSMGR_EMACGRP_CTRL_PHYSEL1_LSB);
+	val |= SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_RGMII << SYSMGR_EMACGRP_CTRL_PHYSEL1_LSB;
+	writel(val, CONFIG_SYSMGR_EMAC_CTRL);
+
+	writel(SYSMGR_SDMMC_CTRL_DRVSEL(3) | SYSMGR_SDMMC_CTRL_SMPLSEL(0),
+		SYSMGR_SDMMCGRP_CTRL_REG);
+
+	nic301_slave_ns();
+
+	socfpga_detect_sdram();
+
+	return 0;
+}
+core_initcall(socfpga_init);
+
+#if defined(CONFIG_DEFAULT_ENVIRONMENT)
+static int socfpga_env_init(void)
+{
+	struct stat s;
+	char *diskdev, *partname;
+	int ret;
+
+	diskdev = "mmc0";
+
+	device_detect_by_name(diskdev);
+
+	partname = asprintf("/dev/%s.1", diskdev);
+
+	ret = stat(partname, &s);
+
+	if (ret) {
+		printf("no %s. using default env\n", diskdev);
+		goto out_free;
+	}
+
+	mkdir("/boot", 0666);
+	ret = mount(partname, "fat", "/boot");
+	if (ret) {
+		printf("failed to mount %s\n", diskdev);
+		goto out_free;
+	}
+
+	if (IS_ENABLED(CONFIG_OMAP_BUILD_IFT))
+		default_environment_path = "/dev/defaultenv";
+	else
+		default_environment_path = "/boot/barebox.env";
+
+out_free:
+	free(partname);
+	return 0;
+}
+late_initcall(socfpga_env_init);
+#endif
diff --git a/arch/arm/mach-socfpga/include/mach/clkdev.h b/arch/arm/mach-socfpga/include/mach/clkdev.h
new file mode 100644
index 0000000..04b37a8
--- /dev/null
+++ b/arch/arm/mach-socfpga/include/mach/clkdev.h
@@ -0,0 +1,7 @@
+#ifndef __ASM_MACH_CLKDEV_H
+#define __ASM_MACH_CLKDEV_H
+
+#define __clk_get(clk) ({ 1; })
+#define __clk_put(clk) do { } while (0)
+
+#endif
diff --git a/arch/arm/mach-socfpga/include/mach/clock-manager.h b/arch/arm/mach-socfpga/include/mach/clock-manager.h
new file mode 100644
index 0000000..a2b6975
--- /dev/null
+++ b/arch/arm/mach-socfpga/include/mach/clock-manager.h
@@ -0,0 +1,188 @@
+/*
+ *  Copyright (C) 2012 Altera Corporation <www.altera.com>
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
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#ifndef	_CLOCK_MANAGER_H_
+#define	_CLOCK_MANAGER_H_
+
+struct socfpga_cm_config {
+	/* main group */
+	uint32_t main_vco_base;
+	uint32_t mpuclk;
+	uint32_t mainclk;
+	uint32_t dbgatclk;
+	uint32_t mainqspiclk;
+	uint32_t mainnandsdmmcclk;
+	uint32_t cfg2fuser0clk;
+	uint32_t maindiv;
+	uint32_t dbgdiv;
+	uint32_t tracediv;
+	uint32_t l4src;
+
+	/* peripheral group */
+	uint32_t peri_vco_base;
+	uint32_t emac0clk;
+	uint32_t emac1clk;
+	uint32_t perqspiclk;
+	uint32_t pernandsdmmcclk;
+	uint32_t perbaseclk;
+	uint32_t s2fuser1clk;
+	uint32_t perdiv;
+	uint32_t gpiodiv;
+	uint32_t persrc;
+
+	/* sdram pll group */
+	uint32_t sdram_vco_base;
+	uint32_t ddrdqsclk;
+	uint32_t ddr2xdqsclk;
+	uint32_t ddrdqclk;
+	uint32_t s2fuser2clk;
+};
+
+void socfpga_cm_basic_init(const struct socfpga_cm_config *cfg);
+
+#define CLKMGR_CTRL_ADDRESS 0x0
+#define CLKMGR_BYPASS_ADDRESS 0x4
+#define CLKMGR_INTER_ADDRESS 0x8
+#define CLKMGR_INTREN_ADDRESS 0xc
+#define CLKMGR_DBCTRL_ADDRESS 0x10
+#define CLKMGR_STAT_ADDRESS 0x14
+#define CLKMGR_MAINPLLGRP_ADDRESS 0x40
+#define CLKMGR_MAINPLLGRP_VCO_ADDRESS 0x40
+#define CLKMGR_MAINPLLGRP_MISC_ADDRESS 0x44
+#define CLKMGR_MAINPLLGRP_MPUCLK_ADDRESS 0x48
+#define CLKMGR_MAINPLLGRP_MAINCLK_ADDRESS 0x4c
+#define CLKMGR_MAINPLLGRP_DBGATCLK_ADDRESS 0x50
+#define CLKMGR_MAINPLLGRP_MAINQSPICLK_ADDRESS 0x54
+#define CLKMGR_MAINPLLGRP_MAINNANDSDMMCCLK_ADDRESS 0x58
+#define CLKMGR_MAINPLLGRP_CFGS2FUSER0CLK_ADDRESS 0x5c
+#define CLKMGR_MAINPLLGRP_EN_ADDRESS 0x60
+#define CLKMGR_MAINPLLGRP_MAINDIV_ADDRESS 0x64
+#define CLKMGR_MAINPLLGRP_DBGDIV_ADDRESS 0x68
+#define CLKMGR_MAINPLLGRP_TRACEDIV_ADDRESS 0x6c
+#define CLKMGR_MAINPLLGRP_L4SRC_ADDRESS 0x70
+#define CLKMGR_PERPLLGRP_ADDRESS 0x80
+#define CLKMGR_PERPLLGRP_VCO_ADDRESS 0x80
+#define CLKMGR_PERPLLGRP_MISC_ADDRESS 0x84
+#define CLKMGR_PERPLLGRP_EMAC0CLK_ADDRESS 0x88
+#define CLKMGR_PERPLLGRP_EMAC1CLK_ADDRESS 0x8c
+#define CLKMGR_PERPLLGRP_PERQSPICLK_ADDRESS 0x90
+#define CLKMGR_PERPLLGRP_PERNANDSDMMCCLK_ADDRESS 0x94
+#define CLKMGR_PERPLLGRP_PERBASECLK_ADDRESS 0x98
+#define CLKMGR_PERPLLGRP_S2FUSER1CLK_ADDRESS 0x9c
+#define CLKMGR_PERPLLGRP_EN_ADDRESS 0xa0
+#define CLKMGR_PERPLLGRP_DIV_ADDRESS 0xa4
+#define CLKMGR_PERPLLGRP_GPIODIV_ADDRESS 0xa8
+#define CLKMGR_PERPLLGRP_SRC_ADDRESS 0xac
+#define CLKMGR_SDRPLLGRP_ADDRESS 0xc0
+#define CLKMGR_SDRPLLGRP_VCO_ADDRESS 0xc0
+#define CLKMGR_SDRPLLGRP_CTRL_ADDRESS 0xc4
+#define CLKMGR_SDRPLLGRP_DDRDQSCLK_ADDRESS 0xc8
+#define CLKMGR_SDRPLLGRP_DDR2XDQSCLK_ADDRESS 0xcc
+#define CLKMGR_SDRPLLGRP_DDRDQCLK_ADDRESS 0xd0
+#define CLKMGR_SDRPLLGRP_S2FUSER2CLK_ADDRESS 0xd4
+#define CLKMGR_SDRPLLGRP_EN_ADDRESS 0xd8
+
+#define CLKMGR_MAINPLLGRP_EN_S2FUSER0CLK_MASK 0x00000200
+#define CLKMGR_MAINPLLGRP_EN_DBGTIMERCLK_MASK 0x00000080
+#define CLKMGR_MAINPLLGRP_EN_DBGTRACECLK_MASK 0x00000040
+#define CLKMGR_MAINPLLGRP_EN_DBGCLK_MASK 0x00000020
+#define CLKMGR_MAINPLLGRP_EN_DBGATCLK_MASK 0x00000010
+#define CLKMGR_MAINPLLGRP_EN_L4MPCLK_MASK 0x00000004
+#define CLKMGR_MAINPLLGRP_VCO_RESET_VALUE 0x8001000d
+#define CLKMGR_PERPLLGRP_VCO_RESET_VALUE 0x8001000d
+#define CLKMGR_SDRPLLGRP_VCO_RESET_VALUE 0x8001000d
+#define CLKMGR_MAINPLLGRP_MAINDIV_L4MPCLK_SET(x) (((x) << 4) & 0x00000070)
+#define CLKMGR_MAINPLLGRP_MAINDIV_L4SPCLK_SET(x)  (((x) << 7) & 0x00000380)
+#define CLKMGR_MAINPLLGRP_L4SRC_L4MP_SET(x) (((x) << 0) & 0x00000001)
+#define CLKMGR_MAINPLLGRP_L4SRC_L4SP_SET(x) (((x) << 1) & 0x00000002)
+#define CLKMGR_PERPLLGRP_SRC_QSPI_SET(x) (((x) << 4) & 0x00000030)
+#define CLKMGR_PERPLLGRP_SRC_NAND_SET(x) (((x) << 2) & 0x0000000c)
+#define CLKMGR_PERPLLGRP_SRC_SDMMC_SET(x) (((x) << 0) & 0x00000003)
+#define CLKMGR_MAINPLLGRP_VCO_DENOM_SET(x) (((x) << 16) & 0x003f0000)
+#define CLKMGR_MAINPLLGRP_VCO_NUMER_SET(x) (((x) << 3) & 0x0000fff8)
+#define CLKMGR_MAINPLLGRP_VCO_PWRDN_SET(x) (((x) << 2) & 0x00000004)
+#define CLKMGR_MAINPLLGRP_VCO_EN_SET(x) (((x) << 1) & 0x00000002)
+#define CLKMGR_MAINPLLGRP_VCO_BGPWRDN_SET(x) (((x) << 0) & 0x00000001)
+#define CLKMGR_PERPLLGRP_VCO_PSRC_SET(x) (((x) << 22) & 0x00c00000)
+#define CLKMGR_PERPLLGRP_VCO_DENOM_SET(x) (((x) << 16) & 0x003f0000)
+#define CLKMGR_PERPLLGRP_VCO_NUMER_SET(x) (((x) << 3) & 0x0000fff8)
+#define CLKMGR_SDRPLLGRP_VCO_OUTRESET_SET(x) (((x) << 25) & 0x7e000000)
+#define CLKMGR_SDRPLLGRP_VCO_OUTRESETALL_SET(x) (((x) << 24) & 0x01000000)
+#define CLKMGR_SDRPLLGRP_VCO_SSRC_SET(x) (((x) << 22) & 0x00c00000)
+#define CLKMGR_SDRPLLGRP_VCO_DENOM_SET(x) (((x) << 16) & 0x003f0000)
+#define CLKMGR_SDRPLLGRP_VCO_NUMER_SET(x) (((x) << 3) & 0x0000fff8)
+#define CLKMGR_MAINPLLGRP_MPUCLK_CNT_SET(x) (((x) << 0) & 0x000001ff)
+#define CLKMGR_MAINPLLGRP_MAINCLK_CNT_SET(x) (((x) << 0) & 0x000001ff)
+#define CLKMGR_MAINPLLGRP_DBGATCLK_CNT_SET(x) (((x) << 0) & 0x000001ff)
+#define CLKMGR_MAINPLLGRP_CFGS2FUSER0CLK_CNT_SET(x) (((x) << 0) & 0x000001ff)
+#define CLKMGR_PERPLLGRP_EMAC0CLK_CNT_SET(x) (((x) << 0) & 0x000001ff)
+#define CLKMGR_PERPLLGRP_EMAC1CLK_CNT_SET(x) (((x) << 0) & 0x000001ff)
+#define CLKMGR_MAINPLLGRP_MAINQSPICLK_CNT_SET(x) (((x) << 0) & 0x000001ff)
+#define CLKMGR_MAINPLLGRP_MAINNANDSDMMCCLK_CNT_SET(x) (((x) << 0) & 0x000001ff)
+#define CLKMGR_PERPLLGRP_PERBASECLK_CNT_SET(x) (((x) << 0) & 0x000001ff)
+#define CLKMGR_PERPLLGRP_S2FUSER1CLK_CNT_SET(x) (((x) << 0) & 0x000001ff)
+#define CLKMGR_PERPLLGRP_PERNANDSDMMCCLK_CNT_SET(x) (((x) << 0) & 0x000001ff)
+#define CLKMGR_SDRPLLGRP_DDRDQSCLK_PHASE_SET(x) (((x) << 9) & 0x00000e00)
+#define CLKMGR_SDRPLLGRP_DDRDQSCLK_CNT_SET(x) (((x) << 0) & 0x000001ff)
+#define CLKMGR_SDRPLLGRP_DDR2XDQSCLK_PHASE_SET(x) (((x) << 9) & 0x00000e00)
+#define CLKMGR_SDRPLLGRP_DDR2XDQSCLK_CNT_SET(x) (((x) << 0) & 0x000001ff)
+#define CLKMGR_SDRPLLGRP_DDRDQCLK_PHASE_SET(x) (((x) << 9) & 0x00000e00)
+#define CLKMGR_SDRPLLGRP_DDRDQCLK_CNT_SET(x) (((x) << 0) & 0x000001ff)
+#define CLKMGR_SDRPLLGRP_S2FUSER2CLK_PHASE_SET(x) (((x) << 9) & 0x00000e00)
+#define CLKMGR_SDRPLLGRP_S2FUSER2CLK_CNT_SET(x) (((x) << 0) & 0x000001ff)
+#define CLKMGR_MAINPLLGRP_DBGDIV_DBGCLK_SET(x) (((x) << 2) & 0x0000000c)
+#define CLKMGR_MAINPLLGRP_DBGDIV_DBGATCLK_SET(x) (((x) << 0) & 0x00000003)
+#define CLKMGR_MAINPLLGRP_TRACEDIV_TRACECLK_SET(x) (((x) << 0) & 0x00000007)
+#define CLKMGR_MAINPLLGRP_MAINDIV_L3MPCLK_SET(x) (((x) << 0) & 0x00000003)
+#define CLKMGR_MAINPLLGRP_MAINDIV_L3SPCLK_SET(x) (((x) << 2) & 0x0000000c)
+#define CLKMGR_BYPASS_PERPLL_SET(x) (((x) << 3) & 0x00000008)
+#define CLKMGR_BYPASS_SDRPLL_SET(x) (((x) << 1) & 0x00000002)
+#define CLKMGR_BYPASS_MAINPLL_SET(x) (((x) << 0) & 0x00000001)
+#define CLKMGR_PERPLLGRP_DIV_USBCLK_SET(x) (((x) << 0) & 0x00000007)
+#define CLKMGR_PERPLLGRP_DIV_SPIMCLK_SET(x) (((x) << 3) & 0x00000038)
+#define CLKMGR_PERPLLGRP_DIV_CAN0CLK_SET(x) (((x) << 6) & 0x000001c0)
+#define CLKMGR_PERPLLGRP_DIV_CAN1CLK_SET(x) (((x) << 9) & 0x00000e00)
+#define CLKMGR_INTER_SDRPLLLOCKED_MASK 0x00000100
+#define CLKMGR_INTER_PERPLLLOCKED_MASK 0x00000080
+#define CLKMGR_INTER_MAINPLLLOCKED_MASK 0x00000040
+#define CLKMGR_CTRL_SAFEMODE_MASK 0x00000001
+#define CLKMGR_CTRL_SAFEMODE_SET(x) (((x) << 0) & 0x00000001)
+#define CLKMGR_SDRPLLGRP_VCO_OUTRESET_MASK 0x7e000000
+#define CLKMGR_SDRPLLGRP_VCO_OUTRESETALL_SET(x) (((x) << 24) & 0x01000000)
+#define CLKMGR_PERPLLGRP_PERQSPICLK_CNT_SET(x) (((x) << 0) & 0x000001ff)
+#define CLKMGR_PERPLLGRP_DIV_SPIMCLK_SET(x) (((x) << 3) & 0x00000038)
+#define CLKMGR_PERPLLGRP_GPIODIV_GPIODBCLK_SET(x) (((x) << 0) & 0x00ffffff)
+#define CLKMGR_BYPASS_PERPLLSRC_SET(x) (((x) << 4) & 0x00000010)
+#define CLKMGR_BYPASS_SDRPLLSRC_SET(x) (((x) << 2) & 0x00000004)
+#define CLKMGR_PERPLLGRP_SRC_RESET_VALUE 0x00000015
+#define CLKMGR_MAINPLLGRP_L4SRC_RESET_VALUE 0x00000000
+#define CLKMGR_MAINPLLGRP_VCO_REGEXTSEL_MASK 0x80000000
+#define CLKMGR_PERPLLGRP_VCO_REGEXTSEL_MASK 0x80000000
+#define CLKMGR_SDRPLLGRP_VCO_REGEXTSEL_MASK 0x80000000
+#define CLKMGR_SDRPLLGRP_DDRDQSCLK_PHASE_MASK 0x001ffe00
+#define CLKMGR_SDRPLLGRP_DDR2XDQSCLK_PHASE_MASK 0x001ffe00
+#define CLKMGR_SDRPLLGRP_DDRDQCLK_PHASE_MASK 0x001ffe00
+#define CLKMGR_SDRPLLGRP_S2FUSER2CLK_PHASE_MASK 0x001ffe00
+#define CLKMGR_MAINPLLGRP_VCO_OUTRESETALL_MASK 0x01000000
+#define CLKMGR_PERPLLGRP_VCO_OUTRESETALL_MASK 0x01000000
+#define CLKMGR_PERPLLGRP_EN_NANDCLK_MASK 0x00000400
+#define CLKMGR_SDRPLLGRP_DDRDQSCLK_CNT_MASK 0x000001ff
+#define CLKMGR_SDRPLLGRP_DDR2XDQSCLK_CNT_MASK 0x000001ff
+#define CLKMGR_SDRPLLGRP_DDRDQCLK_CNT_MASK 0x000001ff
+#define CLKMGR_SDRPLLGRP_S2FUSER2CLK_CNT_MASK 0x000001ff
+
+#endif /* _CLOCK_MANAGER_H_ */
diff --git a/arch/arm/mach-socfpga/include/mach/debug_ll.h b/arch/arm/mach-socfpga/include/mach/debug_ll.h
new file mode 100644
index 0000000..f378435
--- /dev/null
+++ b/arch/arm/mach-socfpga/include/mach/debug_ll.h
@@ -0,0 +1,55 @@
+#ifndef __MACH_DEBUG_LL_H__
+#define   __MACH_DEBUG_LL_H__
+
+#include <io.h>
+
+#define UART_BASE	0xffc02000
+
+#define LSR_THRE	0x20	/* Xmit holding register empty */
+#define LSR		(5 << 2)
+#define THR		(0 << 2)
+
+#define LCR_BKSE	0x80	/* Bank select enable */
+#define LSR		(5 << 2)
+#define THR		(0 << 2)
+#define DLL		(0 << 2)
+#define IER		(1 << 2)
+#define DLM		(1 << 2)
+#define FCR		(2 << 2)
+#define LCR		(3 << 2)
+#define MCR		(4 << 2)
+#define MDR		(8 << 2)
+
+static inline unsigned int ns16550_calc_divisor(unsigned int clk,
+					 unsigned int baudrate)
+{
+	return (clk / 16 / baudrate);
+}
+
+static inline void INIT_LL(void)
+{
+	unsigned int clk = 100000000;
+	unsigned int divisor = clk / 16 / 115200;
+
+	writeb(0x00, UART_BASE + LCR);
+	writeb(0x00, UART_BASE + IER);
+	writeb(0x07, UART_BASE + MDR);
+	writeb(LCR_BKSE, UART_BASE + LCR);
+	writeb(divisor & 0xff, UART_BASE + DLL);
+	writeb(divisor >> 8, UART_BASE + DLM);
+	writeb(0x03, UART_BASE + LCR);
+	writeb(0x03, UART_BASE + MCR);
+	writeb(0x07, UART_BASE + FCR);
+	writeb(0x00, UART_BASE + MDR);
+}
+
+static inline void PUTC_LL(char c)
+{
+	/* Wait until there is space in the FIFO */
+	while ((readb(UART_BASE + LSR) & LSR_THRE) == 0);
+	/* Send the character */
+	writeb(c, UART_BASE + THR);
+	/* Wait to make sure it hits the line, in case we die too soon. */
+	while ((readb(UART_BASE + LSR) & LSR_THRE) == 0);
+}
+#endif
diff --git a/arch/arm/mach-socfpga/include/mach/freeze-controller.h b/arch/arm/mach-socfpga/include/mach/freeze-controller.h
new file mode 100644
index 0000000..4253f5b
--- /dev/null
+++ b/arch/arm/mach-socfpga/include/mach/freeze-controller.h
@@ -0,0 +1,85 @@
+/*
+ *  Copyright (C) 2012 Altera Corporation <www.altera.com>
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
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#ifndef _FREEZE_CONTROLLER_H_
+#define _FREEZE_CONTROLLER_H_
+
+#include <mach/socfpga-regs.h>
+
+#define SYSMGR_FRZCTRL_ADDRESS		0x40
+#define SYSMGR_FRZCTRL_VIOCTRL_ADDRESS	0x40
+#define SYSMGR_FRZCTRL_HIOCTRL_ADDRESS	0x50
+#define SYSMGR_FRZCTRL_SRC_ADDRESS	0x54
+#define SYSMGR_FRZCTRL_HWCTRL_ADDRESS	0x58
+
+#define SYSMGR_FRZCTRL_SRC_VIO1_ENUM_SW 0x0
+#define SYSMGR_FRZCTRL_SRC_VIO1_ENUM_HW 0x1
+#define SYSMGR_FRZCTRL_VIOCTRL_SLEW_MASK 0x00000010
+#define SYSMGR_FRZCTRL_VIOCTRL_WKPULLUP_MASK 0x00000008
+#define SYSMGR_FRZCTRL_VIOCTRL_TRISTATE_MASK 0x00000004
+#define SYSMGR_FRZCTRL_VIOCTRL_BUSHOLD_MASK 0x00000002
+#define SYSMGR_FRZCTRL_VIOCTRL_CFG_MASK 0x00000001
+#define SYSMGR_FRZCTRL_HIOCTRL_SLEW_MASK 0x00000010
+#define SYSMGR_FRZCTRL_HIOCTRL_WKPULLUP_MASK 0x00000008
+#define SYSMGR_FRZCTRL_HIOCTRL_TRISTATE_MASK 0x00000004
+#define SYSMGR_FRZCTRL_HIOCTRL_BUSHOLD_MASK 0x00000002
+#define SYSMGR_FRZCTRL_HIOCTRL_CFG_MASK 0x00000001
+#define SYSMGR_FRZCTRL_HIOCTRL_REGRST_MASK 0x00000080
+#define SYSMGR_FRZCTRL_HIOCTRL_OCTRST_MASK 0x00000040
+#define SYSMGR_FRZCTRL_HIOCTRL_OCT_CFGEN_CALSTART_MASK 0x00000100
+#define SYSMGR_FRZCTRL_HIOCTRL_DLLRST_MASK 0x00000020
+#define SYSMGR_FRZCTRL_HWCTRL_VIO1REQ_MASK 0x00000001
+#define SYSMGR_FRZCTRL_HWCTRL_VIO1STATE_ENUM_FROZEN 0x2
+#define SYSMGR_FRZCTRL_HWCTRL_VIO1STATE_ENUM_THAWED 0x1
+
+#define SYSMGR_FRZCTRL_HWCTRL_VIO1STATE_GET(x) (((x) & 0x00000006) >> 1)
+
+/*
+ * FreezeChannelSelect
+ * Definition of enum for freeze channel
+ */
+enum frz_channel_id {
+	FREEZE_CHANNEL_0 = 0,   /* EMAC_IO & MIXED2_IO */
+	FREEZE_CHANNEL_1,   /* MIXED1_IO and FLASH_IO */
+	FREEZE_CHANNEL_2,   /* General IO */
+	FREEZE_CHANNEL_3,   /* DDR IO */
+};
+
+/* Shift count needed to calculte for FRZCTRL VIO control register offset */
+#define SYSMGR_FRZCTRL_VIOCTRL_SHIFT    (2)
+
+/*
+ * Freeze HPS IOs
+ *
+ * FreezeChannelSelect [in] - Freeze channel ID
+ * FreezeControllerFSMSelect [in] - To use hardware or software state machine
+ * If FREEZE_CONTROLLER_FSM_HW is selected for FSM select then the
+ *       the freeze channel id is input is ignored. It is default to channel 1
+ */
+int sys_mgr_frzctrl_freeze_req(enum frz_channel_id channel_id);
+
+/*
+ * Unfreeze/Thaw HPS IOs
+ *
+ * FreezeChannelSelect [in] - Freeze channel ID
+ * FreezeControllerFSMSelect [in] - To use hardware or software state machine
+ * If FREEZE_CONTROLLER_FSM_HW is selected for FSM select then the
+ *       the freeze channel id is input is ignored. It is default to channel 1
+ */
+int sys_mgr_frzctrl_thaw_req(enum frz_channel_id channel_id);
+
+#endif	/* _FREEZE_CONTROLLER_H_ */
diff --git a/arch/arm/mach-socfpga/include/mach/generic.h b/arch/arm/mach-socfpga/include/mach/generic.h
new file mode 100644
index 0000000..cb7f8e6
--- /dev/null
+++ b/arch/arm/mach-socfpga/include/mach/generic.h
@@ -0,0 +1,16 @@
+#ifndef __MACH_SOCFPGA_GENERIC_H
+#define __MACH_SOCFPGA_GENERIC_H
+
+struct socfpga_cm_config;
+
+void socfpga_lowlevel_init(struct socfpga_cm_config *cm_config,
+		unsigned long *pinmux, int num_pinmux);
+
+static inline void __udelay(unsigned us)
+{
+	volatile unsigned int i;
+
+	for (i = 0; i < us * 3; i++);
+}
+
+#endif /* __MACH_SOCFPGA_GENERIC_H */
diff --git a/arch/arm/mach-socfpga/include/mach/nic301.h b/arch/arm/mach-socfpga/include/mach/nic301.h
new file mode 100644
index 0000000..54d96c6
--- /dev/null
+++ b/arch/arm/mach-socfpga/include/mach/nic301.h
@@ -0,0 +1,34 @@
+/*
+ *  Copyright (C) 2012 Altera Corporation <www.altera.com>
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
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#ifndef	_NIC301_H_
+#define	_NIC301_H_
+
+void nic301_slave_ns(void);
+
+#define L3REGS_SECGRP_LWHPS2FPGAREGS_ADDRESS 0x20
+#define L3REGS_SECGRP_HPS2FPGAREGS_ADDRESS 0x90
+#define L3REGS_SECGRP_ACP_ADDRESS 0x94
+#define L3REGS_SECGRP_ROM_ADDRESS 0x98
+#define L3REGS_SECGRP_OCRAM_ADDRESS 0x9c
+#define L3REGS_SECGRP_SDRDATA_ADDRESS 0xa0
+
+#define L3REGS_REMAP_LWHPS2FPGA_MASK 0x00000010
+#define L3REGS_REMAP_HPS2FPGA_MASK 0x00000008
+#define L3REGS_REMAP_OCRAM_MASK 0x00000001
+
+#endif /* _NIC301_H_ */
diff --git a/arch/arm/mach-socfpga/include/mach/pll_config.h b/arch/arm/mach-socfpga/include/mach/pll_config.h
new file mode 100644
index 0000000..d25f5cf
--- /dev/null
+++ b/arch/arm/mach-socfpga/include/mach/pll_config.h
@@ -0,0 +1,53 @@
+
+#include <mach/clock-manager.h>
+
+static struct socfpga_cm_config cm_default_cfg = {
+	/* main group */
+	.main_vco_base = (CLKMGR_MAINPLLGRP_VCO_DENOM_SET(CONFIG_HPS_MAINPLLGRP_VCO_DENOM) |
+		CLKMGR_MAINPLLGRP_VCO_NUMER_SET(CONFIG_HPS_MAINPLLGRP_VCO_NUMER)),
+	.mpuclk = CLKMGR_MAINPLLGRP_MPUCLK_CNT_SET(CONFIG_HPS_MAINPLLGRP_MPUCLK_CNT),
+	.mainclk = CLKMGR_MAINPLLGRP_MAINCLK_CNT_SET(CONFIG_HPS_MAINPLLGRP_MAINCLK_CNT),
+	.dbgatclk = CLKMGR_MAINPLLGRP_DBGATCLK_CNT_SET(CONFIG_HPS_MAINPLLGRP_DBGATCLK_CNT),
+	.mainqspiclk = CLKMGR_MAINPLLGRP_MAINQSPICLK_CNT_SET(CONFIG_HPS_MAINPLLGRP_MAINQSPICLK_CNT),
+	.mainnandsdmmcclk = CLKMGR_PERPLLGRP_PERNANDSDMMCCLK_CNT_SET(CONFIG_HPS_MAINPLLGRP_MAINNANDSDMMCCLK_CNT),
+	.cfg2fuser0clk = CLKMGR_MAINPLLGRP_CFGS2FUSER0CLK_CNT_SET(CONFIG_HPS_MAINPLLGRP_CFGS2FUSER0CLK_CNT),
+	.maindiv = CLKMGR_MAINPLLGRP_MAINDIV_L3MPCLK_SET(CONFIG_HPS_MAINPLLGRP_MAINDIV_L3MPCLK) |
+		CLKMGR_MAINPLLGRP_MAINDIV_L3SPCLK_SET(CONFIG_HPS_MAINPLLGRP_MAINDIV_L3SPCLK) |
+		CLKMGR_MAINPLLGRP_MAINDIV_L4MPCLK_SET(CONFIG_HPS_MAINPLLGRP_MAINDIV_L4MPCLK) |
+		CLKMGR_MAINPLLGRP_MAINDIV_L4SPCLK_SET(CONFIG_HPS_MAINPLLGRP_MAINDIV_L4SPCLK),
+	.dbgdiv = CLKMGR_MAINPLLGRP_DBGDIV_DBGATCLK_SET(CONFIG_HPS_MAINPLLGRP_DBGDIV_DBGATCLK) |
+		CLKMGR_MAINPLLGRP_DBGDIV_DBGCLK_SET(CONFIG_HPS_MAINPLLGRP_DBGDIV_DBGCLK),
+	.tracediv = CLKMGR_MAINPLLGRP_TRACEDIV_TRACECLK_SET(CONFIG_HPS_MAINPLLGRP_TRACEDIV_TRACECLK),
+	.l4src = CLKMGR_MAINPLLGRP_L4SRC_L4MP_SET(CONFIG_HPS_MAINPLLGRP_L4SRC_L4MP) |
+		CLKMGR_MAINPLLGRP_L4SRC_L4SP_SET(CONFIG_HPS_MAINPLLGRP_L4SRC_L4SP),
+	/* peripheral group */
+	.peri_vco_base = (CLKMGR_PERPLLGRP_VCO_PSRC_SET(CONFIG_HPS_PERPLLGRP_VCO_PSRC) |
+		CLKMGR_PERPLLGRP_VCO_DENOM_SET(CONFIG_HPS_PERPLLGRP_VCO_DENOM) |
+		CLKMGR_PERPLLGRP_VCO_NUMER_SET(CONFIG_HPS_PERPLLGRP_VCO_NUMER)),
+	.emac0clk = CLKMGR_PERPLLGRP_EMAC0CLK_CNT_SET(CONFIG_HPS_PERPLLGRP_EMAC0CLK_CNT),
+	.emac1clk = CLKMGR_PERPLLGRP_EMAC1CLK_CNT_SET(CONFIG_HPS_PERPLLGRP_EMAC1CLK_CNT),
+	.perqspiclk = CLKMGR_PERPLLGRP_PERQSPICLK_CNT_SET(CONFIG_HPS_PERPLLGRP_PERQSPICLK_CNT),
+	.pernandsdmmcclk = CLKMGR_PERPLLGRP_PERNANDSDMMCCLK_CNT_SET(CONFIG_HPS_PERPLLGRP_PERNANDSDMMCCLK_CNT),
+	.perbaseclk = CLKMGR_PERPLLGRP_PERBASECLK_CNT_SET(CONFIG_HPS_PERPLLGRP_PERBASECLK_CNT),
+	.s2fuser1clk = CLKMGR_PERPLLGRP_S2FUSER1CLK_CNT_SET(CONFIG_HPS_PERPLLGRP_S2FUSER1CLK_CNT),
+	.perdiv = CLKMGR_PERPLLGRP_DIV_USBCLK_SET(CONFIG_HPS_PERPLLGRP_DIV_USBCLK) |
+		CLKMGR_PERPLLGRP_DIV_SPIMCLK_SET(CONFIG_HPS_PERPLLGRP_DIV_SPIMCLK) |
+		CLKMGR_PERPLLGRP_DIV_CAN0CLK_SET(CONFIG_HPS_PERPLLGRP_DIV_CAN0CLK) |
+		CLKMGR_PERPLLGRP_DIV_CAN1CLK_SET(CONFIG_HPS_PERPLLGRP_DIV_CAN1CLK),
+	.gpiodiv = CLKMGR_PERPLLGRP_GPIODIV_GPIODBCLK_SET(CONFIG_HPS_PERPLLGRP_GPIODIV_GPIODBCLK),
+	.persrc = CLKMGR_PERPLLGRP_SRC_QSPI_SET(CONFIG_HPS_PERPLLGRP_SRC_QSPI) |
+		CLKMGR_PERPLLGRP_SRC_NAND_SET(CONFIG_HPS_PERPLLGRP_SRC_NAND) |
+		CLKMGR_PERPLLGRP_SRC_SDMMC_SET(CONFIG_HPS_PERPLLGRP_SRC_SDMMC),
+	/* sdram pll group */
+	.sdram_vco_base = (CLKMGR_SDRPLLGRP_VCO_SSRC_SET(CONFIG_HPS_SDRPLLGRP_VCO_SSRC) |
+		CLKMGR_SDRPLLGRP_VCO_DENOM_SET(CONFIG_HPS_SDRPLLGRP_VCO_DENOM) |
+		CLKMGR_SDRPLLGRP_VCO_NUMER_SET(CONFIG_HPS_SDRPLLGRP_VCO_NUMER)),
+	.ddrdqsclk = CLKMGR_SDRPLLGRP_DDRDQSCLK_PHASE_SET(CONFIG_HPS_SDRPLLGRP_DDRDQSCLK_PHASE) |
+		CLKMGR_SDRPLLGRP_DDRDQSCLK_CNT_SET(CONFIG_HPS_SDRPLLGRP_DDRDQSCLK_CNT),
+	.ddr2xdqsclk = CLKMGR_SDRPLLGRP_DDR2XDQSCLK_PHASE_SET(CONFIG_HPS_SDRPLLGRP_DDR2XDQSCLK_PHASE) |
+		CLKMGR_SDRPLLGRP_DDR2XDQSCLK_CNT_SET(CONFIG_HPS_SDRPLLGRP_DDR2XDQSCLK_CNT),
+	.ddrdqclk = CLKMGR_SDRPLLGRP_DDRDQCLK_PHASE_SET(CONFIG_HPS_SDRPLLGRP_DDRDQCLK_PHASE) |
+		CLKMGR_SDRPLLGRP_DDRDQCLK_CNT_SET(CONFIG_HPS_SDRPLLGRP_DDRDQCLK_CNT),
+	.s2fuser2clk = CLKMGR_SDRPLLGRP_S2FUSER2CLK_PHASE_SET(CONFIG_HPS_SDRPLLGRP_S2FUSER2CLK_PHASE) |
+		CLKMGR_SDRPLLGRP_S2FUSER2CLK_CNT_SET(CONFIG_HPS_SDRPLLGRP_S2FUSER2CLK_CNT),
+};
diff --git a/arch/arm/mach-socfpga/include/mach/reset-manager.h b/arch/arm/mach-socfpga/include/mach/reset-manager.h
new file mode 100644
index 0000000..899401c
--- /dev/null
+++ b/arch/arm/mach-socfpga/include/mach/reset-manager.h
@@ -0,0 +1,93 @@
+/*
+ *  Copyright (C) 2012 Altera Corporation <www.altera.com>
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
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#ifndef	_RESET_MANAGER_H_
+#define	_RESET_MANAGER_H_
+
+#define RESET_MGR_STATUS_OFS		0x0
+#define RESET_MGR_CTRL_OFS		0x4
+#define RESET_MGR_COUNTS_OFS		0x8
+#define RESET_MGR_MPU_MOD_RESET_OFS	0x10
+#define RESET_MGR_PER_MOD_RESET_OFS	0x14
+#define RESET_MGR_PER2_MOD_RESET_OFS	0x18
+#define RESET_MGR_BRG_MOD_RESET_OFS	0x1c
+
+#define RSTMGR_CTRL_SWWARMRSTREQ_LSB 1
+#define RSTMGR_PERMODRST_OSC1TIMER0_LSB 8
+
+#define RSTMGR_PERMODRST_EMAC0_LSB 0
+#define RSTMGR_PERMODRST_EMAC1_LSB 1
+#define RSTMGR_PERMODRST_L4WD0_LSB 6
+#define RSTMGR_PERMODRST_SDR_LSB 29
+#define RSTMGR_BRGMODRST_HPS2FPGA_MASK		0x00000001
+#define RSTMGR_BRGMODRST_LWHPS2FPGA_MASK	0x00000002
+#define RSTMGR_BRGMODRST_FPGA2HPS_MASK		0x00000004
+
+/* Warm Reset mask */
+#define RSTMGR_STAT_L4WD1RST_MASK		0x00008000
+#define RSTMGR_STAT_L4WD0RST_MASK		0x00004000
+#define RSTMGR_STAT_MPUWD1RST_MASK		0x00002000
+#define RSTMGR_STAT_MPUWD0RST_MASK		0x00001000
+#define RSTMGR_STAT_SWWARMRST_MASK		0x00000400
+#define RSTMGR_STAT_FPGAWARMRST_MASK		0x00000200
+#define RSTMGR_STAT_NRSTPINRST_MASK		0x00000100
+#define RSTMGR_WARMRST_MASK			0x0000f700
+
+#define RSTMGR_CTRL_SDRSELFREFEN_MASK		0x00000010
+#define RSTMGR_CTRL_FPGAHSEN_MASK		0x00010000
+#define RSTMGR_CTRL_ETRSTALLEN_MASK		0x00100000
+
+#define RSTMGR_PERMODRST_EMAC0		(1 << 0)
+#define RSTMGR_PERMODRST_EMAC1		(1 << 1)
+#define RSTMGR_PERMODRST_USB0		(1 << 2)
+#define RSTMGR_PERMODRST_USB1		(1 << 3)
+#define RSTMGR_PERMODRST_NAND		(1 << 4)
+#define RSTMGR_PERMODRST_QSPI		(1 << 5)
+#define RSTMGR_PERMODRST_L4WD0		(1 << 6)
+#define RSTMGR_PERMODRST_L4WD1		(1 << 7)
+#define RSTMGR_PERMODRST_OSC1TIMER1	(1 << 9)
+#define RSTMGR_PERMODRST_SPTIMER0	(1 << 10)
+#define RSTMGR_PERMODRST_SPTIMER1	(1 << 11)
+#define RSTMGR_PERMODRST_I2C0		(1 << 12)
+#define RSTMGR_PERMODRST_I2C1		(1 << 13)
+#define RSTMGR_PERMODRST_I2C2		(1 << 14)
+#define RSTMGR_PERMODRST_I2C3		(1 << 15)
+#define RSTMGR_PERMODRST_UART0		(1 << 16)
+#define RSTMGR_PERMODRST_UART1		(1 << 17)
+#define RSTMGR_PERMODRST_SPIM0		(1 << 18)
+#define RSTMGR_PERMODRST_SPIM1		(1 << 19)
+#define RSTMGR_PERMODRST_SPIS0		(1 << 20)
+#define RSTMGR_PERMODRST_SPIS1		(1 << 21)
+#define RSTMGR_PERMODRST_SDMMC		(1 << 22)
+#define RSTMGR_PERMODRST_CAN0		(1 << 23)
+#define RSTMGR_PERMODRST_CAN1		(1 << 24)
+#define RSTMGR_PERMODRST_GPIO0		(1 << 25)
+#define RSTMGR_PERMODRST_GPIO1		(1 << 26)
+#define RSTMGR_PERMODRST_GPIO2		(1 << 27)
+#define RSTMGR_PERMODRST_DMA		(1 << 28)
+#define RSTMGR_PERMODRST_SDR		(1 << 29)
+
+#define RSTMGR_PER2MODRST_DMAIF0	(1 << 0)
+#define RSTMGR_PER2MODRST_DMAIF1	(1 << 1)
+#define RSTMGR_PER2MODRST_DMAIF2	(1 << 2)
+#define RSTMGR_PER2MODRST_DMAIF3	(1 << 3)
+#define RSTMGR_PER2MODRST_DMAIF4	(1 << 4)
+#define RSTMGR_PER2MODRST_DMAIF5	(1 << 5)
+#define RSTMGR_PER2MODRST_DMAIF6	(1 << 6)
+#define RSTMGR_PER2MODRST_DMAIF7	(1 << 7)
+
+#endif /* _RESET_MANAGER_H_ */
diff --git a/arch/arm/mach-socfpga/include/mach/scan-manager.h b/arch/arm/mach-socfpga/include/mach/scan-manager.h
new file mode 100644
index 0000000..e815e2f
--- /dev/null
+++ b/arch/arm/mach-socfpga/include/mach/scan-manager.h
@@ -0,0 +1,131 @@
+/*
+ *  Copyright (C) 2012 Altera Corporation <www.altera.com>
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
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#ifndef _SCAN_MANAGER_H_
+#define _SCAN_MANAGER_H_
+
+#include <io.h>
+#include <mach/socfpga-regs.h>
+
+/***********************************************************
+ *                                                         *
+ * Cyclone5 specific stuff. Get rid of this.               *
+ *                                                         *
+ ***********************************************************/
+#define CONFIG_HPS_IOCSR_SCANCHAIN0_LENGTH        (764)
+#define CONFIG_HPS_IOCSR_SCANCHAIN1_LENGTH        (1719)
+#define CONFIG_HPS_IOCSR_SCANCHAIN2_LENGTH        (955)
+#define CONFIG_HPS_IOCSR_SCANCHAIN3_LENGTH        (16766)
+
+typedef unsigned long Scan_mgr_entry_t;
+
+#define NUM_OF_CHAINS     (4)
+#define SHIFT_COUNT_32BIT (5)
+#define MASK_COUNT_32BIT  (0x1F)
+
+#define SCANMGR_STAT_ADDRESS 0x0
+#define SCANMGR_EN_ADDRESS 0x4
+#define SCANMGR_FIFOSINGLEBYTE_ADDRESS 0x10
+#define SCANMGR_FIFODOUBLEBYTE_ADDRESS 0x14
+#define SCANMGR_FIFOQUADBYTE_ADDRESS 0x1c
+
+#define SCANMGR_STAT_ACTIVE_GET(x) (((x) & 0x80000000) >> 31)
+#define SCANMGR_STAT_WFIFOCNT_GET(x) (((x) & 0x70000000) >> 28)
+
+enum io_scan_chain {
+	IO_SCAN_CHAIN_0 = 0,    /* EMAC_IO and MIXED2_IO */
+	IO_SCAN_CHAIN_1,        /* MIXED1_IO and FLASH_IO */
+	IO_SCAN_CHAIN_2,        /* General IO */
+	IO_SCAN_CHAIN_3,        /* DDR IO */
+	IO_SCAN_CHAIN_UNDEFINED
+};
+
+#define IO_SCAN_CHAIN_NUM		NUM_OF_CHAINS
+/* Maximum number of IO scan chains */
+
+#define IO_SCAN_CHAIN_128BIT_SHIFT	(7)
+/*
+ * Shift count to get number of IO scan chain data in granularity
+ * of 128-bit ( N / 128 )
+ */
+
+#define IO_SCAN_CHAIN_128BIT_MASK	(0x7F)
+/*
+ * Mask to get residual IO scan chain data in
+ * granularity of 128-bit ( N mod 128 )
+ */
+
+#define IO_SCAN_CHAIN_32BIT_SHIFT	SHIFT_COUNT_32BIT
+/*
+ * Shift count to get number of IO scan chain
+ * data in granularity of 32-bit ( N / 32 )
+ */
+
+#define IO_SCAN_CHAIN_32BIT_MASK	MASK_COUNT_32BIT
+/*
+ * Mask to get residual IO scan chain data in
+ * granularity of 32-bit ( N mod 32 )
+ */
+
+#define IO_SCAN_CHAIN_BYTE_MASK		(0xFF)
+/* Byte mask */
+
+#define IO_SCAN_CHAIN_PAYLOAD_24BIT	(24)
+/* 24-bits (3 bytes) IO scan chain payload definition */
+
+#define TDI_TDO_MAX_PAYLOAD		(127)
+/*
+ * Maximum length of TDI_TDO packet payload is 128 bits,
+ * represented by (length - 1) in TDI_TDO header
+ */
+
+#define TDI_TDO_HEADER_FIRST_BYTE	(0x80)
+/* TDI_TDO packet header for IO scan chain program */
+
+#define TDI_TDO_HEADER_SECOND_BYTE_SHIFT	(8)
+/* Position of second command byte for TDI_TDO packet */
+
+#define MAX_WAITING_DELAY_IO_SCAN_ENGINE	(100)
+/*
+ * Maximum polling loop to wait for IO scan chain engine
+ * becomes idle to prevent infinite loop
+ */
+
+/*
+ * scan_mgr_io_scan_chain_prg
+ *
+ * Program HPS IO Scan Chain
+ *
+ * io_scan_chain_id @ref IOScanChainSelect [in] - IO scan chain ID with
+ *        range of enumIOScanChainSelect *
+ * io_scan_chain_len_in_bits uint32_t [in] - IO scan chain length in bits
+ * *iocsr_scan_chain @ref Scan_mgr_entry_t [in] - IO scan chain table
+ */
+int scan_mgr_io_scan_chain_prg(enum io_scan_chain io_scan_chain_id,
+		uint32_t io_scan_chain_len_in_bits,
+		const unsigned long *iocsr_scan_chain);
+
+extern const unsigned long iocsr_scan_chain0_table[
+	((CONFIG_HPS_IOCSR_SCANCHAIN0_LENGTH / 32) + 1)];
+extern const unsigned long iocsr_scan_chain1_table[
+	((CONFIG_HPS_IOCSR_SCANCHAIN1_LENGTH / 32) + 1)];
+extern const unsigned long iocsr_scan_chain2_table[
+	((CONFIG_HPS_IOCSR_SCANCHAIN2_LENGTH / 32) + 1)];
+extern const unsigned long iocsr_scan_chain3_table[
+	((CONFIG_HPS_IOCSR_SCANCHAIN3_LENGTH / 32) + 1)];
+
+#endif	/* _SCAN_MANAGER_H_ */
diff --git a/arch/arm/mach-socfpga/include/mach/sdram.h b/arch/arm/mach-socfpga/include/mach/sdram.h
new file mode 100644
index 0000000..ebd331e
--- /dev/null
+++ b/arch/arm/mach-socfpga/include/mach/sdram.h
@@ -0,0 +1,399 @@
+/*
+ *  Copyright (C) 2012 Altera Corporation <www.altera.com>
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
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#ifndef	_SDRAM_H_
+#define	_SDRAM_H_
+
+/* Group: sdr.phygrp.sccgrp                                                */
+#define SDR_PHYGRP_SCCGRP_ADDRESS 0x0
+/* Group: sdr.phygrp.phymgrgrp                                             */
+#define SDR_PHYGRP_PHYMGRGRP_ADDRESS 0x1000
+/* Group: sdr.phygrp.rwmgrgrp                                              */
+#define SDR_PHYGRP_RWMGRGRP_ADDRESS 0x2000
+/* Group: sdr.phygrp.datamgrgrp                                            */
+#define SDR_PHYGRP_DATAMGRGRP_ADDRESS 0x4000
+/* Group: sdr.phygrp.regfilegrp                                            */
+#define SDR_PHYGRP_REGFILEGRP_ADDRESS 0x4800
+/* Group: sdr.ctrlgrp                                                      */
+#define SDR_CTRLGRP_ADDRESS 0x5000
+/* Register: sdr.ctrlgrp.ctrlcfg                                           */
+#define SDR_CTRLGRP_CTRLCFG_ADDRESS 0x5000
+/* Register: sdr.ctrlgrp.dramtiming1                                       */
+#define SDR_CTRLGRP_DRAMTIMING1_ADDRESS 0x5004
+/* Register: sdr.ctrlgrp.dramtiming2                                       */
+#define SDR_CTRLGRP_DRAMTIMING2_ADDRESS 0x5008
+/* Register: sdr.ctrlgrp.dramtiming3                                       */
+#define SDR_CTRLGRP_DRAMTIMING3_ADDRESS 0x500c
+/* Register: sdr.ctrlgrp.dramtiming4                                       */
+#define SDR_CTRLGRP_DRAMTIMING4_ADDRESS 0x5010
+/* Register: sdr.ctrlgrp.lowpwrtiming                                      */
+#define SDR_CTRLGRP_LOWPWRTIMING_ADDRESS 0x5014
+/* Register: sdr.ctrlgrp.dramodt                                           */
+#define SDR_CTRLGRP_DRAMODT_ADDRESS 0x5018
+/* Register: sdr.ctrlgrp.dramaddrw                                         */
+#define SDR_CTRLGRP_DRAMADDRW_ADDRESS 0x502c
+/* Register: sdr.ctrlgrp.dramifwidth                                       */
+#define SDR_CTRLGRP_DRAMIFWIDTH_ADDRESS 0x5030
+/* Register: sdr.ctrlgrp.dramdevwidth                                      */
+#define SDR_CTRLGRP_DRAMDEVWIDTH_ADDRESS 0x5034
+/* Register: sdr.ctrlgrp.dramsts                                           */
+#define SDR_CTRLGRP_DRAMSTS_ADDRESS 0x5038
+/* Register: sdr.ctrlgrp.dramintr                                          */
+#define SDR_CTRLGRP_DRAMINTR_ADDRESS 0x503c
+/* Register: sdr.ctrlgrp.sbecount                                          */
+#define SDR_CTRLGRP_SBECOUNT_ADDRESS 0x5040
+/* Register: sdr.ctrlgrp.dbecount                                          */
+#define SDR_CTRLGRP_DBECOUNT_ADDRESS 0x5044
+/* Register: sdr.ctrlgrp.erraddr                                           */
+#define SDR_CTRLGRP_ERRADDR_ADDRESS 0x5048
+/* Register: sdr.ctrlgrp.dropcount                                         */
+#define SDR_CTRLGRP_DROPCOUNT_ADDRESS 0x504c
+/* Register: sdr.ctrlgrp.dropaddr                                          */
+#define SDR_CTRLGRP_DROPADDR_ADDRESS 0x5050
+/* Register: sdr.ctrlgrp.staticcfg                                         */
+#define SDR_CTRLGRP_STATICCFG_ADDRESS 0x505c
+/* Register: sdr.ctrlgrp.ctrlwidth                                         */
+#define SDR_CTRLGRP_CTRLWIDTH_ADDRESS 0x5060
+/* Register: sdr.ctrlgrp.cportwidth                                        */
+#define SDR_CTRLGRP_CPORTWIDTH_ADDRESS 0x5064
+/* Register: sdr.ctrlgrp.cportwmap                                         */
+#define SDR_CTRLGRP_CPORTWMAP_ADDRESS 0x5068
+/* Register: sdr.ctrlgrp.cportrmap                                         */
+#define SDR_CTRLGRP_CPORTRMAP_ADDRESS 0x506c
+/* Register: sdr.ctrlgrp.rfifocmap                                         */
+#define SDR_CTRLGRP_RFIFOCMAP_ADDRESS 0x5070
+/* Register: sdr.ctrlgrp.wfifocmap                                         */
+#define SDR_CTRLGRP_WFIFOCMAP_ADDRESS 0x5074
+/* Register: sdr.ctrlgrp.cportrdwr                                         */
+#define SDR_CTRLGRP_CPORTRDWR_ADDRESS 0x5078
+/* Register: sdr.ctrlgrp.portcfg                                           */
+#define SDR_CTRLGRP_PORTCFG_ADDRESS 0x507c
+/* Register: sdr.ctrlgrp.fpgaportrst                                       */
+#define SDR_CTRLGRP_FPGAPORTRST_ADDRESS 0x5080
+/* Register: sdr.ctrlgrp.fifocfg                                           */
+#define SDR_CTRLGRP_FIFOCFG_ADDRESS 0x5088
+/* Register: sdr.ctrlgrp.mppriority                                        */
+#define SDR_CTRLGRP_MPPRIORITY_ADDRESS 0x50ac
+/* Wide Register: sdr.ctrlgrp.mpweight                                     */
+#define SDR_CTRLGRP_MPWEIGHT_ADDRESS 0x50b0
+/* Register: sdr.ctrlgrp.mpweight.mpweight_0                               */
+#define SDR_CTRLGRP_MPWEIGHT_MPWEIGHT_0_ADDRESS 0x50b0
+/* Register: sdr.ctrlgrp.mpweight.mpweight_1                               */
+#define SDR_CTRLGRP_MPWEIGHT_MPWEIGHT_1_ADDRESS 0x50b4
+/* Register: sdr.ctrlgrp.mpweight.mpweight_2                               */
+#define SDR_CTRLGRP_MPWEIGHT_MPWEIGHT_2_ADDRESS 0x50b8
+/* Register: sdr.ctrlgrp.mpweight.mpweight_3                               */
+#define SDR_CTRLGRP_MPWEIGHT_MPWEIGHT_3_ADDRESS 0x50bc
+/* Register: sdr.ctrlgrp.mppacing.mppacing_0                               */
+#define SDR_CTRLGRP_MPPACING_MPPACING_0_ADDRESS 0x50c0
+/* Register: sdr.ctrlgrp.mppacing.mppacing_1                               */
+#define SDR_CTRLGRP_MPPACING_MPPACING_1_ADDRESS 0x50c4
+/* Register: sdr.ctrlgrp.mppacing.mppacing_2                               */
+#define SDR_CTRLGRP_MPPACING_MPPACING_2_ADDRESS 0x50c8
+/* Register: sdr.ctrlgrp.mppacing.mppacing_3                               */
+#define SDR_CTRLGRP_MPPACING_MPPACING_3_ADDRESS 0x50cc
+/* Register: sdr.ctrlgrp.mpthresholdrst.mpthresholdrst_0                   */
+#define SDR_CTRLGRP_MPTHRESHOLDRST_MPTHRESHOLDRST_0_ADDRESS 0x50d0
+/* Register: sdr.ctrlgrp.mpthresholdrst.mpthresholdrst_1                   */
+#define SDR_CTRLGRP_MPTHRESHOLDRST_MPTHRESHOLDRST_1_ADDRESS 0x50d4
+/* Register: sdr.ctrlgrp.mpthresholdrst.mpthresholdrst_2                   */
+#define SDR_CTRLGRP_MPTHRESHOLDRST_MPTHRESHOLDRST_2_ADDRESS 0x50d8
+/* Wide Register: sdr.ctrlgrp.phyctrl                                      */
+#define SDR_CTRLGRP_PHYCTRL_ADDRESS 0x5150
+/* Register: sdr.ctrlgrp.phyctrl.phyctrl_0                                 */
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_ADDRESS 0x5150
+/* Register: sdr.ctrlgrp.phyctrl.phyctrl_1                                 */
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_1_ADDRESS 0x5154
+/* Register: sdr.ctrlgrp.phyctrl.phyctrl_2                                 */
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_2_ADDRESS 0x5158
+/* Register instance: sdr::ctrlgrp::phyctrl.phyctrl_0                      */
+/* Register template referenced: sdr::ctrlgrp::phyctrl::phyctrl_0          */
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_OFFSET 0x150
+/* Register instance: sdr::ctrlgrp::phyctrl.phyctrl_1                      */
+/* Register template referenced: sdr::ctrlgrp::phyctrl::phyctrl_1          */
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_1_OFFSET 0x154
+/* Register instance: sdr::ctrlgrp::phyctrl.phyctrl_2                      */
+/* Register template referenced: sdr::ctrlgrp::phyctrl::phyctrl_2          */
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_2_OFFSET 0x158
+
+/* Register template: sdr::ctrlgrp::ctrlcfg                                */
+#define SDR_CTRLGRP_CTRLCFG_OUTPUTREG_LSB 26
+#define SDR_CTRLGRP_CTRLCFG_OUTPUTREG_MASK 0x04000000
+#define SDR_CTRLGRP_CTRLCFG_BURSTTERMEN_LSB 25
+#define SDR_CTRLGRP_CTRLCFG_BURSTTERMEN_MASK 0x02000000
+#define SDR_CTRLGRP_CTRLCFG_BURSTINTREN_LSB 24
+#define SDR_CTRLGRP_CTRLCFG_BURSTINTREN_MASK 0x01000000
+#define SDR_CTRLGRP_CTRLCFG_NODMPINS_LSB 23
+#define SDR_CTRLGRP_CTRLCFG_NODMPINS_MASK 0x00800000
+#define SDR_CTRLGRP_CTRLCFG_DQSTRKEN_LSB 22
+#define SDR_CTRLGRP_CTRLCFG_DQSTRKEN_MASK 0x00400000
+#define SDR_CTRLGRP_CTRLCFG_STARVELIMIT_LSB 16
+#define SDR_CTRLGRP_CTRLCFG_STARVELIMIT_MASK 0x003f0000
+#define SDR_CTRLGRP_CTRLCFG_REORDEREN_LSB 15
+#define SDR_CTRLGRP_CTRLCFG_REORDEREN_MASK 0x00008000
+#define SDR_CTRLGRP_CTRLCFG_GENDBE_LSB 14
+#define SDR_CTRLGRP_CTRLCFG_GENDBE_MASK 0x00004000
+#define SDR_CTRLGRP_CTRLCFG_GENSBE_LSB 13
+#define SDR_CTRLGRP_CTRLCFG_GENSBE_MASK 0x00002000
+#define SDR_CTRLGRP_CTRLCFG_CFG_ENABLE_ECC_CODE_OVERWRITES_LSB 12
+#define SDR_CTRLGRP_CTRLCFG_CFG_ENABLE_ECC_CODE_OVERWRITES_MASK 0x00001000
+#define SDR_CTRLGRP_CTRLCFG_ECCCORREN_LSB 11
+#define SDR_CTRLGRP_CTRLCFG_ECCCORREN_MASK 0x00000800
+#define SDR_CTRLGRP_CTRLCFG_ECCEN_LSB 10
+#define SDR_CTRLGRP_CTRLCFG_ECCEN_MASK 0x00000400
+#define SDR_CTRLGRP_CTRLCFG_ADDRORDER_LSB 8
+#define SDR_CTRLGRP_CTRLCFG_ADDRORDER_MASK 0x00000300
+#define SDR_CTRLGRP_CTRLCFG_MEMBL_LSB 3
+#define SDR_CTRLGRP_CTRLCFG_MEMBL_MASK 0x000000f8
+#define SDR_CTRLGRP_CTRLCFG_MEMTYPE_LSB 0
+#define SDR_CTRLGRP_CTRLCFG_MEMTYPE_MASK 0x00000007
+/* Register template: sdr::ctrlgrp::dramtiming1                            */
+#define SDR_CTRLGRP_DRAMTIMING1_TRFC_LSB 24
+#define SDR_CTRLGRP_DRAMTIMING1_TRFC_MASK 0xff000000
+#define SDR_CTRLGRP_DRAMTIMING1_TFAW_LSB 18
+#define SDR_CTRLGRP_DRAMTIMING1_TFAW_MASK 0x00fc0000
+#define SDR_CTRLGRP_DRAMTIMING1_TRRD_LSB 14
+#define SDR_CTRLGRP_DRAMTIMING1_TRRD_MASK 0x0003c000
+#define SDR_CTRLGRP_DRAMTIMING1_TCL_LSB 9
+#define SDR_CTRLGRP_DRAMTIMING1_TCL_MASK 0x00003e00
+#define SDR_CTRLGRP_DRAMTIMING1_TAL_LSB 4
+#define SDR_CTRLGRP_DRAMTIMING1_TAL_MASK 0x000001f0
+#define SDR_CTRLGRP_DRAMTIMING1_TCWL_LSB 0
+#define SDR_CTRLGRP_DRAMTIMING1_TCWL_MASK 0x0000000f
+/* Register template: sdr::ctrlgrp::dramtiming2                            */
+#define SDR_CTRLGRP_DRAMTIMING2_TWTR_LSB 25
+#define SDR_CTRLGRP_DRAMTIMING2_TWTR_MASK 0x1e000000
+#define SDR_CTRLGRP_DRAMTIMING2_TWR_LSB 21
+#define SDR_CTRLGRP_DRAMTIMING2_TWR_MASK 0x01e00000
+#define SDR_CTRLGRP_DRAMTIMING2_TRP_LSB 17
+#define SDR_CTRLGRP_DRAMTIMING2_TRP_MASK 0x001e0000
+#define SDR_CTRLGRP_DRAMTIMING2_TRCD_LSB 13
+#define SDR_CTRLGRP_DRAMTIMING2_TRCD_MASK 0x0001e000
+#define SDR_CTRLGRP_DRAMTIMING2_TREFI_LSB 0
+#define SDR_CTRLGRP_DRAMTIMING2_TREFI_MASK 0x00001fff
+/* Register template: sdr::ctrlgrp::dramtiming3                            */
+#define SDR_CTRLGRP_DRAMTIMING3_TCCD_LSB 19
+#define SDR_CTRLGRP_DRAMTIMING3_TCCD_MASK 0x00780000
+#define SDR_CTRLGRP_DRAMTIMING3_TMRD_LSB 15
+#define SDR_CTRLGRP_DRAMTIMING3_TMRD_MASK 0x00078000
+#define SDR_CTRLGRP_DRAMTIMING3_TRC_LSB 9
+#define SDR_CTRLGRP_DRAMTIMING3_TRC_MASK 0x00007e00
+#define SDR_CTRLGRP_DRAMTIMING3_TRAS_LSB 4
+#define SDR_CTRLGRP_DRAMTIMING3_TRAS_MASK 0x000001f0
+#define SDR_CTRLGRP_DRAMTIMING3_TRTP_LSB 0
+#define SDR_CTRLGRP_DRAMTIMING3_TRTP_MASK 0x0000000f
+/* Register template: sdr::ctrlgrp::dramtiming4                            */
+#define SDR_CTRLGRP_DRAMTIMING4_MINPWRSAVECYCLES_LSB 20
+#define SDR_CTRLGRP_DRAMTIMING4_MINPWRSAVECYCLES_MASK 0x00f00000
+#define SDR_CTRLGRP_DRAMTIMING4_PWRDOWNEXIT_LSB 10
+#define SDR_CTRLGRP_DRAMTIMING4_PWRDOWNEXIT_MASK 0x000ffc00
+#define SDR_CTRLGRP_DRAMTIMING4_SELFRFSHEXIT_LSB 0
+#define SDR_CTRLGRP_DRAMTIMING4_SELFRFSHEXIT_MASK 0x000003ff
+/* Register template: sdr::ctrlgrp::lowpwrtiming                           */
+#define SDR_CTRLGRP_LOWPWRTIMING_CLKDISABLECYCLES_LSB 16
+#define SDR_CTRLGRP_LOWPWRTIMING_CLKDISABLECYCLES_MASK 0x000f0000
+#define SDR_CTRLGRP_LOWPWRTIMING_AUTOPDCYCLES_LSB 0
+#define SDR_CTRLGRP_LOWPWRTIMING_AUTOPDCYCLES_MASK 0x0000ffff
+/* Register template: sdr::ctrlgrp::dramaddrw                              */
+#define SDR_CTRLGRP_DRAMADDRW_CSBITS_LSB 13
+#define SDR_CTRLGRP_DRAMADDRW_CSBITS_MASK 0x0000e000
+#define SDR_CTRLGRP_DRAMADDRW_BANKBITS_LSB 10
+#define SDR_CTRLGRP_DRAMADDRW_BANKBITS_MASK 0x00001c00
+#define SDR_CTRLGRP_DRAMADDRW_ROWBITS_LSB 5
+#define SDR_CTRLGRP_DRAMADDRW_ROWBITS_MASK 0x000003e0
+#define SDR_CTRLGRP_DRAMADDRW_COLBITS_LSB 0
+#define SDR_CTRLGRP_DRAMADDRW_COLBITS_MASK 0x0000001f
+/* Register template: sdr::ctrlgrp::dramifwidth                            */
+#define SDR_CTRLGRP_DRAMIFWIDTH_IFWIDTH_LSB 0
+#define SDR_CTRLGRP_DRAMIFWIDTH_IFWIDTH_MASK 0x000000ff
+/* Register template: sdr::ctrlgrp::dramdevwidth                           */
+#define SDR_CTRLGRP_DRAMDEVWIDTH_DEVWIDTH_LSB 0
+#define SDR_CTRLGRP_DRAMDEVWIDTH_DEVWIDTH_MASK 0x0000000f
+/* Register template: sdr::ctrlgrp::dramintr                               */
+#define SDR_CTRLGRP_DRAMINTR_INTRCLR_LSB 4
+#define SDR_CTRLGRP_DRAMINTR_INTRCLR_MASK 0x00000010
+#define SDR_CTRLGRP_DRAMINTR_CORRDROPMASK_LSB 3
+#define SDR_CTRLGRP_DRAMINTR_CORRDROPMASK_MASK 0x00000008
+#define SDR_CTRLGRP_DRAMINTR_DBEMASK_LSB 2
+#define SDR_CTRLGRP_DRAMINTR_DBEMASK_MASK 0x00000004
+#define SDR_CTRLGRP_DRAMINTR_SBEMASK_LSB 1
+#define SDR_CTRLGRP_DRAMINTR_SBEMASK_MASK 0x00000002
+#define SDR_CTRLGRP_DRAMINTR_INTREN_LSB 0
+#define SDR_CTRLGRP_DRAMINTR_INTREN_MASK 0x00000001
+/* Register template: sdr::ctrlgrp::sbecount                               */
+#define SDR_CTRLGRP_SBECOUNT_COUNT_LSB 0
+#define SDR_CTRLGRP_SBECOUNT_COUNT_MASK 0x000000ff
+/* Register template: sdr::ctrlgrp::dbecount                               */
+#define SDR_CTRLGRP_DBECOUNT_COUNT_LSB 0
+#define SDR_CTRLGRP_DBECOUNT_COUNT_MASK 0x000000ff
+/* Register template: sdr::ctrlgrp::staticcfg                              */
+#define SDR_CTRLGRP_STATICCFG_APPLYCFG_LSB 3
+#define SDR_CTRLGRP_STATICCFG_APPLYCFG_MASK 0x00000008
+#define SDR_CTRLGRP_STATICCFG_USEECCASDATA_LSB 2
+#define SDR_CTRLGRP_STATICCFG_USEECCASDATA_MASK 0x00000004
+#define SDR_CTRLGRP_STATICCFG_MEMBL_LSB 0
+#define SDR_CTRLGRP_STATICCFG_MEMBL_MASK 0x00000003
+/* Register template: sdr::ctrlgrp::ctrlwidth                              */
+#define SDR_CTRLGRP_CTRLWIDTH_CTRLWIDTH_LSB 0
+#define SDR_CTRLGRP_CTRLWIDTH_CTRLWIDTH_MASK 0x00000003
+/* Register template: sdr::ctrlgrp::cportwidth                             */
+#define SDR_CTRLGRP_CPORTWIDTH_CMDPORTWIDTH_LSB 0
+#define SDR_CTRLGRP_CPORTWIDTH_CMDPORTWIDTH_MASK 0x000fffff
+/* Register template: sdr::ctrlgrp::cportwmap                              */
+#define SDR_CTRLGRP_CPORTWMAP_CPORTWFIFOMAP_LSB 0
+#define SDR_CTRLGRP_CPORTWMAP_CPORTWFIFOMAP_MASK 0x3fffffff
+/* Register template: sdr::ctrlgrp::cportrmap                              */
+#define SDR_CTRLGRP_CPORTRMAP_CPORTRFIFOMAP_LSB 0
+#define SDR_CTRLGRP_CPORTRMAP_CPORTRFIFOMAP_MASK 0x3fffffff
+/* Register template: sdr::ctrlgrp::rfifocmap                              */
+#define SDR_CTRLGRP_RFIFOCMAP_RFIFOCPORTMAP_LSB 0
+#define SDR_CTRLGRP_RFIFOCMAP_RFIFOCPORTMAP_MASK 0x00ffffff
+/* Register template: sdr::ctrlgrp::wfifocmap                              */
+#define SDR_CTRLGRP_WFIFOCMAP_WFIFOCPORTMAP_LSB 0
+#define SDR_CTRLGRP_WFIFOCMAP_WFIFOCPORTMAP_MASK 0x00ffffff
+/* Register template: sdr::ctrlgrp::cportrdwr                              */
+#define SDR_CTRLGRP_CPORTRDWR_CPORTRDWR_LSB 0
+#define SDR_CTRLGRP_CPORTRDWR_CPORTRDWR_MASK 0x000fffff
+/* Register template: sdr::ctrlgrp::portcfg                                */
+#define SDR_CTRLGRP_PORTCFG_AUTOPCHEN_LSB 10
+#define SDR_CTRLGRP_PORTCFG_AUTOPCHEN_MASK 0x000ffc00
+#define SDR_CTRLGRP_PORTCFG_PORTPROTOCOL_LSB 0
+#define SDR_CTRLGRP_PORTCFG_PORTPROTOCOL_MASK 0x000003ff
+/* Register template: sdr::ctrlgrp::fifocfg                                */
+#define SDR_CTRLGRP_FIFOCFG_INCSYNC_LSB 10
+#define SDR_CTRLGRP_FIFOCFG_INCSYNC_MASK 0x00000400
+#define SDR_CTRLGRP_FIFOCFG_SYNCMODE_LSB 0
+#define SDR_CTRLGRP_FIFOCFG_SYNCMODE_MASK 0x000003ff
+/* Register template: sdr::ctrlgrp::mppriority                             */
+#define SDR_CTRLGRP_MPPRIORITY_USERPRIORITY_LSB 0
+#define SDR_CTRLGRP_MPPRIORITY_USERPRIORITY_MASK 0x3fffffff
+/* Wide Register template: sdr::ctrlgrp::mpweight                          */
+/* Register template: sdr::ctrlgrp::mpweight::mpweight_0                   */
+#define SDR_CTRLGRP_MPWEIGHT_MPWEIGHT_0_STATICWEIGHT_31_0_LSB 0
+#define SDR_CTRLGRP_MPWEIGHT_MPWEIGHT_0_STATICWEIGHT_31_0_MASK 0xffffffff
+/* Register template: sdr::ctrlgrp::mpweight::mpweight_1                   */
+#define SDR_CTRLGRP_MPWEIGHT_MPWEIGHT_1_SUMOFWEIGHTS_13_0_LSB 18
+#define SDR_CTRLGRP_MPWEIGHT_MPWEIGHT_1_SUMOFWEIGHTS_13_0_MASK 0xfffc0000
+#define SDR_CTRLGRP_MPWEIGHT_MPWEIGHT_1_STATICWEIGHT_49_32_LSB 0
+#define SDR_CTRLGRP_MPWEIGHT_MPWEIGHT_1_STATICWEIGHT_49_32_MASK 0x0003ffff
+/* Register template: sdr::ctrlgrp::mpweight::mpweight_2                   */
+#define SDR_CTRLGRP_MPWEIGHT_MPWEIGHT_2_SUMOFWEIGHTS_45_14_LSB 0
+#define SDR_CTRLGRP_MPWEIGHT_MPWEIGHT_2_SUMOFWEIGHTS_45_14_MASK 0xffffffff
+/* Register template: sdr::ctrlgrp::mpweight::mpweight_3                   */
+#define SDR_CTRLGRP_MPWEIGHT_MPWEIGHT_3_SUMOFWEIGHTS_63_46_LSB 0
+#define SDR_CTRLGRP_MPWEIGHT_MPWEIGHT_3_SUMOFWEIGHTS_63_46_MASK 0x0003ffff
+/* Wide Register template: sdr::ctrlgrp::mppacing                          */
+/* Register template: sdr::ctrlgrp::mppacing::mppacing_0                   */
+#define SDR_CTRLGRP_MPPACING_MPPACING_0_THRESHOLD1_31_0_LSB 0
+#define SDR_CTRLGRP_MPPACING_MPPACING_0_THRESHOLD1_31_0_MASK 0xffffffff
+/* Register template: sdr::ctrlgrp::mppacing::mppacing_1                   */
+#define SDR_CTRLGRP_MPPACING_MPPACING_1_THRESHOLD2_3_0_LSB 28
+#define SDR_CTRLGRP_MPPACING_MPPACING_1_THRESHOLD2_3_0_MASK 0xf0000000
+#define SDR_CTRLGRP_MPPACING_MPPACING_1_THRESHOLD1_59_32_LSB 0
+#define SDR_CTRLGRP_MPPACING_MPPACING_1_THRESHOLD1_59_32_MASK 0x0fffffff
+/* Register template: sdr::ctrlgrp::mppacing::mppacing_2                   */
+#define SDR_CTRLGRP_MPPACING_MPPACING_2_THRESHOLD2_35_4_LSB 0
+#define SDR_CTRLGRP_MPPACING_MPPACING_2_THRESHOLD2_35_4_MASK 0xffffffff
+/* Register template: sdr::ctrlgrp::mppacing::mppacing_3                   */
+#define SDR_CTRLGRP_MPPACING_MPPACING_3_THRESHOLD2_59_36_LSB 0
+#define SDR_CTRLGRP_MPPACING_MPPACING_3_THRESHOLD2_59_36_MASK 0x00ffffff
+/* Wide Register template: sdr::ctrlgrp::mpthresholdrst                    */
+/* Register template: sdr::ctrlgrp::mpthresholdrst::mpthresholdrst_0       */
+#define \
+SDR_CTRLGRP_MPTHRESHOLDRST_MPTHRESHOLDRST_0_THRESHOLDRSTCYCLES_31_0_LSB 0
+#define  \
+SDR_CTRLGRP_MPTHRESHOLDRST_MPTHRESHOLDRST_0_THRESHOLDRSTCYCLES_31_0_MASK \
+0xffffffff
+/* Register template: sdr::ctrlgrp::mpthresholdrst::mpthresholdrst_1       */
+#define \
+SDR_CTRLGRP_MPTHRESHOLDRST_MPTHRESHOLDRST_1_THRESHOLDRSTCYCLES_63_32_LSB 0
+#define \
+SDR_CTRLGRP_MPTHRESHOLDRST_MPTHRESHOLDRST_1_THRESHOLDRSTCYCLES_63_32_MASK \
+0xffffffff
+/* Register template: sdr::ctrlgrp::mpthresholdrst::mpthresholdrst_2       */
+#define \
+SDR_CTRLGRP_MPTHRESHOLDRST_MPTHRESHOLDRST_2_THRESHOLDRSTCYCLES_79_64_LSB 0
+#define \
+SDR_CTRLGRP_MPTHRESHOLDRST_MPTHRESHOLDRST_2_THRESHOLDRSTCYCLES_79_64_MASK \
+0x0000ffff
+/* Register template: sdr::ctrlgrp::remappriority                          */
+#define SDR_CTRLGRP_REMAPPRIORITY_PRIORITYREMAP_LSB 0
+#define SDR_CTRLGRP_REMAPPRIORITY_PRIORITYREMAP_MASK 0x000000ff
+/* Wide Register template: sdr::ctrlgrp::phyctrl                           */
+/* Register template: sdr::ctrlgrp::phyctrl::phyctrl_0                     */
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_SAMPLECOUNT_19_0_LSB 12
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_SAMPLECOUNT_19_0_WIDTH 20
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_SAMPLECOUNT_19_0_MASK 0xfffff000
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_SAMPLECOUNT_19_0_SET(x) \
+ (((x) << 12) & 0xfffff000)
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_ADDLATSEL_LSB 10
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_ADDLATSEL_MASK 0x00000c00
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_ADDLATSEL_SET(x) \
+ (((x) << 10) & 0x00000c00)
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_LPDDRDIS_LSB 9
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_LPDDRDIS_MASK 0x00000200
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_LPDDRDIS_SET(x) \
+ (((x) << 9) & 0x00000200)
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_RESETDELAYEN_LSB 8
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_RESETDELAYEN_MASK 0x00000100
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_RESETDELAYEN_SET(x) \
+ (((x) << 8) & 0x00000100)
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_DQSLOGICDELAYEN_LSB 6
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_DQSLOGICDELAYEN_MASK 0x000000c0
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_DQSLOGICDELAYEN_SET(x) \
+ (((x) << 6) & 0x000000c0)
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_DQSDELAYEN_LSB 4
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_DQSDELAYEN_MASK 0x00000030
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_DQSDELAYEN_SET(x) \
+ (((x) << 4) & 0x00000030)
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_DQDELAYEN_LSB 2
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_DQDELAYEN_MASK 0x0000000c
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_DQDELAYEN_SET(x) \
+ (((x) << 2) & 0x0000000c)
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_ACDELAYEN_LSB 0
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_ACDELAYEN_MASK 0x00000003
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_ACDELAYEN_SET(x) \
+ (((x) << 0) & 0x00000003)
+/* Register template: sdr::ctrlgrp::phyctrl::phyctrl_1                     */
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_1_LONGIDLESAMPLECOUNT_19_0_LSB 12
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_1_LONGIDLESAMPLECOUNT_19_0_WIDTH 20
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_1_LONGIDLESAMPLECOUNT_19_0_MASK 0xfffff000
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_1_LONGIDLESAMPLECOUNT_19_0_SET(x) \
+ (((x) << 12) & 0xfffff000)
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_1_SAMPLECOUNT_31_20_LSB 0
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_1_SAMPLECOUNT_31_20_MASK 0x00000fff
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_1_SAMPLECOUNT_31_20_SET(x) \
+ (((x) << 0) & 0x00000fff)
+/* Register template: sdr::ctrlgrp::phyctrl::phyctrl_2                     */
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_2_LONGIDLESAMPLECOUNT_31_20_LSB 0
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_2_LONGIDLESAMPLECOUNT_31_20_MASK 0x00000fff
+#define SDR_CTRLGRP_PHYCTRL_PHYCTRL_2_LONGIDLESAMPLECOUNT_31_20_SET(x) \
+ (((x) << 0) & 0x00000fff)
+/* Register template: sdr::ctrlgrp::dramodt                                */
+#define SDR_CTRLGRP_DRAMODT_READ_LSB 4
+#define SDR_CTRLGRP_DRAMODT_READ_MASK 0x000000f0
+#define SDR_CTRLGRP_DRAMODT_WRITE_LSB 0
+#define SDR_CTRLGRP_DRAMODT_WRITE_MASK 0x0000000f
+/* Register template: sdr::ctrlgrp::fpgaportrst                            */
+#define SDR_CTRLGRP_FPGAPORTRST_READ_PORT_0_LSB 0
+#define SDR_CTRLGRP_FPGAPORTRST_WRITE_PORT_0_LSB 4
+#define SDR_CTRLGRP_FPGAPORTRST_COMMAND_PORT_0_LSB 8
+/* Field instance: sdr::ctrlgrp::dramsts                                   */
+#define SDR_CTRLGRP_DRAMSTS_DBEERR_MASK 0x00000008
+#define SDR_CTRLGRP_DRAMSTS_SBEERR_MASK 0x00000004
+
+#endif /* _SDRAM_H_ */
diff --git a/arch/arm/mach-socfpga/include/mach/sdram_config.h b/arch/arm/mach-socfpga/include/mach/sdram_config.h
new file mode 100644
index 0000000..2af797a
--- /dev/null
+++ b/arch/arm/mach-socfpga/include/mach/sdram_config.h
@@ -0,0 +1,161 @@
+#ifndef __MACH_SDRAM_CONFIG_H
+#define __MACH_SDRAM_CONFIG_H
+
+#include <mach/sdram.h>
+#include <mach/socfpga-regs.h>
+#include <mach/system-manager.h>
+
+static inline void sdram_write(unsigned register_offset, unsigned val)
+{
+	debug("0x%08x Data 0x%08x\n",
+		(CYCLONE5_SDR_ADDRESS + register_offset), val);
+	/* Write to register */
+	writel(val, (CYCLONE5_SDR_ADDRESS + register_offset));
+}
+
+static inline void socfpga_sdram_mmr_init(void)
+{
+	uint32_t val;
+
+	val = CONFIG_HPS_SDR_CTRLCFG_CTRLCFG_MEMTYPE << SDR_CTRLGRP_CTRLCFG_MEMTYPE_LSB |
+		CONFIG_HPS_SDR_CTRLCFG_CTRLCFG_MEMBL << SDR_CTRLGRP_CTRLCFG_MEMBL_LSB |
+		CONFIG_HPS_SDR_CTRLCFG_CTRLCFG_ADDRORDER << SDR_CTRLGRP_CTRLCFG_ADDRORDER_LSB |
+		CONFIG_HPS_SDR_CTRLCFG_CTRLCFG_ECCEN << SDR_CTRLGRP_CTRLCFG_ECCEN_LSB |
+		CONFIG_HPS_SDR_CTRLCFG_CTRLCFG_ECCCORREN << SDR_CTRLGRP_CTRLCFG_ECCCORREN_LSB |
+		CONFIG_HPS_SDR_CTRLCFG_CTRLCFG_REORDEREN << SDR_CTRLGRP_CTRLCFG_REORDEREN_LSB |
+		CONFIG_HPS_SDR_CTRLCFG_CTRLCFG_STARVELIMIT << SDR_CTRLGRP_CTRLCFG_STARVELIMIT_LSB |
+		CONFIG_HPS_SDR_CTRLCFG_CTRLCFG_DQSTRKEN << SDR_CTRLGRP_CTRLCFG_DQSTRKEN_LSB |
+		CONFIG_HPS_SDR_CTRLCFG_CTRLCFG_NODMPINS << SDR_CTRLGRP_CTRLCFG_NODMPINS_LSB;
+	sdram_write(SDR_CTRLGRP_CTRLCFG_ADDRESS, val);
+
+	val =  CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING1_TCWL << SDR_CTRLGRP_DRAMTIMING1_TCWL_LSB |
+		CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING1_AL << SDR_CTRLGRP_DRAMTIMING1_TAL_LSB |
+		CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING1_TCL <<  SDR_CTRLGRP_DRAMTIMING1_TCL_LSB |
+		CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING1_TRRD << SDR_CTRLGRP_DRAMTIMING1_TRRD_LSB |
+		CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING1_TFAW << SDR_CTRLGRP_DRAMTIMING1_TFAW_LSB |
+		CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING1_TRFC << SDR_CTRLGRP_DRAMTIMING1_TRFC_LSB;
+	sdram_write(SDR_CTRLGRP_DRAMTIMING1_ADDRESS, val);
+
+	val = CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING2_IF_TREFI << SDR_CTRLGRP_DRAMTIMING2_TREFI_LSB |
+		CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING2_IF_TRCD << SDR_CTRLGRP_DRAMTIMING2_TRCD_LSB |
+		CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING2_IF_TRP << SDR_CTRLGRP_DRAMTIMING2_TRP_LSB |
+		CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING2_IF_TWR << SDR_CTRLGRP_DRAMTIMING2_TWR_LSB |
+		CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING2_IF_TWTR << SDR_CTRLGRP_DRAMTIMING2_TWTR_LSB;
+	sdram_write(SDR_CTRLGRP_DRAMTIMING2_ADDRESS, val);
+
+	val = CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING3_TRTP << SDR_CTRLGRP_DRAMTIMING3_TRTP_LSB |
+		CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING3_TRAS << SDR_CTRLGRP_DRAMTIMING3_TRAS_LSB |
+		CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING3_TRC << SDR_CTRLGRP_DRAMTIMING3_TRC_LSB |
+		CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING3_TMRD << SDR_CTRLGRP_DRAMTIMING3_TMRD_LSB |
+		CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING3_TCCD << SDR_CTRLGRP_DRAMTIMING3_TCCD_LSB;
+	sdram_write(SDR_CTRLGRP_DRAMTIMING3_ADDRESS, val);
+
+	val = CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING4_SELFRFSHEXIT << SDR_CTRLGRP_DRAMTIMING4_SELFRFSHEXIT_LSB |
+		CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING4_PWRDOWNEXIT << SDR_CTRLGRP_DRAMTIMING4_PWRDOWNEXIT_LSB;
+	sdram_write(SDR_CTRLGRP_DRAMTIMING4_ADDRESS, val);
+
+	val = CONFIG_HPS_SDR_CTRLCFG_LOWPWRTIMING_AUTOPDCYCLES << SDR_CTRLGRP_LOWPWRTIMING_AUTOPDCYCLES_LSB;
+	sdram_write(SDR_CTRLGRP_LOWPWRTIMING_ADDRESS, val);
+
+	val = CONFIG_HPS_SDR_CTRLCFG_DRAMADDRW_COLBITS << SDR_CTRLGRP_DRAMADDRW_COLBITS_LSB |
+		CONFIG_HPS_SDR_CTRLCFG_DRAMADDRW_ROWBITS << SDR_CTRLGRP_DRAMADDRW_ROWBITS_LSB |
+		CONFIG_HPS_SDR_CTRLCFG_DRAMADDRW_BANKBITS << SDR_CTRLGRP_DRAMADDRW_BANKBITS_LSB |
+		CONFIG_HPS_SDR_CTRLCFG_DRAMADDRW_CSBITS << SDR_CTRLGRP_DRAMADDRW_CSBITS_LSB;
+	sdram_write(SDR_CTRLGRP_DRAMADDRW_ADDRESS, val);
+
+	val = CONFIG_HPS_SDR_CTRLCFG_DRAMIFWIDTH_IFWIDTH << SDR_CTRLGRP_DRAMIFWIDTH_IFWIDTH_LSB;
+	sdram_write(SDR_CTRLGRP_DRAMIFWIDTH_ADDRESS, val);
+
+	val = CONFIG_HPS_SDR_CTRLCFG_DRAMDEVWIDTH_DEVWIDTH << SDR_CTRLGRP_DRAMDEVWIDTH_DEVWIDTH_LSB;
+	sdram_write(SDR_CTRLGRP_DRAMDEVWIDTH_ADDRESS, val);
+
+	val = CONFIG_HPS_SDR_CTRLCFG_DRAMINTR_INTREN << SDR_CTRLGRP_DRAMINTR_INTREN_LSB;
+	sdram_write(SDR_CTRLGRP_DRAMINTR_ADDRESS, val);
+
+	val = CONFIG_HPS_SDR_CTRLCFG_STATICCFG_MEMBL << SDR_CTRLGRP_STATICCFG_MEMBL_LSB |
+		CONFIG_HPS_SDR_CTRLCFG_STATICCFG_USEECCASDATA << SDR_CTRLGRP_STATICCFG_USEECCASDATA_LSB;
+	sdram_write(SDR_CTRLGRP_STATICCFG_ADDRESS, val);
+
+	val = CONFIG_HPS_SDR_CTRLCFG_CTRLWIDTH_CTRLWIDTH << SDR_CTRLGRP_CTRLWIDTH_CTRLWIDTH_LSB;
+	sdram_write(SDR_CTRLGRP_CTRLWIDTH_ADDRESS, val);
+
+	val = CONFIG_HPS_SDR_CTRLCFG_PORTCFG_AUTOPCHEN << SDR_CTRLGRP_PORTCFG_AUTOPCHEN_LSB;
+	sdram_write(SDR_CTRLGRP_PORTCFG_ADDRESS, val);
+
+	val = CONFIG_HPS_SDR_CTRLCFG_FIFOCFG_SYNCMODE << SDR_CTRLGRP_FIFOCFG_SYNCMODE_LSB |
+		CONFIG_HPS_SDR_CTRLCFG_FIFOCFG_INCSYNC << SDR_CTRLGRP_FIFOCFG_INCSYNC_LSB;
+	sdram_write(SDR_CTRLGRP_FIFOCFG_ADDRESS, val);
+
+	val = CONFIG_HPS_SDR_CTRLCFG_MPPRIORITY_USERPRIORITY << SDR_CTRLGRP_MPPRIORITY_USERPRIORITY_LSB;
+	sdram_write(SDR_CTRLGRP_MPPRIORITY_ADDRESS, val);
+
+	val = CONFIG_HPS_SDR_CTRLCFG_MPWIEIGHT_0_STATICWEIGHT_31_0 << SDR_CTRLGRP_MPWEIGHT_MPWEIGHT_0_STATICWEIGHT_31_0_LSB;
+	sdram_write(SDR_CTRLGRP_MPWEIGHT_MPWEIGHT_0_ADDRESS, val);
+
+	val = CONFIG_HPS_SDR_CTRLCFG_MPWIEIGHT_1_STATICWEIGHT_49_32 << SDR_CTRLGRP_MPWEIGHT_MPWEIGHT_1_STATICWEIGHT_49_32_LSB |
+		CONFIG_HPS_SDR_CTRLCFG_MPWIEIGHT_1_SUMOFWEIGHT_13_0 << SDR_CTRLGRP_MPWEIGHT_MPWEIGHT_1_SUMOFWEIGHTS_13_0_LSB;
+	sdram_write(SDR_CTRLGRP_MPWEIGHT_MPWEIGHT_1_ADDRESS, val);
+
+	val = CONFIG_HPS_SDR_CTRLCFG_MPWIEIGHT_2_SUMOFWEIGHT_45_14 << SDR_CTRLGRP_MPWEIGHT_MPWEIGHT_2_SUMOFWEIGHTS_45_14_LSB;
+	sdram_write(SDR_CTRLGRP_MPWEIGHT_MPWEIGHT_2_ADDRESS, val);
+
+	val = CONFIG_HPS_SDR_CTRLCFG_MPWIEIGHT_3_SUMOFWEIGHT_63_46 << SDR_CTRLGRP_MPWEIGHT_MPWEIGHT_3_SUMOFWEIGHTS_63_46_LSB;
+	sdram_write(SDR_CTRLGRP_MPWEIGHT_MPWEIGHT_3_ADDRESS, val);
+
+	val = CONFIG_HPS_SDR_CTRLCFG_MPPACING_0_THRESHOLD1_31_0 << SDR_CTRLGRP_MPPACING_MPPACING_0_THRESHOLD1_31_0_LSB;
+	sdram_write(SDR_CTRLGRP_MPPACING_MPPACING_0_ADDRESS, val);
+
+	val = CONFIG_HPS_SDR_CTRLCFG_MPPACING_1_THRESHOLD1_59_32 << SDR_CTRLGRP_MPPACING_MPPACING_1_THRESHOLD1_59_32_LSB |
+		CONFIG_HPS_SDR_CTRLCFG_MPPACING_1_THRESHOLD2_3_0 <<
+			SDR_CTRLGRP_MPPACING_MPPACING_1_THRESHOLD2_3_0_LSB;
+	sdram_write(SDR_CTRLGRP_MPPACING_MPPACING_1_ADDRESS, val);
+
+	val = CONFIG_HPS_SDR_CTRLCFG_MPPACING_2_THRESHOLD2_35_4 << SDR_CTRLGRP_MPPACING_MPPACING_2_THRESHOLD2_35_4_LSB;
+	sdram_write(SDR_CTRLGRP_MPPACING_MPPACING_2_ADDRESS, val);
+
+	val = CONFIG_HPS_SDR_CTRLCFG_MPPACING_3_THRESHOLD2_59_36 << SDR_CTRLGRP_MPPACING_MPPACING_3_THRESHOLD2_59_36_LSB;
+	sdram_write(SDR_CTRLGRP_MPPACING_MPPACING_3_ADDRESS, val);
+
+	val = CONFIG_HPS_SDR_CTRLCFG_MPTHRESHOLDRST_0_THRESHOLDRSTCYCLES_31_0 <<
+		SDR_CTRLGRP_MPTHRESHOLDRST_MPTHRESHOLDRST_0_THRESHOLDRSTCYCLES_31_0_LSB;
+	sdram_write(SDR_CTRLGRP_MPTHRESHOLDRST_MPTHRESHOLDRST_0_ADDRESS, val);
+
+	val = CONFIG_HPS_SDR_CTRLCFG_MPTHRESHOLDRST_1_THRESHOLDRSTCYCLES_63_32 <<
+		SDR_CTRLGRP_MPTHRESHOLDRST_MPTHRESHOLDRST_1_THRESHOLDRSTCYCLES_63_32_LSB;
+	sdram_write(SDR_CTRLGRP_MPTHRESHOLDRST_MPTHRESHOLDRST_1_ADDRESS, val);
+
+	val = CONFIG_HPS_SDR_CTRLCFG_MPTHRESHOLDRST_2_THRESHOLDRSTCYCLES_79_64 <<
+		SDR_CTRLGRP_MPTHRESHOLDRST_MPTHRESHOLDRST_2_THRESHOLDRSTCYCLES_79_64_LSB;
+	sdram_write(SDR_CTRLGRP_MPTHRESHOLDRST_MPTHRESHOLDRST_2_ADDRESS, val);
+
+	val = CONFIG_HPS_SDR_CTRLCFG_PHYCTRL_PHYCTRL_0;
+	sdram_write(SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_ADDRESS, val);
+
+	val = CONFIG_HPS_SDR_CTRLCFG_CPORTWIDTH_CPORTWIDTH << SDR_CTRLGRP_CPORTWIDTH_CMDPORTWIDTH_LSB;
+	sdram_write(SDR_CTRLGRP_CPORTWIDTH_ADDRESS, val);
+
+	val = CONFIG_HPS_SDR_CTRLCFG_CPORTWMAP_CPORTWMAP << SDR_CTRLGRP_CPORTWMAP_CPORTWFIFOMAP_LSB;
+	sdram_write(SDR_CTRLGRP_CPORTWMAP_ADDRESS, val);
+
+	val = CONFIG_HPS_SDR_CTRLCFG_CPORTRMAP_CPORTRMAP << SDR_CTRLGRP_CPORTRMAP_CPORTRFIFOMAP_LSB;
+	sdram_write(SDR_CTRLGRP_CPORTRMAP_ADDRESS, val);
+
+	val = CONFIG_HPS_SDR_CTRLCFG_RFIFOCMAP_RFIFOCMAP << SDR_CTRLGRP_RFIFOCMAP_RFIFOCPORTMAP_LSB;
+	sdram_write(SDR_CTRLGRP_RFIFOCMAP_ADDRESS, val);
+
+	val = CONFIG_HPS_SDR_CTRLCFG_WFIFOCMAP_WFIFOCMAP << SDR_CTRLGRP_WFIFOCMAP_WFIFOCPORTMAP_LSB;
+	sdram_write(SDR_CTRLGRP_WFIFOCMAP_ADDRESS, val);
+
+	val = CONFIG_HPS_SDR_CTRLCFG_CPORTRDWR_CPORTRDWR << SDR_CTRLGRP_CPORTRDWR_CPORTRDWR_LSB;
+	sdram_write(SDR_CTRLGRP_CPORTRDWR_ADDRESS, val);
+
+	val = CONFIG_HPS_SDR_CTRLCFG_DRAMODT_READ << SDR_CTRLGRP_DRAMODT_READ_LSB |
+		CONFIG_HPS_SDR_CTRLCFG_DRAMODT_WRITE << SDR_CTRLGRP_DRAMODT_WRITE_LSB;
+	sdram_write(SDR_CTRLGRP_DRAMODT_ADDRESS, val);
+
+	val = readl(CYCLONE5_SDR_ADDRESS + SDR_CTRLGRP_STATICCFG_ADDRESS);
+	val &= ~(SDR_CTRLGRP_STATICCFG_APPLYCFG_MASK);
+	val |= 1 << SDR_CTRLGRP_STATICCFG_APPLYCFG_LSB;
+	writel(val, (CYCLONE5_SDR_ADDRESS + SDR_CTRLGRP_STATICCFG_ADDRESS));
+}
+#endif /* __MACH_SDRAM_CONFIG_H */
diff --git a/arch/arm/mach-socfpga/include/mach/sequencer.c b/arch/arm/mach-socfpga/include/mach/sequencer.c
new file mode 100644
index 0000000..1124dee
--- /dev/null
+++ b/arch/arm/mach-socfpga/include/mach/sequencer.c
@@ -0,0 +1,4324 @@
+/*
+Copyright (c) 2012, Altera Corporation
+All rights reserved.
+
+Redistribution and use in source and binary forms, with or without
+modification, are permitted provided that the following conditions are met:
+    * Redistributions of source code must retain the above copyright
+      notice, this list of conditions and the following disclaimer.
+    * Redistributions in binary form must reproduce the above copyright
+      notice, this list of conditions and the following disclaimer in the
+      documentation and/or other materials provided with the distribution.
+    * Neither the name of Altera Corporation nor the
+      names of its contributors may be used to endorse or promote products
+      derived from this software without specific prior written permission.
+
+THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
+ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
+WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
+DISCLAIMED. IN NO EVENT SHALL ALTERA CORPORATION BE LIABLE FOR ANY
+DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
+(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
+LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
+ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
+(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
+SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+*/
+
+#include <common.h>
+#include <io.h>
+#include <mach/socfpga-regs.h>
+#include <mach/sdram.h>
+#include <mach/sequencer.h>
+
+static void IOWR_32DIRECT(uint32_t base, uint32_t ofs, uint32_t val)
+{
+	writel(val, CYCLONE5_SDR_ADDRESS + base + ofs);
+}
+
+static uint32_t IORD_32DIRECT(uint32_t base, uint32_t ofs)
+{
+	return readl(CYCLONE5_SDR_ADDRESS + base + ofs);
+}
+
+/* Just to make the debugging code more uniform */
+#ifndef RW_MGR_MEM_NUMBER_OF_CS_PER_DIMM
+#define RW_MGR_MEM_NUMBER_OF_CS_PER_DIMM 0
+#endif
+
+#if HALF_RATE
+#define HALF_RATE_MODE 1
+#else
+#define HALF_RATE_MODE 0
+#endif
+
+#if QUARTER_RATE
+#define QUARTER_RATE_MODE 1
+#else
+#define QUARTER_RATE_MODE 0
+#endif
+#define DELTA_D 1
+
+#define BTFLD_FMT "%x"
+
+#define STATIC_CALIB_STEPS (CALIB_SKIP_FULL_TEST)
+
+/* calibration steps requested by the rtl */
+static uint16_t dyn_calib_steps;
+
+static uint32_t vfifo_idx;
+
+/*
+ * To make CALIB_SKIP_DELAY_LOOPS a dynamic conditional option
+ * instead of static, we use boolean logic to select between
+ * non-skip and skip values
+ *
+ * The mask is set to include all bits when not-skipping, but is
+ * zero when skipping
+ */
+
+static uint16_t skip_delay_mask;	/* mask off bits when skipping/not-skipping */
+
+#define SKIP_DELAY_LOOP_VALUE_OR_ZERO(non_skip_value) \
+	((non_skip_value) & skip_delay_mask)
+
+static gbl_t *gbl;
+static param_t *param;
+
+static uint32_t rw_mgr_mem_calibrate_write_test(uint32_t rank_bgn,
+	uint32_t write_group, uint32_t use_dm,
+	uint32_t all_correct, t_btfld * bit_chk, uint32_t all_ranks);
+
+/*
+ * This (TEST_SIZE) is used to test handling of large roms, to make
+ * sure we are sizing things correctly
+ * Note, the initialized data takes up twice the space in rom, since
+ * there needs to be a copy with the initial value and a copy that is
+ * written too, since on soft-reset, it needs to have the initial values
+ * without reloading the memory from external sources
+ */
+
+static void reg_file_set_group(uint32_t set_group)
+{
+	/* Read the current group and stage */
+	uint32_t cur_stage_group = IORD_32DIRECT(REG_FILE_CUR_STAGE, 0);
+
+	/* Clear the group */
+	cur_stage_group &= 0x0000FFFF;
+
+	/* Set the group */
+	cur_stage_group |= (set_group << 16);
+
+	/* Write the data back */
+	IOWR_32DIRECT(REG_FILE_CUR_STAGE, 0, cur_stage_group);
+}
+
+static void reg_file_set_stage(uint32_t set_stage)
+{
+	/* Read the current group and stage */
+	uint32_t cur_stage_group = IORD_32DIRECT(REG_FILE_CUR_STAGE, 0);
+
+	/* Clear the stage and substage */
+	cur_stage_group &= 0xFFFF0000;
+
+	/* Set the stage */
+	cur_stage_group |= (set_stage & 0x000000FF);
+
+	/* Write the data back */
+	IOWR_32DIRECT(REG_FILE_CUR_STAGE, 0, cur_stage_group);
+}
+
+static void reg_file_set_sub_stage(uint32_t set_sub_stage)
+{
+	/* Read the current group and stage */
+	uint32_t cur_stage_group = IORD_32DIRECT(REG_FILE_CUR_STAGE, 0);
+
+	/* Clear the substage */
+	cur_stage_group &= 0xFFFF00FF;
+
+	/* Set the sub stage */
+	cur_stage_group |= ((set_sub_stage << 8) & 0x0000FF00);
+
+	/* Write the data back */
+	IOWR_32DIRECT(REG_FILE_CUR_STAGE, 0, cur_stage_group);
+}
+
+static void initialize(void)
+{
+	/*
+	 * In Hard PHY this is a 2-bit control:
+	 * 0: AFI Mux Select
+	 * 1: DDIO Mux Select
+	 */
+	IOWR_32DIRECT(PHY_MGR_MUX_SEL, 0, 0x3);
+
+	/* USER memory clock is not stable we begin initialization  */
+
+	IOWR_32DIRECT(PHY_MGR_RESET_MEM_STBL, 0, 0);
+
+	/* USER calibration status all set to zero */
+
+	IOWR_32DIRECT(PHY_MGR_CAL_STATUS, 0, 0);
+	IOWR_32DIRECT(PHY_MGR_CAL_DEBUG_INFO, 0, 0);
+
+	param->read_correct_mask_vg  = ((t_btfld)1 << (RW_MGR_MEM_DQ_PER_READ_DQS / RW_MGR_MEM_VIRTUAL_GROUPS_PER_READ_DQS)) - 1;
+	param->write_correct_mask_vg = ((t_btfld)1 << (RW_MGR_MEM_DQ_PER_READ_DQS / RW_MGR_MEM_VIRTUAL_GROUPS_PER_READ_DQS)) - 1;
+	param->read_correct_mask     = ((t_btfld)1 << RW_MGR_MEM_DQ_PER_READ_DQS) - 1;
+	param->write_correct_mask    = ((t_btfld)1 << RW_MGR_MEM_DQ_PER_WRITE_DQS) - 1;
+}
+
+#if DDR3
+static void set_rank_and_odt_mask(uint32_t rank, uint32_t odt_mode)
+{
+	uint32_t odt_mask_0 = 0;
+	uint32_t odt_mask_1 = 0;
+	uint32_t cs_and_odt_mask;
+
+	if (odt_mode == RW_MGR_ODT_MODE_READ_WRITE) {
+		if (RW_MGR_MEM_NUMBER_OF_RANKS == 1) {
+			/*
+			 * 1 Rank
+			 * Read: ODT = 0
+			 * Write: ODT = 1
+			 */
+			odt_mask_0 = 0x0;
+			odt_mask_1 = 0x1;
+		} else if (RW_MGR_MEM_NUMBER_OF_RANKS == 2) {
+			/* 2 Ranks */
+			if (RW_MGR_MEM_NUMBER_OF_CS_PER_DIMM == 1 ||
+			   (RDIMM && RW_MGR_MEM_NUMBER_OF_CS_PER_DIMM == 2
+			   && RW_MGR_MEM_CHIP_SELECT_WIDTH == 4)) {
+				/* - Dual-Slot , Single-Rank
+				 * (1 chip-select per DIMM)
+				 * OR
+				 * - RDIMM, 4 total CS (2 CS per DIMM)
+				 * means 2 DIMM
+				 * Since MEM_NUMBER_OF_RANKS is 2 they are
+				 * both single rank
+				 * with 2 CS each (special for RDIMM)
+				 * Read: Turn on ODT on the opposite rank
+				 * Write: Turn on ODT on all ranks
+				 */
+				odt_mask_0 = 0x3 & ~(1 << rank);
+				odt_mask_1 = 0x3;
+			} else {
+				/*
+				 * USER - Single-Slot , Dual-rank DIMMs
+				 * (2 chip-selects per DIMM)
+				 * USER Read: Turn on ODT off on all ranks
+				 * USER Write: Turn on ODT on active rank
+				 */
+				odt_mask_0 = 0x0;
+				odt_mask_1 = 0x3 & (1 << rank);
+			}
+				} else {
+			/* 4 Ranks
+			 * Read:
+			 * ----------+-----------------------+
+			 *           |                       |
+			 *           |         ODT           |
+			 * Read From +-----------------------+
+			 *   Rank    |  3  |  2  |  1  |  0  |
+			 * ----------+-----+-----+-----+-----+
+			 *     0     |  0  |  1  |  0  |  0  |
+			 *     1     |  1  |  0  |  0  |  0  |
+			 *     2     |  0  |  0  |  0  |  1  |
+			 *     3     |  0  |  0  |  1  |  0  |
+			 * ----------+-----+-----+-----+-----+
+			 *
+			 * Write:
+			 * ----------+-----------------------+
+			 *           |                       |
+			 *           |         ODT           |
+			 * Write To  +-----------------------+
+			 *   Rank    |  3  |  2  |  1  |  0  |
+			 * ----------+-----+-----+-----+-----+
+			 *     0     |  0  |  1  |  0  |  1  |
+			 *     1     |  1  |  0  |  1  |  0  |
+			 *     2     |  0  |  1  |  0  |  1  |
+			 *     3     |  1  |  0  |  1  |  0  |
+			 * ----------+-----+-----+-----+-----+
+			 */
+			switch (rank) {
+			case 0:
+				odt_mask_0 = 0x4;
+				odt_mask_1 = 0x5;
+				break;
+			case 1:
+				odt_mask_0 = 0x8;
+				odt_mask_1 = 0xA;
+				break;
+			case 2:
+				odt_mask_0 = 0x1;
+				odt_mask_1 = 0x5;
+				break;
+			case 3:
+				odt_mask_0 = 0x2;
+				odt_mask_1 = 0xA;
+				break;
+			}
+		}
+	} else {
+		odt_mask_0 = 0x0;
+		odt_mask_1 = 0x0;
+	}
+
+	if (RDIMM && RW_MGR_MEM_NUMBER_OF_CS_PER_DIMM == 2
+		&& RW_MGR_MEM_CHIP_SELECT_WIDTH == 4
+		&& RW_MGR_MEM_NUMBER_OF_RANKS == 2) {
+		/* See RDIMM special case above */
+		cs_and_odt_mask =
+			(0xFF & ~(1 << (2*rank))) |
+			((0xFF & odt_mask_0) << 8) |
+			((0xFF & odt_mask_1) << 16);
+	} else {
+		cs_and_odt_mask =
+			(0xFF & ~(1 << rank)) |
+			((0xFF & odt_mask_0) << 8) |
+			((0xFF & odt_mask_1) << 16);
+	}
+
+	IOWR_32DIRECT(RW_MGR_SET_CS_AND_ODT_MASK, 0, cs_and_odt_mask);
+}
+#else
+static void set_rank_and_odt_mask(uint32_t rank, uint32_t odt_mode)
+{
+	uint32_t odt_mask_0 = 0;
+	uint32_t odt_mask_1 = 0;
+	uint32_t cs_and_odt_mask;
+
+	if (odt_mode == RW_MGR_ODT_MODE_READ_WRITE) {
+		if (RW_MGR_MEM_NUMBER_OF_RANKS == 1) {
+			/*
+			 * 1 Rank
+			 * Read: ODT = 0
+			 * Write: ODT = 1
+			 */
+			odt_mask_0 = 0x0;
+			odt_mask_1 = 0x1;
+		} else if (RW_MGR_MEM_NUMBER_OF_RANKS == 2) {
+			/* 2 Ranks */
+			if (RW_MGR_MEM_NUMBER_OF_CS_PER_DIMM == 1) {
+				/* USER - Dual-Slot ,
+				 * Single-Rank (1 chip-select per DIMM)
+				 * OR
+				 * - RDIMM, 4 total CS (2 CS per DIMM) means
+				 * 2 DIMM
+				 * Since MEM_NUMBER_OF_RANKS is 2 they are both
+				 * single rank with 2 CS each (special for
+				 * RDIMM)
+				 * Read/Write: Turn on ODT on the opposite rank
+				 */
+				odt_mask_0 = 0x3 & ~(1 << rank);
+				odt_mask_1 = 0x3 & ~(1 << rank);
+			} else {
+				/*
+				 * USER - Single-Slot , Dual-rank DIMMs
+				 * (2 chip-selects per DIMM)
+				 * Read: Turn on ODT off on all ranks
+				 * Write: Turn on ODT on active rank
+				 */
+				odt_mask_0 = 0x0;
+				odt_mask_1 = 0x3 & (1 << rank);
+			}
+		} else {
+			/*
+			 * 4 Ranks
+			 * Read/Write:
+			 * -----------+-----------------------+
+			 *            |                       |
+			 *            |         ODT           |
+			 * Read/Write |                       |
+			 *   From     +-----------------------+
+			 *   Rank     |  3  |  2  |  1  |  0  |
+			 * -----------+-----+-----+-----+-----+
+			 *     0      |  0  |  1  |  0  |  0  |
+			 *     1      |  1  |  0  |  0  |  0  |
+			 *     2      |  0  |  0  |  0  |  1  |
+			 *     3      |  0  |  0  |  1  |  0  |
+			 * -----------+-----+-----+-----+-----+
+			 */
+			switch (rank) {
+			case 0:
+				odt_mask_0 = 0x4;
+				odt_mask_1 = 0x4;
+				break;
+			case 1:
+				odt_mask_0 = 0x8;
+				odt_mask_1 = 0x8;
+				break;
+			case 2:
+				odt_mask_0 = 0x1;
+				odt_mask_1 = 0x1;
+				break;
+			case 3:
+				odt_mask_0 = 0x2;
+				odt_mask_1 = 0x2;
+				break;
+			}
+		}
+	} else {
+		odt_mask_0 = 0x0;
+		odt_mask_1 = 0x0;
+	}
+
+	cs_and_odt_mask = (0xFF & ~(1 << rank)) |
+		((0xFF & odt_mask_0) << 8) |
+		((0xFF & odt_mask_1) << 16);
+
+	IOWR_32DIRECT(RW_MGR_SET_CS_AND_ODT_MASK, 0, cs_and_odt_mask);
+}
+#endif
+
+static void scc_mgr_initialize(void)
+{
+	/*
+	 * Clear register file for HPS
+	 * 16 (2^4) is the size of the full register file in the scc mgr:
+	 *	RFILE_DEPTH = log2(MEM_DQ_PER_DQS + 1 + MEM_DM_PER_DQS +
+	 * MEM_IF_READ_DQS_WIDTH - 1) + 1;
+	 */
+	uint32_t i;
+	for (i = 0; i < 16; i++) {
+		pr_debug("Clearing SCC RFILE index %u\n", i);
+		IOWR_32DIRECT(SCC_MGR_HHP_RFILE, i << 2, 0);
+	}
+}
+
+static void scc_mgr_set_dqs_bus_in_delay(uint32_t read_group, uint32_t delay)
+{
+	ALTERA_ASSERT(read_group < RW_MGR_MEM_IF_READ_DQS_WIDTH);
+
+	/* Load the setting in the SCC manager */
+	WRITE_SCC_DQS_IN_DELAY(read_group, delay);
+}
+
+static void scc_mgr_set_dqs_io_in_delay(uint32_t write_group,
+	uint32_t delay)
+{
+	ALTERA_ASSERT(write_group < RW_MGR_MEM_IF_WRITE_DQS_WIDTH);
+
+	/* Load the setting in the SCC manager */
+	WRITE_SCC_DQS_IO_IN_DELAY(delay);
+}
+
+static void scc_mgr_set_dqs_en_phase(uint32_t read_group, uint32_t phase)
+{
+	ALTERA_ASSERT(read_group < RW_MGR_MEM_IF_READ_DQS_WIDTH);
+
+	/* Load the setting in the SCC manager */
+	WRITE_SCC_DQS_EN_PHASE(read_group, phase);
+}
+
+static void scc_mgr_set_dqs_en_phase_all_ranks (uint32_t read_group, uint32_t phase)
+{
+	uint32_t r;
+	uint32_t update_scan_chains;
+
+	for (r = 0; r < RW_MGR_MEM_NUMBER_OF_RANKS;
+		r += NUM_RANKS_PER_SHADOW_REG) {
+		/*
+		 * USER although the h/w doesn't support different phases per
+		 * shadow register, for simplicity our scc manager modeling
+		 * keeps different phase settings per shadow reg, and it's
+		 * important for us to keep them in sync to match h/w.
+		 * for efficiency, the scan chain update should occur only
+		 * once to sr0.
+		 */
+		update_scan_chains = (r == 0) ? 1 : 0;
+
+		scc_mgr_set_dqs_en_phase(read_group, phase);
+
+		if (update_scan_chains) {
+			IOWR_32DIRECT(SCC_MGR_DQS_ENA, 0, read_group);
+			IOWR_32DIRECT(SCC_MGR_UPD, 0, 0);
+		}
+	}
+}
+
+static void scc_mgr_set_dqdqs_output_phase(uint32_t write_group,
+	uint32_t phase)
+{
+	ALTERA_ASSERT(write_group < RW_MGR_MEM_IF_WRITE_DQS_WIDTH);
+
+	/* Load the setting in the SCC manager */
+	WRITE_SCC_DQDQS_OUT_PHASE(write_group, phase);
+}
+
+static void scc_mgr_set_dqdqs_output_phase_all_ranks (uint32_t write_group,
+	uint32_t phase)
+{
+	uint32_t r;
+	uint32_t update_scan_chains;
+
+	for (r = 0; r < RW_MGR_MEM_NUMBER_OF_RANKS;
+		r += NUM_RANKS_PER_SHADOW_REG) {
+		/*
+		 * USER although the h/w doesn't support different phases per
+		 * shadow register, for simplicity our scc manager modeling
+		 * keeps different phase settings per shadow reg, and it's
+		 * important for us to keep them in sync to match h/w.
+		 * for efficiency, the scan chain update should occur only
+		 * once to sr0.
+		 */
+		update_scan_chains = (r == 0) ? 1 : 0;
+
+		scc_mgr_set_dqdqs_output_phase(write_group, phase);
+
+		if (update_scan_chains) {
+			IOWR_32DIRECT(SCC_MGR_DQS_ENA, 0, write_group);
+			IOWR_32DIRECT(SCC_MGR_UPD, 0, 0);
+		}
+	}
+}
+
+static void scc_mgr_set_dqs_en_delay(uint32_t read_group, uint32_t delay)
+{
+	ALTERA_ASSERT(read_group < RW_MGR_MEM_IF_READ_DQS_WIDTH);
+
+	/* Load the setting in the SCC manager */
+	WRITE_SCC_DQS_EN_DELAY(read_group, delay);
+}
+
+static void scc_mgr_set_dqs_en_delay_all_ranks (uint32_t read_group, uint32_t delay)
+{
+	uint32_t r;
+
+	for (r = 0; r < RW_MGR_MEM_NUMBER_OF_RANKS; r += NUM_RANKS_PER_SHADOW_REG) {
+
+		scc_mgr_set_dqs_en_delay(read_group, delay);
+
+		IOWR_32DIRECT(SCC_MGR_DQS_ENA, 0, read_group);
+
+		/*
+		 * In shadow register mode, the T11 settings are stored in
+		 * registers in the core, which are updated by the DQS_ENA
+		 * signals. Not issuing the SCC_MGR_UPD command allows us to
+		 * save lots of rank switching overhead, by calling
+		 * select_shadow_regs_for_update with update_scan_chains
+		 * set to 0.
+		 */
+		IOWR_32DIRECT(SCC_MGR_UPD, 0, 0);
+	}
+}
+
+static void scc_mgr_set_oct_out1_delay(uint32_t write_group, uint32_t delay)
+{
+	uint32_t read_group;
+
+	ALTERA_ASSERT(write_group < RW_MGR_MEM_IF_WRITE_DQS_WIDTH);
+
+	/*
+	 * Load the setting in the SCC manager
+	 * Although OCT affects only write data, the OCT delay is controlled
+	 * by the DQS logic block which is instantiated once per read group.
+	 * For protocols where a write group consists of multiple read groups,
+	 * the setting must be set multiple times.
+	 */
+	for (read_group = write_group * RW_MGR_NUM_DQS_PER_WRITE_GROUP;
+		read_group < (write_group + 1) * RW_MGR_NUM_DQS_PER_WRITE_GROUP;
+		 ++read_group)
+		WRITE_SCC_OCT_OUT1_DELAY(read_group, delay);
+}
+
+static void scc_mgr_set_oct_out2_delay(uint32_t write_group, uint32_t delay)
+{
+	uint32_t read_group;
+
+	ALTERA_ASSERT(write_group < RW_MGR_MEM_IF_WRITE_DQS_WIDTH);
+
+	/*
+	 * Load the setting in the SCC manager
+	 * Although OCT affects only write data, the OCT delay is controlled
+	 * by the DQS logic block which is instantiated once per read group.
+	 * For protocols where a write group consists
+	 * of multiple read groups, the setting must be set multiple times.
+	 */
+	for (read_group = write_group * RW_MGR_NUM_DQS_PER_WRITE_GROUP;
+		read_group < (write_group + 1) * RW_MGR_NUM_DQS_PER_WRITE_GROUP;
+		 ++read_group)
+		WRITE_SCC_OCT_OUT2_DELAY(read_group, delay);
+}
+
+static void scc_mgr_set_dq_out1_delay(uint32_t write_group,
+	uint32_t dq_in_group, uint32_t delay)
+{
+	ALTERA_ASSERT(write_group < RW_MGR_MEM_IF_WRITE_DQS_WIDTH);
+	ALTERA_ASSERT(dq < RW_MGR_MEM_DATA_WIDTH);
+
+	/* Load the setting in the SCC manager */
+	WRITE_SCC_DQ_OUT1_DELAY(dq_in_group, delay);
+}
+
+static void scc_mgr_set_dq_out2_delay(uint32_t write_group,
+	uint32_t dq_in_group, uint32_t delay)
+{
+	ALTERA_ASSERT(write_group < RW_MGR_MEM_IF_WRITE_DQS_WIDTH);
+	ALTERA_ASSERT(dq < RW_MGR_MEM_DATA_WIDTH);
+
+	/* Load the setting in the SCC manager */
+	WRITE_SCC_DQ_OUT2_DELAY(dq_in_group, delay);
+}
+
+static void scc_mgr_set_dq_in_delay(uint32_t write_group,
+	uint32_t dq_in_group, uint32_t delay)
+{
+	ALTERA_ASSERT(write_group < RW_MGR_MEM_IF_WRITE_DQS_WIDTH);
+	ALTERA_ASSERT(dq < RW_MGR_MEM_DATA_WIDTH);
+
+	/* Load the setting in the SCC manager */
+	WRITE_SCC_DQ_IN_DELAY(dq_in_group, delay);
+}
+
+static void scc_mgr_set_hhp_extras(void)
+{
+	/*
+	 * Load the fixed setting in the SCC manager
+	 * bits: 0:0 = 1'b1   - dqs bypass
+	 * bits: 1:1 = 1'b1   - dq bypass
+	 * bits: 4:2 = 3'b001   - rfifo_mode
+	 * bits: 6:5 = 2'b01  - rfifo clock_select
+	 * bits: 7:7 = 1'b0  - separate gating from ungating setting
+	 * bits: 8:8 = 1'b0  - separate OE from Output delay setting
+	 */
+	uint32_t value = (0<<8) | (0<<7) | (1<<5) | (1<<2) | (1<<1) | (1<<0);
+	WRITE_SCC_HHP_EXTRAS(value);
+}
+
+static void scc_mgr_set_dqs_out1_delay(uint32_t write_group,
+	uint32_t delay)
+{
+	ALTERA_ASSERT(write_group < RW_MGR_MEM_IF_WRITE_DQS_WIDTH);
+
+	/* Load the setting in the SCC manager */
+	WRITE_SCC_DQS_IO_OUT1_DELAY(delay);
+}
+
+static void scc_mgr_set_dqs_out2_delay(uint32_t write_group, uint32_t delay)
+{
+	ALTERA_ASSERT(write_group < RW_MGR_MEM_IF_WRITE_DQS_WIDTH);
+
+	/* Load the setting in the SCC manager */
+	WRITE_SCC_DQS_IO_OUT2_DELAY(delay);
+}
+
+static void scc_mgr_set_dm_out1_delay(uint32_t write_group,
+	uint32_t dm, uint32_t delay)
+{
+	ALTERA_ASSERT(write_group < RW_MGR_MEM_IF_WRITE_DQS_WIDTH);
+	ALTERA_ASSERT(dm < RW_MGR_NUM_DM_PER_WRITE_GROUP);
+
+	/* Load the setting in the SCC manager */
+	WRITE_SCC_DM_IO_OUT1_DELAY(dm, delay);
+}
+
+static void scc_mgr_set_dm_out2_delay(uint32_t write_group, uint32_t dm,
+	uint32_t delay)
+{
+	ALTERA_ASSERT(write_group < RW_MGR_MEM_IF_WRITE_DQS_WIDTH);
+	ALTERA_ASSERT(dm < RW_MGR_NUM_DM_PER_WRITE_GROUP);
+
+	/* Load the setting in the SCC manager */
+	WRITE_SCC_DM_IO_OUT2_DELAY(dm, delay);
+}
+
+static void scc_mgr_set_dm_in_delay(uint32_t write_group,
+	uint32_t dm, uint32_t delay)
+{
+	ALTERA_ASSERT(write_group < RW_MGR_MEM_IF_WRITE_DQS_WIDTH);
+	ALTERA_ASSERT(dm < RW_MGR_NUM_DM_PER_WRITE_GROUP);
+
+	/* Load the setting in the SCC manager */
+	WRITE_SCC_DM_IO_IN_DELAY(dm, delay);
+}
+
+/*
+ * USER Zero all DQS config
+ * TODO: maybe rename to scc_mgr_zero_dqs_config (or something)
+ */
+static void scc_mgr_zero_all (void)
+{
+	uint32_t i, r;
+
+	/*
+	 * USER Zero all DQS config settings, across all groups and all
+	 * shadow registers
+	 */
+	for (r = 0; r < RW_MGR_MEM_NUMBER_OF_RANKS; r += NUM_RANKS_PER_SHADOW_REG) {
+
+		for (i = 0; i < RW_MGR_MEM_IF_READ_DQS_WIDTH; i++) {
+			/*
+			 * The phases actually don't exist on a per-rank basis,
+			 * but there's no harm updating them several times, so
+			 * let's keep the code simple.
+			 */
+			scc_mgr_set_dqs_bus_in_delay(i, IO_DQS_IN_RESERVE);
+			scc_mgr_set_dqs_en_phase(i, 0);
+			scc_mgr_set_dqs_en_delay(i, 0);
+		}
+
+		for (i = 0; i < RW_MGR_MEM_IF_WRITE_DQS_WIDTH; i++) {
+			scc_mgr_set_dqdqs_output_phase(i, 0);
+#if ARRIAV || CYCLONEV
+			/* av/cv don't have out2 */
+			scc_mgr_set_oct_out1_delay(i, IO_DQS_OUT_RESERVE);
+#else
+			scc_mgr_set_oct_out1_delay(i, 0);
+			scc_mgr_set_oct_out2_delay(i, IO_DQS_OUT_RESERVE);
+#endif
+		}
+
+		/* multicast to all DQS group enables */
+		IOWR_32DIRECT(SCC_MGR_DQS_ENA, 0, 0xff);
+
+		IOWR_32DIRECT(SCC_MGR_UPD, 0, 0);
+	}
+}
+
+static void scc_set_bypass_mode(uint32_t write_group)
+{
+	/* only need to set once for all groups, pins, dq, dqs, dm */
+	if (write_group == 0) {
+		pr_debug("Setting HHP Extras\n");
+		scc_mgr_set_hhp_extras();
+		pr_debug("Done Setting HHP Extras\n");
+	}
+
+	/* multicast to all DQ enables */
+	IOWR_32DIRECT(SCC_MGR_DQ_ENA, 0, 0xff);
+
+	IOWR_32DIRECT(SCC_MGR_DM_ENA, 0, 0xff);
+
+	/* update current DQS IO enable */
+	IOWR_32DIRECT(SCC_MGR_DQS_IO_ENA, 0, 0);
+
+	/* update the DQS logic */
+	IOWR_32DIRECT(SCC_MGR_DQS_ENA, 0, write_group);
+
+	/* hit update */
+	IOWR_32DIRECT(SCC_MGR_UPD, 0, 0);
+}
+
+static void scc_mgr_zero_group (uint32_t write_group, uint32_t test_begin,
+	int32_t out_only)
+{
+	uint32_t i, r;
+
+	for (r = 0; r < RW_MGR_MEM_NUMBER_OF_RANKS; r +=
+		NUM_RANKS_PER_SHADOW_REG) {
+
+		/* Zero all DQ config settings */
+		for (i = 0; i < RW_MGR_MEM_DQ_PER_WRITE_DQS; i++) {
+			scc_mgr_set_dq_out1_delay(write_group, i, 0);
+			scc_mgr_set_dq_out2_delay(write_group, i,
+				IO_DQ_OUT_RESERVE);
+			if (!out_only) {
+				scc_mgr_set_dq_in_delay(write_group, i, 0);
+			}
+		}
+
+		/* multicast to all DQ enables */
+		IOWR_32DIRECT(SCC_MGR_DQ_ENA, 0, 0xff);
+
+		/* Zero all DM config settings */
+		for (i = 0; i < RW_MGR_NUM_DM_PER_WRITE_GROUP; i++) {
+			if (!out_only) {
+				/* Do we really need this? */
+				scc_mgr_set_dm_in_delay(write_group, i, 0);
+			}
+			scc_mgr_set_dm_out1_delay(write_group, i, 0);
+			scc_mgr_set_dm_out2_delay(write_group, i,
+				IO_DM_OUT_RESERVE);
+		}
+
+		/* multicast to all DM enables */
+		IOWR_32DIRECT(SCC_MGR_DM_ENA, 0, 0xff);
+
+		/* zero all DQS io settings */
+		if (!out_only) {
+			scc_mgr_set_dqs_io_in_delay(write_group, 0);
+		}
+#if ARRIAV || CYCLONEV
+		/* av/cv don't have out2 */
+		scc_mgr_set_dqs_out1_delay(write_group, IO_DQS_OUT_RESERVE);
+#else
+		scc_mgr_set_dqs_out1_delay(write_group, 0);
+		scc_mgr_set_dqs_out2_delay(write_group, IO_DQS_OUT_RESERVE);
+#endif
+
+		/* multicast to all DQS IO enables (only 1) */
+		IOWR_32DIRECT(SCC_MGR_DQS_IO_ENA, 0, 0);
+
+		/* hit update to zero everything */
+		IOWR_32DIRECT(SCC_MGR_UPD, 0, 0);
+	}
+}
+
+/* load up dqs config settings */
+
+static void scc_mgr_load_dqs (uint32_t dqs)
+{
+	IOWR_32DIRECT(SCC_MGR_DQS_ENA, 0, dqs);
+}
+
+static void scc_mgr_load_dqs_for_write_group (uint32_t write_group)
+{
+	uint32_t read_group;
+
+	/*
+	 * Although OCT affects only write data, the OCT delay is controlled
+	 * by the DQS logic block which is instantiated once per read group.
+	 * For protocols where a write group consists of multiple read groups,
+	 * the setting must be scanned multiple times.
+	 */
+	for (read_group = write_group * RW_MGR_NUM_DQS_PER_WRITE_GROUP;
+		read_group < (write_group + 1) * RW_MGR_NUM_DQS_PER_WRITE_GROUP;
+		++read_group)
+		IOWR_32DIRECT(SCC_MGR_DQS_ENA, 0, read_group);
+}
+
+
+/* load up dqs io config settings */
+
+static void scc_mgr_load_dqs_io (void)
+{
+	IOWR_32DIRECT(SCC_MGR_DQS_IO_ENA, 0, 0);
+}
+
+/* load up dq config settings */
+
+static void scc_mgr_load_dq (uint32_t dq_in_group)
+{
+	IOWR_32DIRECT(SCC_MGR_DQ_ENA, 0, dq_in_group);
+}
+
+/* load up dm config settings */
+
+static void scc_mgr_load_dm (uint32_t dm)
+{
+	IOWR_32DIRECT(SCC_MGR_DM_ENA, 0, dm);
+}
+
+/* apply and load a particular input delay for the DQ pins in a group */
+/* group_bgn is the index of the first dq pin (in the write group) */
+
+static void scc_mgr_apply_group_dq_in_delay (uint32_t write_group,
+	uint32_t group_bgn, uint32_t delay)
+{
+	uint32_t i, p;
+
+	for (i = 0, p = group_bgn; i < RW_MGR_MEM_DQ_PER_READ_DQS; i++, p++) {
+		scc_mgr_set_dq_in_delay(write_group, p, delay);
+		scc_mgr_load_dq (p);
+	}
+}
+
+/* apply and load a particular output delay for the DQ pins in a group */
+
+static void scc_mgr_apply_group_dq_out1_delay (uint32_t write_group, uint32_t group_bgn,
+	uint32_t delay1)
+{
+	uint32_t i, p;
+
+	for (i = 0, p = group_bgn; i < RW_MGR_MEM_DQ_PER_WRITE_DQS; i++, p++) {
+		scc_mgr_set_dq_out1_delay(write_group, i, delay1);
+		scc_mgr_load_dq (i);
+	}
+}
+
+/* apply and load a particular output delay for the DM pins in a group */
+
+static void scc_mgr_apply_group_dm_out1_delay (uint32_t write_group, uint32_t delay1)
+{
+	uint32_t i;
+
+	for (i = 0; i < RW_MGR_NUM_DM_PER_WRITE_GROUP; i++) {
+		scc_mgr_set_dm_out1_delay(write_group, i, delay1);
+		scc_mgr_load_dm (i);
+	}
+}
+
+
+/* apply and load delay on both DQS and OCT out1 */
+static void scc_mgr_apply_group_dqs_io_and_oct_out1 (uint32_t write_group, uint32_t delay)
+{
+	scc_mgr_set_dqs_out1_delay(write_group, delay);
+	scc_mgr_load_dqs_io ();
+
+	scc_mgr_set_oct_out1_delay(write_group, delay);
+	scc_mgr_load_dqs_for_write_group (write_group);
+}
+
+/* apply a delay to the entire output side: DQ, DM, DQS, OCT */
+
+static void scc_mgr_apply_group_all_out_delay (uint32_t write_group,
+	uint32_t group_bgn, uint32_t delay)
+{
+	/* dq shift */
+
+	scc_mgr_apply_group_dq_out1_delay (write_group, group_bgn, delay);
+
+	/* dm shift */
+
+	scc_mgr_apply_group_dm_out1_delay (write_group, delay);
+
+	/* dqs and oct shift */
+
+	scc_mgr_apply_group_dqs_io_and_oct_out1 (write_group, delay);
+}
+
+/*
+ * USER apply a delay to the entire output side (DQ, DM, DQS, OCT)
+ * and to all ranks
+ */
+static void scc_mgr_apply_group_all_out_delay_all_ranks (uint32_t write_group,
+	uint32_t group_bgn, uint32_t delay)
+{
+	uint32_t r;
+
+	for (r = 0; r < RW_MGR_MEM_NUMBER_OF_RANKS;
+		r += NUM_RANKS_PER_SHADOW_REG) {
+
+		scc_mgr_apply_group_all_out_delay (write_group, group_bgn, delay);
+
+		IOWR_32DIRECT(SCC_MGR_UPD, 0, 0);
+	}
+}
+
+/* apply a delay to the entire output side: DQ, DM, DQS, OCT */
+
+static void scc_mgr_apply_group_all_out_delay_add (uint32_t write_group,
+	uint32_t group_bgn, uint32_t delay)
+{
+	uint32_t i, p, new_delay;
+
+	/* dq shift */
+
+	for (i = 0, p = group_bgn; i < RW_MGR_MEM_DQ_PER_WRITE_DQS; i++, p++) {
+
+		new_delay = READ_SCC_DQ_OUT2_DELAY(i);
+		new_delay += delay;
+
+		if (new_delay > IO_IO_OUT2_DELAY_MAX) {
+			pr_debug("%s(%u, %u, %u) DQ[%u,%u]: %u >"
+				" %u => %u\n", __func__, write_group,
+				group_bgn, delay, i, p,
+				new_delay,
+				IO_IO_OUT2_DELAY_MAX,
+				IO_IO_OUT2_DELAY_MAX);
+			new_delay = IO_IO_OUT2_DELAY_MAX;
+		}
+
+		scc_mgr_set_dq_out2_delay(write_group, i, new_delay);
+		scc_mgr_load_dq (i);
+	}
+
+	/* dm shift */
+
+	for (i = 0; i < RW_MGR_NUM_DM_PER_WRITE_GROUP; i++) {
+		new_delay = READ_SCC_DM_IO_OUT2_DELAY(i);
+		new_delay += delay;
+
+		if (new_delay > IO_IO_OUT2_DELAY_MAX) {
+			pr_debug("%s(%u, %u, %u) DM[%u]: %u > %u => %u\n",
+				__func__, write_group, group_bgn, delay, i,
+				new_delay,
+				IO_IO_OUT2_DELAY_MAX,
+				IO_IO_OUT2_DELAY_MAX);
+			new_delay = IO_IO_OUT2_DELAY_MAX;
+		}
+
+		scc_mgr_set_dm_out2_delay(write_group, i, new_delay);
+		scc_mgr_load_dm (i);
+	}
+
+	/* dqs shift */
+
+	new_delay = READ_SCC_DQS_IO_OUT2_DELAY();
+	new_delay += delay;
+
+	if (new_delay > IO_IO_OUT2_DELAY_MAX) {
+		pr_debug("%s(%u, %u, %u) DQS: %u > %d => %d;"
+			" adding %u to OUT1\n",
+			__func__, write_group, group_bgn, delay,
+			new_delay, IO_IO_OUT2_DELAY_MAX, IO_IO_OUT2_DELAY_MAX,
+			new_delay - IO_IO_OUT2_DELAY_MAX);
+		scc_mgr_set_dqs_out1_delay(write_group, new_delay -
+			IO_IO_OUT2_DELAY_MAX);
+		new_delay = IO_IO_OUT2_DELAY_MAX;
+	}
+
+	scc_mgr_set_dqs_out2_delay(write_group, new_delay);
+	scc_mgr_load_dqs_io ();
+
+	/* oct shift */
+
+	new_delay = READ_SCC_OCT_OUT2_DELAY(write_group);
+	new_delay += delay;
+
+	if (new_delay > IO_IO_OUT2_DELAY_MAX) {
+		pr_debug("%s(%u, %u, %u) DQS: %u > %d => %d;"
+			" adding %u to OUT1\n",
+			__func__, write_group, group_bgn, delay,
+			new_delay, IO_IO_OUT2_DELAY_MAX, IO_IO_OUT2_DELAY_MAX,
+			new_delay - IO_IO_OUT2_DELAY_MAX);
+		scc_mgr_set_oct_out1_delay(write_group, new_delay -
+			IO_IO_OUT2_DELAY_MAX);
+		new_delay = IO_IO_OUT2_DELAY_MAX;
+	}
+
+	scc_mgr_set_oct_out2_delay(write_group, new_delay);
+	scc_mgr_load_dqs_for_write_group(write_group);
+}
+
+/*
+ * USER apply a delay to the entire output side (DQ, DM, DQS, OCT)
+ * and to all ranks
+ */
+static void scc_mgr_apply_group_all_out_delay_add_all_ranks (uint32_t write_group,
+	uint32_t group_bgn, uint32_t delay)
+{
+	uint32_t r;
+
+	for (r = 0; r < RW_MGR_MEM_NUMBER_OF_RANKS; r += NUM_RANKS_PER_SHADOW_REG) {
+		scc_mgr_apply_group_all_out_delay_add (write_group,
+			group_bgn, delay);
+
+		IOWR_32DIRECT(SCC_MGR_UPD, 0, 0);
+	}
+}
+
+static void scc_mgr_spread_out2_delay_all_ranks (uint32_t write_group,
+	uint32_t test_bgn)
+{
+#if STRATIXV || ARRIAVGZ
+	uint32_t found;
+	uint32_t i;
+	uint32_t p;
+	uint32_t d;
+	uint32_t r;
+
+	const uint32_t delay_step = IO_IO_OUT2_DELAY_MAX /
+		(RW_MGR_MEM_DQ_PER_WRITE_DQS-1);
+		/* we start at zero, so have one less dq to devide among */
+
+	for (r = 0; r < RW_MGR_MEM_NUMBER_OF_RANKS;
+		r += NUM_RANKS_PER_SHADOW_REG) {
+		for (i = 0, p = test_bgn, d = 0;
+			i < RW_MGR_MEM_DQ_PER_WRITE_DQS;
+			i++, p++, d += delay_step) {
+			pr_debug("rw_mgr_mem_calibrate_vfifo_find"
+				"_dqs_en_phase_sweep_dq_in_delay: g=%u r=%u,"
+				" i=%u p=%u d=%u\n",
+				write_group, r, i, p, d);
+			scc_mgr_set_dq_out2_delay(write_group, i, d);
+			scc_mgr_load_dq (i);
+		}
+		IOWR_32DIRECT(SCC_MGR_UPD, 0, 0);
+	}
+#endif
+}
+
+#if DDR3
+/* optimization used to recover some slots in ddr3 inst_rom */
+/* could be applied to other protocols if we wanted to */
+static void set_jump_as_return(void)
+{
+	/*
+	 * to save space, we replace return with jump to special shared
+	 * RETURN instruction so we set the counter to large value so that
+	 * we always jump
+	 */
+	IOWR_32DIRECT(RW_MGR_LOAD_CNTR_0, 0, 0xFF);
+	IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_0, 0, __RW_MGR_RETURN);
+
+}
+#endif
+
+/*
+ * should always use constants as argument to ensure all computations are
+ * performed at compile time
+ */
+static void delay_for_n_mem_clocks(const uint32_t clocks)
+{
+	uint32_t afi_clocks;
+	uint8_t inner;
+	uint8_t outer;
+	uint16_t c_loop;
+
+	afi_clocks = (clocks + AFI_RATE_RATIO-1) / AFI_RATE_RATIO;
+	/* scale (rounding up) to get afi clocks */
+
+	/*
+	 * Note, we don't bother accounting for being off a little bit
+	 * because of a few extra instructions in outer loops
+	 * Note, the loops have a test at the end, and do the test before
+	 * the decrement, and so always perform the loop
+	 * 1 time more than the counter value
+	 */
+	if (afi_clocks == 0) {
+		inner = outer = c_loop = 0;
+	} else if (afi_clocks <= 0x100) {
+		inner = afi_clocks-1;
+		outer = 0;
+		c_loop = 0;
+	} else if (afi_clocks <= 0x10000) {
+		inner = 0xff;
+		outer = (afi_clocks-1) >> 8;
+		c_loop = 0;
+	} else {
+		inner = 0xff;
+		outer = 0xff;
+		c_loop = (afi_clocks-1) >> 16;
+	}
+
+	/*
+	 * rom instructions are structured as follows:
+	 *
+	 *    IDLE_LOOP2: jnz cntr0, TARGET_A
+	 *    IDLE_LOOP1: jnz cntr1, TARGET_B
+	 *                return
+	 *
+	 * so, when doing nested loops, TARGET_A is set to IDLE_LOOP2, and
+	 * TARGET_B is set to IDLE_LOOP2 as well
+	 *
+	 * if we have no outer loop, though, then we can use IDLE_LOOP1 only,
+	 * and set TARGET_B to IDLE_LOOP1 and we skip IDLE_LOOP2 entirely
+	 *
+	 * a little confusing, but it helps save precious space in the inst_rom
+	 * and sequencer rom and keeps the delays more accurate and reduces
+	 * overhead
+	 */
+	if (afi_clocks <= 0x100) {
+		IOWR_32DIRECT(RW_MGR_LOAD_CNTR_1, 0,
+			SKIP_DELAY_LOOP_VALUE_OR_ZERO(inner));
+		IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_1, 0, __RW_MGR_IDLE_LOOP1);
+		IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0, __RW_MGR_IDLE_LOOP1);
+	} else {
+		IOWR_32DIRECT(RW_MGR_LOAD_CNTR_0, 0,
+			SKIP_DELAY_LOOP_VALUE_OR_ZERO(inner));
+		IOWR_32DIRECT(RW_MGR_LOAD_CNTR_1, 0,
+			SKIP_DELAY_LOOP_VALUE_OR_ZERO(outer));
+
+		IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_0, 0, __RW_MGR_IDLE_LOOP2);
+		IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_1, 0, __RW_MGR_IDLE_LOOP2);
+
+		/* hack to get around compiler not being smart enough */
+		if (afi_clocks <= 0x10000) {
+			/* only need to run once */
+			IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0,
+				__RW_MGR_IDLE_LOOP2);
+		} else {
+			do {
+				IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0,
+					__RW_MGR_IDLE_LOOP2);
+			} while (c_loop-- != 0);
+		}
+	}
+}
+
+/* Special routine to recover memory device from illegal state after */
+/* ck/dqs relationship is violated. */
+static void recover_mem_device_after_ck_dqs_violation(void)
+{
+	/* Current protocol doesn't require any special recovery */
+}
+
+static void rw_mgr_rdimm_initialize(void) { }
+
+#if DDR3
+
+
+static void rw_mgr_mem_initialize (void)
+{
+	uint32_t r;
+
+
+	/* The reset / cke part of initialization is broadcasted to all ranks */
+	IOWR_32DIRECT(RW_MGR_SET_CS_AND_ODT_MASK, 0, RW_MGR_RANK_ALL);
+
+	/*
+	 * Here's how you load register for a loop
+	 * Counters are located @ 0x800
+	 * Jump address are located @ 0xC00
+	 * For both, registers 0 to 3 are selected using bits 3 and 2, like
+	 * in 0x800, 0x804, 0x808, 0x80C and 0xC00, 0xC04, 0xC08, 0xC0C
+	 * I know this ain't pretty, but Avalon bus throws away the 2 least
+	 * significant bits
+	 */
+
+	/* start with memory RESET activated */
+
+	/* tINIT = 200us */
+
+	/*
+	 * 200us @ 266MHz (3.75 ns) ~ 54000 clock cycles
+	 * If a and b are the number of iteration in 2 nested loops
+	 * it takes the following number of cycles to complete the operation:
+	 * number_of_cycles = ((2 + n) * a + 2) * b
+	 * where n is the number of instruction in the inner loop
+	 * One possible solution is n = 0 , a = 256 , b = 106 => a = FF,
+	 * b = 6A
+	 */
+
+	/* Load counters */
+	IOWR_32DIRECT(RW_MGR_LOAD_CNTR_0, 0,
+		SKIP_DELAY_LOOP_VALUE_OR_ZERO(0xFF));
+	IOWR_32DIRECT(RW_MGR_LOAD_CNTR_1, 0,
+		SKIP_DELAY_LOOP_VALUE_OR_ZERO(0x6A));
+
+	/* Load jump address */
+	IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_0, 0,
+		__RW_MGR_INIT_RESET_0_CKE_0);
+	IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_1, 0,
+		__RW_MGR_INIT_RESET_0_CKE_0_inloop);
+
+	/* Execute count instruction */
+	/* IOWR_32DIRECT(BASE_RW_MGR, 0, __RW_MGR_COUNT_REG_0); */
+	IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0, __RW_MGR_INIT_RESET_0_CKE_0);
+
+	/* indicate that memory is stable */
+	IOWR_32DIRECT(PHY_MGR_RESET_MEM_STBL, 0, 1);
+
+	/* transition the RESET to high */
+	/* Wait for 500us */
+
+	/*
+	 * 500us @ 266MHz (3.75 ns) ~ 134000 clock cycles
+	 * If a and b are the number of iteration in 2 nested loops
+	 * it takes the following number of cycles to complete the operation
+	 * number_of_cycles = ((2 + n) * a + 2) * b
+	 * where n is the number of instruction in the inner loop
+	 * One possible solution is n = 2 , a = 131 , b = 256 => a = 83,
+	 * b = FF
+	 */
+
+	/* Load counters */
+	IOWR_32DIRECT(RW_MGR_LOAD_CNTR_0, 0,
+		SKIP_DELAY_LOOP_VALUE_OR_ZERO(0x83));
+	IOWR_32DIRECT(RW_MGR_LOAD_CNTR_1, 0,
+		SKIP_DELAY_LOOP_VALUE_OR_ZERO(0xFF));
+
+	/* Load jump address */
+	IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_0, 0, __RW_MGR_INIT_RESET_1_CKE_0);
+	IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_1, 0,
+		__RW_MGR_INIT_RESET_1_CKE_0_inloop_1);
+
+	IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0, __RW_MGR_INIT_RESET_1_CKE_0);
+
+	/* bring up clock enable */
+
+	/* tXRP < 250 ck cycles */
+	delay_for_n_mem_clocks(250);
+
+	/*
+	 * USER initialize RDIMM buffer so MRS and RZQ Calibrate commands will
+	 * USER be propagated to discrete memory devices
+	 */
+	rw_mgr_rdimm_initialize();
+
+
+	for (r = 0; r < RW_MGR_MEM_NUMBER_OF_RANKS; r++) {
+		/* set rank */
+		set_rank_and_odt_mask(r, RW_MGR_ODT_MODE_OFF);
+
+		/*
+		 * USER Use Mirror-ed commands for odd ranks if address
+		 * mirrorring is on
+		 */
+		if ((RW_MGR_MEM_ADDRESS_MIRRORING >> r) & 0x1) {
+			set_jump_as_return();
+			IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0,
+				__RW_MGR_MRS2_MIRR);
+			delay_for_n_mem_clocks(4);
+			set_jump_as_return();
+			IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0,
+				__RW_MGR_MRS3_MIRR);
+			delay_for_n_mem_clocks(4);
+			set_jump_as_return();
+			IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0,
+				__RW_MGR_MRS1_MIRR);
+			delay_for_n_mem_clocks(4);
+			set_jump_as_return();
+			IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0,
+				__RW_MGR_MRS0_DLL_RESET_MIRR);
+		} else {
+			set_jump_as_return();
+			IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0,
+				__RW_MGR_MRS2);
+			delay_for_n_mem_clocks(4);
+			set_jump_as_return();
+			IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0,
+				__RW_MGR_MRS3);
+			delay_for_n_mem_clocks(4);
+			set_jump_as_return();
+			IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0,
+				__RW_MGR_MRS1);
+			set_jump_as_return();
+			IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0,
+				__RW_MGR_MRS0_DLL_RESET);
+		}
+
+		set_jump_as_return();
+		IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0, __RW_MGR_ZQCL);
+
+		/* tZQinit = tDLLK = 512 ck cycles */
+		delay_for_n_mem_clocks(512);
+	}
+}
+#endif /* DDR3 */
+
+#if DDR2
+static void rw_mgr_mem_initialize (void)
+{
+	uint32_t r;
+
+	/* *** NOTE *** */
+	/* The following STAGE (n) notation refers to the corresponding
+	stage in the Micron datasheet */
+
+	/*
+	 *Here's how you load register for a loop
+	 * Counters are located @ 0x800
+	 * Jump address are located @ 0xC00
+	 * For both, registers 0 to 3 are selected using bits 3 and 2,
+	 like in
+	 * 0x800, 0x804, 0x808, 0x80C and 0xC00, 0xC04, 0xC08, 0xC0C
+	 * I know this ain't pretty, but Avalon bus throws away the 2 least
+	 significant bits
+	 */
+
+	/* *** STAGE (1, 2, 3) *** */
+
+	/* start with CKE low */
+
+	/* tINIT = 200us */
+
+	/* 200us @ 300MHz (3.33 ns) ~ 60000 clock cycles
+	* If a and b are the number of iteration in 2 nested loops
+	* it takes the following number of cycles to complete the operation:
+	* number_of_cycles = ((2 + n) * b + 2) * a
+	* where n is the number of instruction in the inner loop
+	* One possible solution is n = 0 , a = 256 , b = 118 => a = FF,
+	* b = 76
+	*/
+
+	/*TODO: Need to manage multi-rank */
+
+	/* Load counters */
+	IOWR_32DIRECT(RW_MGR_LOAD_CNTR_0, 0, SKIP_DELAY_LOOP_VALUE_OR_ZERO(0xFF));
+	IOWR_32DIRECT(RW_MGR_LOAD_CNTR_1, 0, SKIP_DELAY_LOOP_VALUE_OR_ZERO(0x76));
+
+	/* Load jump address */
+	IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_0, 0, __RW_MGR_INIT_CKE_0);
+	IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_1, 0, __RW_MGR_INIT_CKE_0_inloop);
+
+	/* Execute count instruction */
+	/* IOWR_32DIRECT(BASE_RW_MGR, 0, __RW_MGR_COUNT_REG_0); */
+	IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0, __RW_MGR_INIT_CKE_0);
+
+	/* indicate that memory is stable */
+	IOWR_32DIRECT(PHY_MGR_RESET_MEM_STBL, 0, 1);
+
+	/* Bring up CKE */
+	IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0, __RW_MGR_NOP);
+
+	/* *** STAGE (4) */
+
+	/* Wait for 400ns */
+	delay_for_n_ns(400);
+
+	/* Multi-rank section begins here */
+	for (r = 0; r < RW_MGR_MEM_NUMBER_OF_RANKS; r++) {
+		/* set rank */
+		set_rank_and_odt_mask(r, RW_MGR_ODT_MODE_OFF);
+
+		/*
+		 * * **** *
+		 * * NOTE *
+		 * * **** *
+		 * The following commands must be spaced by tMRD or tRPA
+		 *which are in the order
+		 * of 2 to 4 full rate cycles. This is peanuts in the
+		 *NIOS domain, so for now
+		 * we can avoid redundant wait loops
+		 */
+
+		/* Possible FIXME BEN: for HHP, we need to add delay loops
+		 * to be sure although, the sequencer write interface by itself
+		 * likely has enough delay
+		 */
+
+		IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0,
+			__RW_MGR_PRECHARGE_ALL);
+
+		/* *** STAGE (5) */
+		IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0, __RW_MGR_EMR2);
+
+		/* *** STAGE (6) */
+		IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0, __RW_MGR_EMR3);
+
+		/* *** STAGE (7) */
+		IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0, __RW_MGR_EMR);
+
+		/* *** STAGE (8) */
+		/* DLL reset */
+		IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0,
+			__RW_MGR_MR_DLL_RESET);
+
+		/* *** STAGE (9) */
+		IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0,
+			__RW_MGR_PRECHARGE_ALL);
+
+		/* *** STAGE (10) */
+
+		/* Issue 2 refresh commands spaced by tREF */
+
+		/* First REFRESH */
+		IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0, __RW_MGR_REFRESH);
+
+		/* tREF = 200ns */
+		delay_for_n_ns(200);
+
+		/* Second REFRESH */
+		IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0, __RW_MGR_REFRESH);
+
+		/* Second idle loop */
+		delay_for_n_ns(200);
+
+		/* *** STAGE (11) */
+		IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0,
+			__RW_MGR_MR_CALIB);
+
+		/* *** STAGE (12) */
+		/* OCD defaults */
+		IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0,
+			__RW_MGR_EMR_OCD_ENABLE);
+
+		/* *** STAGE (13) */
+		/* OCD exit */
+		IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0, __RW_MGR_EMR);
+
+		/* *** STAGE (14) */
+
+		/*
+		 * The memory is now initialized. Before being able to
+		 *use it, we must still
+		 * wait for the DLL to lock, 200 clock cycles after it
+		 *was reset @ STAGE (8).
+		 * Since we cannot keep track of time in any other way,
+		 *let's start counting from now
+		 */
+		delay_for_n_mem_clocks(200);
+	}
+}
+#endif /* DDR2 */
+
+#if LPDDR2
+static void rw_mgr_mem_initialize (void)
+{
+	uint32_t r;
+
+	/* *** NOTE *** */
+	/* The following STAGE (n) notation refers to the corresponding
+	stage in the Micron datasheet */
+
+	/*
+	 *Here's how you load register for a loop
+	 * Counters are located @ 0x800
+	 * Jump address are located @ 0xC00
+	 * For both, registers 0 to 3 are selected using bits 3 and 2,
+	 *like in
+	 * 0x800, 0x804, 0x808, 0x80C and 0xC00, 0xC04, 0xC08, 0xC0C
+	 *I know this ain't pretty, but Avalon bus throws away the 2 least
+	 *significant bits
+	 */
+
+
+	/* *** STAGE (1, 2, 3) *** */
+
+	/* start with CKE low */
+
+	/* tINIT1 = 100ns */
+
+	/*
+	 * 100ns @ 300MHz (3.333 ns) ~ 30 cycles
+	 * If a is the number of iteration in a loop
+	 * it takes the following number of cycles to complete the operation
+	 * number_of_cycles = (2 + n) * a
+	 * where n is the number of instruction in the inner loop
+	 * One possible solution is n = 0 , a = 15 => a = 0x10
+	 */
+
+	/* Load counter */
+	IOWR_32DIRECT(RW_MGR_LOAD_CNTR_0, 0, SKIP_DELAY_LOOP_VALUE_OR_ZERO(0x10));
+
+	/* Load jump address */
+	IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_0, 0, __RW_MGR_INIT_CKE_0);
+
+	/* Execute count instruction */
+	IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0, __RW_MGR_INIT_CKE_0);
+
+	/* tINIT3 = 200us */
+	delay_for_n_ns(200000);
+
+	/* indicate that memory is stable */
+	IOWR_32DIRECT(PHY_MGR_RESET_MEM_STBL, 0, 1);
+
+	/* Multi-rank section begins here */
+	for (r = 0; r < RW_MGR_MEM_NUMBER_OF_RANKS; r++) {
+		/* set rank */
+		set_rank_and_odt_mask(r, RW_MGR_ODT_MODE_OFF);
+
+		/* MRW RESET */
+		IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0, __RW_MGR_MR63_RESET);
+	}
+
+	/* tINIT5 = 10us */
+	delay_for_n_ns(10000);
+
+	/* Multi-rank section begins here */
+	for (r = 0; r < RW_MGR_MEM_NUMBER_OF_RANKS; r++) {
+		/* set rank */
+		set_rank_and_odt_mask(r, RW_MGR_ODT_MODE_OFF);
+
+		/* MRW ZQC */
+		/* Note: We cannot calibrate other ranks when the current rank
+		is calibrating for tZQINIT */
+		IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0, __RW_MGR_MR10_ZQC);
+
+		/* tZQINIT = 1us */
+		delay_for_n_ns(1000);
+
+		/*
+		 * * **** *
+		 * * NOTE *
+		 * * **** *
+		 * The following commands must be spaced by tMRW which is
+		 *in the order
+		 * of 3 to 5 full rate cycles. This is peanuts in the NIOS
+		 *domain, so for now
+		 * we can avoid redundant wait loops
+		 */
+
+		/* MRW MR1 */
+		IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0, __RW_MGR_MR1_CALIB);
+
+		/* MRW MR2 */
+		IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0, __RW_MGR_MR2);
+
+		/* MRW MR3 */
+		IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0, __RW_MGR_MR3);
+	}
+}
+#endif /* LPDDR2 */
+
+/*  At the end of calibration we have to program the user settings in, and
+  USER  hand off the memory to the user. */
+
+#if DDR3
+static void rw_mgr_mem_handoff (void)
+{
+	uint32_t r;
+
+
+	for (r = 0; r < RW_MGR_MEM_NUMBER_OF_RANKS; r++) {
+		/* set rank */
+		set_rank_and_odt_mask(r, RW_MGR_ODT_MODE_OFF);
+
+		/* precharge all banks ... */
+
+		IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0, __RW_MGR_PRECHARGE_ALL);
+
+		/* load up MR settings specified by user */
+
+		/* Use Mirror-ed commands for odd ranks if address
+		mirrorring is on */
+		if ((RW_MGR_MEM_ADDRESS_MIRRORING >> r) & 0x1) {
+			set_jump_as_return();
+			IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0,
+				__RW_MGR_MRS2_MIRR);
+			delay_for_n_mem_clocks(4);
+			set_jump_as_return();
+			IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0,
+				__RW_MGR_MRS3_MIRR);
+			delay_for_n_mem_clocks(4);
+			set_jump_as_return();
+			IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0,
+				__RW_MGR_MRS1_MIRR);
+			delay_for_n_mem_clocks(4);
+			set_jump_as_return();
+			IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0,
+				__RW_MGR_MRS0_USER_MIRR);
+		} else {
+			set_jump_as_return();
+			IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0,
+				__RW_MGR_MRS2);
+			delay_for_n_mem_clocks(4);
+			set_jump_as_return();
+			IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0,
+				__RW_MGR_MRS3);
+			delay_for_n_mem_clocks(4);
+			set_jump_as_return();
+			IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0,
+				__RW_MGR_MRS1);
+			delay_for_n_mem_clocks(4);
+			set_jump_as_return();
+			IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0,
+				__RW_MGR_MRS0_USER);
+		}
+		/* USER  need to wait tMOD (12CK or 15ns) time before issuing
+		 * other commands, but we will have plenty of NIOS cycles before
+		 * actual handoff so its okay.
+		 */
+	}
+
+}
+#endif /* DDR3 */
+
+#if DDR2
+static void rw_mgr_mem_handoff (void)
+{
+	uint32_t r;
+
+	for (r = 0; r < RW_MGR_MEM_NUMBER_OF_RANKS; r++) {
+		/* set rank */
+		set_rank_and_odt_mask(r, RW_MGR_ODT_MODE_OFF);
+
+		/* precharge all banks ... */
+
+		IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0,
+			__RW_MGR_PRECHARGE_ALL);
+
+		/* load up MR settings specified by user */
+
+		/*
+		 * FIXME BEN: for HHP, we need to add delay loops to be sure
+		 * We can check this with BFM perhaps
+		 * Likely enough delay in RW_MGR though
+		 */
+
+		IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0, __RW_MGR_EMR2);
+
+		IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0, __RW_MGR_EMR3);
+
+		IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0, __RW_MGR_EMR);
+
+		IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0, __RW_MGR_MR_USER);
+
+		/*
+		 * USER need to wait tMOD (12CK or 15ns) time before issuing
+		 * other commands,
+		 * USER but we will have plenty of NIOS cycles before actual
+		 * handoff so its okay.
+		 */
+	}
+}
+#endif /* DDR2 */
+
+#if LPDDR2
+static void rw_mgr_mem_handoff (void)
+{
+	uint32_t r;
+
+	for (r = 0; r < RW_MGR_MEM_NUMBER_OF_RANKS; r++) {
+		/* set rank */
+		set_rank_and_odt_mask(r, RW_MGR_ODT_MODE_OFF);
+
+		/* precharge all banks... */
+
+		IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0,
+			__RW_MGR_PRECHARGE_ALL);
+
+		/* load up MR settings specified by user */
+
+		IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0, __RW_MGR_MR1_USER);
+
+		IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0, __RW_MGR_MR2);
+
+		IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0, __RW_MGR_MR3);
+	}
+}
+#endif /* LPDDR2 */
+
+/*
+ * performs a guaranteed read on the patterns we are going to use during a
+ * read test to ensure memory works
+ */
+static uint32_t rw_mgr_mem_calibrate_read_test_patterns (uint32_t rank_bgn,
+	uint32_t group, uint32_t num_tries, t_btfld *bit_chk, uint32_t all_ranks)
+{
+	uint32_t r, vg;
+	t_btfld correct_mask_vg;
+	t_btfld tmp_bit_chk;
+	uint32_t rank_end = all_ranks ? RW_MGR_MEM_NUMBER_OF_RANKS :
+		(rank_bgn + NUM_RANKS_PER_SHADOW_REG);
+
+	*bit_chk = param->read_correct_mask;
+	correct_mask_vg = param->read_correct_mask_vg;
+
+	for (r = rank_bgn; r < rank_end; r++) {
+		/* set rank */
+		set_rank_and_odt_mask(r, RW_MGR_ODT_MODE_READ_WRITE);
+
+		/* Load up a constant bursts of read commands */
+
+		IOWR_32DIRECT(RW_MGR_LOAD_CNTR_0, 0, 0x20);
+		IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_0, 0,
+			__RW_MGR_GUARANTEED_READ);
+
+		IOWR_32DIRECT(RW_MGR_LOAD_CNTR_1, 0, 0x20);
+		IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_1, 0,
+			__RW_MGR_GUARANTEED_READ_CONT);
+
+		tmp_bit_chk = 0;
+		for (vg = RW_MGR_MEM_VIRTUAL_GROUPS_PER_READ_DQS-1; ; vg--) {
+			/* reset the fifos to get pointers to known state */
+
+			IOWR_32DIRECT(PHY_MGR_CMD_FIFO_RESET, 0, 0);
+			IOWR_32DIRECT(RW_MGR_RESET_READ_DATAPATH, 0, 0);
+
+			tmp_bit_chk = tmp_bit_chk << (RW_MGR_MEM_DQ_PER_READ_DQS
+				/ RW_MGR_MEM_VIRTUAL_GROUPS_PER_READ_DQS);
+
+			IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP,
+				((group*RW_MGR_MEM_VIRTUAL_GROUPS_PER_READ_DQS +
+					vg) << 2), __RW_MGR_GUARANTEED_READ);
+			tmp_bit_chk = tmp_bit_chk | (correct_mask_vg &
+				~(IORD_32DIRECT(BASE_RW_MGR, 0)));
+
+			if (vg == 0)
+				break;
+		}
+		*bit_chk &= tmp_bit_chk;
+	}
+
+	IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, (group << 2),
+		__RW_MGR_CLEAR_DQS_ENABLE);
+
+	set_rank_and_odt_mask(0, RW_MGR_ODT_MODE_OFF);
+	pr_debug("test_load_patterns(%u,ALL) => (%u == %u) => %u\n",
+		group, *bit_chk, param->read_correct_mask,
+		(*bit_chk == param->read_correct_mask));
+	return (*bit_chk == param->read_correct_mask);
+}
+
+static uint32_t rw_mgr_mem_calibrate_read_test_patterns_all_ranks
+	(uint32_t group, uint32_t num_tries, t_btfld *bit_chk)
+{
+	return rw_mgr_mem_calibrate_read_test_patterns (0, group,
+		num_tries, bit_chk, 1);
+}
+
+/* load up the patterns we are going to use during a read test */
+static void rw_mgr_mem_calibrate_read_load_patterns (uint32_t rank_bgn,
+	uint32_t all_ranks)
+{
+	uint32_t r;
+	uint32_t rank_end = all_ranks ? RW_MGR_MEM_NUMBER_OF_RANKS :
+		(rank_bgn + NUM_RANKS_PER_SHADOW_REG);
+
+	for (r = rank_bgn; r < rank_end; r++) {
+		/* set rank */
+		set_rank_and_odt_mask(r, RW_MGR_ODT_MODE_READ_WRITE);
+
+		/* Load up a constant bursts */
+
+		IOWR_32DIRECT(RW_MGR_LOAD_CNTR_0, 0, 0x20);
+		IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_0, 0,
+			__RW_MGR_GUARANTEED_WRITE_WAIT0);
+
+		IOWR_32DIRECT(RW_MGR_LOAD_CNTR_1, 0, 0x20);
+		IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_1, 0,
+			__RW_MGR_GUARANTEED_WRITE_WAIT1);
+
+#if QUARTER_RATE
+		IOWR_32DIRECT(RW_MGR_LOAD_CNTR_2, 0, 0x01);
+#endif
+#if HALF_RATE
+		IOWR_32DIRECT(RW_MGR_LOAD_CNTR_2, 0, 0x02);
+#endif
+#if FULL_RATE
+		IOWR_32DIRECT(RW_MGR_LOAD_CNTR_2, 0, 0x04);
+#endif
+		IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_2, 0,
+			__RW_MGR_GUARANTEED_WRITE_WAIT2);
+
+#if QUARTER_RATE
+		IOWR_32DIRECT(RW_MGR_LOAD_CNTR_3, 0, 0x01);
+#endif
+#if HALF_RATE
+		IOWR_32DIRECT(RW_MGR_LOAD_CNTR_3, 0, 0x02);
+#endif
+#if FULL_RATE
+		IOWR_32DIRECT(RW_MGR_LOAD_CNTR_3, 0, 0x04);
+#endif
+		IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_3, 0,
+			__RW_MGR_GUARANTEED_WRITE_WAIT3);
+
+		IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0,
+			__RW_MGR_GUARANTEED_WRITE);
+	}
+
+	set_rank_and_odt_mask(0, RW_MGR_ODT_MODE_OFF);
+}
+
+static void rw_mgr_mem_calibrate_read_load_patterns_all_ranks (void)
+{
+	rw_mgr_mem_calibrate_read_load_patterns (0, 1);
+}
+
+/*
+ * try a read and see if it returns correct data back. has dummy reads
+ * inserted into the mix used to align dqs enable. has more thorough checks
+ * than the regular read test.
+ */
+
+static uint32_t rw_mgr_mem_calibrate_read_test (uint32_t rank_bgn, uint32_t group,
+	uint32_t num_tries, uint32_t all_correct, t_btfld *bit_chk,
+	uint32_t all_groups, uint32_t all_ranks)
+{
+	uint32_t r, vg;
+	uint32_t quick_read_mode;
+	t_btfld correct_mask_vg;
+	t_btfld tmp_bit_chk;
+	uint32_t rank_end = all_ranks ? RW_MGR_MEM_NUMBER_OF_RANKS :
+		(rank_bgn + NUM_RANKS_PER_SHADOW_REG);
+
+
+	*bit_chk = param->read_correct_mask;
+	correct_mask_vg = param->read_correct_mask_vg;
+
+	quick_read_mode = (((STATIC_CALIB_STEPS) &
+		CALIB_SKIP_DELAY_SWEEPS) && ENABLE_SUPER_QUICK_CALIBRATION) ||
+		BFM_MODE;
+
+	for (r = rank_bgn; r < rank_end; r++) {
+		/* set rank */
+		set_rank_and_odt_mask(r, RW_MGR_ODT_MODE_READ_WRITE);
+
+		IOWR_32DIRECT(RW_MGR_LOAD_CNTR_1, 0, 0x10);
+		IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_1, 0,
+			__RW_MGR_READ_B2B_WAIT1);
+		IOWR_32DIRECT(RW_MGR_LOAD_CNTR_2, 0, 0x10);
+		IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_2, 0,
+			__RW_MGR_READ_B2B_WAIT2);
+
+		if (quick_read_mode) {
+			IOWR_32DIRECT(RW_MGR_LOAD_CNTR_0, 0, 0x1);
+			/* need at least two (1+1) reads to capture failures */
+		} else if (all_groups) {
+			IOWR_32DIRECT(RW_MGR_LOAD_CNTR_0, 0, 0x06);
+		} else {
+			IOWR_32DIRECT(RW_MGR_LOAD_CNTR_0, 0, 0x32);
+		}
+		IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_0, 0, __RW_MGR_READ_B2B);
+		if (all_groups) {
+			IOWR_32DIRECT(RW_MGR_LOAD_CNTR_3, 0,
+				RW_MGR_MEM_IF_READ_DQS_WIDTH *
+				RW_MGR_MEM_VIRTUAL_GROUPS_PER_READ_DQS - 1);
+		} else {
+			IOWR_32DIRECT(RW_MGR_LOAD_CNTR_3, 0, 0x0);
+		}
+		IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_3, 0, __RW_MGR_READ_B2B);
+
+		tmp_bit_chk = 0;
+		for (vg = RW_MGR_MEM_VIRTUAL_GROUPS_PER_READ_DQS-1; ; vg--) {
+			/* reset the fifos to get pointers to known state */
+
+			IOWR_32DIRECT(PHY_MGR_CMD_FIFO_RESET, 0, 0);
+			IOWR_32DIRECT(RW_MGR_RESET_READ_DATAPATH, 0, 0);
+
+			tmp_bit_chk = tmp_bit_chk << (RW_MGR_MEM_DQ_PER_READ_DQS
+				/ RW_MGR_MEM_VIRTUAL_GROUPS_PER_READ_DQS);
+
+			IOWR_32DIRECT(all_groups ? RW_MGR_RUN_ALL_GROUPS :
+				RW_MGR_RUN_SINGLE_GROUP, ((group *
+				RW_MGR_MEM_VIRTUAL_GROUPS_PER_READ_DQS+vg)
+				<< 2), __RW_MGR_READ_B2B);
+			tmp_bit_chk = tmp_bit_chk | (correct_mask_vg &
+				~(IORD_32DIRECT(BASE_RW_MGR, 0)));
+
+			if (vg == 0) {
+				break;
+			}
+		}
+		*bit_chk &= tmp_bit_chk;
+	}
+
+	IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, (group << 2),
+		__RW_MGR_CLEAR_DQS_ENABLE);
+
+	if (all_correct) {
+		set_rank_and_odt_mask(0, RW_MGR_ODT_MODE_OFF);
+		pr_debug("read_test(%u,ALL,%u) => (%u == %u) => %u\n",
+			group, all_groups, *bit_chk, param->read_correct_mask,
+			(*bit_chk ==
+			param->read_correct_mask));
+		return (*bit_chk == param->read_correct_mask);
+	} else	{
+		set_rank_and_odt_mask(0, RW_MGR_ODT_MODE_OFF);
+		pr_debug("read_test(%u,ONE,%u) => (%u != %u) => %u\n",
+			group, all_groups, *bit_chk, 0,
+			(*bit_chk != 0x00));
+		return (*bit_chk != 0x00);
+	}
+}
+
+static uint32_t rw_mgr_mem_calibrate_read_test_all_ranks (uint32_t group,
+	uint32_t num_tries, uint32_t all_correct, t_btfld *bit_chk,
+	uint32_t all_groups)
+{
+	return rw_mgr_mem_calibrate_read_test (0, group, num_tries, all_correct,
+		bit_chk, all_groups, 1);
+}
+
+static void rw_mgr_incr_vfifo(uint32_t grp, uint32_t *v)
+{
+	/* fiddle with FIFO */
+	if (HARD_PHY) {
+		IOWR_32DIRECT(PHY_MGR_CMD_INC_VFIFO_HARD_PHY, 0, grp);
+	} else if (QUARTER_RATE_MODE && !HARD_VFIFO) {
+		if ((*v & 3) == 3) {
+			IOWR_32DIRECT(PHY_MGR_CMD_INC_VFIFO_QR, 0, grp);
+		} else if ((*v & 2) == 2) {
+			IOWR_32DIRECT(PHY_MGR_CMD_INC_VFIFO_FR_HR, 0, grp);
+		} else if ((*v & 1) == 1) {
+			IOWR_32DIRECT(PHY_MGR_CMD_INC_VFIFO_HR, 0, grp);
+		} else {
+			IOWR_32DIRECT(PHY_MGR_CMD_INC_VFIFO_FR, 0, grp);
+		}
+	} else if (HARD_VFIFO) {
+		/* Arria V & Cyclone V have a hard full-rate VFIFO that only
+		has a single incr signal */
+		IOWR_32DIRECT(PHY_MGR_CMD_INC_VFIFO_FR, 0, grp);
+	} else {
+		if (!HALF_RATE_MODE || (*v & 1) == 1) {
+			IOWR_32DIRECT(PHY_MGR_CMD_INC_VFIFO_HR, 0, grp);
+		} else {
+			IOWR_32DIRECT(PHY_MGR_CMD_INC_VFIFO_FR, 0, grp);
+		}
+	}
+
+	(*v)++;
+}
+
+static void rw_mgr_decr_vfifo(uint32_t grp, uint32_t *v)
+{
+
+	uint32_t i;
+
+	for (i = 0; i < VFIFO_SIZE-1; i++) {
+		rw_mgr_incr_vfifo(grp, v);
+	}
+}
+
+/* find a good dqs enable to use */
+static uint32_t rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase (uint32_t grp)
+{
+	uint32_t i, d, v, p;
+	uint32_t max_working_cnt;
+	uint32_t fail_cnt;
+	t_btfld bit_chk;
+	uint32_t dtaps_per_ptap;
+	uint32_t found_begin, found_end;
+	uint32_t work_bgn, work_mid, work_end, tmp_delay;
+	uint32_t test_status;
+	uint32_t found_passing_read, found_failing_read, initial_failing_dtap;
+
+	ALTERA_ASSERT(grp < RW_MGR_MEM_IF_READ_DQS_WIDTH);
+
+	reg_file_set_sub_stage(CAL_SUBSTAGE_VFIFO_CENTER);
+
+	scc_mgr_set_dqs_en_delay_all_ranks(grp, 0);
+	scc_mgr_set_dqs_en_phase_all_ranks(grp, 0);
+
+	fail_cnt = 0;
+
+	/* ************************************************************** */
+	/* * Step 0 : Determine number of delay taps for each phase tap * */
+
+	dtaps_per_ptap = 0;
+	tmp_delay = 0;
+	while (tmp_delay < IO_DELAY_PER_OPA_TAP) {
+		dtaps_per_ptap++;
+		tmp_delay += IO_DELAY_PER_DQS_EN_DCHAIN_TAP;
+	}
+	dtaps_per_ptap--;
+	ALTERA_ASSERT(dtaps_per_ptap <= IO_DQS_EN_DELAY_MAX);
+	tmp_delay = 0;
+
+	/* ********************************************************* */
+	/* * Step 1 : First push vfifo until we get a failing read * */
+	for (v = 0; v < VFIFO_SIZE; ) {
+		pr_debug("find_dqs_en_phase: vfifo %u\n", vfifo_idx);
+		test_status = rw_mgr_mem_calibrate_read_test_all_ranks
+			(grp, 1, PASS_ONE_BIT, &bit_chk, 0);
+		if (!test_status) {
+			fail_cnt++;
+
+			if (fail_cnt == 2)
+				break;
+		}
+
+		/* fiddle with FIFO */
+		rw_mgr_incr_vfifo(grp, &v);
+	}
+
+	if (v >= VFIFO_SIZE) {
+		/* no failing read found!! Something must have gone wrong */
+		pr_debug("find_dqs_en_phase: vfifo failed\n");
+		return 0;
+	}
+
+	max_working_cnt = 0;
+
+	/* ******************************************************** */
+	/* * step 2: find first working phase, increment in ptaps * */
+	found_begin = 0;
+	work_bgn = 0;
+	for (d = 0; d <= dtaps_per_ptap; d++, tmp_delay +=
+		IO_DELAY_PER_DQS_EN_DCHAIN_TAP) {
+		work_bgn = tmp_delay;
+		scc_mgr_set_dqs_en_delay_all_ranks(grp, d);
+
+		for (i = 0; i < VFIFO_SIZE; i++) {
+			for (p = 0; p <= IO_DQS_EN_PHASE_MAX; p++, work_bgn +=
+				IO_DELAY_PER_OPA_TAP) {
+				pr_debug("find_dqs_en_phase: begin: vfifo=%u"
+					" ptap=%u dtap=%u\n", vfifo_idx, p, d);
+				scc_mgr_set_dqs_en_phase_all_ranks(grp, p);
+
+				test_status =
+				rw_mgr_mem_calibrate_read_test_all_ranks
+				(grp, 1, PASS_ONE_BIT, &bit_chk, 0);
+
+				if (test_status) {
+					max_working_cnt = 1;
+					found_begin = 1;
+					break;
+				}
+			}
+
+			if (found_begin)
+				break;
+
+			if (p > IO_DQS_EN_PHASE_MAX) {
+				/* fiddle with FIFO */
+				rw_mgr_incr_vfifo(grp, &v);
+			}
+		}
+
+		if (found_begin)
+			break;
+	}
+
+	if (i >= VFIFO_SIZE) {
+		/* cannot find working solution */
+		pr_debug("find_dqs_en_phase: no vfifo/ptap/dtap\n");
+		return 0;
+	}
+
+	work_end = work_bgn;
+
+	/*  If d is 0 then the working window covers a phase tap and
+	we can follow the old procedure otherwise, we've found the beginning,
+	and we need to increment the dtaps until we find the end */
+	if (d == 0) {
+		/* ********************************************************* */
+		/* * step 3a: if we have room, back off by one and
+		increment in dtaps * */
+
+		/* Special case code for backing up a phase */
+		if (p == 0) {
+			p = IO_DQS_EN_PHASE_MAX ;
+			rw_mgr_decr_vfifo(grp, &v);
+		} else {
+			p = p - 1;
+		}
+		tmp_delay = work_bgn - IO_DELAY_PER_OPA_TAP;
+		scc_mgr_set_dqs_en_phase_all_ranks(grp, p);
+
+		found_begin = 0;
+		for (d = 0; d <= IO_DQS_EN_DELAY_MAX && tmp_delay < work_bgn;
+			d++, tmp_delay += IO_DELAY_PER_DQS_EN_DCHAIN_TAP) {
+
+			pr_debug("find_dqs_en_phase: begin-2: vfifo=%u "
+				"ptap=%u dtap=%u\n", vfifo_idx, p, d);
+
+			scc_mgr_set_dqs_en_delay_all_ranks(grp, d);
+
+			if (rw_mgr_mem_calibrate_read_test_all_ranks (grp, 1,
+				PASS_ONE_BIT, &bit_chk, 0)) {
+				found_begin = 1;
+				work_bgn = tmp_delay;
+				break;
+			}
+		}
+
+		/* We have found a working dtap before the ptap found above */
+		if (found_begin == 1) {
+			max_working_cnt++;
+		}
+
+		/* Restore VFIFO to old state before we decremented it
+		(if needed) */
+		p = p + 1;
+		if (p > IO_DQS_EN_PHASE_MAX) {
+			p = 0;
+			rw_mgr_incr_vfifo(grp, &v);
+		}
+
+		scc_mgr_set_dqs_en_delay_all_ranks(grp, 0);
+
+		/* ********************************************************* */
+		/* * step 4a: go forward from working phase to non working
+		phase, increment in ptaps * */
+		p = p + 1;
+		work_end += IO_DELAY_PER_OPA_TAP;
+		if (p > IO_DQS_EN_PHASE_MAX) {
+			/* fiddle with FIFO */
+			p = 0;
+			rw_mgr_incr_vfifo(grp, &v);
+		}
+
+		found_end = 0;
+		for (; i < VFIFO_SIZE + 1; i++) {
+			for (; p <= IO_DQS_EN_PHASE_MAX; p++, work_end
+				+= IO_DELAY_PER_OPA_TAP) {
+				pr_debug("find_dqs_en_phase: end: vfifo=%u "
+					"ptap=%u dtap=%u\n", vfifo_idx, p, 0);
+				scc_mgr_set_dqs_en_phase_all_ranks(grp, p);
+
+				if (!rw_mgr_mem_calibrate_read_test_all_ranks
+					(grp, 1, PASS_ONE_BIT, &bit_chk, 0)) {
+					found_end = 1;
+					break;
+				}
+
+				max_working_cnt++;
+			}
+
+			if (found_end)
+				break;
+
+			if (p > IO_DQS_EN_PHASE_MAX) {
+				/* fiddle with FIFO */
+				rw_mgr_incr_vfifo(grp, &v);
+				p = 0;
+			}
+		}
+
+		if (i >= VFIFO_SIZE + 1) {
+			/* cannot see edge of failing read */
+			pr_debug("find_dqs_en_phase: end: failed\n");
+			return 0;
+		}
+
+		/* ********************************************************* */
+		/* * step 5a:  back off one from last, increment in dtaps  * */
+
+		/* Special case code for backing up a phase */
+		if (p == 0) {
+			p = IO_DQS_EN_PHASE_MAX;
+			rw_mgr_decr_vfifo(grp, &v);
+		} else {
+			p = p - 1;
+		}
+
+		work_end -= IO_DELAY_PER_OPA_TAP;
+		scc_mgr_set_dqs_en_phase_all_ranks(grp, p);
+
+		/* * The actual increment of dtaps is done outside of
+		the if/else loop to share code */
+		d = 0;
+
+		pr_debug("find_dqs_en_phase: found end v/p: vfifo=%u ptap=%u\n",
+				vfifo_idx, p);
+	} else {
+
+		/* ******************************************************* */
+		/* * step 3-5b:  Find the right edge of the window using
+		delay taps   * */
+
+		pr_debug("find_dqs_en_phase: begin found: vfifo=%u ptap=%u "
+			"dtap=%u begin=%u\n", vfifo_idx, p, d,
+			work_bgn);
+
+		work_end = work_bgn;
+
+		/* * The actual increment of dtaps is done outside of the
+		if/else loop to share code */
+
+		/* Only here to counterbalance a subtract later on which is
+		not needed if this branch of the algorithm is taken */
+		max_working_cnt++;
+	}
+
+	/* The dtap increment to find the failing edge is done here */
+	for (; d <= IO_DQS_EN_DELAY_MAX; d++, work_end +=
+		IO_DELAY_PER_DQS_EN_DCHAIN_TAP) {
+
+			pr_debug("find_dqs_en_phase: end-2: dtap=%u\n", d);
+			scc_mgr_set_dqs_en_delay_all_ranks(grp, d);
+
+			if (!rw_mgr_mem_calibrate_read_test_all_ranks (grp, 1,
+				PASS_ONE_BIT, &bit_chk, 0)) {
+				break;
+			}
+		}
+
+	/* Go back to working dtap */
+	if (d != 0) {
+		work_end -= IO_DELAY_PER_DQS_EN_DCHAIN_TAP;
+	}
+
+	pr_debug("find_dqs_en_phase: found end v/p/d: vfifo=%u ptap=%u "
+		"dtap=%u end=%u\n", vfifo_idx, p, d-1, work_end);
+
+	if (work_end >= work_bgn) {
+		/* we have a working range */
+	} else {
+		/* nil range */
+		pr_debug("find_dqs_en_phase: end-2: failed\n");
+		return 0;
+	}
+
+	pr_debug("find_dqs_en_phase: found range [%u,%u]\n",
+		work_bgn, work_end);
+
+#if USE_DQS_TRACKING
+	/* *************************************************************** */
+	/*
+	 * * We need to calculate the number of dtaps that equal a ptap
+	 * * To do that we'll back up a ptap and re-find the edge of the
+	 * * window using dtaps
+	 */
+
+	pr_debug("find_dqs_en_phase: calculate dtaps_per_ptap for tracking\n");
+
+	/* Special case code for backing up a phase */
+	if (p == 0) {
+		p = IO_DQS_EN_PHASE_MAX;
+		rw_mgr_decr_vfifo(grp, &v);
+		pr_debug("find_dqs_en_phase: backed up cycle/phase: "
+			"v=%u p=%u\n", vfifo_idx, p);
+	} else {
+		p = p - 1;
+		pr_debug("find_dqs_en_phase: backed up phase only: v=%u "
+			"p=%u\n", vfifo_idx, p);
+	}
+
+	scc_mgr_set_dqs_en_phase_all_ranks(grp, p);
+
+	/*
+	 * Increase dtap until we first see a passing read (in case the
+	 * window is smaller than a ptap),
+	 * and then a failing read to mark the edge of the window again
+	 */
+
+	/* Find a passing read */
+	pr_debug("find_dqs_en_phase: find passing read\n");
+	found_passing_read = 0;
+	found_failing_read = 0;
+	initial_failing_dtap = d;
+	for (; d <= IO_DQS_EN_DELAY_MAX; d++) {
+		pr_debug("find_dqs_en_phase: testing read d=%u\n", d);
+		scc_mgr_set_dqs_en_delay_all_ranks(grp, d);
+
+		if (rw_mgr_mem_calibrate_read_test_all_ranks (grp, 1,
+			PASS_ONE_BIT, &bit_chk, 0)) {
+			found_passing_read = 1;
+			break;
+		}
+	}
+
+	if (found_passing_read) {
+		/* Find a failing read */
+		pr_debug("find_dqs_en_phase: find failing read\n");
+		for (d = d + 1; d <= IO_DQS_EN_DELAY_MAX; d++) {
+			pr_debug("find_dqs_en_phase: testing read d=%u\n", d);
+			scc_mgr_set_dqs_en_delay_all_ranks(grp, d);
+
+			if (!rw_mgr_mem_calibrate_read_test_all_ranks
+				(grp, 1, PASS_ONE_BIT, &bit_chk, 0)) {
+				found_failing_read = 1;
+				break;
+			}
+		}
+	} else {
+		pr_debug("find_dqs_en_phase: failed to calculate dtaps "
+			"per ptap. Fall back on static value\n");
+	}
+
+	/*
+	 * The dynamically calculated dtaps_per_ptap is only valid if we
+	 * found a passing/failing read. If we didn't, it means d hit the max
+	 * (IO_DQS_EN_DELAY_MAX). Otherwise, dtaps_per_ptap retains its
+	 * statically calculated value.
+	 */
+	if (found_passing_read && found_failing_read) {
+		dtaps_per_ptap = d - initial_failing_dtap;
+	}
+
+	ALTERA_ASSERT(dtaps_per_ptap <= IO_DQS_EN_DELAY_MAX);
+	IOWR_32DIRECT(REG_FILE_DTAPS_PER_PTAP, 0, dtaps_per_ptap);
+
+	pr_debug("find_dqs_en_phase: dtaps_per_ptap=%u - %u = %u\n", d,
+		initial_failing_dtap, dtaps_per_ptap);
+#endif
+
+	/* ******************************************** */
+	/* * step 6:  Find the centre of the window   * */
+
+	work_mid = (work_bgn + work_end) / 2;
+	tmp_delay = 0;
+
+	pr_debug("work_bgn=%d work_end=%d work_mid=%d\n", work_bgn,
+		work_end, work_mid);
+	/* Get the middle delay to be less than a VFIFO delay */
+	for (p = 0; p <= IO_DQS_EN_PHASE_MAX;
+		p++, tmp_delay += IO_DELAY_PER_OPA_TAP)
+		;
+	pr_debug("vfifo ptap delay %d\n", tmp_delay);
+	while (work_mid > tmp_delay)
+		work_mid -= tmp_delay;
+	pr_debug("new work_mid %d\n", work_mid);
+	tmp_delay = 0;
+	for (p = 0; p <= IO_DQS_EN_PHASE_MAX && tmp_delay < work_mid;
+		p++, tmp_delay += IO_DELAY_PER_OPA_TAP)
+		;
+	tmp_delay -= IO_DELAY_PER_OPA_TAP;
+	pr_debug("new p %d, tmp_delay=%d\n", p-1, tmp_delay);
+	for (d = 0; d <= IO_DQS_EN_DELAY_MAX && tmp_delay < work_mid; d++,
+		tmp_delay += IO_DELAY_PER_DQS_EN_DCHAIN_TAP)
+		;
+	pr_debug("new d %d, tmp_delay=%d\n", d, tmp_delay);
+
+	scc_mgr_set_dqs_en_phase_all_ranks(grp, p-1);
+	scc_mgr_set_dqs_en_delay_all_ranks(grp, d);
+
+	/* push vfifo until we can successfully calibrate. We can do this
+	because the largest possible margin in 1 VFIFO cycle */
+
+	for (i = 0; i < VFIFO_SIZE; i++) {
+		pr_debug("find_dqs_en_phase: center: vfifo=%u\n", vfifo_idx);
+		if (rw_mgr_mem_calibrate_read_test_all_ranks (grp, 1,
+			PASS_ONE_BIT, &bit_chk, 0)) {
+			break;
+		}
+
+		/* fiddle with FIFO */
+		rw_mgr_incr_vfifo(grp, &v);
+	}
+
+	if (i >= VFIFO_SIZE) {
+		pr_debug("find_dqs_en_phase: center: failed\n");
+		return 0;
+	}
+	pr_debug("find_dqs_en_phase: center found: vfifo=%u ptap=%u "
+		"dtap=%u\n", vfifo_idx, p-1, d);
+	return 1;
+}
+
+/* Try rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase across different
+dq_in_delay values */
+static uint32_t
+rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase_sweep_dq_in_delay(uint32_t write_group, uint32_t read_group, uint32_t test_bgn)
+{
+#if STRATIXV || ARRIAV || CYCLONEV || ARRIAVGZ
+	uint32_t found;
+	uint32_t i;
+	uint32_t p;
+	uint32_t d;
+	uint32_t r;
+	const uint32_t delay_step = IO_IO_IN_DELAY_MAX / (RW_MGR_MEM_DQ_PER_READ_DQS - 1);
+	/* we start at zero, so have one less dq to devide among */
+
+	/* try different dq_in_delays since the dq path is shorter than dqs */
+
+	for (r = 0; r < RW_MGR_MEM_NUMBER_OF_RANKS; r += NUM_RANKS_PER_SHADOW_REG) {
+		for (i = 0, p = test_bgn, d = 0; i < RW_MGR_MEM_DQ_PER_READ_DQS;
+			i++, p++, d += delay_step) {
+			pr_debug("rw_mgr_mem_calibrate_vfifo_find_dqs_"
+				"en_phase_sweep_dq_in_delay: g=%u/%u "
+				"r=%u, i=%u p=%u d=%u\n",
+				write_group, read_group, r, i, p, d);
+			scc_mgr_set_dq_in_delay(write_group, p, d);
+			scc_mgr_load_dq (p);
+		}
+		IOWR_32DIRECT(SCC_MGR_UPD, 0, 0);
+	}
+
+	found = rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(read_group);
+
+	pr_debug("rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase_sweep_dq"
+		"_in_delay: g=%u/%u found=%u; Reseting delay chain to zero\n",
+		write_group, read_group, found);
+
+	for (r = 0; r < RW_MGR_MEM_NUMBER_OF_RANKS;
+		r += NUM_RANKS_PER_SHADOW_REG) {
+		for (i = 0, p = test_bgn; i < RW_MGR_MEM_DQ_PER_READ_DQS;
+			i++, p++) {
+			scc_mgr_set_dq_in_delay(write_group, p, 0);
+			scc_mgr_load_dq (p);
+		}
+		IOWR_32DIRECT(SCC_MGR_UPD, 0, 0);
+	}
+
+	return found;
+#else
+	return rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase(read_group);
+#endif
+}
+
+/* per-bit deskew DQ and center */
+static uint32_t rw_mgr_mem_calibrate_vfifo_center (uint32_t rank_bgn,
+	uint32_t write_group, uint32_t read_group, uint32_t test_bgn,
+	uint32_t use_read_test, uint32_t update_fom)
+{
+	uint32_t i, p, d, min_index;
+	/* Store these as signed since there are comparisons with
+	signed numbers */
+	t_btfld bit_chk;
+	t_btfld sticky_bit_chk;
+	int32_t left_edge[RW_MGR_MEM_DQ_PER_READ_DQS];
+	int32_t right_edge[RW_MGR_MEM_DQ_PER_READ_DQS];
+	int32_t final_dq[RW_MGR_MEM_DQ_PER_READ_DQS];
+	int32_t mid;
+	int32_t orig_mid_min, mid_min;
+	int32_t new_dqs, start_dqs, start_dqs_en, shift_dq, final_dqs,
+		final_dqs_en;
+	int32_t dq_margin, dqs_margin;
+	uint32_t stop;
+
+	ALTERA_ASSERT(read_group < RW_MGR_MEM_IF_READ_DQS_WIDTH);
+	ALTERA_ASSERT(write_group < RW_MGR_MEM_IF_WRITE_DQS_WIDTH);
+
+	start_dqs = READ_SCC_DQS_IN_DELAY(read_group);
+	if (IO_SHIFT_DQS_EN_WHEN_SHIFT_DQS) {
+		start_dqs_en = READ_SCC_DQS_EN_DELAY(read_group);
+	}
+
+	/* per-bit deskew */
+
+	/* set the left and right edge of each bit to an illegal value */
+	/* use (IO_IO_IN_DELAY_MAX + 1) as an illegal value */
+	sticky_bit_chk = 0;
+	for (i = 0; i < RW_MGR_MEM_DQ_PER_READ_DQS; i++) {
+		left_edge[i]  = IO_IO_IN_DELAY_MAX + 1;
+		right_edge[i] = IO_IO_IN_DELAY_MAX + 1;
+	}
+
+	/* Search for the left edge of the window for each bit */
+	for (d = 0; d <= IO_IO_IN_DELAY_MAX; d++) {
+		scc_mgr_apply_group_dq_in_delay (write_group, test_bgn, d);
+
+		IOWR_32DIRECT(SCC_MGR_UPD, 0, 0);
+
+		/* Stop searching when the read test doesn't pass AND when
+		we've seen a passing read on every bit */
+		if (use_read_test) {
+			stop = !rw_mgr_mem_calibrate_read_test (rank_bgn,
+				read_group, NUM_READ_PB_TESTS, PASS_ONE_BIT,
+				&bit_chk, 0, 0);
+		} else {
+			rw_mgr_mem_calibrate_write_test (rank_bgn, write_group,
+				0, PASS_ONE_BIT, &bit_chk, 0);
+			bit_chk = bit_chk >> (RW_MGR_MEM_DQ_PER_READ_DQS *
+				(read_group - (write_group * RW_MGR_NUM_DQS_PER_WRITE_GROUP)));
+			stop = (bit_chk == 0);
+		}
+		sticky_bit_chk = sticky_bit_chk | bit_chk;
+		stop = stop && (sticky_bit_chk == param->read_correct_mask);
+		pr_debug("vfifo_center(left): dtap=%u => " BTFLD_FMT " == "
+			BTFLD_FMT " && %u\n", d, sticky_bit_chk,
+			param->read_correct_mask, stop);
+
+		if (stop == 1)
+			break;
+		for (i = 0; i < RW_MGR_MEM_DQ_PER_READ_DQS; i++) {
+			if (bit_chk & 1) {
+				/* Remember a passing test as the
+				left_edge */
+				left_edge[i] = d;
+			} else {
+				/* If a left edge has not been seen yet,
+				then a future passing test will mark
+				this edge as the right edge */
+				if (left_edge[i] ==
+					IO_IO_IN_DELAY_MAX + 1) {
+					right_edge[i] = -(d + 1);
+				}
+			}
+			pr_debug("vfifo_center[l,d=%u]: "
+				"bit_chk_test=%d left_edge[%u]: "
+				"%d right_edge[%u]: %d\n",
+				d, (int)(bit_chk & 1), i, left_edge[i],
+				i, right_edge[i]);
+			bit_chk = bit_chk >> 1;
+		}
+	}
+
+	/* Reset DQ delay chains to 0 */
+	scc_mgr_apply_group_dq_in_delay (write_group, test_bgn, 0);
+	sticky_bit_chk = 0;
+	for (i = RW_MGR_MEM_DQ_PER_READ_DQS - 1;; i--) {
+
+		pr_debug("vfifo_center: left_edge[%u]: %d right_edge[%u]: "
+			"%d\n", i, left_edge[i], i, right_edge[i]);
+
+		/* Check for cases where we haven't found the left edge,
+		which makes our assignment of the the right edge invalid.
+		Reset it to the illegal value. */
+		if ((left_edge[i] == IO_IO_IN_DELAY_MAX + 1) && (
+			right_edge[i] != IO_IO_IN_DELAY_MAX + 1)) {
+			right_edge[i] = IO_IO_IN_DELAY_MAX + 1;
+			pr_debug("vfifo_center: reset right_edge[%u]: %d\n",
+				i, right_edge[i]);
+		}
+
+		/* Reset sticky bit (except for bits where we have seen
+		both the left and right edge) */
+		sticky_bit_chk = sticky_bit_chk << 1;
+		if ((left_edge[i] != IO_IO_IN_DELAY_MAX + 1) &&
+			(right_edge[i] != IO_IO_IN_DELAY_MAX + 1)) {
+			sticky_bit_chk = sticky_bit_chk | 1;
+		}
+
+		if (i == 0)
+			break;
+	}
+
+	/* Search for the right edge of the window for each bit */
+	for (d = 0; d <= IO_DQS_IN_DELAY_MAX - start_dqs; d++) {
+		scc_mgr_set_dqs_bus_in_delay(read_group, d + start_dqs);
+		if (IO_SHIFT_DQS_EN_WHEN_SHIFT_DQS) {
+			uint32_t delay = d + start_dqs_en;
+			if (delay > IO_DQS_EN_DELAY_MAX) {
+				delay = IO_DQS_EN_DELAY_MAX;
+			}
+			scc_mgr_set_dqs_en_delay(read_group, delay);
+		}
+		scc_mgr_load_dqs (read_group);
+
+		IOWR_32DIRECT(SCC_MGR_UPD, 0, 0);
+
+		/* Stop searching when the read test doesn't pass AND when
+		we've seen a passing read on every bit */
+		if (use_read_test) {
+			stop = !rw_mgr_mem_calibrate_read_test (rank_bgn,
+				read_group, NUM_READ_PB_TESTS, PASS_ONE_BIT,
+				&bit_chk, 0, 0);
+		} else {
+			rw_mgr_mem_calibrate_write_test (rank_bgn, write_group,
+				0, PASS_ONE_BIT, &bit_chk, 0);
+			bit_chk = bit_chk >> (RW_MGR_MEM_DQ_PER_READ_DQS *
+				(read_group - (write_group * RW_MGR_NUM_DQS_PER_WRITE_GROUP)));
+			stop = (bit_chk == 0);
+		}
+		sticky_bit_chk = sticky_bit_chk | bit_chk;
+		stop = stop && (sticky_bit_chk == param->read_correct_mask);
+
+		pr_debug("vfifo_center(right): dtap=%u => " BTFLD_FMT " == "
+			BTFLD_FMT " && %u\n", d, sticky_bit_chk,
+			param->read_correct_mask, stop);
+
+		if (stop == 1) {
+			break;
+		} else {
+			for (i = 0; i < RW_MGR_MEM_DQ_PER_READ_DQS; i++) {
+				if (bit_chk & 1) {
+					/* Remember a passing test as
+					the right_edge */
+					right_edge[i] = d;
+				} else {
+					if (d != 0) {
+						/* If a right edge has not been
+						seen yet, then a future passing
+						test will mark this edge as the
+						left edge */
+						if (right_edge[i] ==
+						IO_IO_IN_DELAY_MAX + 1) {
+							left_edge[i] = -(d + 1);
+						}
+					} else {
+						/* d = 0 failed, but it passed
+						when testing the left edge,
+						so it must be marginal,
+						set it to -1 */
+						if (right_edge[i] ==
+							IO_IO_IN_DELAY_MAX + 1
+							&& left_edge[i] !=
+							IO_IO_IN_DELAY_MAX
+							+ 1) {
+							right_edge[i] = -1;
+						}
+						/* If a right edge has not been
+						seen yet, then a future passing
+						test will mark this edge as the
+						left edge */
+						else if (right_edge[i] ==
+							IO_IO_IN_DELAY_MAX +
+							1) {
+							left_edge[i] = -(d + 1);
+						}
+
+					}
+				}
+
+				pr_debug("vfifo_center[r,d=%u]: "
+					"bit_chk_test=%d left_edge[%u]: %d "
+					"right_edge[%u]: %d\n",
+					d, (int)(bit_chk & 1), i, left_edge[i],
+					i, right_edge[i]);
+				bit_chk = bit_chk >> 1;
+			}
+		}
+	}
+
+	/* Store all observed margins */
+
+	/* Check that all bits have a window */
+	for (i = 0; i < RW_MGR_MEM_DQ_PER_READ_DQS; i++) {
+		pr_debug("vfifo_center: left_edge[%u]: %d right_edge[%u]:"
+			" %d\n", i, left_edge[i], i, right_edge[i]);
+		if ((left_edge[i] == IO_IO_IN_DELAY_MAX + 1) || (right_edge[i]
+			== IO_IO_IN_DELAY_MAX + 1)) {
+
+			/* Restore delay chain settings before letting the loop
+			in rw_mgr_mem_calibrate_vfifo to retry different
+			dqs/ck relationships */
+			scc_mgr_set_dqs_bus_in_delay(read_group, start_dqs);
+			if (IO_SHIFT_DQS_EN_WHEN_SHIFT_DQS) {
+				scc_mgr_set_dqs_en_delay(read_group,
+					start_dqs_en);
+			}
+			scc_mgr_load_dqs (read_group);
+			IOWR_32DIRECT(SCC_MGR_UPD, 0, 0);
+
+			pr_debug("vfifo_center: failed to find edge [%u]: "
+				"%d %d\n", i, left_edge[i], right_edge[i]);
+			return 0;
+		}
+	}
+
+	/* Find middle of window for each DQ bit */
+	mid_min = left_edge[0] - right_edge[0];
+	min_index = 0;
+	for (i = 1; i < RW_MGR_MEM_DQ_PER_READ_DQS; i++) {
+		mid = left_edge[i] - right_edge[i];
+		if (mid < mid_min) {
+			mid_min = mid;
+			min_index = i;
+		}
+	}
+
+	/*  -mid_min/2 represents the amount that we need to move DQS.
+	If mid_min is odd and positive we'll need to add one to
+	make sure the rounding in further calculations is correct
+	(always bias to the right), so just add 1 for all positive values */
+	if (mid_min > 0) {
+		mid_min++;
+	}
+	mid_min = mid_min / 2;
+
+	pr_debug("vfifo_center: mid_min=%d (index=%u)\n", mid_min, min_index);
+
+	/* Determine the amount we can change DQS (which is -mid_min) */
+	orig_mid_min = mid_min;
+	new_dqs = start_dqs;
+	mid_min = 0;
+
+	pr_debug("vfifo_center: start_dqs=%d start_dqs_en=%d "
+		"new_dqs=%d mid_min=%d\n",
+		start_dqs, IO_SHIFT_DQS_EN_WHEN_SHIFT_DQS ? start_dqs_en : -1,
+		new_dqs, mid_min);
+
+	/* Initialize data for export structures */
+	dqs_margin = IO_IO_IN_DELAY_MAX + 1;
+	dq_margin  = IO_IO_IN_DELAY_MAX + 1;
+
+	/* add delay to bring centre of all DQ windows to the same "level" */
+	for (i = 0, p = test_bgn; i < RW_MGR_MEM_DQ_PER_READ_DQS; i++, p++) {
+		/* Use values before divide by 2 to reduce round off error */
+		shift_dq = (left_edge[i] - right_edge[i] -
+			(left_edge[min_index] - right_edge[min_index]))/2  +
+			(orig_mid_min - mid_min);
+
+		pr_debug("vfifo_center: before: shift_dq[%u]=%d\n", i,
+			shift_dq);
+
+		if (shift_dq + (int32_t)READ_SCC_DQ_IN_DELAY(p) >
+			(int32_t)IO_IO_IN_DELAY_MAX) {
+			shift_dq = (int32_t)IO_IO_IN_DELAY_MAX -
+				READ_SCC_DQ_IN_DELAY(i);
+		} else if (shift_dq + (int32_t)READ_SCC_DQ_IN_DELAY(p) < 0) {
+			shift_dq = -(int32_t)READ_SCC_DQ_IN_DELAY(p);
+		}
+		pr_debug("vfifo_center: after: shift_dq[%u]=%d\n", i,
+			shift_dq);
+		final_dq[i] = READ_SCC_DQ_IN_DELAY(p) + shift_dq;
+		scc_mgr_set_dq_in_delay(write_group, p, final_dq[i]);
+		scc_mgr_load_dq (p);
+
+		pr_debug("vfifo_center: margin[%u]=[%d,%d]\n", i,
+			left_edge[i] - shift_dq + (-mid_min),
+			right_edge[i] + shift_dq - (-mid_min));
+		/* To determine values for export structures */
+		if (left_edge[i] - shift_dq + (-mid_min) < dq_margin) {
+			dq_margin = left_edge[i] - shift_dq + (-mid_min);
+		}
+		if (right_edge[i] + shift_dq - (-mid_min) < dqs_margin) {
+			dqs_margin = right_edge[i] + shift_dq - (-mid_min);
+		}
+	}
+
+#if ENABLE_DQS_IN_CENTERING
+	final_dqs = new_dqs;
+	if (IO_SHIFT_DQS_EN_WHEN_SHIFT_DQS) {
+		final_dqs_en = start_dqs_en - mid_min;
+	}
+#else
+	final_dqs = start_dqs;
+	if (IO_SHIFT_DQS_EN_WHEN_SHIFT_DQS) {
+		final_dqs_en = start_dqs_en;
+	}
+#endif
+
+	/* Move DQS-en */
+	if (IO_SHIFT_DQS_EN_WHEN_SHIFT_DQS) {
+		scc_mgr_set_dqs_en_delay(read_group, final_dqs_en);
+		scc_mgr_load_dqs (read_group);
+	}
+
+	/* Move DQS */
+	scc_mgr_set_dqs_bus_in_delay(read_group, final_dqs);
+	scc_mgr_load_dqs (read_group);
+
+	if (update_fom) {
+		/* Export values */
+		gbl->fom_in += (dq_margin + dqs_margin) / RW_MGR_NUM_DQS_PER_WRITE_GROUP;
+	}
+
+	pr_debug("vfifo_center: dq_margin=%d dqs_margin=%d\n",
+		dq_margin, dqs_margin);
+
+	/* Do not remove this line as it makes sure all of our decisions
+	have been applied */
+	IOWR_32DIRECT(SCC_MGR_UPD, 0, 0);
+	return (dq_margin >= 0) && (dqs_margin >= 0);
+}
+
+/*
+ * calibrate the read valid prediction FIFO.
+ *
+ *  - read valid prediction will consist of finding a good DQS enable phase,
+ * DQS enable delay, DQS input phase, and DQS input delay.
+ *  - we also do a per-bit deskew on the DQ lines.
+ */
+
+
+
+/* VFIFO Calibration -- Full Calibration */
+static uint32_t rw_mgr_mem_calibrate_vfifo (uint32_t read_group, uint32_t test_bgn)
+{
+	uint32_t p, d, rank_bgn;
+	uint32_t dtaps_per_ptap;
+	uint32_t tmp_delay;
+	t_btfld bit_chk;
+	uint32_t grp_calibrated;
+	uint32_t write_group, write_test_bgn;
+
+	/* update info for sims */
+
+	reg_file_set_stage(CAL_STAGE_VFIFO);
+
+	write_group = read_group;
+	write_test_bgn = test_bgn;
+
+	/* USER Determine number of delay taps for each phase tap */
+	dtaps_per_ptap = 0;
+	tmp_delay = 0;
+
+	while (tmp_delay < IO_DELAY_PER_OPA_TAP) {
+		dtaps_per_ptap++;
+		tmp_delay += IO_DELAY_PER_DQS_EN_DCHAIN_TAP;
+	}
+	dtaps_per_ptap--;
+	tmp_delay = 0;
+
+	/* update info for sims */
+
+	reg_file_set_group(read_group);
+
+	grp_calibrated = 0;
+
+	reg_file_set_sub_stage(CAL_SUBSTAGE_GUARANTEED_READ);
+
+	for (d = 0; d <= dtaps_per_ptap && grp_calibrated == 0; d += 2) {
+
+		/* In RLDRAMX we may be messing the delay of pins in
+		the same write group but outside of the current read
+		group, but that's ok because we haven't calibrated the
+		output side yet. */
+		if (d > 0) {
+			scc_mgr_apply_group_all_out_delay_add_all_ranks
+			(write_group, write_test_bgn, d);
+		}
+
+		for (p = 0; p <= IO_DQDQS_OUT_PHASE_MAX && grp_calibrated == 0; p++) {
+			/* set a particular dqdqs phase */
+			scc_mgr_set_dqdqs_output_phase_all_ranks(
+					read_group, p);
+
+			/* Previous iteration may have failed as a result of
+			ck/dqs or ck/dk violation, in which case the device may
+			require special recovery. */
+			if (d != 0 || p != 0)
+				recover_mem_device_after_ck_dqs_violation();
+
+			pr_debug("calibrate_vfifo: g=%u p=%u d=%u\n",
+				read_group, p, d);
+
+			/* Load up the patterns used by read calibration
+			using current DQDQS phase */
+
+			rw_mgr_mem_calibrate_read_load_patterns_all_ranks ();
+
+			if (!(gbl->phy_debug_mode_flags &
+				PHY_DEBUG_DISABLE_GUARANTEED_READ)) {
+			if (!rw_mgr_mem_calibrate_read_test_patterns_all_ranks
+				(read_group, 1, &bit_chk)) {
+					pr_debug("Guaranteed read test failed:"
+						" g=%u p=%u d=%u\n",
+						read_group, p, d);
+					break;
+				}
+			}
+/* case:56390 */
+			grp_calibrated = 1;
+
+			if (rw_mgr_mem_calibrate_vfifo_find_dqs_en_phase_sweep_dq_in_delay(write_group, read_group, test_bgn)) {
+				/* USER Read per-bit deskew can be done on a
+				per shadow register basis */
+				for (rank_bgn = 0;
+						rank_bgn < RW_MGR_MEM_NUMBER_OF_RANKS;
+						rank_bgn += NUM_RANKS_PER_SHADOW_REG) {
+					/* Determine if this set of ranks
+					should be skipped entirely */
+					/* If doing read after write
+					calibration, do not update FOM
+					now - do it then */
+					if (!rw_mgr_mem_calibrate_vfifo_center(rank_bgn, write_group, read_group, test_bgn, 1, 0)) {
+						grp_calibrated = 0;
+					}
+				}
+			} else {
+				grp_calibrated = 0;
+			}
+		}
+	}
+
+	/* Reset the delay chains back to zero if they have moved > 1
+	(check for > 1 because loop will increase d even when pass in
+	first case) */
+	if (d > 2)
+		scc_mgr_zero_group(write_group, write_test_bgn, 1);
+
+	return 1;
+}
+
+/* VFIFO Calibration -- Read Deskew Calibration after write deskew */
+static uint32_t rw_mgr_mem_calibrate_vfifo_end (uint32_t read_group, uint32_t test_bgn)
+{
+	uint32_t rank_bgn;
+	uint32_t grp_calibrated;
+	uint32_t write_group;
+
+	/* update info for sims */
+
+	reg_file_set_stage(CAL_STAGE_VFIFO_AFTER_WRITES);
+	reg_file_set_sub_stage(CAL_SUBSTAGE_VFIFO_CENTER);
+
+	write_group = read_group;
+
+	/* update info for sims */
+	reg_file_set_group(read_group);
+
+	grp_calibrated = 1;
+
+	/* Read per-bit deskew can be done on a per shadow register basis */
+	for (rank_bgn = 0; rank_bgn < RW_MGR_MEM_NUMBER_OF_RANKS;
+		rank_bgn += NUM_RANKS_PER_SHADOW_REG) {
+
+		/* This is the last calibration round, update FOM here */
+		if (!rw_mgr_mem_calibrate_vfifo_center (rank_bgn,
+			write_group, read_group, test_bgn, 0, 1))
+				grp_calibrated = 0;
+	}
+
+	if (grp_calibrated == 0)
+		return 0;
+
+	return 1;
+}
+
+
+/* Calibrate LFIFO to find smallest read latency */
+
+static uint32_t rw_mgr_mem_calibrate_lfifo (void)
+{
+	uint32_t found_one;
+	t_btfld bit_chk;
+
+	/* update info for sims */
+
+	reg_file_set_stage(CAL_STAGE_LFIFO);
+	reg_file_set_sub_stage(CAL_SUBSTAGE_READ_LATENCY);
+
+	/* Load up the patterns used by read calibration for all ranks */
+
+	rw_mgr_mem_calibrate_read_load_patterns_all_ranks ();
+
+	found_one = 0;
+
+	do {
+		IOWR_32DIRECT(PHY_MGR_PHY_RLAT, 0, gbl->curr_read_lat);
+		pr_debug("lfifo: read_lat=%u\n", gbl->curr_read_lat);
+
+		if (!rw_mgr_mem_calibrate_read_test_all_ranks (0,
+			NUM_READ_TESTS, PASS_ALL_BITS, &bit_chk, 1)) {
+			break;
+		}
+
+		found_one = 1;
+
+		/* reduce read latency and see if things are working */
+		/* correctly */
+
+		gbl->curr_read_lat--;
+	} while (gbl->curr_read_lat > 0);
+
+	/* reset the fifos to get pointers to known state */
+
+	IOWR_32DIRECT(PHY_MGR_CMD_FIFO_RESET, 0, 0);
+
+	if (found_one) {
+		/* add a fudge factor to the read latency that was determined */
+		gbl->curr_read_lat += 2;
+		IOWR_32DIRECT(PHY_MGR_PHY_RLAT, 0, gbl->curr_read_lat);
+		pr_debug("lfifo: success: using read_lat=%u\n",
+			gbl->curr_read_lat);
+
+		return 1;
+	} else {
+		pr_debug("lfifo: failed at initial read_lat=%u\n",
+			gbl->curr_read_lat);
+
+		return 0;
+	}
+}
+
+/*
+ * issue write test command.
+ * two variants are provided. one that just tests a write pattern and
+ * another that tests datamask functionality.
+ */
+
+static void rw_mgr_mem_calibrate_write_test_issue (uint32_t group, uint32_t test_dm)
+{
+	uint32_t mcc_instruction;
+	uint32_t quick_write_mode = (((STATIC_CALIB_STEPS) & CALIB_SKIP_WRITES)
+		&& ENABLE_SUPER_QUICK_CALIBRATION) || BFM_MODE;
+	uint32_t rw_wl_nop_cycles;
+
+	/*
+	 * Set counter and jump addresses for the right
+	 * number of NOP cycles.
+	 * The number of supported NOP cycles can range from -1 to infinity
+	 * Three different cases are handled:
+	 *
+	 * 1. For a number of NOP cycles greater than 0, the RW Mgr looping
+	 *    mechanism will be used to insert the right number of NOPs
+	 *
+	 * 2. For a number of NOP cycles equals to 0, the micro-instruction
+	 *    issuing the write command will jump straight to the
+	 *    micro-instruction that turns on DQS (for DDRx), or outputs write
+	 *    data (for RLD), skipping
+	 *    the NOP micro-instruction all together
+	 *
+	 * 3. A number of NOP cycles equal to -1 indicates that DQS must be
+	 *    turned on in the same micro-instruction that issues the write
+	 *    command. Then we need
+	 *    to directly jump to the micro-instruction that sends out the data
+	 *
+	 * NOTE: Implementing this mechanism uses 2 RW Mgr jump-counters
+	 *       (2 and 3). One jump-counter (0) is used to perform multiple
+	 *       write-read operations.
+	 *       one counter left to issue this command in "multiple-group" mode
+	 */
+
+#if MULTIPLE_AFI_WLAT
+	rw_wl_nop_cycles = gbl->rw_wl_nop_cycles_per_group[group];
+#else
+	rw_wl_nop_cycles = gbl->rw_wl_nop_cycles;
+#endif
+
+	if (rw_wl_nop_cycles == -1) {
+		/* CNTR 2 - We want to execute the special write operation that
+		turns on DQS right away and then skip directly to the
+		instruction that sends out the data. We set the counter to a
+		large number so that the jump is always taken */
+		IOWR_32DIRECT(RW_MGR_LOAD_CNTR_2, 0, 0xFF);
+
+		/* CNTR 3 - Not used */
+		if (test_dm) {
+			mcc_instruction = __RW_MGR_LFSR_WR_RD_DM_BANK_0_WL_1;
+			IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_2, 0,
+				__RW_MGR_LFSR_WR_RD_DM_BANK_0_DATA);
+			IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_3, 0,
+				__RW_MGR_LFSR_WR_RD_DM_BANK_0_NOP);
+		} else {
+			mcc_instruction = __RW_MGR_LFSR_WR_RD_BANK_0_WL_1;
+			IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_2, 0,
+				__RW_MGR_LFSR_WR_RD_BANK_0_DATA);
+			IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_3, 0,
+				__RW_MGR_LFSR_WR_RD_BANK_0_NOP);
+		}
+	} else if (rw_wl_nop_cycles == 0) {
+		/* CNTR 2 - We want to skip the NOP operation and go straight to
+		the DQS enable instruction. We set the counter to a large number
+		so that the jump is always taken */
+		IOWR_32DIRECT(RW_MGR_LOAD_CNTR_2, 0, 0xFF);
+
+		/* CNTR 3 - Not used */
+		if (test_dm) {
+			mcc_instruction = __RW_MGR_LFSR_WR_RD_DM_BANK_0;
+			IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_2, 0,
+				__RW_MGR_LFSR_WR_RD_DM_BANK_0_DQS);
+		} else {
+			mcc_instruction = __RW_MGR_LFSR_WR_RD_BANK_0;
+			IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_2, 0,
+				__RW_MGR_LFSR_WR_RD_BANK_0_DQS);
+		}
+	} else {
+		/* CNTR 2 - In this case we want to execute the next instruction
+		and NOT take the jump. So we set the counter to 0. The jump
+		address doesn't count */
+		IOWR_32DIRECT(RW_MGR_LOAD_CNTR_2, 0, 0x0);
+		IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_2, 0, 0x0);
+
+		/* CNTR 3 - Set the nop counter to the number of cycles we
+		need to loop for, minus 1 */
+		IOWR_32DIRECT(RW_MGR_LOAD_CNTR_3, 0, rw_wl_nop_cycles - 1);
+		if (test_dm) {
+			mcc_instruction = __RW_MGR_LFSR_WR_RD_DM_BANK_0;
+			IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_3, 0,
+				__RW_MGR_LFSR_WR_RD_DM_BANK_0_NOP);
+		} else {
+			mcc_instruction = __RW_MGR_LFSR_WR_RD_BANK_0;
+			IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_3, 0,
+				__RW_MGR_LFSR_WR_RD_BANK_0_NOP);
+		}
+	}
+
+	IOWR_32DIRECT(RW_MGR_RESET_READ_DATAPATH, 0, 0);
+
+	if (quick_write_mode) {
+		IOWR_32DIRECT(RW_MGR_LOAD_CNTR_0, 0, 0x08);
+	} else {
+		IOWR_32DIRECT(RW_MGR_LOAD_CNTR_0, 0, 0x40);
+	}
+	IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_0, 0, mcc_instruction);
+
+	/* CNTR 1 - This is used to ensure enough time elapses
+	for read data to come back. */
+	IOWR_32DIRECT(RW_MGR_LOAD_CNTR_1, 0, 0x30);
+
+	if (test_dm) {
+		IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_1, 0,
+			__RW_MGR_LFSR_WR_RD_DM_BANK_0_WAIT);
+	} else {
+		IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_1, 0,
+			__RW_MGR_LFSR_WR_RD_BANK_0_WAIT);
+	}
+
+	IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, (group << 2), mcc_instruction);
+}
+
+/* Test writes, can check for a single bit pass or multiple bit pass */
+
+static uint32_t rw_mgr_mem_calibrate_write_test (uint32_t rank_bgn,
+		uint32_t write_group, uint32_t use_dm, uint32_t all_correct,
+		t_btfld *bit_chk, uint32_t all_ranks)
+{
+	uint32_t r;
+	t_btfld correct_mask_vg;
+	t_btfld tmp_bit_chk;
+	uint32_t vg;
+	uint32_t rank_end = all_ranks ? RW_MGR_MEM_NUMBER_OF_RANKS :
+		(rank_bgn + NUM_RANKS_PER_SHADOW_REG);
+
+	*bit_chk = param->write_correct_mask;
+	correct_mask_vg = param->write_correct_mask_vg;
+
+	for (r = rank_bgn; r < rank_end; r++) {
+		/* set rank */
+		set_rank_and_odt_mask(r, RW_MGR_ODT_MODE_READ_WRITE);
+
+		tmp_bit_chk = 0;
+		for (vg = RW_MGR_MEM_VIRTUAL_GROUPS_PER_WRITE_DQS - 1; ; vg--) {
+
+			/* reset the fifos to get pointers to known state */
+			IOWR_32DIRECT(PHY_MGR_CMD_FIFO_RESET, 0, 0);
+
+			tmp_bit_chk = tmp_bit_chk <<
+				(RW_MGR_MEM_DQ_PER_WRITE_DQS /
+				RW_MGR_MEM_VIRTUAL_GROUPS_PER_WRITE_DQS);
+			rw_mgr_mem_calibrate_write_test_issue (write_group *
+				RW_MGR_MEM_VIRTUAL_GROUPS_PER_WRITE_DQS + vg,
+				use_dm);
+
+			tmp_bit_chk = tmp_bit_chk | (correct_mask_vg &
+				~(IORD_32DIRECT(BASE_RW_MGR, 0)));
+			pr_debug("write_test(%u,%u,%u) :[%u,%u] "
+				BTFLD_FMT " & ~%x => " BTFLD_FMT " => "
+				BTFLD_FMT, write_group, use_dm, all_correct,
+				r, vg, correct_mask_vg,
+				IORD_32DIRECT(BASE_RW_MGR, 0), correct_mask_vg
+				& ~IORD_32DIRECT(BASE_RW_MGR, 0),
+				tmp_bit_chk);
+
+			if (vg == 0)
+				break;
+		}
+		*bit_chk &= tmp_bit_chk;
+	}
+
+	set_rank_and_odt_mask(0, RW_MGR_ODT_MODE_OFF);
+
+	if (all_correct)
+		return (*bit_chk == param->write_correct_mask);
+	else
+		return (*bit_chk != 0x00);
+}
+
+static uint32_t rw_mgr_mem_calibrate_write_test_all_ranks
+(uint32_t write_group, uint32_t use_dm, uint32_t all_correct, t_btfld *bit_chk)
+{
+	return rw_mgr_mem_calibrate_write_test (0, write_group,
+		use_dm, all_correct, bit_chk, 1);
+}
+
+/* level the write operations */
+/* Write Levelling -- Full Calibration */
+static uint32_t rw_mgr_mem_calibrate_wlevel (uint32_t g, uint32_t test_bgn)
+{
+	uint32_t p, d;
+	uint32_t num_additional_fr_cycles = 0;
+	t_btfld bit_chk;
+	uint32_t work_bgn, work_end, work_mid;
+	uint32_t tmp_delay;
+	uint32_t found_begin;
+	uint32_t dtaps_per_ptap;
+
+	/* update info for sims */
+
+	reg_file_set_stage(CAL_STAGE_WLEVEL);
+	reg_file_set_sub_stage(CAL_SUBSTAGE_WORKING_DELAY);
+
+	/* maximum phases for the sweep */
+
+#if USE_DQS_TRACKING
+	dtaps_per_ptap = IORD_32DIRECT(REG_FILE_DTAPS_PER_PTAP, 0);
+#else
+	dtaps_per_ptap = 0;
+	tmp_delay = 0;
+	while (tmp_delay < IO_DELAY_PER_OPA_TAP) {
+		dtaps_per_ptap++;
+		tmp_delay += IO_DELAY_PER_DCHAIN_TAP;
+	}
+	dtaps_per_ptap--;
+	tmp_delay = 0;
+#endif
+
+	/* starting phases */
+
+	/* update info for sims */
+
+	reg_file_set_group(g);
+
+	/* starting and end range where writes work */
+
+	scc_mgr_spread_out2_delay_all_ranks (g, test_bgn);
+
+	work_bgn = 0;
+	work_end = 0;
+
+	/* step 1: find first working phase, increment in ptaps, and then in
+	dtaps if ptaps doesn't find a working phase */
+	found_begin = 0;
+	tmp_delay = 0;
+	for (d = 0; d <= dtaps_per_ptap; d++, tmp_delay +=
+		IO_DELAY_PER_DCHAIN_TAP) {
+		scc_mgr_apply_group_all_out_delay_all_ranks (g, test_bgn, d);
+
+		work_bgn = tmp_delay;
+
+		for (p = 0; p <= IO_DQDQS_OUT_PHASE_MAX +
+			num_additional_fr_cycles*IO_DLL_CHAIN_LENGTH;
+			p++, work_bgn += IO_DELAY_PER_OPA_TAP) {
+			pr_debug("wlevel: begin-1: p=%u d=%u\n", p, d);
+			scc_mgr_set_dqdqs_output_phase_all_ranks(g, p);
+
+			if (rw_mgr_mem_calibrate_write_test_all_ranks (g, 0,
+				PASS_ONE_BIT, &bit_chk)) {
+				found_begin = 1;
+				break;
+			}
+		}
+
+		if (found_begin)
+			break;
+	}
+
+	if (p > IO_DQDQS_OUT_PHASE_MAX + num_additional_fr_cycles * IO_DLL_CHAIN_LENGTH)
+		/* fail, cannot find first working phase */
+		return 0;
+
+	pr_debug("wlevel: first valid p=%u d=%u\n", p, d);
+
+	reg_file_set_sub_stage(CAL_SUBSTAGE_LAST_WORKING_DELAY);
+
+	/* If d is 0 then the working window covers a phase tap and we can
+	follow the old procedure otherwise, we've found the beginning, and we
+	need to increment the dtaps until we find the end */
+	if (d == 0) {
+		work_end = work_bgn + IO_DELAY_PER_OPA_TAP;
+
+		/* step 2: if we have room, back off by one and increment
+		in dtaps */
+
+		if (p > 0) {
+			int found = 0;
+			scc_mgr_set_dqdqs_output_phase_all_ranks(g, p - 1);
+
+			tmp_delay = work_bgn - IO_DELAY_PER_OPA_TAP;
+
+			for (d = 0; d <= IO_IO_OUT1_DELAY_MAX &&
+				tmp_delay < work_bgn; d++,
+				tmp_delay += IO_DELAY_PER_DCHAIN_TAP) {
+				pr_debug("wlevel: begin-2: p=%u d=%u\n",
+					(p - 1), d);
+				scc_mgr_apply_group_all_out_delay_all_ranks(g, test_bgn, d);
+
+				if (rw_mgr_mem_calibrate_write_test_all_ranks(g, 0, PASS_ONE_BIT, &bit_chk)) {
+					found = 1;
+					work_bgn = tmp_delay;
+					break;
+				}
+			}
+
+			scc_mgr_apply_group_all_out_delay_all_ranks (g,
+				test_bgn, 0);
+		} else {
+			pr_debug("wlevel: found begin-B: p=%u d=%u ps=%u\n",
+				p, d, work_bgn);
+		}
+
+		/* step 3: go forward from working phase to non working phase,
+		increment in ptaps */
+
+		for (p = p + 1; p <= IO_DQDQS_OUT_PHASE_MAX +
+			num_additional_fr_cycles * IO_DLL_CHAIN_LENGTH; p++,
+			work_end += IO_DELAY_PER_OPA_TAP) {
+			pr_debug("wlevel: end-0: p=%u d=%u\n", p,
+				0);
+			scc_mgr_set_dqdqs_output_phase_all_ranks(g, p);
+
+			if (!rw_mgr_mem_calibrate_write_test_all_ranks (g, 0,
+				PASS_ONE_BIT, &bit_chk)) {
+				break;
+			}
+		}
+
+		/* step 4: back off one from last, increment in dtaps */
+		/* The actual increment is done outside the if/else statement
+		since it is shared with other code */
+
+		p = p - 1;
+
+		scc_mgr_set_dqdqs_output_phase_all_ranks(g, p);
+
+		work_end -= IO_DELAY_PER_OPA_TAP;
+		d = 0;
+
+	} else {
+		/* step 5: Window doesn't cover phase tap, just increment
+		dtaps until failure */
+		/* The actual increment is done outside the if/else statement
+		since it is shared with other code */
+		work_end = work_bgn;
+		pr_debug("wlevel: found begin-C: p=%u d=%u ps=%u\n", p,
+			d, work_bgn);
+	}
+
+	/* The actual increment until failure */
+	for (; d <= IO_IO_OUT1_DELAY_MAX; d++, work_end +=
+		IO_DELAY_PER_DCHAIN_TAP) {
+		pr_debug("wlevel: end: p=%u d=%u\n", p, d);
+		scc_mgr_apply_group_all_out_delay_all_ranks (g, test_bgn, d);
+
+		if (!rw_mgr_mem_calibrate_write_test_all_ranks (g, 0,
+			PASS_ONE_BIT, &bit_chk)) {
+			break;
+		}
+	}
+	scc_mgr_zero_group (g, test_bgn, 1);
+
+	work_end -= IO_DELAY_PER_DCHAIN_TAP;
+
+	if (work_end >= work_bgn) {
+		/* we have a working range */
+	} else {
+		/* nil range */
+		return 0;
+	}
+
+	pr_debug("wlevel: found end: p=%u d=%u; range: [%u,%u]\n", p,
+		d-1, work_bgn, work_end);
+
+	/* center */
+
+	work_mid = (work_bgn + work_end) / 2;
+
+	pr_debug("wlevel: work_mid=%d\n", work_mid);
+
+	tmp_delay = 0;
+
+	for (p = 0; p <= IO_DQDQS_OUT_PHASE_MAX  +
+		num_additional_fr_cycles * IO_DLL_CHAIN_LENGTH &&
+		tmp_delay < work_mid; p++, tmp_delay += IO_DELAY_PER_OPA_TAP)
+		;
+
+	if (tmp_delay > work_mid) {
+		tmp_delay -= IO_DELAY_PER_OPA_TAP;
+		p--;
+	}
+
+	while (p > IO_DQDQS_OUT_PHASE_MAX) {
+		tmp_delay -= IO_DELAY_PER_OPA_TAP;
+		p--;
+	}
+
+	scc_mgr_set_dqdqs_output_phase_all_ranks(g, p);
+
+	pr_debug("wlevel: p=%u tmp_delay=%u left=%u\n", p, tmp_delay,
+		work_mid - tmp_delay);
+
+	for (d = 0; d <= IO_IO_OUT1_DELAY_MAX && tmp_delay < work_mid; d++,
+		tmp_delay += IO_DELAY_PER_DCHAIN_TAP)
+		;
+
+	if (tmp_delay > work_mid) {
+		tmp_delay -= IO_DELAY_PER_DCHAIN_TAP;
+		d--;
+	}
+
+	pr_debug("wlevel: p=%u d=%u tmp_delay=%u left=%u\n", p, d,
+		tmp_delay, work_mid - tmp_delay);
+
+	scc_mgr_apply_group_all_out_delay_add_all_ranks (g, test_bgn, d);
+
+	pr_debug("wlevel: found middle: p=%u d=%u\n", p, d);
+
+	return 1;
+}
+
+/* center all windows. do per-bit-deskew to possibly increase size of
+certain windows */
+
+static uint32_t rw_mgr_mem_calibrate_writes_center (uint32_t rank_bgn,
+	uint32_t write_group, uint32_t test_bgn)
+{
+	uint32_t i, p, min_index;
+	int32_t d;
+	/* Store these as signed since there are comparisons with
+	signed numbers */
+	t_btfld bit_chk;
+	t_btfld sticky_bit_chk;
+	int32_t left_edge[RW_MGR_MEM_DQ_PER_WRITE_DQS];
+	int32_t right_edge[RW_MGR_MEM_DQ_PER_WRITE_DQS];
+	int32_t mid;
+	int32_t mid_min, orig_mid_min;
+	int32_t new_dqs, start_dqs, shift_dq;
+	int32_t dq_margin, dqs_margin, dm_margin;
+	uint32_t stop;
+	int32_t bgn_curr;
+	int32_t end_curr;
+	int32_t bgn_best;
+	int32_t end_best;
+	int32_t win_best;
+
+	ALTERA_ASSERT(write_group < RW_MGR_MEM_IF_WRITE_DQS_WIDTH);
+
+	dm_margin = 0;
+
+	start_dqs = READ_SCC_DQS_IO_OUT1_DELAY();
+
+	/* per-bit deskew */
+
+	/* set the left and right edge of each bit to an illegal value */
+	/* use (IO_IO_OUT1_DELAY_MAX + 1) as an illegal value */
+	sticky_bit_chk = 0;
+	for (i = 0; i < RW_MGR_MEM_DQ_PER_WRITE_DQS; i++) {
+		left_edge[i]  = IO_IO_OUT1_DELAY_MAX + 1;
+		right_edge[i] = IO_IO_OUT1_DELAY_MAX + 1;
+	}
+
+	/* Search for the left edge of the window for each bit */
+	for (d = 0; d <= IO_IO_OUT1_DELAY_MAX; d++) {
+		scc_mgr_apply_group_dq_out1_delay (write_group, test_bgn, d);
+
+		IOWR_32DIRECT(SCC_MGR_UPD, 0, 0);
+
+		/* Stop searching when the read test doesn't pass AND when
+		we've seen a passing read on every bit */
+		stop = !rw_mgr_mem_calibrate_write_test (rank_bgn, write_group,
+			0, PASS_ONE_BIT, &bit_chk, 0);
+		sticky_bit_chk = sticky_bit_chk | bit_chk;
+		stop = stop && (sticky_bit_chk == param->write_correct_mask);
+		pr_debug("write_center(left): dtap=%u => " BTFLD_FMT
+			" == " BTFLD_FMT " && %u [bit_chk=" BTFLD_FMT "]\n",
+			d, sticky_bit_chk, param->write_correct_mask,
+			stop, bit_chk);
+
+		if (stop == 1) {
+			break;
+		} else {
+			for (i = 0; i < RW_MGR_MEM_DQ_PER_WRITE_DQS; i++) {
+				if (bit_chk & 1) {
+					/* Remember a passing test as the
+					left_edge */
+					left_edge[i] = d;
+				} else {
+					/* If a left edge has not been seen yet,
+					then a future passing test will mark
+					this edge as the right edge */
+					if (left_edge[i] ==
+						IO_IO_OUT1_DELAY_MAX + 1) {
+						right_edge[i] = -(d + 1);
+					}
+				}
+				pr_debug("write_center[l,d=%u): "
+					"bit_chk_test=%d left_edge[%u]: %d "
+					"right_edge[%u]: %d\n",
+					d, (int)(bit_chk & 1), i, left_edge[i],
+					i, right_edge[i]);
+				bit_chk = bit_chk >> 1;
+			}
+		}
+	}
+
+	/* Reset DQ delay chains to 0 */
+	scc_mgr_apply_group_dq_out1_delay (write_group, test_bgn, 0);
+	sticky_bit_chk = 0;
+	for (i = RW_MGR_MEM_DQ_PER_WRITE_DQS - 1;; i--) {
+
+		pr_debug("write_center: left_edge[%u]: %d right_edge[%u]: "
+			"%d\n", i, left_edge[i], i, right_edge[i]);
+
+		/* Check for cases where we haven't found the left edge,
+		which makes our assignment of the the right edge invalid.
+		Reset it to the illegal value. */
+		if ((left_edge[i] == IO_IO_OUT1_DELAY_MAX + 1) &&
+			(right_edge[i] != IO_IO_OUT1_DELAY_MAX + 1)) {
+			right_edge[i] = IO_IO_OUT1_DELAY_MAX + 1;
+			pr_debug("write_center: reset right_edge[%u]: %d\n",
+			i, right_edge[i]);
+		}
+
+		/* Reset sticky bit (except for bits where we have
+		seen the left edge) */
+		sticky_bit_chk = sticky_bit_chk << 1;
+		if ((left_edge[i] != IO_IO_OUT1_DELAY_MAX + 1))
+			sticky_bit_chk = sticky_bit_chk | 1;
+
+		if (i == 0)
+			break;
+	}
+
+	/* Search for the right edge of the window for each bit */
+	for (d = 0; d <= IO_IO_OUT1_DELAY_MAX - start_dqs; d++) {
+		scc_mgr_apply_group_dqs_io_and_oct_out1 (write_group,
+			d + start_dqs);
+
+		IOWR_32DIRECT(SCC_MGR_UPD, 0, 0);
+
+		/* Stop searching when the read test doesn't pass AND when
+		we've seen a passing read on every bit */
+		stop = !rw_mgr_mem_calibrate_write_test (rank_bgn, write_group,
+			0, PASS_ONE_BIT, &bit_chk, 0);
+		if (stop) {
+			recover_mem_device_after_ck_dqs_violation();
+		}
+		sticky_bit_chk = sticky_bit_chk | bit_chk;
+		stop = stop && (sticky_bit_chk == param->write_correct_mask);
+
+		pr_debug("write_center (right): dtap=%u => " BTFLD_FMT " == "
+			BTFLD_FMT " && %u\n", d, sticky_bit_chk,
+			param->write_correct_mask, stop);
+
+		if (stop == 1) {
+			if (d == 0) {
+				for (i = 0; i < RW_MGR_MEM_DQ_PER_WRITE_DQS;
+					i++) {
+					/* d = 0 failed, but it passed when
+					testing the left edge, so it must be
+					marginal, set it to -1 */
+					if (right_edge[i] ==
+						IO_IO_OUT1_DELAY_MAX + 1 &&
+						left_edge[i] !=
+						IO_IO_OUT1_DELAY_MAX + 1) {
+						right_edge[i] = -1;
+					}
+				}
+			}
+			break;
+		} else {
+			for (i = 0; i < RW_MGR_MEM_DQ_PER_WRITE_DQS; i++) {
+				if (bit_chk & 1) {
+					/* Remember a passing test as
+					the right_edge */
+					right_edge[i] = d;
+				} else {
+					if (d != 0) {
+						/* If a right edge has not
+						been seen yet, then a future
+						passing test will mark this
+						edge as the left edge */
+						if (right_edge[i] ==
+							IO_IO_OUT1_DELAY_MAX
+							+ 1) {
+							left_edge[i] = -(d + 1);
+						}
+					} else {
+						/* d = 0 failed, but it passed
+						when testing the left edge, so
+						it must be marginal, set it
+						to -1 */
+						if (right_edge[i] ==
+							IO_IO_OUT1_DELAY_MAX +
+							1 && left_edge[i] !=
+							IO_IO_OUT1_DELAY_MAX +
+							1) {
+							right_edge[i] = -1;
+						}
+						/* If a right edge has not been
+						seen yet, then a future passing
+						test will mark this edge as the
+						left edge */
+						else if (right_edge[i] ==
+							IO_IO_OUT1_DELAY_MAX +
+						1) {
+							left_edge[i] = -(d + 1);
+						}
+					}
+				}
+				pr_debug("write_center[r,d=%u): "
+					"bit_chk_test=%d left_edge[%u]: %d "
+					"right_edge[%u]: %d\n",
+					d, (int)(bit_chk & 1), i, left_edge[i],
+					i, right_edge[i]);
+				bit_chk = bit_chk >> 1;
+			}
+		}
+	}
+
+	/* Check that all bits have a window */
+	for (i = 0; i < RW_MGR_MEM_DQ_PER_WRITE_DQS; i++) {
+		pr_debug("write_center: left_edge[%u]: %d right_edge[%u]: "
+			"%d\n", i, left_edge[i], i, right_edge[i]);
+		if ((left_edge[i] == IO_IO_OUT1_DELAY_MAX + 1) ||
+				(right_edge[i] == IO_IO_OUT1_DELAY_MAX + 1))
+			return 0;
+	}
+
+	/* Find middle of window for each DQ bit */
+	mid_min = left_edge[0] - right_edge[0];
+	min_index = 0;
+	for (i = 1; i < RW_MGR_MEM_DQ_PER_WRITE_DQS; i++) {
+		mid = left_edge[i] - right_edge[i];
+		if (mid < mid_min) {
+			mid_min = mid;
+			min_index = i;
+		}
+	}
+
+	/*  -mid_min/2 represents the amount that we need to move DQS.
+	If mid_min is odd and positive we'll need to add one to
+	make sure the rounding in further calculations is correct
+	(always bias to the right), so just add 1 for all positive values */
+	if (mid_min > 0)
+		mid_min++;
+
+	mid_min = mid_min / 2;
+
+	pr_debug("write_center: mid_min=%d\n", mid_min);
+
+	/* Determine the amount we can change DQS (which is -mid_min) */
+	orig_mid_min = mid_min;
+	new_dqs = start_dqs;
+	mid_min = 0;
+
+	pr_debug("write_center: start_dqs=%d new_dqs=%d mid_min=%d\n", start_dqs, new_dqs, mid_min);
+
+	/* Initialize data for export structures */
+	dqs_margin = IO_IO_OUT1_DELAY_MAX + 1;
+	dq_margin  = IO_IO_OUT1_DELAY_MAX + 1;
+
+	/* add delay to bring centre of all DQ windows to the same "level" */
+	for (i = 0, p = test_bgn; i < RW_MGR_MEM_DQ_PER_WRITE_DQS; i++, p++) {
+		/* Use values before divide by 2 to reduce round off error */
+		shift_dq = (left_edge[i] - right_edge[i] -
+			(left_edge[min_index] - right_edge[min_index]))/2  +
+		(orig_mid_min - mid_min);
+
+		pr_debug("write_center: before: shift_dq[%u]=%d\n", i,
+			shift_dq);
+
+		if (shift_dq + (int32_t)READ_SCC_DQ_OUT1_DELAY(i) >
+			(int32_t)IO_IO_OUT1_DELAY_MAX) {
+			shift_dq = (int32_t)IO_IO_OUT1_DELAY_MAX -
+			READ_SCC_DQ_OUT1_DELAY(i);
+		} else if (shift_dq + (int32_t)READ_SCC_DQ_OUT1_DELAY(i) < 0) {
+			shift_dq = -(int32_t)READ_SCC_DQ_OUT1_DELAY(i);
+		}
+		pr_debug("write_center: after: shift_dq[%u]=%d\n",
+			i, shift_dq);
+		scc_mgr_set_dq_out1_delay(write_group, i,
+			READ_SCC_DQ_OUT1_DELAY(i) + shift_dq);
+		scc_mgr_load_dq (i);
+
+		pr_debug("write_center: margin[%u]=[%d,%d]\n", i,
+			left_edge[i] - shift_dq + (-mid_min),
+			right_edge[i] + shift_dq - (-mid_min));
+		/* To determine values for export structures */
+		if (left_edge[i] - shift_dq + (-mid_min) < dq_margin)
+			dq_margin = left_edge[i] - shift_dq + (-mid_min);
+		if (right_edge[i] + shift_dq - (-mid_min) < dqs_margin)
+			dqs_margin = right_edge[i] + shift_dq - (-mid_min);
+	}
+
+	/* Move DQS */
+	scc_mgr_apply_group_dqs_io_and_oct_out1 (write_group, new_dqs);
+	IOWR_32DIRECT(SCC_MGR_UPD, 0, 0);
+
+	/* Centre DM */
+
+	pr_debug("write_center: DM\n");
+
+	/* set the left and right edge of each bit to an illegal value */
+	/* use (IO_IO_OUT1_DELAY_MAX + 1) as an illegal value */
+	left_edge[0]  = IO_IO_OUT1_DELAY_MAX + 1;
+	right_edge[0] = IO_IO_OUT1_DELAY_MAX + 1;
+	bgn_curr = IO_IO_OUT1_DELAY_MAX + 1;
+	end_curr = IO_IO_OUT1_DELAY_MAX + 1;
+	bgn_best = IO_IO_OUT1_DELAY_MAX + 1;
+	end_best = IO_IO_OUT1_DELAY_MAX + 1;
+	win_best = 0;
+
+	/* Search for the/part of the window with DM shift */
+	for (d = IO_IO_OUT1_DELAY_MAX; d >= 0; d -= DELTA_D) {
+		scc_mgr_apply_group_dm_out1_delay (write_group, d);
+		IOWR_32DIRECT(SCC_MGR_UPD, 0, 0);
+
+		if (rw_mgr_mem_calibrate_write_test (rank_bgn, write_group, 1,
+			PASS_ALL_BITS, &bit_chk, 0)) {
+
+			/*USE Set current end of the window */
+			end_curr = -d;
+			/* If a starting edge of our window has not been seen
+			this is our current start of the DM window */
+			if (bgn_curr == IO_IO_OUT1_DELAY_MAX + 1)
+				bgn_curr = -d;
+
+			/* If current window is bigger than best seen.
+			Set best seen to be current window */
+			if ((end_curr-bgn_curr+1) > win_best) {
+				win_best = end_curr-bgn_curr+1;
+				bgn_best = bgn_curr;
+				end_best = end_curr;
+			}
+		} else {
+			/* We just saw a failing test. Reset temp edge */
+			bgn_curr = IO_IO_OUT1_DELAY_MAX + 1;
+			end_curr = IO_IO_OUT1_DELAY_MAX + 1;
+		}
+	}
+
+	/* Reset DM delay chains to 0 */
+	scc_mgr_apply_group_dm_out1_delay (write_group, 0);
+
+	/* Check to see if the current window nudges up aganist 0 delay.
+	If so we need to continue the search by shifting DQS otherwise DQS
+	search begins as a new search */
+	if (end_curr != 0) {
+		bgn_curr = IO_IO_OUT1_DELAY_MAX + 1;
+		end_curr = IO_IO_OUT1_DELAY_MAX + 1;
+	}
+
+	/* Search for the/part of the window with DQS shifts */
+	for (d = 0; d <= IO_IO_OUT1_DELAY_MAX - new_dqs; d += DELTA_D) {
+		/* Note: This only shifts DQS, so are we limiting ourselve to */
+		/* width of DQ unnecessarily */
+		scc_mgr_apply_group_dqs_io_and_oct_out1 (write_group,
+			d + new_dqs);
+
+		IOWR_32DIRECT(SCC_MGR_UPD, 0, 0);
+
+		if (rw_mgr_mem_calibrate_write_test (rank_bgn, write_group, 1,
+			PASS_ALL_BITS, &bit_chk, 0)) {
+
+			/*USE Set current end of the window */
+			end_curr = d;
+			/* If a beginning edge of our window has not been seen
+			this is our current begin of the DM window */
+			if (bgn_curr == IO_IO_OUT1_DELAY_MAX + 1)
+				bgn_curr = d;
+
+			/* If current window is bigger than best seen. Set best
+			seen to be current window */
+			if ((end_curr-bgn_curr+1) > win_best) {
+				win_best = end_curr-bgn_curr+1;
+				bgn_best = bgn_curr;
+				end_best = end_curr;
+			}
+		} else {
+			/* We just saw a failing test. Reset temp edge */
+			recover_mem_device_after_ck_dqs_violation();
+			bgn_curr = IO_IO_OUT1_DELAY_MAX + 1;
+			end_curr = IO_IO_OUT1_DELAY_MAX + 1;
+
+			/* Early exit optimization: if ther remaining delay
+			chain space is less than already seen largest window
+			we can exit */
+			if ((win_best - 1) > (IO_IO_OUT1_DELAY_MAX - new_dqs - d))
+				break;
+		}
+	}
+
+	/* assign left and right edge for cal and reporting; */
+	left_edge[0] = -1*bgn_best;
+	right_edge[0] = end_best;
+
+	pr_debug("dm_calib: left=%d right=%d\n", left_edge[0], right_edge[0]);
+
+	/* Move DQS (back to orig) */
+	scc_mgr_apply_group_dqs_io_and_oct_out1 (write_group, new_dqs);
+
+	/* Move DM */
+
+	/* Find middle of window for the DM bit */
+	mid = (left_edge[0] - right_edge[0]) / 2;
+
+	/* only move right, since we are not moving DQS/DQ */
+	if (mid < 0)
+		mid = 0;
+
+	/*dm_marign should fail if we never find a window */
+	if (win_best == 0) {
+		dm_margin = -1;
+	} else {
+		dm_margin = left_edge[0] - mid;
+	}
+
+	scc_mgr_apply_group_dm_out1_delay(write_group, mid);
+	IOWR_32DIRECT(SCC_MGR_UPD, 0, 0);
+
+	pr_debug("dm_calib: left=%d right=%d mid=%d dm_margin=%d\n",
+		left_edge[0], right_edge[0], mid, dm_margin);
+
+	/* Export values */
+	gbl->fom_out += dq_margin + dqs_margin;
+
+	pr_debug("write_center: dq_margin=%d dqs_margin=%d dm_margin=%d\n",
+		dq_margin, dqs_margin, dm_margin);
+
+	/* Do not remove this line as it makes sure all of our
+	decisions have been applied */
+	IOWR_32DIRECT(SCC_MGR_UPD, 0, 0);
+	return (dq_margin >= 0) && (dqs_margin >= 0) && (dm_margin >= 0);
+}
+
+/* calibrate the write operations */
+
+static uint32_t rw_mgr_mem_calibrate_writes (uint32_t rank_bgn, uint32_t g,
+	uint32_t test_bgn)
+{
+	reg_file_set_stage(CAL_STAGE_WRITES);
+	reg_file_set_sub_stage(CAL_SUBSTAGE_WRITES_CENTER);
+
+	reg_file_set_group(g);
+
+	return rw_mgr_mem_calibrate_writes_center (rank_bgn, g, test_bgn);
+}
+
+/* precharge all banks and activate row 0 in bank "000..." and bank "111..." */
+static void mem_precharge_and_activate (void)
+{
+	uint32_t r;
+
+	for (r = 0; r < RW_MGR_MEM_NUMBER_OF_RANKS; r++) {
+		/* set rank */
+		set_rank_and_odt_mask(r, RW_MGR_ODT_MODE_OFF);
+
+		/* precharge all banks ... */
+		IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0,
+			__RW_MGR_PRECHARGE_ALL);
+
+		IOWR_32DIRECT(RW_MGR_LOAD_CNTR_0, 0, 0x0F);
+		IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_0, 0,
+			__RW_MGR_ACTIVATE_0_AND_1_WAIT1);
+
+		IOWR_32DIRECT(RW_MGR_LOAD_CNTR_1, 0, 0x0F);
+		IOWR_32DIRECT(RW_MGR_LOAD_JUMP_ADD_1, 0,
+			__RW_MGR_ACTIVATE_0_AND_1_WAIT2);
+
+		/* activate rows */
+		IOWR_32DIRECT(RW_MGR_RUN_SINGLE_GROUP, 0,
+			__RW_MGR_ACTIVATE_0_AND_1);
+	}
+}
+
+/* perform all refreshes necessary over all ranks */
+
+/* Configure various memory related parameters. */
+static void mem_config (void)
+{
+	uint32_t rlat, wlat;
+	uint32_t rw_wl_nop_cycles;
+	uint32_t max_latency;
+
+	/* read in write and read latency */
+
+	wlat = IORD_32DIRECT (MEM_T_WL_ADD, 0);
+	wlat += IORD_32DIRECT (DATA_MGR_MEM_T_ADD, 0);
+	/* WL for hard phy does not include additive latency */
+
+	rlat = IORD_32DIRECT (MEM_T_RL_ADD, 0);
+
+	if (QUARTER_RATE_MODE) {
+		/* In Quarter-Rate the WL-to-nop-cycles works like this */
+		/* 0,1     -> 0 */
+		/* 2,3,4,5 -> 1 */
+		/* 6,7,8,9 -> 2 */
+		/* etc... */
+		rw_wl_nop_cycles = (wlat + 6) / 4 - 1;
+	} else if (HALF_RATE_MODE)	{
+		/* In Half-Rate the WL-to-nop-cycles works like this */
+		/* 0,1 -> -1 */
+		/* 2,3 -> 0 */
+		/* 4,5 -> 1 */
+		/* etc... */
+		if (wlat % 2)
+			rw_wl_nop_cycles = ((wlat - 1) / 2) - 1;
+		else
+			rw_wl_nop_cycles = (wlat / 2) - 1;
+	} else {
+		rw_wl_nop_cycles = wlat - 2;
+#if LPDDR2
+		rw_wl_nop_cycles = rw_wl_nop_cycles + 1;
+#endif
+	}
+#if MULTIPLE_AFI_WLAT
+	for (i = 0; i < RW_MGR_MEM_IF_WRITE_DQS_WIDTH; i++) {
+		gbl->rw_wl_nop_cycles_per_group[i] = rw_wl_nop_cycles;
+	}
+#endif
+	gbl->rw_wl_nop_cycles = rw_wl_nop_cycles;
+
+#if ARRIAV || CYCLONEV
+	/* For AV/CV, lfifo is hardened and always runs at full rate so
+	max latency in AFI clocks, used here, is correspondingly smaller */
+	if (QUARTER_RATE_MODE) {
+		max_latency = (1<<MAX_LATENCY_COUNT_WIDTH)/4 - 1;
+	} else if (HALF_RATE_MODE) {
+		max_latency = (1<<MAX_LATENCY_COUNT_WIDTH)/2 - 1;
+	} else {
+		max_latency = (1<<MAX_LATENCY_COUNT_WIDTH)/1 - 1;
+	}
+#else
+	max_latency = (1<<MAX_LATENCY_COUNT_WIDTH) - 1;
+#endif
+	/* configure for a burst length of 8 */
+
+	if (QUARTER_RATE_MODE) {
+		/* write latency */
+		wlat = (wlat + 5) / 4 + 1;
+
+		/* set a pretty high read latency initially */
+		gbl->curr_read_lat = (rlat + 1) / 4 + 8;
+	} else if (HALF_RATE_MODE) {
+		/* write latency */
+		wlat = (wlat - 1) / 2 + 1;
+
+		/* set a pretty high read latency initially */
+		gbl->curr_read_lat = (rlat + 1) / 2 + 8;
+	} else {
+		/* write latency */
+		/* Adjust Write Latency for Hard PHY */
+		wlat = wlat + 1;
+#if LPDDR2
+		/* Add another one in hard for LPDDR2 since this value is raw
+		from controller assume tdqss is one */
+		wlat = wlat + 1;
+#endif
+
+		/* set a pretty high read latency initially */
+		gbl->curr_read_lat = rlat + 16;
+	}
+
+	if (gbl->curr_read_lat > max_latency)
+		gbl->curr_read_lat = max_latency;
+
+	IOWR_32DIRECT(PHY_MGR_PHY_RLAT, 0, gbl->curr_read_lat);
+
+	/* advertise write latency */
+	gbl->curr_write_lat = wlat;
+#if MULTIPLE_AFI_WLAT
+	for (i = 0; i < RW_MGR_MEM_IF_WRITE_DQS_WIDTH; i++) {
+		IOWR_32DIRECT(PHY_MGR_AFI_WLAT, i*4, wlat - 2);
+	}
+#else
+	IOWR_32DIRECT(PHY_MGR_AFI_WLAT, 0, wlat - 2);
+#endif
+
+	mem_precharge_and_activate ();
+}
+
+/* Memory calibration entry point */
+
+static uint32_t mem_calibrate (void)
+{
+	uint32_t i;
+	uint32_t rank_bgn;
+	uint32_t write_group, write_test_bgn;
+	uint32_t read_group, read_test_bgn;
+	uint32_t run_groups, current_run;
+
+	/* Initialize the data settings */
+	pr_debug("Preparing to init data\n");
+	pr_debug("Init complete\n");
+
+	gbl->error_substage = CAL_SUBSTAGE_NIL;
+	gbl->error_stage = CAL_STAGE_NIL;
+	gbl->error_group = 0xff;
+	gbl->fom_in = 0;
+	gbl->fom_out = 0;
+
+	mem_config ();
+
+	if (ARRIAV || CYCLONEV) {
+		for (i = 0; i < RW_MGR_MEM_IF_READ_DQS_WIDTH; i++) {
+			IOWR_32DIRECT(SCC_MGR_GROUP_COUNTER, 0, i);
+			scc_set_bypass_mode(i);
+		}
+	}
+
+	/* Zero all delay chain/phase settings for all
+	groups and all shadow register sets */
+	scc_mgr_zero_all ();
+
+	run_groups = ~0;
+
+	for (write_group = 0, write_test_bgn = 0; write_group
+		< RW_MGR_MEM_IF_WRITE_DQS_WIDTH; write_group++,
+		write_test_bgn += RW_MGR_MEM_DQ_PER_WRITE_DQS) {
+
+		/* Mark the group as being attempted for calibration */
+
+		current_run = run_groups & ((1 << RW_MGR_NUM_DQS_PER_WRITE_GROUP) - 1);
+		run_groups = run_groups >> RW_MGR_NUM_DQS_PER_WRITE_GROUP;
+
+		if (current_run == 0)
+			continue;
+
+		IOWR_32DIRECT(SCC_MGR_GROUP_COUNTER, 0, write_group);
+		scc_mgr_zero_group (write_group, write_test_bgn, 0);
+
+		for (read_group = write_group * RW_MGR_NUM_DQS_PER_WRITE_GROUP,
+			read_test_bgn = 0;
+			read_group < (write_group + 1) * RW_MGR_NUM_DQS_PER_WRITE_GROUP;
+			read_group++, read_test_bgn += RW_MGR_MEM_DQ_PER_READ_DQS) {
+
+			/* Calibrate the VFIFO */
+			if (!((STATIC_CALIB_STEPS) & CALIB_SKIP_VFIFO)) {
+				if (!rw_mgr_mem_calibrate_vfifo(read_group, read_test_bgn))
+					return 0;
+			}
+		}
+
+		/* level writes (or align DK with CK for RLDRAMX) */
+		if (!(ARRIAV || CYCLONEV)) {
+			if (!((STATIC_CALIB_STEPS) & CALIB_SKIP_WLEVEL)) {
+				if (!rw_mgr_mem_calibrate_wlevel(write_group, write_test_bgn))
+					return 0;
+			}
+		}
+
+		/* Calibrate the output side */
+		for (rank_bgn = 0; rank_bgn < RW_MGR_MEM_NUMBER_OF_RANKS;
+				rank_bgn += NUM_RANKS_PER_SHADOW_REG) {
+			if (!((STATIC_CALIB_STEPS) & CALIB_SKIP_WRITES)) {
+				if ((STATIC_CALIB_STEPS) & CALIB_SKIP_DELAY_SWEEPS) {
+					/* not needed in quick mode! */
+				} else {
+					/* Determine if this set of
+					 * ranks should be skipped
+					 * entirely */
+					if (!rw_mgr_mem_calibrate_writes(rank_bgn, write_group, write_test_bgn))
+						return 0;
+				}
+			}
+		}
+
+		for (read_group = write_group * RW_MGR_NUM_DQS_PER_WRITE_GROUP,
+				read_test_bgn = 0;
+				read_group < (write_group + 1) * RW_MGR_NUM_DQS_PER_WRITE_GROUP;
+				read_group++, read_test_bgn += RW_MGR_MEM_DQ_PER_READ_DQS) {
+			if (!((STATIC_CALIB_STEPS) & CALIB_SKIP_WRITES)) {
+				if (!rw_mgr_mem_calibrate_vfifo_end(read_group, read_test_bgn))
+					return 0;
+			}
+		}
+	}
+
+	/* Calibrate the LFIFO */
+	if (!((STATIC_CALIB_STEPS) & CALIB_SKIP_LFIFO)) {
+		/* If we're skipping groups as part of debug,
+		don't calibrate LFIFO */
+		if (!rw_mgr_mem_calibrate_lfifo ())
+			return 0;
+	}
+
+	/* Do not remove this line as it makes sure all of our decisions
+	have been applied */
+	IOWR_32DIRECT(SCC_MGR_UPD, 0, 0);
+	return 1;
+}
+
+static uint32_t run_mem_calibrate(void)
+{
+	uint32_t pass;
+	uint32_t debug_info;
+
+	/* Initialize the debug status to show that calibration has started. */
+	/* This should occur before anything else */
+	/* Reset pass/fail status shown on afi_cal_success/fail */
+	IOWR_32DIRECT(PHY_MGR_CAL_STATUS, 0, PHY_MGR_CAL_RESET);
+
+	initialize();
+	rw_mgr_mem_initialize ();
+	pass = mem_calibrate ();
+	mem_precharge_and_activate ();
+
+	IOWR_32DIRECT(PHY_MGR_CMD_FIFO_RESET, 0, 0);
+
+	/* Handoff */
+
+	/* Don't return control of the PHY back to AFI when in debug mode */
+	if ((gbl->phy_debug_mode_flags & PHY_DEBUG_IN_DEBUG_MODE) == 0) {
+		rw_mgr_mem_handoff ();
+
+		/* In Hard PHY this is a 2-bit control: */
+		/* 0: AFI Mux Select */
+		/* 1: DDIO Mux Select */
+		IOWR_32DIRECT(PHY_MGR_MUX_SEL, 0, 0x2);
+	}
+
+	if (pass) {
+		pr_debug("CALIBRATION PASSED\n");
+
+		gbl->fom_in /= 2;
+		gbl->fom_out /= 2;
+
+		if (gbl->fom_in > 0xff) {
+			gbl->fom_in = 0xff;
+		}
+
+		if (gbl->fom_out > 0xff) {
+			gbl->fom_out = 0xff;
+		}
+
+		/* Update the FOM in the register file */
+		debug_info = gbl->fom_in;
+		debug_info |= gbl->fom_out << 8;
+		IOWR_32DIRECT(REG_FILE_FOM, 0, debug_info);
+
+		IOWR_32DIRECT(PHY_MGR_CAL_DEBUG_INFO, 0, debug_info);
+		IOWR_32DIRECT(PHY_MGR_CAL_STATUS, 0, PHY_MGR_CAL_SUCCESS);
+
+	} else {
+		pr_debug("CALIBRATION FAILED\n");
+
+		debug_info = gbl->error_stage;
+		debug_info |= gbl->error_substage << 8;
+		debug_info |= gbl->error_group << 16;
+
+
+		IOWR_32DIRECT(REG_FILE_FAILING_STAGE, 0, debug_info);
+		IOWR_32DIRECT(PHY_MGR_CAL_DEBUG_INFO, 0, debug_info);
+		IOWR_32DIRECT(PHY_MGR_CAL_STATUS, 0, PHY_MGR_CAL_FAIL);
+
+		/* Update the failing group/stage in the register file */
+		debug_info = gbl->error_stage;
+		debug_info |= gbl->error_substage << 8;
+		debug_info |= gbl->error_group << 16;
+		IOWR_32DIRECT(REG_FILE_FAILING_STAGE, 0, debug_info);
+	}
+
+	/* Set the debug status to show that calibration has ended. */
+	/* This should occur after everything else */
+	return pass;
+
+}
+
+static void hc_initialize_rom_data(const uint32_t *inst_rom_init, uint32_t inst_rom_init_size,
+		const uint32_t *ac_rom_init, uint32_t ac_rom_init_size)
+{
+	uint32_t i;
+
+	for (i = 0; i < inst_rom_init_size; i++) {
+		uint32_t data = inst_rom_init[i];
+		IOWR_32DIRECT(RW_MGR_INST_ROM_WRITE, (i << 2), data);
+	}
+
+	for (i = 0; i < ac_rom_init_size; i++) {
+		uint32_t data = ac_rom_init[i];
+		IOWR_32DIRECT(RW_MGR_AC_ROM_WRITE, (i << 2), data);
+	}
+}
+
+static void initialize_reg_file(void)
+{
+	/* Initialize the register file with the correct data */
+	IOWR_32DIRECT(REG_FILE_SIGNATURE, 0, REG_FILE_INIT_SEQ_SIGNATURE);
+	IOWR_32DIRECT(REG_FILE_DEBUG_DATA_ADDR, 0, 0);
+	IOWR_32DIRECT(REG_FILE_CUR_STAGE, 0, 0);
+	IOWR_32DIRECT(REG_FILE_FOM, 0, 0);
+	IOWR_32DIRECT(REG_FILE_FAILING_STAGE, 0, 0);
+	IOWR_32DIRECT(REG_FILE_DEBUG1, 0, 0);
+	IOWR_32DIRECT(REG_FILE_DEBUG2, 0, 0);
+}
+
+static void initialize_hps_phy(void)
+{
+	/* These may need to be included also: */
+	/* wrap_back_en (false) */
+	/* atpg_en (false) */
+	/* pipelineglobalenable (true) */
+
+	uint32_t reg;
+	/* Tracking also gets configured here because it's in the
+	same register */
+	uint32_t trk_sample_count = 7500;
+	uint32_t trk_long_idle_sample_count = (10 << 16) | 100;
+	/* Format is number of outer loops in the 16 MSB, sample
+	count in 16 LSB. */
+
+	reg = 0;
+	reg |= SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_ACDELAYEN_SET(1);
+	reg |= SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_DQDELAYEN_SET(1);
+	reg |= SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_DQSDELAYEN_SET(1);
+	reg |= SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_DQSLOGICDELAYEN_SET(1);
+	reg |= SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_RESETDELAYEN_SET(0);
+#if LPDDR2
+	reg |= SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_LPDDRDIS_SET(0);
+#else
+	reg |= SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_LPDDRDIS_SET(1);
+#endif
+	/* Fix for long latency VFIFO */
+	/* This field selects the intrinsic latency to RDATA_EN/FULL path.
+	00-bypass, 01- add 5 cycles, 10- add 10 cycles, 11- add 15 cycles. */
+	reg |= SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_ADDLATSEL_SET(0);
+	reg |= SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_SAMPLECOUNT_19_0_SET(
+		trk_sample_count);
+	IOWR_32DIRECT(BASE_MMR, SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_OFFSET, reg);
+
+	reg = 0;
+	reg |= SDR_CTRLGRP_PHYCTRL_PHYCTRL_1_SAMPLECOUNT_31_20_SET(
+		trk_sample_count >>
+		SDR_CTRLGRP_PHYCTRL_PHYCTRL_0_SAMPLECOUNT_19_0_WIDTH);
+	reg |= SDR_CTRLGRP_PHYCTRL_PHYCTRL_1_LONGIDLESAMPLECOUNT_19_0_SET(
+		trk_long_idle_sample_count);
+	IOWR_32DIRECT(BASE_MMR, SDR_CTRLGRP_PHYCTRL_PHYCTRL_1_OFFSET, reg);
+
+	reg = 0;
+	reg |= SDR_CTRLGRP_PHYCTRL_PHYCTRL_2_LONGIDLESAMPLECOUNT_31_20_SET(
+		trk_long_idle_sample_count >>
+		SDR_CTRLGRP_PHYCTRL_PHYCTRL_1_LONGIDLESAMPLECOUNT_19_0_WIDTH);
+	IOWR_32DIRECT(BASE_MMR, SDR_CTRLGRP_PHYCTRL_PHYCTRL_2_OFFSET, reg);
+}
+
+#if USE_DQS_TRACKING
+
+static void initialize_tracking(void)
+{
+	uint32_t concatenated_longidle = 0x0;
+	uint32_t concatenated_delays = 0x0;
+	uint32_t concatenated_rw_addr = 0x0;
+	uint32_t concatenated_refresh = 0x0;
+	uint32_t dtaps_per_ptap;
+	uint32_t tmp_delay;
+
+	/* compute usable version of value in case we skip full
+	computation later */
+	dtaps_per_ptap = 0;
+	tmp_delay = 0;
+	while (tmp_delay < IO_DELAY_PER_OPA_TAP) {
+		dtaps_per_ptap++;
+		tmp_delay += IO_DELAY_PER_DCHAIN_TAP;
+	}
+	dtaps_per_ptap--;
+
+	concatenated_longidle = concatenated_longidle ^ 10;
+		/*longidle outer loop */
+	concatenated_longidle = concatenated_longidle << 16;
+	concatenated_longidle = concatenated_longidle ^ 100;
+		/*longidle sample count */
+
+	concatenated_delays = concatenated_delays ^ 243;
+		/* trfc, worst case of 933Mhz 4Gb */
+	concatenated_delays = concatenated_delays << 8;
+	concatenated_delays = concatenated_delays ^ 14;
+		/* trcd, worst case */
+	concatenated_delays = concatenated_delays << 8;
+	concatenated_delays = concatenated_delays ^ 5;
+		/* vfifo wait */
+	concatenated_delays = concatenated_delays << 8;
+	concatenated_delays = concatenated_delays ^ 4;
+		/* mux delay */
+
+#if DDR3 || LPDDR2
+	concatenated_rw_addr = concatenated_rw_addr ^ __RW_MGR_IDLE;
+	concatenated_rw_addr = concatenated_rw_addr << 8;
+	concatenated_rw_addr = concatenated_rw_addr ^ __RW_MGR_ACTIVATE_1;
+	concatenated_rw_addr = concatenated_rw_addr << 8;
+	concatenated_rw_addr = concatenated_rw_addr ^ __RW_MGR_SGLE_READ;
+	concatenated_rw_addr = concatenated_rw_addr << 8;
+	concatenated_rw_addr = concatenated_rw_addr ^ __RW_MGR_PRECHARGE_ALL;
+#endif
+
+#if DDR3 || LPDDR2
+	concatenated_refresh = concatenated_refresh ^ __RW_MGR_REFRESH_ALL;
+#else
+	concatenated_refresh = concatenated_refresh ^ 0;
+#endif
+	concatenated_refresh = concatenated_refresh << 24;
+	concatenated_refresh = concatenated_refresh ^ 1000; /* trefi */
+
+	/* Initialize the register file with the correct data */
+	IOWR_32DIRECT(REG_FILE_DTAPS_PER_PTAP, 0, dtaps_per_ptap);
+	IOWR_32DIRECT(REG_FILE_TRK_SAMPLE_COUNT, 0, 7500);
+	IOWR_32DIRECT(REG_FILE_TRK_LONGIDLE, 0, concatenated_longidle);
+	IOWR_32DIRECT(REG_FILE_DELAYS, 0, concatenated_delays);
+	IOWR_32DIRECT(REG_FILE_TRK_RW_MGR_ADDR, 0, concatenated_rw_addr);
+	IOWR_32DIRECT(REG_FILE_TRK_READ_DQS_WIDTH, 0,
+		RW_MGR_MEM_IF_READ_DQS_WIDTH);
+	IOWR_32DIRECT(REG_FILE_TRK_RFSH, 0, concatenated_refresh);
+}
+
+#endif	/* USE_DQS_TRACKING */
+
+static int socfpga_sdram_calibration(const uint32_t *inst_rom_init, uint32_t inst_rom_init_size,
+		const uint32_t *ac_rom_init, uint32_t ac_rom_init_size)
+{
+	param_t my_param;
+	gbl_t my_gbl;
+	uint32_t pass;
+
+	param = &my_param;
+	gbl = &my_gbl;
+
+	/* Initialize the debug mode flags */
+	gbl->phy_debug_mode_flags = 0;
+	/* Set the calibration enabled by default */
+	gbl->phy_debug_mode_flags |= PHY_DEBUG_ENABLE_CAL_RPT;
+
+	/* Initialize the register file */
+	initialize_reg_file();
+
+	/* Initialize any PHY CSR */
+	initialize_hps_phy();
+
+	scc_mgr_initialize();
+
+#if USE_DQS_TRACKING
+	initialize_tracking();
+#endif
+	pr_debug("Preparing to start memory calibration\n");
+
+	pr_debug("%s%s %s ranks=%u cs/dimm=%u dq/dqs=%u,%u vg/dqs=%u,%u "
+		"dqs=%u,%u dq=%u dm=%u "
+		"ptap_delay=%u dtap_delay=%u dtap_dqsen_delay=%u, dll=%u\n",
+		RDIMM ? "r" : (LRDIMM ? "l" : ""),
+		DDR2 ? "DDR2" : (DDR3 ? "DDR3" : (QDRII ? "QDRII" : (RLDRAMII ?
+		"RLDRAMII" : (RLDRAM3 ? "RLDRAM3" : "??PROTO??")))),
+		FULL_RATE ? "FR" : (HALF_RATE ? "HR" : (QUARTER_RATE ?
+		"QR" : "??RATE??")),
+		RW_MGR_MEM_NUMBER_OF_RANKS,
+		RW_MGR_MEM_NUMBER_OF_CS_PER_DIMM,
+		RW_MGR_MEM_DQ_PER_READ_DQS,
+		RW_MGR_MEM_DQ_PER_WRITE_DQS,
+		RW_MGR_MEM_VIRTUAL_GROUPS_PER_READ_DQS,
+		RW_MGR_MEM_VIRTUAL_GROUPS_PER_WRITE_DQS,
+		RW_MGR_MEM_IF_READ_DQS_WIDTH,
+		RW_MGR_MEM_IF_WRITE_DQS_WIDTH,
+		RW_MGR_MEM_DATA_WIDTH,
+		RW_MGR_MEM_DATA_MASK_WIDTH,
+		IO_DELAY_PER_OPA_TAP,
+		IO_DELAY_PER_DCHAIN_TAP,
+		IO_DELAY_PER_DQS_EN_DCHAIN_TAP,
+		IO_DLL_CHAIN_LENGTH);
+	pr_debug("max values: en_p=%u dqdqs_p=%u en_d=%u dqs_in_d=%u "
+		"io_in_d=%u io_out1_d=%u io_out2_d=%u"
+		"dqs_in_reserve=%u dqs_out_reserve=%u\n",
+		IO_DQS_EN_PHASE_MAX,
+		IO_DQDQS_OUT_PHASE_MAX,
+		IO_DQS_EN_DELAY_MAX,
+		IO_DQS_IN_DELAY_MAX,
+		IO_IO_IN_DELAY_MAX,
+		IO_IO_OUT1_DELAY_MAX,
+		IO_IO_OUT2_DELAY_MAX,
+		IO_DQS_IN_RESERVE,
+		IO_DQS_OUT_RESERVE);
+
+	hc_initialize_rom_data(inst_rom_init, inst_rom_init_size,
+			ac_rom_init, ac_rom_init_size);
+
+	/* update info for sims */
+	reg_file_set_stage(CAL_STAGE_NIL);
+	reg_file_set_group(0);
+
+	/* Load global needed for those actions that require */
+	/* some dynamic calibration support */
+	dyn_calib_steps = STATIC_CALIB_STEPS;
+
+	/* Load global to allow dynamic selection of delay loop settings */
+	/* based on calibration mode */
+	if (!(dyn_calib_steps & CALIB_SKIP_DELAY_LOOPS)) {
+		skip_delay_mask = 0xff;
+	} else {
+		skip_delay_mask = 0x0;
+	}
+
+	pass = run_mem_calibrate ();
+
+	pr_debug("Calibration complete\n");
+	/* Send the end of transmission character */
+	pr_debug("%c\n", 0x4);
+
+	return pass == 0 ? -EINVAL : 0;
+}
diff --git a/arch/arm/mach-socfpga/include/mach/sequencer.h b/arch/arm/mach-socfpga/include/mach/sequencer.h
new file mode 100644
index 0000000..c437106
--- /dev/null
+++ b/arch/arm/mach-socfpga/include/mach/sequencer.h
@@ -0,0 +1,448 @@
+#ifndef _SEQUENCER_H_
+#define _SEQUENCER_H_
+
+/*
+Copyright (c) 2012, Altera Corporation
+All rights reserved.
+
+Redistribution and use in source and binary forms, with or without
+modification, are permitted provided that the following conditions are met:
+    * Redistributions of source code must retain the above copyright
+      notice, this list of conditions and the following disclaimer.
+    * Redistributions in binary form must reproduce the above copyright
+      notice, this list of conditions and the following disclaimer in the
+      documentation and/or other materials provided with the distribution.
+    * Neither the name of Altera Corporation nor the
+      names of its contributors may be used to endorse or promote products
+      derived from this software without specific prior written permission.
+
+THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
+ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
+WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
+DISCLAIMED. IN NO EVENT SHALL ALTERA CORPORATION BE LIABLE FOR ANY
+DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
+(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
+LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
+ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
+(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
+SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+*/
+
+#define MRS_MIRROR_PING_PONG_ATSO 0
+#define DYNAMIC_CALIBRATION_MODE 0
+#define STATIC_QUICK_CALIBRATION 0
+#define DISABLE_GUARANTEED_READ 0
+#define STATIC_SKIP_CALIBRATION 0
+
+#if ENABLE_ASSERT
+#define ERR_IE_TEXT "Internal Error: Sub-system: %s, File: %s, Line: %d\n%s%s"
+
+#define ALTERA_INTERNAL_ERROR(string) \
+	{err_report_internal_error(string, "SEQ", __FILE__, __LINE__); \
+	exit(-1); }
+
+#define ALTERA_ASSERT(condition) \
+	if (!(condition)) {\
+		ALTERA_INTERNAL_ERROR(#condition); }
+#define ALTERA_INFO_ASSERT(condition, text) \
+	if (!(condition)) {\
+		ALTERA_INTERNAL_ERROR(text); }
+
+#else
+
+#define ALTERA_ASSERT(condition)
+#define ALTERA_INFO_ASSERT(condition, text)
+
+#endif
+
+
+#if RLDRAMII
+#define RW_MGR_NUM_DM_PER_WRITE_GROUP (1)
+#define RW_MGR_NUM_TRUE_DM_PER_WRITE_GROUP (1)
+#else
+#define RW_MGR_NUM_DM_PER_WRITE_GROUP (RW_MGR_MEM_DATA_MASK_WIDTH \
+	/ RW_MGR_MEM_IF_WRITE_DQS_WIDTH)
+#define RW_MGR_NUM_TRUE_DM_PER_WRITE_GROUP (RW_MGR_TRUE_MEM_DATA_MASK_WIDTH \
+	/ RW_MGR_MEM_IF_WRITE_DQS_WIDTH)
+#endif
+
+#define RW_MGR_NUM_DQS_PER_WRITE_GROUP (RW_MGR_MEM_IF_READ_DQS_WIDTH / RW_MGR_MEM_IF_WRITE_DQS_WIDTH)
+#define NUM_RANKS_PER_SHADOW_REG (RW_MGR_MEM_NUMBER_OF_RANKS / NUM_SHADOW_REGS)
+
+#define RW_MGR_RUN_SINGLE_GROUP BASE_RW_MGR
+#define RW_MGR_RUN_ALL_GROUPS BASE_RW_MGR + 0x0400
+
+#define RW_MGR_DI_BASE (BASE_RW_MGR + 0x0020)
+
+#if DDR3
+#define DDR3_MR1_ODT_MASK  0xFFFFFD99
+#define DDR3_MR2_ODT_MASK  0xFFFFF9FF
+#define DDR3_AC_MIRR_MASK  0x020A8
+#endif /* DDR3 */
+
+#define RW_MGR_LOAD_CNTR_0 BASE_RW_MGR + 0x0800
+#define RW_MGR_LOAD_CNTR_1 BASE_RW_MGR + 0x0804
+#define RW_MGR_LOAD_CNTR_2 BASE_RW_MGR + 0x0808
+#define RW_MGR_LOAD_CNTR_3 BASE_RW_MGR + 0x080C
+
+#define RW_MGR_LOAD_JUMP_ADD_0 BASE_RW_MGR + 0x0C00
+#define RW_MGR_LOAD_JUMP_ADD_1 BASE_RW_MGR + 0x0C04
+#define RW_MGR_LOAD_JUMP_ADD_2 BASE_RW_MGR + 0x0C08
+#define RW_MGR_LOAD_JUMP_ADD_3 BASE_RW_MGR + 0x0C0C
+
+#define RW_MGR_RESET_READ_DATAPATH BASE_RW_MGR + 0x1000
+#define RW_MGR_SOFT_RESET BASE_RW_MGR + 0x2000
+
+#define RW_MGR_SET_CS_AND_ODT_MASK BASE_RW_MGR + 0x1400
+#define RW_MGR_SET_ACTIVE_RANK BASE_RW_MGR + 0x2400
+
+#define RW_MGR_LOOPBACK_MODE BASE_RW_MGR + 0x0200
+
+#define RW_MGR_RANK_NONE 0xFF
+#define RW_MGR_RANK_ALL 0x00
+
+#define RW_MGR_ODT_MODE_OFF 0
+#define RW_MGR_ODT_MODE_READ_WRITE 1
+
+#define NUM_CALIB_REPEAT	1
+
+#define NUM_READ_TESTS			7
+#define NUM_READ_PB_TESTS		7
+#define NUM_WRITE_TESTS			15
+#define NUM_WRITE_PB_TESTS		31
+
+#define PASS_ALL_BITS			1
+#define PASS_ONE_BIT			0
+
+/* calibration stages */
+
+#define CAL_STAGE_NIL			0
+#define CAL_STAGE_VFIFO			1
+#define CAL_STAGE_WLEVEL		2
+#define CAL_STAGE_LFIFO			3
+#define CAL_STAGE_WRITES		4
+#define CAL_STAGE_FULLTEST		5
+#define CAL_STAGE_REFRESH		6
+#define CAL_STAGE_CAL_SKIPPED		7
+#define CAL_STAGE_CAL_ABORTED		8
+#define CAL_STAGE_VFIFO_AFTER_WRITES	9
+
+/* calibration substages */
+
+#define CAL_SUBSTAGE_NIL		0
+#define CAL_SUBSTAGE_GUARANTEED_READ	1
+#define CAL_SUBSTAGE_DQS_EN_PHASE	2
+#define CAL_SUBSTAGE_VFIFO_CENTER	3
+#define CAL_SUBSTAGE_WORKING_DELAY	1
+#define CAL_SUBSTAGE_LAST_WORKING_DELAY	2
+#define CAL_SUBSTAGE_WLEVEL_COPY	3
+#define CAL_SUBSTAGE_WRITES_CENTER	1
+#define CAL_SUBSTAGE_READ_LATENCY	1
+#define CAL_SUBSTAGE_REFRESH		1
+
+#define MAX_RANKS			(RW_MGR_MEM_NUMBER_OF_RANKS)
+#define MAX_DQS				(RW_MGR_MEM_IF_WRITE_DQS_WIDTH > \
+					RW_MGR_MEM_IF_READ_DQS_WIDTH ? \
+					RW_MGR_MEM_IF_WRITE_DQS_WIDTH : \
+					RW_MGR_MEM_IF_READ_DQS_WIDTH)
+#define MAX_DQ				(RW_MGR_MEM_DATA_WIDTH)
+#define MAX_DM				(RW_MGR_MEM_DATA_MASK_WIDTH)
+
+/* length of VFIFO, from SW_MACROS */
+#define VFIFO_SIZE			(READ_VALID_FIFO_SIZE)
+
+/* Memory for data transfer between TCL scripts and NIOS.
+ *
+ * - First word is a command request.
+ * - The remaining words are part of the transfer.
+ */
+
+#define BASE_PTR_MGR 			SEQUENCER_PTR_MGR_INST_BASE
+#define BASE_PHY_MGR 			SDR_PHYGRP_PHYMGRGRP_ADDRESS
+#define BASE_RW_MGR 			SDR_PHYGRP_RWMGRGRP_ADDRESS
+#define BASE_DATA_MGR 			SDR_PHYGRP_DATAMGRGRP_ADDRESS
+#define BASE_SCC_MGR			SDR_PHYGRP_SCCGRP_ADDRESS
+#define BASE_REG_FILE			SDR_PHYGRP_REGFILEGRP_ADDRESS
+#define BASE_TIMER			SEQUENCER_TIMER_INST_BASE
+#define BASE_MMR                        SDR_CTRLGRP_ADDRESS
+#define BASE_TRK_MGR			(0x000D0000)
+
+/* Register file addresses. */
+#define REG_FILE_SIGNATURE		(BASE_REG_FILE + 0x0000)
+#define REG_FILE_DEBUG_DATA_ADDR	(BASE_REG_FILE + 0x0004)
+#define REG_FILE_CUR_STAGE              (BASE_REG_FILE + 0x0008)
+#define REG_FILE_FOM                    (BASE_REG_FILE + 0x000C)
+#define REG_FILE_FAILING_STAGE          (BASE_REG_FILE + 0x0010)
+#define REG_FILE_DEBUG1                 (BASE_REG_FILE + 0x0014)
+#define REG_FILE_DEBUG2                 (BASE_REG_FILE + 0x0018)
+
+#define REG_FILE_DTAPS_PER_PTAP         (BASE_REG_FILE + 0x001C)
+#define REG_FILE_TRK_SAMPLE_COUNT       (BASE_REG_FILE + 0x0020)
+#define REG_FILE_TRK_LONGIDLE           (BASE_REG_FILE + 0x0024)
+#define REG_FILE_DELAYS                 (BASE_REG_FILE + 0x0028)
+#define REG_FILE_TRK_RW_MGR_ADDR        (BASE_REG_FILE + 0x002C)
+#define REG_FILE_TRK_READ_DQS_WIDTH     (BASE_REG_FILE + 0x0030)
+#define REG_FILE_TRK_RFSH               (BASE_REG_FILE + 0x0034)
+
+/* PHY manager configuration registers. */
+
+#define PHY_MGR_PHY_RLAT			(BASE_PHY_MGR + 0x40 + 0x00)
+#define PHY_MGR_RESET_MEM_STBL			(BASE_PHY_MGR + 0x40 + 0x04)
+#define PHY_MGR_MUX_SEL				(BASE_PHY_MGR + 0x40 + 0x08)
+#define PHY_MGR_CAL_STATUS			(BASE_PHY_MGR + 0x40 + 0x0c)
+#define PHY_MGR_CAL_DEBUG_INFO			(BASE_PHY_MGR + 0x40 + 0x10)
+#define PHY_MGR_VFIFO_RD_EN_OVRD		(BASE_PHY_MGR + 0x40 + 0x14)
+#if CALIBRATE_BIT_SLIPS
+#define PHY_MGR_FR_SHIFT			(BASE_PHY_MGR + 0x40 + 0x20)
+#if MULTIPLE_AFI_WLAT
+#define PHY_MGR_AFI_WLAT			(BASE_PHY_MGR + 0x40 + 0x20 + 4 * \
+						RW_MGR_MEM_IF_WRITE_DQS_WIDTH)
+#else
+#define PHY_MGR_AFI_WLAT			(BASE_PHY_MGR + 0x40 + 0x18)
+#endif
+#else
+#define PHY_MGR_AFI_WLAT			(BASE_PHY_MGR + 0x40 + 0x18)
+#endif
+#define PHY_MGR_AFI_RLAT			(BASE_PHY_MGR + 0x40 + 0x1c)
+
+#define PHY_MGR_CAL_RESET			(0)
+#define PHY_MGR_CAL_SUCCESS			(1)
+#define PHY_MGR_CAL_FAIL			(2)
+
+/* PHY manager command addresses. */
+
+#define PHY_MGR_CMD_INC_VFIFO_FR		(BASE_PHY_MGR + 0x0000)
+#define PHY_MGR_CMD_INC_VFIFO_HR		(BASE_PHY_MGR + 0x0004)
+#define PHY_MGR_CMD_INC_VFIFO_HARD_PHY		(BASE_PHY_MGR + 0x0004)
+#define PHY_MGR_CMD_FIFO_RESET			(BASE_PHY_MGR + 0x0008)
+#define PHY_MGR_CMD_INC_VFIFO_FR_HR		(BASE_PHY_MGR + 0x000C)
+#define PHY_MGR_CMD_INC_VFIFO_QR		(BASE_PHY_MGR + 0x0010)
+
+/* PHY manager parameters. */
+
+#define PHY_MGR_MAX_RLAT_WIDTH			(BASE_PHY_MGR + 0x0000)
+#define PHY_MGR_MAX_AFI_WLAT_WIDTH 		(BASE_PHY_MGR + 0x0004)
+#define PHY_MGR_MAX_AFI_RLAT_WIDTH 		(BASE_PHY_MGR + 0x0008)
+#define PHY_MGR_CALIB_SKIP_STEPS		(BASE_PHY_MGR + 0x000c)
+#define PHY_MGR_CALIB_VFIFO_OFFSET		(BASE_PHY_MGR + 0x0010)
+#define PHY_MGR_CALIB_LFIFO_OFFSET		(BASE_PHY_MGR + 0x0014)
+#define PHY_MGR_RDIMM				(BASE_PHY_MGR + 0x0018)
+#define PHY_MGR_MEM_T_WL			(BASE_PHY_MGR + 0x001c)
+#define PHY_MGR_MEM_T_RL			(BASE_PHY_MGR + 0x0020)
+
+/* Data Manager */
+#define DATA_MGR_DRAM_CFG			(BASE_DATA_MGR + 0x0000)
+#define DATA_MGR_MEM_T_WL			(BASE_DATA_MGR + 0x0004)
+#define DATA_MGR_MEM_T_ADD			(BASE_DATA_MGR + 0x0008)
+#define DATA_MGR_MEM_T_RL			(BASE_DATA_MGR + 0x000C)
+#define DATA_MGR_MEM_T_RFC			(BASE_DATA_MGR + 0x0010)
+#define DATA_MGR_MEM_T_REFI			(BASE_DATA_MGR + 0x0014)
+#define DATA_MGR_MEM_T_WR			(BASE_DATA_MGR + 0x0018)
+#define DATA_MGR_MEM_T_MRD			(BASE_DATA_MGR + 0x001C)
+#define DATA_MGR_COL_WIDTH			(BASE_DATA_MGR + 0x0020)
+#define DATA_MGR_ROW_WIDTH			(BASE_DATA_MGR + 0x0024)
+#define DATA_MGR_BANK_WIDTH			(BASE_DATA_MGR + 0x0028)
+#define DATA_MGR_CS_WIDTH			(BASE_DATA_MGR + 0x002C)
+#define DATA_MGR_ITF_WIDTH			(BASE_DATA_MGR + 0x0030)
+#define DATA_MGR_DVC_WIDTH			(BASE_DATA_MGR + 0x0034)
+
+#define MEM_T_WL_ADD DATA_MGR_MEM_T_WL
+#define MEM_T_RL_ADD DATA_MGR_MEM_T_RL
+
+#define CALIB_SKIP_DELAY_LOOPS			(1 << 0)
+#define CALIB_SKIP_ALL_BITS_CHK			(1 << 1)
+#define CALIB_SKIP_DELAY_SWEEPS			(1 << 2)
+#define CALIB_SKIP_VFIFO			(1 << 3)
+#define CALIB_SKIP_LFIFO			(1 << 4)
+#define CALIB_SKIP_WLEVEL			(1 << 5)
+#define CALIB_SKIP_WRITES			(1 << 6)
+#define CALIB_SKIP_FULL_TEST			(1 << 7)
+#define CALIB_SKIP_ALL				(CALIB_SKIP_VFIFO | \
+				CALIB_SKIP_LFIFO | CALIB_SKIP_WLEVEL | \
+				CALIB_SKIP_WRITES | CALIB_SKIP_FULL_TEST)
+#define CALIB_IN_RTL_SIM				(1 << 8)
+
+/* Scan chain manager command addresses */
+
+#define WRITE_SCC_DQS_IN_DELAY(group, delay)	\
+	IOWR_32DIRECT(SCC_MGR_DQS_IN_DELAY, (group) << 2, delay)
+#define WRITE_SCC_DQS_EN_DELAY(group, delay)	\
+	IOWR_32DIRECT(SCC_MGR_DQS_EN_DELAY, (group) << 2, (delay) \
+	+ IO_DQS_EN_DELAY_OFFSET)
+#define WRITE_SCC_DQS_EN_PHASE(group, phase)	\
+	IOWR_32DIRECT(SCC_MGR_DQS_EN_PHASE, (group) << 2, phase)
+#define WRITE_SCC_DQDQS_OUT_PHASE(group, phase)	\
+	IOWR_32DIRECT(SCC_MGR_DQDQS_OUT_PHASE, (group) << 2, phase)
+#define WRITE_SCC_OCT_OUT1_DELAY(group, delay)	\
+	IOWR_32DIRECT(SCC_MGR_OCT_OUT1_DELAY, (group) << 2, delay)
+#define WRITE_SCC_OCT_OUT2_DELAY(group, delay)
+#define WRITE_SCC_DQS_BYPASS(group, bypass)
+
+#define WRITE_SCC_DQ_OUT1_DELAY(pin, delay)		\
+	IOWR_32DIRECT(SCC_MGR_IO_OUT1_DELAY, (pin) << 2, delay)
+
+#define WRITE_SCC_DQ_OUT2_DELAY(pin, delay)
+
+#define WRITE_SCC_DQ_IN_DELAY(pin, delay)		\
+	IOWR_32DIRECT(SCC_MGR_IO_IN_DELAY, (pin) << 2, delay)
+
+#define WRITE_SCC_DQ_BYPASS(pin, bypass)
+
+#define WRITE_SCC_RFIFO_MODE(pin, mode)
+
+#define WRITE_SCC_HHP_EXTRAS(value) 	    \
+	IOWR_32DIRECT(SCC_MGR_HHP_GLOBALS, SCC_MGR_HHP_EXTRAS_OFFSET, value)
+#define WRITE_SCC_HHP_DQSE_MAP(value) 	    \
+	IOWR_32DIRECT(SCC_MGR_HHP_GLOBALS, SCC_MGR_HHP_DQSE_MAP_OFFSET, value)
+
+#define WRITE_SCC_DQS_IO_OUT1_DELAY(delay)	\
+	IOWR_32DIRECT(SCC_MGR_IO_OUT1_DELAY, \
+	(RW_MGR_MEM_DQ_PER_WRITE_DQS) << 2, delay)
+
+#define WRITE_SCC_DQS_IO_OUT2_DELAY(delay)
+
+#define WRITE_SCC_DQS_IO_IN_DELAY(delay)	\
+	IOWR_32DIRECT(SCC_MGR_IO_IN_DELAY, \
+	(RW_MGR_MEM_DQ_PER_WRITE_DQS) << 2, delay)
+
+#define WRITE_SCC_DM_IO_OUT1_DELAY(pin, delay)	\
+	IOWR_32DIRECT(SCC_MGR_IO_OUT1_DELAY, \
+	(RW_MGR_MEM_DQ_PER_WRITE_DQS + 1 + pin) << 2, delay)
+
+#define WRITE_SCC_DM_IO_OUT2_DELAY(pin, delay)
+
+#define WRITE_SCC_DM_IO_IN_DELAY(pin, delay)	\
+	IOWR_32DIRECT(SCC_MGR_IO_IN_DELAY, \
+	(RW_MGR_MEM_DQ_PER_WRITE_DQS + 1 + pin) << 2, delay)
+
+#define WRITE_SCC_DM_BYPASS(pin, bypass)
+
+#define READ_SCC_DQS_IN_DELAY(group)	\
+	IORD_32DIRECT(SCC_MGR_DQS_IN_DELAY, (group) << 2)
+#define READ_SCC_DQS_EN_DELAY(group)	\
+	(IORD_32DIRECT(SCC_MGR_DQS_EN_DELAY, (group) << 2) \
+	- IO_DQS_EN_DELAY_OFFSET)
+#define READ_SCC_DQS_EN_PHASE(group)	\
+	IORD_32DIRECT(SCC_MGR_DQS_EN_PHASE, (group) << 2)
+#define READ_SCC_DQDQS_OUT_PHASE(group)	\
+	IORD_32DIRECT(SCC_MGR_DQDQS_OUT_PHASE, (group) << 2)
+#define READ_SCC_OCT_OUT1_DELAY(group)	\
+	IORD_32DIRECT(SCC_MGR_OCT_OUT1_DELAY, \
+	(group * RW_MGR_MEM_IF_READ_DQS_WIDTH / \
+	RW_MGR_MEM_IF_WRITE_DQS_WIDTH) << 2)
+#define READ_SCC_OCT_OUT2_DELAY(group)	0
+#define READ_SCC_DQS_BYPASS(group) 		0
+#define READ_SCC_DQS_BYPASS(group) 		0
+
+#define READ_SCC_DQ_OUT1_DELAY(pin)		\
+	IORD_32DIRECT(SCC_MGR_IO_OUT1_DELAY, (pin) << 2)
+#define READ_SCC_DQ_OUT2_DELAY(pin)		0
+#define READ_SCC_DQ_IN_DELAY(pin)		\
+	IORD_32DIRECT(SCC_MGR_IO_IN_DELAY, (pin) << 2)
+#define READ_SCC_DQ_BYPASS(pin) 	    0
+#define READ_SCC_RFIFO_MODE(pin) 	    0
+
+#define READ_SCC_DQS_IO_OUT1_DELAY()	\
+	IORD_32DIRECT(SCC_MGR_IO_OUT1_DELAY, \
+	(RW_MGR_MEM_DQ_PER_WRITE_DQS) << 2)
+#define READ_SCC_DQS_IO_OUT2_DELAY()	0
+#define READ_SCC_DQS_IO_IN_DELAY()	\
+	IORD_32DIRECT(SCC_MGR_IO_IN_DELAY, \
+	(RW_MGR_MEM_DQ_PER_WRITE_DQS) << 2)
+
+#define READ_SCC_DM_IO_OUT1_DELAY(pin)	\
+	IORD_32DIRECT(SCC_MGR_IO_OUT1_DELAY, \
+	(RW_MGR_MEM_DQ_PER_WRITE_DQS + 1 + pin) << 2)
+#define READ_SCC_DM_IO_OUT2_DELAY(pin)	0
+#define READ_SCC_DM_IO_IN_DELAY(pin)	\
+	IORD_32DIRECT(SCC_MGR_IO_IN_DELAY, \
+	(RW_MGR_MEM_DQ_PER_WRITE_DQS + 1 + pin) << 2)
+#define READ_SCC_DM_BYPASS(pin) 	    0
+
+
+#define SCC_MGR_GROUP_COUNTER			(BASE_SCC_MGR + 0x0000)
+#define SCC_MGR_DQS_IN_DELAY			(BASE_SCC_MGR + 0x0100)
+#define SCC_MGR_DQS_EN_PHASE			(BASE_SCC_MGR + 0x0200)
+#define SCC_MGR_DQS_EN_DELAY			(BASE_SCC_MGR + 0x0300)
+#define SCC_MGR_DQDQS_OUT_PHASE			(BASE_SCC_MGR + 0x0400)
+#define SCC_MGR_OCT_OUT1_DELAY			(BASE_SCC_MGR + 0x0500)
+#define SCC_MGR_IO_OUT1_DELAY			(BASE_SCC_MGR + 0x0700)
+#define SCC_MGR_IO_IN_DELAY			(BASE_SCC_MGR + 0x0900)
+
+
+/* HHP-HPS-specific versions of some commands */
+#define SCC_MGR_DQS_EN_DELAY_GATE		(BASE_SCC_MGR + 0x0600)
+#define SCC_MGR_IO_OE_DELAY			(BASE_SCC_MGR + 0x0800)
+#define SCC_MGR_HHP_GLOBALS			(BASE_SCC_MGR + 0x0A00)
+#define SCC_MGR_HHP_RFILE			(BASE_SCC_MGR + 0x0B00)
+
+/* HHP-HPS-specific values */
+#define SCC_MGR_HHP_EXTRAS_OFFSET			0
+#define SCC_MGR_HHP_DQSE_MAP_OFFSET			1
+
+#define SCC_MGR_DQS_ENA				(BASE_SCC_MGR + 0x0E00)
+#define SCC_MGR_DQS_IO_ENA			(BASE_SCC_MGR + 0x0E04)
+#define SCC_MGR_DQ_ENA				(BASE_SCC_MGR + 0x0E08)
+#define SCC_MGR_DM_ENA				(BASE_SCC_MGR + 0x0E0C)
+#define SCC_MGR_UPD				(BASE_SCC_MGR + 0x0E20)
+#define SCC_MGR_ACTIVE_RANK			(BASE_SCC_MGR + 0x0E40)
+#define SCC_MGR_AFI_CAL_INIT			(BASE_SCC_MGR + 0x0D00)
+
+/* PHY Debug mode flag constants */
+#define PHY_DEBUG_IN_DEBUG_MODE 0x00000001
+#define PHY_DEBUG_ENABLE_CAL_RPT 0x00000002
+#define PHY_DEBUG_ENABLE_MARGIN_RPT 0x00000004
+#define PHY_DEBUG_SWEEP_ALL_GROUPS 0x00000008
+#define PHY_DEBUG_DISABLE_GUARANTEED_READ 0x00000010
+#define PHY_DEBUG_ENABLE_NON_DESTRUCTIVE_CALIBRATION 0x00000020
+
+/* Bitfield type changes depending on protocol */
+typedef uint32_t t_btfld;
+
+#define RW_MGR_INST_ROM_WRITE BASE_RW_MGR + 0x1800
+#define RW_MGR_AC_ROM_WRITE BASE_RW_MGR + 0x1C00
+
+/* parameter variable holder */
+
+typedef struct param_type {
+	t_btfld read_correct_mask;
+	t_btfld read_correct_mask_vg;
+	t_btfld write_correct_mask;
+	t_btfld write_correct_mask_vg;
+
+	/* set a particular entry to 1 if we need to skip a particular group */
+} param_t;
+
+/* global variable holder */
+
+typedef struct gbl_type {
+
+	uint32_t phy_debug_mode_flags;
+
+	/* current read latency */
+
+	uint32_t curr_read_lat;
+
+	/* current write latency */
+
+	uint32_t curr_write_lat;
+
+	/* error code */
+
+	uint32_t error_substage;
+	uint32_t error_stage;
+	uint32_t error_group;
+
+	/* figure-of-merit in, figure-of-merit out */
+
+	uint32_t fom_in;
+	uint32_t fom_out;
+
+	/*USER Number of RW Mgr NOP cycles between
+	write command and write data */
+#if MULTIPLE_AFI_WLAT
+	uint32_t rw_wl_nop_cycles_per_group[RW_MGR_MEM_IF_WRITE_DQS_WIDTH];
+#endif
+	uint32_t rw_wl_nop_cycles;
+} gbl_t;
+#endif
diff --git a/arch/arm/mach-socfpga/include/mach/socfpga-regs.h b/arch/arm/mach-socfpga/include/mach/socfpga-regs.h
new file mode 100644
index 0000000..9d1e677
--- /dev/null
+++ b/arch/arm/mach-socfpga/include/mach/socfpga-regs.h
@@ -0,0 +1,18 @@
+#ifndef __MACH_SOCFPGA_REGS_H
+#define __MACH_SOCFPGA_REGS_H
+
+#define CYCLONE5_SDMMC_ADDRESS		0xff704000
+#define CYCLONE5_GPIO0_BASE		0xff708000
+#define CYCLONE5_GPIO1_BASE		0xff709000
+#define CYCLONE5_GPIO2_BASE		0xff70A000
+#define CYCLONE5_L3REGS_ADDRESS		0xff800000
+#define CYCLONE5_UART0_ADDRESS		0xffc02000
+#define CYCLONE5_UART1_ADDRESS		0xffc03000
+#define CYCLONE5_SDR_ADDRESS		0xffc20000
+#define CYCLONE5_CLKMGR_ADDRESS		0xffd04000
+#define CYCLONE5_RSTMGR_ADDRESS		0xffd05000
+#define CYCLONE5_SYSMGR_ADDRESS		0xffd08000
+#define CYCLONE5_SCANMGR_ADDRESS	0xfff02000
+#define CYCLONE5_SMP_TWD_ADDRESS	0xfffec600
+
+#endif /* __MACH_SOCFPGA_REGS_H */
diff --git a/arch/arm/mach-socfpga/include/mach/system-manager.h b/arch/arm/mach-socfpga/include/mach/system-manager.h
new file mode 100644
index 0000000..9efc37a
--- /dev/null
+++ b/arch/arm/mach-socfpga/include/mach/system-manager.h
@@ -0,0 +1,68 @@
+/*
+ *  Copyright (C) 2012 Altera Corporation <www.altera.com>
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
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#ifndef	_SYSTEM_MANAGER_H_
+#define	_SYSTEM_MANAGER_H_
+
+void socfpga_sysmgr_pinmux_init(unsigned long *sys_mgr_init_table, int num);
+
+/* address */
+#define CONFIG_SYSMGR_ROMCODEGRP_CTRL	(CYCLONE5_SYSMGR_ADDRESS + 0xc0)
+
+/* FPGA interface group */
+#define SYSMGR_FPGAINTF_MODULE		(CYCLONE5_SYSMGR_ADDRESS + 0x28)
+/* EMAC interface selection */
+#define CONFIG_SYSMGR_EMAC_CTRL		(CYCLONE5_SYSMGR_ADDRESS + 0x60)
+
+#define ISWGRP_HANDOFF_AXIBRIDGE	SYSMGR_ISWGRP_HANDOFF0
+#define ISWGRP_HANDOFF_L3REMAP		SYSMGR_ISWGRP_HANDOFF1
+#define ISWGRP_HANDOFF_FPGAINTF		SYSMGR_ISWGRP_HANDOFF2
+#define ISWGRP_HANDOFF_FPGA2SDR		SYSMGR_ISWGRP_HANDOFF3
+
+/* pin mux */
+#define SYSMGR_PINMUXGRP		(CYCLONE5_SYSMGR_ADDRESS + 0x400)
+#define SYSMGR_PINMUXGRP_NANDUSEFPGA	(SYSMGR_PINMUXGRP + 0x2F0)
+#define SYSMGR_PINMUXGRP_EMAC1USEFPGA	(SYSMGR_PINMUXGRP + 0x2F8)
+#define SYSMGR_PINMUXGRP_SDMMCUSEFPGA	(SYSMGR_PINMUXGRP + 0x308)
+#define SYSMGR_PINMUXGRP_EMAC0USEFPGA	(SYSMGR_PINMUXGRP + 0x314)
+#define SYSMGR_PINMUXGRP_SPIM1USEFPGA	(SYSMGR_PINMUXGRP + 0x330)
+#define SYSMGR_PINMUXGRP_SPIM0USEFPGA	(SYSMGR_PINMUXGRP + 0x338)
+
+/* bit fields */
+#define CONFIG_SYSMGR_PINMUXGRP_OFFSET	(0x400)
+#define SYSMGR_ROMCODEGRP_CTRL_WARMRSTCFGPINMUX		(1<<0)
+#define SYSMGR_ROMCODEGRP_CTRL_WARMRSTCFGIO		(1<<1)
+#define SYSMGR_ECC_OCRAM_EN		(1<<0)
+#define SYSMGR_ECC_OCRAM_SERR		(1<<3)
+#define SYSMGR_ECC_OCRAM_DERR		(1<<4)
+#define SYSMGR_FPGAINTF_USEFPGA		0x1
+#define SYSMGR_FPGAINTF_SPIM0		(1<<0)
+#define SYSMGR_FPGAINTF_SPIM1		(1<<1)
+#define SYSMGR_FPGAINTF_EMAC0		(1<<2)
+#define SYSMGR_FPGAINTF_EMAC1		(1<<3)
+#define SYSMGR_FPGAINTF_NAND		(1<<4)
+#define SYSMGR_FPGAINTF_SDMMC		(1<<5)
+
+/* Enumeration: sysmgr::emacgrp::ctrl::physel::enum                        */
+#define SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_GMII_MII 0x0
+#define SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_RGMII 0x1
+#define SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_RMII 0x2
+#define SYSMGR_EMACGRP_CTRL_PHYSEL0_LSB 0
+#define SYSMGR_EMACGRP_CTRL_PHYSEL1_LSB 2
+#define SYSMGR_EMACGRP_CTRL_PHYSEL_MASK 0x00000003
+
+#endif /* _SYSTEM_MANAGER_H_ */
diff --git a/arch/arm/mach-socfpga/init.c b/arch/arm/mach-socfpga/init.c
new file mode 100644
index 0000000..8500284
--- /dev/null
+++ b/arch/arm/mach-socfpga/init.c
@@ -0,0 +1,58 @@
+#include <debug_ll.h>
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <mach/freeze-controller.h>
+#include <mach/system-manager.h>
+#include <mach/clock-manager.h>
+#include <mach/reset-manager.h>
+#include <mach/scan-manager.h>
+#include <mach/generic.h>
+
+void socfpga_lowlevel_init(struct socfpga_cm_config *cm_config,
+		unsigned long *pinmux, int num_pinmux)
+{
+	uint32_t val;
+
+	val = 0xffffffff;
+	val &= ~(1 << RSTMGR_PERMODRST_L4WD0_LSB);
+	val &= ~(1 << RSTMGR_PERMODRST_OSC1TIMER0_LSB);
+	writel(val, CYCLONE5_RSTMGR_ADDRESS + RESET_MGR_PER_MOD_RESET_OFS);
+
+	/* freeze all IO banks */
+	sys_mgr_frzctrl_freeze_req(FREEZE_CHANNEL_0);
+	sys_mgr_frzctrl_freeze_req(FREEZE_CHANNEL_1);
+	sys_mgr_frzctrl_freeze_req(FREEZE_CHANNEL_2);
+	sys_mgr_frzctrl_freeze_req(FREEZE_CHANNEL_3);
+
+	writel(~0, CYCLONE5_RSTMGR_ADDRESS + RESET_MGR_BRG_MOD_RESET_OFS);
+
+	debug("Reconfigure Clock Manager\n");
+
+	/* reconfigure the PLLs */
+	socfpga_cm_basic_init(cm_config);
+
+	debug("Configure IOCSR\n");
+	/* configure the IOCSR through scan chain */
+	scan_mgr_io_scan_chain_prg(IO_SCAN_CHAIN_0, CONFIG_HPS_IOCSR_SCANCHAIN0_LENGTH, iocsr_scan_chain0_table);
+	scan_mgr_io_scan_chain_prg(IO_SCAN_CHAIN_1, CONFIG_HPS_IOCSR_SCANCHAIN1_LENGTH, iocsr_scan_chain1_table);
+	scan_mgr_io_scan_chain_prg(IO_SCAN_CHAIN_2, CONFIG_HPS_IOCSR_SCANCHAIN2_LENGTH, iocsr_scan_chain2_table);
+	scan_mgr_io_scan_chain_prg(IO_SCAN_CHAIN_3, CONFIG_HPS_IOCSR_SCANCHAIN3_LENGTH, iocsr_scan_chain3_table);
+
+	/* configure the pin muxing through system manager */
+	socfpga_sysmgr_pinmux_init(pinmux, num_pinmux);
+
+	writel(RSTMGR_PERMODRST_L4WD0 | RSTMGR_PERMODRST_L4WD1,
+			CYCLONE5_RSTMGR_ADDRESS + RESET_MGR_PER_MOD_RESET_OFS);
+
+	/* unfreeze / thaw all IO banks */
+	sys_mgr_frzctrl_thaw_req(FREEZE_CHANNEL_0);
+	sys_mgr_frzctrl_thaw_req(FREEZE_CHANNEL_1);
+	sys_mgr_frzctrl_thaw_req(FREEZE_CHANNEL_2);
+	sys_mgr_frzctrl_thaw_req(FREEZE_CHANNEL_3);
+
+	writel(0x18, CYCLONE5_L3REGS_ADDRESS);
+	writel(0x1, 0xfffefc00);
+
+	INIT_LL();
+}
diff --git a/arch/arm/mach-socfpga/iocsr-config-cyclone5.c b/arch/arm/mach-socfpga/iocsr-config-cyclone5.c
new file mode 100644
index 0000000..4b44c29
--- /dev/null
+++ b/arch/arm/mach-socfpga/iocsr-config-cyclone5.c
@@ -0,0 +1,649 @@
+/* This file is generated by Preloader Generator */
+
+#include <common.h>
+#include <mach/scan-manager.h>
+
+const unsigned long iocsr_scan_chain0_table[((CONFIG_HPS_IOCSR_SCANCHAIN0_LENGTH / 32) + 1)] = {
+	0x00000000,
+	0x00000000,
+	0x0FF00000,
+	0xC0000000,
+	0x0000003F,
+	0x00008000,
+	0x00004824,
+	0x01209000,
+	0x82400000,
+	0x00018004,
+	0x00000000,
+	0x00004000,
+	0x00002412,
+	0x00904800,
+	0x41200000,
+	0x80000002,
+	0x00000904,
+	0x00002000,
+	0x00001209,
+	0x00482400,
+	0x20900000,
+	0x40000001,
+	0x00000482,
+	0x00001000,
+};
+
+const unsigned long iocsr_scan_chain1_table[((CONFIG_HPS_IOCSR_SCANCHAIN1_LENGTH / 32) + 1)] = {
+	0x00009048,
+	0x02412000,
+	0x048000C0,
+	0x00000009,
+	0x00002412,
+	0x00008000,
+	0x00004824,
+	0x01209000,
+	0x82400000,
+	0x00000004,
+	0x00001209,
+	0x00004000,
+	0x00002412,
+	0x00904800,
+	0x41200000,
+	0x80000002,
+	0x00000904,
+	0x00002000,
+	0x06001209,
+	0x00482400,
+	0x01FE0000,
+	0xF8000000,
+	0x00000007,
+	0x80001000,
+	0x00000904,
+	0x00241200,
+	0x90480000,
+	0x20003000,
+	0x00000241,
+	0x00000800,
+	0x00000000,
+	0x00000000,
+	0x48240000,
+	0x90000000,
+	0x00000120,
+	0x00000400,
+	0x00000000,
+	0x00090480,
+	0x00000003,
+	0x00000000,
+	0x00000000,
+	0x90000200,
+	0x00600120,
+	0x00000000,
+	0x12090000,
+	0x24000600,
+	0x00000048,
+	0x48000100,
+	0x00300090,
+	0xC0024120,
+	0x09048000,
+	0x12000300,
+	0x000C0024,
+	0x00000080,
+};
+
+const unsigned long iocsr_scan_chain2_table[((CONFIG_HPS_IOCSR_SCANCHAIN2_LENGTH / 32) + 1)] = {
+	0x30009048,
+	0x00000000,
+	0x0FF00000,
+	0x00000000,
+	0x0C002412,
+	0x00008000,
+	0x18004824,
+	0x00000000,
+	0x82400000,
+	0x00018004,
+	0x06001209,
+	0x00004000,
+	0x20002412,
+	0x00904800,
+	0x00000030,
+	0x80000000,
+	0x03000904,
+	0x00002000,
+	0x10001209,
+	0x00482400,
+	0x20900000,
+	0x40010001,
+	0x00000482,
+	0x80001000,
+	0x00000904,
+	0x00000000,
+	0x90480000,
+	0x20008000,
+	0x00C00241,
+	0x00000800,
+};
+
+const unsigned long iocsr_scan_chain3_table[((CONFIG_HPS_IOCSR_SCANCHAIN3_LENGTH / 32) + 1)] = {
+	0x0CC20D80,
+	0x0C3000FF,
+	0x0A804001,
+	0x07900000,
+	0x08020000,
+	0x00100000,
+	0x0A800000,
+	0x07900000,
+	0x08020000,
+	0x00100000,
+	0x20430000,
+	0x0C003001,
+	0x00C00481,
+	0x00000000,
+	0x00000021,
+	0x82000004,
+	0x05400000,
+	0x03C80000,
+	0x04010000,
+	0x00080000,
+	0x05400000,
+	0x03C80000,
+	0x05400000,
+	0x03C80000,
+	0x90218000,
+	0x86001800,
+	0x00600240,
+	0x80090218,
+	0x00000001,
+	0x40000002,
+	0x02A00000,
+	0x01E40000,
+	0x02A00000,
+	0x01E40000,
+	0x02A00000,
+	0x01E40000,
+	0x02A00000,
+	0x01E40000,
+	0x4810C000,
+	0x43000C00,
+	0x00300120,
+	0xC004810C,
+	0x12043000,
+	0x20000300,
+	0x00040000,
+	0x50670000,
+	0x00000010,
+	0x24590000,
+	0x00001000,
+	0xA0000034,
+	0x0D000001,
+	0x6068030C,
+	0xCF034059,
+	0x1E781A03,
+	0x8030C0D0,
+	0x34059606,
+	0x01A03CF0,
+	0x0C0D0000,
+	0x59606803,
+	0x03CF0340,
+	0xD000001A,
+	0x068030C0,
+	0x10040000,
+	0x00200000,
+	0x10040000,
+	0x00200000,
+	0x15000000,
+	0x0F200000,
+	0x15000000,
+	0x0F200000,
+	0x01FE0000,
+	0x18000000,
+	0x01800902,
+	0x00240860,
+	0x007F8006,
+	0x00000000,
+	0x0A800001,
+	0x07900000,
+	0x0A800000,
+	0x07900000,
+	0x0A800000,
+	0x07900000,
+	0x08020000,
+	0x00100000,
+	0x20430000,
+	0x0C003001,
+	0x00C00481,
+	0x00000FF0,
+	0x4810C000,
+	0x80000C00,
+	0x05400000,
+	0x02480000,
+	0x04000000,
+	0x00080000,
+	0x05400000,
+	0x03C80000,
+	0x05400000,
+	0x03C80000,
+	0x90218000,
+	0x86001800,
+	0x00600240,
+	0x80090218,
+	0x24086001,
+	0x40000600,
+	0x02A00040,
+	0x01E40000,
+	0x02A00000,
+	0x01E40000,
+	0x02A00000,
+	0x01E40000,
+	0x02A00000,
+	0x01E40000,
+	0x4810C000,
+	0x43000C00,
+	0x00300120,
+	0xC004810C,
+	0x12043000,
+	0x20000300,
+	0x00040000,
+	0x50670000,
+	0x00000010,
+	0x24590000,
+	0x00001000,
+	0xA0000034,
+	0x0D000001,
+	0x6068030C,
+	0xCF034059,
+	0x1E781A03,
+	0x8030C0D0,
+	0x34059606,
+	0x01A00040,
+	0x0C0D0002,
+	0x59606803,
+	0x03CF0340,
+	0xD01E781A,
+	0x068030C0,
+	0x10040000,
+	0x00200000,
+	0x10040000,
+	0x00200000,
+	0x15000000,
+	0x0F200000,
+	0x15000000,
+	0x0F200000,
+	0x01FE0000,
+	0x18000000,
+	0x01800902,
+	0x00240860,
+	0x007F8006,
+	0x00000000,
+	0x99300001,
+	0x34343400,
+	0xAA0D4000,
+	0x01C3A810,
+	0xAA0D4000,
+	0x01C3A808,
+	0xAA0D4000,
+	0x01C3A808,
+	0x00040100,
+	0x00000800,
+	0x00000000,
+	0x00001208,
+	0x00482000,
+	0x000001C1,
+	0x00000000,
+	0x00410482,
+	0x0006A000,
+	0x0001B400,
+	0x00020000,
+	0x00000400,
+	0x0002A000,
+	0x0001E400,
+	0x5506A000,
+	0x00E1D408,
+	0x00000000,
+	0x2043090C,
+	0x00003001,
+	0x90400000,
+	0x00000000,
+	0x2020C243,
+	0x2A835000,
+	0x0070EA04,
+	0x2A835000,
+	0x0070EA02,
+	0x2A835000,
+	0x0070EA02,
+	0x00010040,
+	0x00000200,
+	0x00000000,
+	0x00000482,
+	0x00120800,
+	0x00002000,
+	0x80000000,
+	0x00104120,
+	0x00000200,
+	0xAC255F80,
+	0xF1C71C71,
+	0x14F3690D,
+	0x1A041414,
+	0x00D00000,
+	0x18864000,
+	0xC9247A06,
+	0xDBCF23D0,
+	0xF71E791E,
+	0x0350E388,
+	0x821A0000,
+	0x0000D000,
+	0x01860680,
+	0xD0C9247A,
+	0x1EDBCF23,
+	0x88F71E79,
+	0x000350E3,
+	0x00080200,
+	0x00001000,
+	0x00080200,
+	0x00001000,
+	0x000A8000,
+	0x00075000,
+	0x541A8000,
+	0x03875021,
+	0x10000000,
+	0x00000000,
+	0x0080C000,
+	0x41000000,
+	0x00003FC2,
+	0x00820000,
+	0xAA0D4000,
+	0x01C3A810,
+	0xAA0D4000,
+	0x01C3A808,
+	0xAA0D4000,
+	0x01C3A808,
+	0x00040100,
+	0x00000800,
+	0x00000000,
+	0x00001208,
+	0x00482000,
+	0x00008000,
+	0x00000000,
+	0x00410482,
+	0x0006A000,
+	0x0001B400,
+	0x00020000,
+	0x00000400,
+	0x00020080,
+	0x00000400,
+	0x5506A000,
+	0x00E1D408,
+	0x00000000,
+	0x0000090C,
+	0x00000010,
+	0x90400000,
+	0x00000000,
+	0x2020C243,
+	0x2A835000,
+	0x0070EA04,
+	0x2A835000,
+	0x0070EA02,
+	0x2A835000,
+	0x0070EA02,
+	0x00015000,
+	0x0000F200,
+	0x00000000,
+	0x00000482,
+	0x86120800,
+	0x00600240,
+	0x80000000,
+	0x00104120,
+	0x00000200,
+	0xAC255F80,
+	0xF1C71C71,
+	0x14F3690D,
+	0x1A041414,
+	0x00D00000,
+	0x18864000,
+	0xC9247A06,
+	0xDBCF23D0,
+	0xF71E791E,
+	0x0350E388,
+	0x821A02CB,
+	0x0000D000,
+	0x00000680,
+	0xD0C9247A,
+	0x1EDBCF23,
+	0x88F71E79,
+	0x000350E3,
+	0x00080200,
+	0x00001000,
+	0x00080200,
+	0x00001000,
+	0x000A8000,
+	0x00075000,
+	0x541A8000,
+	0x03875021,
+	0x10000000,
+	0x00000000,
+	0x0080C000,
+	0x41000000,
+	0x04000002,
+	0x00820000,
+	0xAA0D4000,
+	0x01C3A810,
+	0xAA0D4000,
+	0x01C3A808,
+	0xAA0D4000,
+	0x01C3A808,
+	0x00040100,
+	0x00000800,
+	0x00000000,
+	0x00001208,
+	0x00482000,
+	0x00008000,
+	0x00000000,
+	0x00410482,
+	0x0006A000,
+	0x0001B400,
+	0x00020000,
+	0x00000400,
+	0x0002A000,
+	0x0001E400,
+	0x5506A000,
+	0x00E1D408,
+	0x00000000,
+	0x0000090C,
+	0x00203000,
+	0x90400000,
+	0x00000000,
+	0x2020C243,
+	0x2A835000,
+	0x0070EA04,
+	0x2A835000,
+	0x0070EA02,
+	0x2A835000,
+	0x0070EA02,
+	0x00010040,
+	0x00000200,
+	0x00000000,
+	0x00000482,
+	0x00120800,
+	0x00002000,
+	0x80000000,
+	0x00104120,
+	0x00000200,
+	0xAC255F80,
+	0xF1C71C71,
+	0x14F3690D,
+	0x1A041414,
+	0x00D00000,
+	0x18864000,
+	0xC9247A06,
+	0xDBCF23D0,
+	0xF71E791E,
+	0x0350E388,
+	0x821A0000,
+	0x0000D000,
+	0x00000680,
+	0xD0C9247A,
+	0x1EDBCF23,
+	0x88F71E79,
+	0x000350E3,
+	0x00080200,
+	0x00001000,
+	0x00080200,
+	0x00001000,
+	0x000A8000,
+	0x00075000,
+	0x541A8000,
+	0x03875021,
+	0x10000000,
+	0x00000000,
+	0x0080C000,
+	0x41000000,
+	0x04000002,
+	0x00820000,
+	0xAA0D4000,
+	0x01C3A810,
+	0xAA0D4000,
+	0x01C3A808,
+	0xAA0D4000,
+	0x01C3A808,
+	0x00040100,
+	0x00000800,
+	0x00000000,
+	0x00001208,
+	0x00482000,
+	0x00008000,
+	0x00000000,
+	0x00410482,
+	0x0006A000,
+	0x0001B400,
+	0x00020000,
+	0x00000400,
+	0x00020080,
+	0x00000400,
+	0x5506A000,
+	0x00E1D408,
+	0x00000000,
+	0x0000090C,
+	0x00000010,
+	0x90400000,
+	0x00000000,
+	0x2020C243,
+	0x2A835000,
+	0x0070EA04,
+	0x2A835000,
+	0x0070EA02,
+	0x2A835000,
+	0x0070EA02,
+	0x00010040,
+	0x00000200,
+	0x00000000,
+	0x00000482,
+	0x40120800,
+	0x00000070,
+	0x80000000,
+	0x00104120,
+	0x00000200,
+	0xAC255F80,
+	0xF1C71C71,
+	0x14F1690D,
+	0x1A041414,
+	0x00D00000,
+	0x18864000,
+	0xC9247A06,
+	0xDBCF23D0,
+	0xF71E791E,
+	0x0350E388,
+	0x821A0000,
+	0x0000D000,
+	0x00000680,
+	0xD0C9247A,
+	0x1EDBCF23,
+	0x88F71E79,
+	0x000350E3,
+	0x00080200,
+	0x00001000,
+	0x00080200,
+	0x00001000,
+	0x000A8000,
+	0x00075000,
+	0x541A8000,
+	0x03875021,
+	0x10000000,
+	0x00000000,
+	0x0080C000,
+	0x41000000,
+	0x04000002,
+	0x00820000,
+	0x00489800,
+	0x801A1A1A,
+	0x00000200,
+	0x80000004,
+	0x00000200,
+	0x80000004,
+	0x00000200,
+	0x80000004,
+	0x00000200,
+	0x00000004,
+	0x00040000,
+	0x10000000,
+	0x00000000,
+	0x00000040,
+	0x00010000,
+	0x40002000,
+	0x00000100,
+	0x40000002,
+	0x00000100,
+	0x40000002,
+	0x00000100,
+	0x40000002,
+	0x00000100,
+	0x00000002,
+	0x00020000,
+	0x08000000,
+	0x00000000,
+	0x00000020,
+	0x00008000,
+	0x20001000,
+	0x00000080,
+	0x20000001,
+	0x00000080,
+	0x20000001,
+	0x00000080,
+	0x20000001,
+	0x00000080,
+	0x00000001,
+	0x00010000,
+	0x04000000,
+	0x00FF0000,
+	0x00000000,
+	0x00004000,
+	0x00000800,
+	0xC0000001,
+	0x00041419,
+	0x40000000,
+	0x04000816,
+	0x000D0000,
+	0x00006800,
+	0x00000340,
+	0xD000001A,
+	0x06800000,
+	0x00340000,
+	0x0001A000,
+	0x00000D00,
+	0x40000068,
+	0x1A000003,
+	0x00D00000,
+	0x00068000,
+	0x00003400,
+	0x000001A0,
+	0x00000401,
+	0x00000008,
+	0x00000401,
+	0x00000008,
+	0x00000401,
+	0x00000008,
+	0x00000401,
+	0x80000008,
+	0x0000007F,
+	0x20000000,
+	0x00000000,
+	0xE0000080,
+	0x0000001F,
+	0x00004000,
+};
+
diff --git a/arch/arm/mach-socfpga/nic301.c b/arch/arm/mach-socfpga/nic301.c
new file mode 100644
index 0000000..206dd48
--- /dev/null
+++ b/arch/arm/mach-socfpga/nic301.c
@@ -0,0 +1,40 @@
+/*
+ *  Copyright (C) 2012 Altera Corporation <www.altera.com>
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
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#include <common.h>
+#include <io.h>
+#include <mach/nic301.h>
+#include <mach/socfpga-regs.h>
+
+/*
+ * Convert all slave from secure to non secure
+ */
+void nic301_slave_ns(void)
+{
+	writel(0x1, (CYCLONE5_L3REGS_ADDRESS +
+		L3REGS_SECGRP_LWHPS2FPGAREGS_ADDRESS));
+	writel(0x1, (CYCLONE5_L3REGS_ADDRESS +
+		L3REGS_SECGRP_HPS2FPGAREGS_ADDRESS));
+	writel(0x1, (CYCLONE5_L3REGS_ADDRESS +
+		L3REGS_SECGRP_ACP_ADDRESS));
+	writel(0x1, (CYCLONE5_L3REGS_ADDRESS +
+		L3REGS_SECGRP_ROM_ADDRESS));
+	writel(0x1, (CYCLONE5_L3REGS_ADDRESS +
+		L3REGS_SECGRP_OCRAM_ADDRESS));
+	writel(0x1, (CYCLONE5_L3REGS_ADDRESS +
+		L3REGS_SECGRP_SDRDATA_ADDRESS));
+}
diff --git a/arch/arm/mach-socfpga/reset-manager.c b/arch/arm/mach-socfpga/reset-manager.c
new file mode 100644
index 0000000..a9e7e14
--- /dev/null
+++ b/arch/arm/mach-socfpga/reset-manager.c
@@ -0,0 +1,51 @@
+/*
+ *  Copyright (C) 2012 Altera Corporation <www.altera.com>
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
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#include <common.h>
+#include <io.h>
+#include <mach/socfpga-regs.h>
+#include <mach/reset-manager.h>
+
+/* Disable the watchdog (toggle reset to watchdog) */
+void watchdog_disable(void)
+{
+	void __iomem *rm = (void *)CYCLONE5_RSTMGR_ADDRESS;
+	uint32_t val;
+
+	/* assert reset for watchdog */
+	val = readl(rm + RESET_MGR_PER_MOD_RESET_OFS);
+	val |= 1 << RSTMGR_PERMODRST_L4WD0_LSB;
+	writel(val, rm + RESET_MGR_PER_MOD_RESET_OFS);
+
+	/* deassert watchdog from reset (watchdog in not running state) */
+	val = readl(rm + RESET_MGR_PER_MOD_RESET_OFS);
+	val &= ~(1 << RSTMGR_PERMODRST_L4WD0_LSB);
+	writel(val, rm + RESET_MGR_PER_MOD_RESET_OFS);
+}
+
+/* Write the reset manager register to cause reset */
+void reset_cpu(ulong addr)
+{
+	/* request a warm reset */
+	writel((1 << RSTMGR_CTRL_SWWARMRSTREQ_LSB),
+		CYCLONE5_RSTMGR_ADDRESS + RESET_MGR_CTRL_OFS);
+	/*
+	 * infinite loop here as watchdog will trigger and reset
+	 * the processor
+	 */
+	while (1);
+}
diff --git a/arch/arm/mach-socfpga/scan-manager.c b/arch/arm/mach-socfpga/scan-manager.c
new file mode 100644
index 0000000..57979b9
--- /dev/null
+++ b/arch/arm/mach-socfpga/scan-manager.c
@@ -0,0 +1,220 @@
+/*
+ *  Copyright (C) 2012 Altera Corporation <www.altera.com>
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
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#include <common.h>
+#include <io.h>
+#include <mach/freeze-controller.h>
+#include <mach/scan-manager.h>
+
+/*
+ * @fn scan_mgr_io_scan_chain_engine_is_idle
+ *
+ * @brief function to check IO scan chain engine status and wait if the
+ *        engine is active. Poll the IO scan chain engine till maximum iteration
+ *        reached.
+ *
+ * @param max_iter uint32_t [in] - maximum polling loop to revent infinite loop
+ */
+static int scan_mgr_io_scan_chain_engine_is_idle(uint32_t max_iter)
+{
+	uint32_t scanmgr_status;
+
+	scanmgr_status = readl(SCANMGR_STAT_ADDRESS +
+		CYCLONE5_SCANMGR_ADDRESS);
+
+	/* Poll the engine until the scan engine is inactive */
+	while (SCANMGR_STAT_ACTIVE_GET(scanmgr_status)
+		|| (SCANMGR_STAT_WFIFOCNT_GET(scanmgr_status) > 0)) {
+
+		max_iter--;
+
+		if (max_iter > 0) {
+			scanmgr_status = readl(
+				CYCLONE5_SCANMGR_ADDRESS +
+				SCANMGR_STAT_ADDRESS);
+		} else {
+			return 0;
+		}
+	}
+	return 1;
+}
+
+/*
+ * scan_mgr_io_scan_chain_prg
+ * Program HPS IO Scan Chain
+ */
+int scan_mgr_io_scan_chain_prg(enum io_scan_chain io_scan_chain_id,
+		uint32_t io_scan_chain_len_in_bits,
+		const unsigned long *iocsr_scan_chain)
+{
+	uint16_t tdi_tdo_header;
+	uint32_t io_program_iter;
+	uint32_t io_scan_chain_data_residual;
+	uint32_t residual;
+	uint32_t i;
+	uint32_t index = 0;
+	uint32_t val;
+	int ret;
+	void __iomem *sysmgr = (void *)CYCLONE5_SYSMGR_ADDRESS;
+	void __iomem *scanmgr = (void *)CYCLONE5_SCANMGR_ADDRESS;
+
+	/* De-assert reinit if the IO scan chain is intended for HIO */
+	if (io_scan_chain_id == IO_SCAN_CHAIN_3) {
+		val = readl(sysmgr + SYSMGR_FRZCTRL_HIOCTRL_ADDRESS);
+		val &= ~SYSMGR_FRZCTRL_HIOCTRL_DLLRST_MASK;
+		writel(val, sysmgr + SYSMGR_FRZCTRL_HIOCTRL_ADDRESS);
+	} /* if (HIO) */
+
+	/*
+	 * Check if the scan chain engine is inactive and the
+	 * WFIFO is empty before enabling the IO scan chain
+	 */
+	if (!scan_mgr_io_scan_chain_engine_is_idle(MAX_WAITING_DELAY_IO_SCAN_ENGINE))
+		return -EBUSY;
+
+	/*
+	 * Enable IO Scan chain based on scan chain id
+	 * Note: only one chain can be enabled at a time
+	 */
+	val = readl(scanmgr + SCANMGR_EN_ADDRESS);
+	val |= 1 << io_scan_chain_id;
+	writel(val, scanmgr + SCANMGR_EN_ADDRESS);
+
+	/*
+	 * Calculate number of iteration needed for
+	 * full 128-bit (4 x32-bits) bits shifting.
+	 * Each TDI_TDO packet can shift in maximum 128-bits
+	 */
+	io_program_iter = io_scan_chain_len_in_bits >> IO_SCAN_CHAIN_128BIT_SHIFT;
+	io_scan_chain_data_residual = io_scan_chain_len_in_bits & IO_SCAN_CHAIN_128BIT_MASK;
+
+	/*
+	 * Construct TDI_TDO packet for
+	 * 128-bit IO scan chain (2 bytes)
+	 */
+	tdi_tdo_header = TDI_TDO_HEADER_FIRST_BYTE |
+		(TDI_TDO_MAX_PAYLOAD << TDI_TDO_HEADER_SECOND_BYTE_SHIFT);
+
+	/* Program IO scan chain in 128-bit iteration */
+	for (i = 0; i < io_program_iter; i++) {
+
+		/* write TDI_TDO packet header to scan manager */
+		writel(tdi_tdo_header, (scanmgr + SCANMGR_FIFODOUBLEBYTE_ADDRESS));
+
+		/* calculate array index */
+		index = i * 4;
+
+		/*
+		 * write 4 successive 32-bit IO scan
+		 * chain data into WFIFO
+		 */
+		writel(iocsr_scan_chain[index], (scanmgr + SCANMGR_FIFOQUADBYTE_ADDRESS));
+		writel(iocsr_scan_chain[index + 1], (scanmgr + SCANMGR_FIFOQUADBYTE_ADDRESS));
+		writel(iocsr_scan_chain[index + 2], (scanmgr + SCANMGR_FIFOQUADBYTE_ADDRESS));
+		writel(iocsr_scan_chain[index + 3], (scanmgr + SCANMGR_FIFOQUADBYTE_ADDRESS));
+
+		/*
+		 * Check if the scan chain engine has completed the
+		 * IO scan chain data shifting
+		 */
+		if (!scan_mgr_io_scan_chain_engine_is_idle(MAX_WAITING_DELAY_IO_SCAN_ENGINE)) {
+			ret = -EBUSY;
+			goto out_disable;
+		}
+	}
+
+	/* Calculate array index for final TDI_TDO packet */
+	index = io_program_iter * 4;
+
+	/* Final TDI_TDO packet if any */
+	if (0 != io_scan_chain_data_residual) {
+		/*
+		 * Calculate number of quad bytes FIFO write
+		 * needed for the final TDI_TDO packet
+		 */
+		io_program_iter = io_scan_chain_data_residual >> IO_SCAN_CHAIN_32BIT_SHIFT;
+
+		/*
+		 * Construct TDI_TDO packet for remaining IO
+		 * scan chain (2 bytes)
+		 */
+		tdi_tdo_header = TDI_TDO_HEADER_FIRST_BYTE |
+			((io_scan_chain_data_residual - 1) << TDI_TDO_HEADER_SECOND_BYTE_SHIFT);
+
+		/*
+		 * Program the last part of IO scan chain
+		 * write TDI_TDO packet header (2 bytes) to
+		 * scan manager
+		 */
+		writel(tdi_tdo_header, (scanmgr + SCANMGR_FIFODOUBLEBYTE_ADDRESS));
+
+		for (i = 0; i < io_program_iter; i++) {
+
+			/*
+			 * write remaining scan chain data into scan
+			 * manager WFIFO with 4 bytes write
+			*/
+			writel(iocsr_scan_chain[index + i],
+					(scanmgr + SCANMGR_FIFOQUADBYTE_ADDRESS));
+		}
+
+		index += io_program_iter;
+		residual = io_scan_chain_data_residual & IO_SCAN_CHAIN_32BIT_MASK;
+
+		if (IO_SCAN_CHAIN_PAYLOAD_24BIT < residual) {
+			/*
+			 * write the last 4B scan chain data
+			 * into scan manager WFIFO
+			 */
+			writel(iocsr_scan_chain[index],
+					(scanmgr + SCANMGR_FIFOQUADBYTE_ADDRESS));
+		} else {
+			/*
+			 * write the remaining 1 - 3 bytes scan chain
+			 * data into scan manager WFIFO byte by byte
+			 * to prevent JTAG engine shifting unused data
+			 * from the FIFO and mistaken the data as a
+			 * valid command (even though unused bits are
+			 * set to 0, but just to prevent hardware
+			 * glitch)
+			 */
+			for (i = 0; i < residual; i += 8) {
+				writel(((iocsr_scan_chain[index] >> i) & IO_SCAN_CHAIN_BYTE_MASK),
+						(scanmgr + SCANMGR_FIFOSINGLEBYTE_ADDRESS));
+			}
+		}
+
+		/*
+		 * Check if the scan chain engine has completed the
+		 * IO scan chain data shifting
+		 */
+		if (!scan_mgr_io_scan_chain_engine_is_idle(MAX_WAITING_DELAY_IO_SCAN_ENGINE)) {
+			ret = -EBUSY;
+			goto out_disable;
+		}
+	} /* if (io_scan_chain_data_residual) */
+
+	ret = 0;
+
+out_disable:
+	/* Disable IO Scan chain when configuration done*/
+	val = readl(scanmgr + SCANMGR_EN_ADDRESS);
+	val &= ~(1 << io_scan_chain_id);
+	writel(val, scanmgr + SCANMGR_EN_ADDRESS);
+
+	return ret;
+}
diff --git a/arch/arm/mach-socfpga/system-manager.c b/arch/arm/mach-socfpga/system-manager.c
new file mode 100644
index 0000000..45db921
--- /dev/null
+++ b/arch/arm/mach-socfpga/system-manager.c
@@ -0,0 +1,33 @@
+/*
+ *  Copyright (C) 2012 Altera Corporation <www.altera.com>
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
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#include <common.h>
+#include <io.h>
+#include <mach/system-manager.h>
+#include <mach/socfpga-regs.h>
+
+void socfpga_sysmgr_pinmux_init(unsigned long *sys_mgr_init_table, int num)
+{
+	unsigned long offset = CONFIG_SYSMGR_PINMUXGRP_OFFSET;
+	const unsigned long *pval = sys_mgr_init_table;
+	unsigned long i;
+
+	for (i = 0; i < num; i++) {
+		writel(*pval++, CYCLONE5_SYSMGR_ADDRESS + offset);
+		offset += sizeof(uint32_t);
+	}
+}
diff --git a/arch/arm/mach-socfpga/xload.c b/arch/arm/mach-socfpga/xload.c
new file mode 100644
index 0000000..18ea927
--- /dev/null
+++ b/arch/arm/mach-socfpga/xload.c
@@ -0,0 +1,125 @@
+#include <platform_data/dw_mmc.h>
+#include <bootsource.h>
+#include <ns16550.h>
+#include <common.h>
+#include <malloc.h>
+#include <init.h>
+#include <envfs.h>
+#include <sizes.h>
+#include <fs.h>
+#include <io.h>
+
+#include <linux/clkdev.h>
+#include <linux/stat.h>
+#include <linux/clk.h>
+
+#include <mach/system-manager.h>
+#include <mach/socfpga-regs.h>
+
+enum socfpga_clks {
+	timer, mmc, uart, clk_max
+};
+
+static struct clk *clks[clk_max];
+
+static struct dw_mmc_platform_data mmc_pdata = {
+	.ciu_div = 3,
+};
+
+static void socfpga_mmc_init(void)
+{
+	clks[mmc] = clk_fixed("mmc", 400000000);
+	clkdev_add_physbase(clks[mmc], CYCLONE5_SDMMC_ADDRESS, NULL);
+	add_generic_device("dw_mmc", 0, NULL, CYCLONE5_SDMMC_ADDRESS, SZ_4K,
+			IORESOURCE_MEM, &mmc_pdata);
+}
+
+static struct NS16550_plat uart_pdata = {
+	.clock = 100000000,
+	.shift = 2,
+};
+
+static void socfpga_uart_init(void)
+{
+	clks[uart] = clk_fixed("uart", 100000000);
+	clkdev_add_physbase(clks[uart], CYCLONE5_UART0_ADDRESS, NULL);
+	clkdev_add_physbase(clks[uart], CYCLONE5_UART1_ADDRESS, NULL);
+	add_ns16550_device(0, 0xffc02000, 1024, IORESOURCE_MEM_8BIT,
+			&uart_pdata);
+}
+
+static void socfpga_timer_init(void)
+{
+	clks[timer] = clk_fixed("timer", 200000000);
+	clkdev_add_physbase(clks[timer], CYCLONE5_SMP_TWD_ADDRESS, NULL);
+	add_generic_device("smp_twd", 0, NULL, CYCLONE5_SMP_TWD_ADDRESS, 0x100,
+			IORESOURCE_MEM, NULL);
+}
+
+static void *socfpga_xload_mmc(void)
+{
+	int ret;
+	void *buf;
+	int len;
+	const char *diskdev = "disk0.1";
+
+	pr_info("loading bootloader from SD/MMC\n");
+
+	ret = mount(diskdev, "fat", "/");
+	if (ret) {
+		printf("Unable to mount %s (%d)\n", diskdev, ret);
+		return NULL;
+	}
+
+	buf = read_file("/barebox.bin", &len);
+	if (!buf) {
+		printf("could not read barebox.bin from sd card\n");
+		return NULL;
+	}
+
+	return buf;
+}
+
+static __noreturn int socfpga_xload(void)
+{
+	enum bootsource bootsource = bootsource_get();
+	void *buf;
+	int (*func)(void *);
+
+	switch (bootsource) {
+	case BOOTSOURCE_MMC:
+		buf = socfpga_xload_mmc();
+		break;
+	default:
+		pr_err("unknown bootsource %d\n", bootsource);
+		hang();
+	}
+
+	if (!buf) {
+		pr_err("failed to load barebox.bin\n");
+		hang();
+	}
+
+	func = buf;
+
+	pr_info("starting bootloader...\n");
+
+	shutdown_barebox();
+
+	func(NULL);
+
+	hang();
+}
+
+static int socfpga_devices_init(void)
+{
+	barebox_set_model("SoCFPGA");
+	socfpga_timer_init();
+	socfpga_uart_init();
+	socfpga_mmc_init();
+
+	barebox_main = socfpga_xload;
+
+	return 0;
+}
+coredevice_initcall(socfpga_devices_init);
diff --git a/images/.gitignore b/images/.gitignore
index 9cc1728..1f601e7 100644
--- a/images/.gitignore
+++ b/images/.gitignore
@@ -7,6 +7,7 @@
 *.src
 *.kwbimg
 *.kwbuartimg
+*.socfpgaimg
 pbl.lds
 barebox.x
 barebox.z
diff --git a/images/Makefile b/images/Makefile
index 0926615..c723b1a 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -108,6 +108,7 @@ $(obj)/%.img: $(obj)/$$(FILE_$$(@F))
 
 include $(srctree)/images/Makefile.imx
 include $(srctree)/images/Makefile.mvebu
+include $(srctree)/images/Makefile.socfpga
 
 targets += $(image-y) pbl.lds barebox.x barebox.z
 targets += $(patsubst %,%.pblx,$(pblx-y))
@@ -122,5 +123,5 @@ images: $(addprefix $(obj)/, $(image-y)) FORCE
 	@echo "images built:\n" $(patsubst %,%\\n,$(image-y))
 
 clean-files := *.pbl *.pblb *.pblx *.map start_*.imximg *.img barebox.z start_*.kwbimg \
-	start_*.kwbuartimg
+	start_*.kwbuartimg *.socfpgaimg
 clean-files += pbl.lds
diff --git a/images/Makefile.socfpga b/images/Makefile.socfpga
new file mode 100644
index 0000000..ef1cc64
--- /dev/null
+++ b/images/Makefile.socfpga
@@ -0,0 +1,19 @@
+#
+# barebox image generation Makefile for Altera socfpga
+#
+
+# %.socfpga - convert into socfpga image
+# ----------------------------------------------------------------
+quiet_cmd_socfpga_image = SOCFPGA-IMG $@
+      cmd_socfpga_image = scripts/socfpga_mkimage -b -o $@ $<
+
+$(obj)/%.socfpgaimg: $(obj)/% FORCE
+	$(call if_changed,socfpga_image)
+
+# ----------------------- Cyclone5 based boards ---------------------------
+
+ifdef CONFIG_ARCH_SOCFPGA_XLOAD
+image-y += $(xload-y)
+else
+image-y += $(barebox-y)
+endif
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
