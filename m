Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WZKTe-0001Rd-K6
 for barebox@lists.infradead.org; Sun, 13 Apr 2014 13:29:44 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p578FE321.dip0.t-ipconnect.de [87.143.227.33])
 by lynxeye.de (Postfix) with ESMTPA id EFE2D18B427D
 for <barebox@lists.infradead.org>; Sun, 13 Apr 2014 15:28:01 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 13 Apr 2014 15:27:46 +0200
Message-Id: <1397395668-9325-17-git-send-email-dev@lynxeye.de>
In-Reply-To: <1397395668-9325-1-git-send-email-dev@lynxeye.de>
References: <1397395668-9325-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 16/18] ARM: tegra: add NVidia Beaver board support
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/Makefile               |   1 +
 arch/arm/boards/nvidia-beaver/Makefile |   4 +
 arch/arm/boards/nvidia-beaver/entry.c  |  38 +++
 arch/arm/configs/tegra_v7_defconfig    |   1 +
 arch/arm/dts/Makefile                  |   4 +-
 arch/arm/dts/tegra30-beaver.dts        | 504 +++++++++++++++++++++++++++++++++
 arch/arm/mach-tegra/Kconfig            |   4 +
 images/Makefile.tegra                  |   5 +
 8 files changed, 560 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/nvidia-beaver/Makefile
 create mode 100644 arch/arm/boards/nvidia-beaver/entry.c
 create mode 100644 arch/arm/dts/tegra30-beaver.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 16742d91389d..0c1497febdb5 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -55,6 +55,7 @@ obj-$(CONFIG_MACH_MX31MOBOARD)			+= mx31moboard/
 obj-$(CONFIG_MACH_MX6Q_ARM2)			+= freescale-mx6-arm2/
 obj-$(CONFIG_MACH_NESO)				+= guf-neso/
 obj-$(CONFIG_MACH_NOMADIK_8815NHK)		+= nhk8815/
+obj-$(CONFIG_MACH_NVIDIA_BEAVER)		+= nvidia-beaver/
 obj-$(CONFIG_MACH_NXDB500)			+= netx/
 obj-$(CONFIG_MACH_OMAP343xSDP)			+= omap343xdsp/
 obj-$(CONFIG_MACH_OMAP3EVM)			+= omap3evm/
diff --git a/arch/arm/boards/nvidia-beaver/Makefile b/arch/arm/boards/nvidia-beaver/Makefile
new file mode 100644
index 000000000000..d2d217319b34
--- /dev/null
+++ b/arch/arm/boards/nvidia-beaver/Makefile
@@ -0,0 +1,4 @@
+CFLAGS_pbl-entry.o := \
+	-mcpu=arm7tdmi -march=armv4t \
+	-fno-tree-switch-conversion -fno-jump-tables
+lwl-y += entry.o
diff --git a/arch/arm/boards/nvidia-beaver/entry.c b/arch/arm/boards/nvidia-beaver/entry.c
new file mode 100644
index 000000000000..25452a6a759e
--- /dev/null
+++ b/arch/arm/boards/nvidia-beaver/entry.c
@@ -0,0 +1,38 @@
+/*
+ * Copyright (C) 2014 Lucas Stach <l.stach@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+#include <mach/lowlevel.h>
+#include <mach/lowlevel-dvc.h>
+
+extern char __dtb_tegra30_beaver_start[];
+
+ENTRY_FUNCTION(start_nvidia_beaver, r0, r1, r2)
+{
+	uint32_t fdt;
+
+	tegra_cpu_lowlevel_setup();
+
+	tegra_dvc_init();
+	tegra30_tps65911_cpu_rail_enable();
+
+	fdt = (uint32_t)__dtb_tegra30_beaver_start - get_runtime_offset();
+
+	tegra_avp_reset_vector(fdt);
+}
diff --git a/arch/arm/configs/tegra_v7_defconfig b/arch/arm/configs/tegra_v7_defconfig
index f76b5017a8a2..680e3bb50631 100644
--- a/arch/arm/configs/tegra_v7_defconfig
+++ b/arch/arm/configs/tegra_v7_defconfig
@@ -1,6 +1,7 @@
 CONFIG_ARCH_TEGRA=y
 CONFIG_MACH_TORADEX_COLIBRI_T20=y
 CONFIG_MACH_TOSHIBA_AC100=y
+CONFIG_MACH_NVIDIA_BEAVER=y
 CONFIG_AEABI=y
 CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index b45c17458253..58dc38b87dd9 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -33,7 +33,8 @@ dtb-$(CONFIG_ARCH_SOCFPGA) += socfpga_cyclone5_sockit.dtb \
 	socfpga_cyclone5_socrates.dtb
 dtb-$(CONFIG_ARCH_TEGRA) += \
 	tegra20-colibri-iris.dtb \
-	tegra20-paz00.dtb
+	tegra20-paz00.dtb \
+	tegra30-beaver.dtb
 
 BUILTIN_DTB := $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_NAME))
 obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
@@ -44,6 +45,7 @@ pbl-$(CONFIG_MACH_FREESCALE_MX51_PDK) += imx51-babbage.dtb.o
 pbl-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += imx53-qsb.dtb.o imx53-qsrb.dtb.o
 pbl-$(CONFIG_MACH_FREESCALE_MX53_VMX53) += imx53-voipac-bsb.dtb.o
 pbl-$(CONFIG_MACH_DFI_FS700_M60) += imx6q-dfi-fs700-m60-6q.dtb.o imx6dl-dfi-fs700-m60-6s.dtb.o
+pbl-$(CONFIG_MACH_NVIDIA_BEAVER) += tegra30-beaver.dtb.o
 pbl-$(CONFIG_MACH_PCM051) += am335x-phytec-phycore.dtb.o
 pbl-$(CONFIG_MACH_PHYTEC_PFLA02) += imx6s-phytec-pbab01.dtb.o imx6dl-phytec-pbab01.dtb.o imx6q-phytec-pbab01.dtb.o
 pbl-$(CONFIG_MACH_REALQ7) += imx6q-dmo-edmqmx6.dtb.o
diff --git a/arch/arm/dts/tegra30-beaver.dts b/arch/arm/dts/tegra30-beaver.dts
new file mode 100644
index 000000000000..e93fe45b7803
--- /dev/null
+++ b/arch/arm/dts/tegra30-beaver.dts
@@ -0,0 +1,504 @@
+/dts-v1/;
+
+#include "tegra30.dtsi"
+
+/ {
+	model = "NVIDIA Tegra30 Beaver evaluation board";
+	compatible = "nvidia,beaver", "nvidia,tegra30";
+
+	aliases {
+		rtc0 = "/i2c@7000d000/tps65911@2d";
+		rtc1 = "/rtc@7000e000";
+	};
+
+	memory {
+		reg = <0x80000000 0x7ff00000>;
+	};
+
+	pcie-controller@00003000 {
+		status = "okay";
+		pex-clk-supply = <&sys_3v3_pexs_reg>;
+		vdd-supply = <&ldo1_reg>;
+		avdd-supply = <&ldo2_reg>;
+
+		pci@1,0 {
+			status = "okay";
+			nvidia,num-lanes = <2>;
+		};
+
+		pci@2,0 {
+			nvidia,num-lanes = <2>;
+		};
+
+		pci@3,0 {
+			status = "okay";
+			nvidia,num-lanes = <2>;
+		};
+	};
+
+	host1x@50000000 {
+		hdmi@54280000 {
+			status = "okay";
+
+			vdd-supply = <&sys_3v3_reg>;
+			pll-supply = <&vio_reg>;
+
+			nvidia,hpd-gpio =
+				<&gpio TEGRA_GPIO(N, 7) GPIO_ACTIVE_HIGH>;
+			nvidia,ddc-i2c-bus = <&hdmiddc>;
+		};
+	};
+
+	pinmux@70000868 {
+		pinctrl-names = "default";
+		pinctrl-0 = <&state_default>;
+
+		state_default: pinmux {
+			sdmmc1_clk_pz0 {
+				nvidia,pins = "sdmmc1_clk_pz0";
+				nvidia,function = "sdmmc1";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			};
+			sdmmc1_cmd_pz1 {
+				nvidia,pins =	"sdmmc1_cmd_pz1",
+						"sdmmc1_dat0_py7",
+						"sdmmc1_dat1_py6",
+						"sdmmc1_dat2_py5",
+						"sdmmc1_dat3_py4";
+				nvidia,function = "sdmmc1";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			};
+			sdmmc3_clk_pa6 {
+				nvidia,pins = "sdmmc3_clk_pa6";
+				nvidia,function = "sdmmc3";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			};
+			sdmmc3_cmd_pa7 {
+				nvidia,pins =	"sdmmc3_cmd_pa7",
+						"sdmmc3_dat0_pb7",
+						"sdmmc3_dat1_pb6",
+						"sdmmc3_dat2_pb5",
+						"sdmmc3_dat3_pb4";
+				nvidia,function = "sdmmc3";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			};
+			sdmmc4_clk_pcc4 {
+				nvidia,pins =	"sdmmc4_clk_pcc4",
+						"sdmmc4_rst_n_pcc3";
+				nvidia,function = "sdmmc4";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			};
+			sdmmc4_dat0_paa0 {
+				nvidia,pins =	"sdmmc4_dat0_paa0",
+						"sdmmc4_dat1_paa1",
+						"sdmmc4_dat2_paa2",
+						"sdmmc4_dat3_paa3",
+						"sdmmc4_dat4_paa4",
+						"sdmmc4_dat5_paa5",
+						"sdmmc4_dat6_paa6",
+						"sdmmc4_dat7_paa7";
+				nvidia,function = "sdmmc4";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			};
+			dap2_fs_pa2 {
+				nvidia,pins =	"dap2_fs_pa2",
+						"dap2_sclk_pa3",
+						"dap2_din_pa4",
+						"dap2_dout_pa5";
+				nvidia,function = "i2s1";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+			};
+			pex_l1_prsnt_n_pdd4 {
+				nvidia,pins =	"pex_l1_prsnt_n_pdd4",
+						"pex_l1_clkreq_n_pdd6";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+			};
+			sdio3 {
+				nvidia,pins = "drive_sdio3";
+				nvidia,high-speed-mode = <TEGRA_PIN_DISABLE>;
+				nvidia,schmitt = <TEGRA_PIN_DISABLE>;
+				nvidia,pull-down-strength = <46>;
+				nvidia,pull-up-strength = <42>;
+				nvidia,slew-rate-rising = <1>;
+				nvidia,slew-rate-falling = <1>;
+			};
+			gpv {
+				nvidia,pins = "drive_gpv";
+				nvidia,pull-up-strength = <16>;
+			};
+		};
+	};
+
+	serial@70006000 {
+		status = "okay";
+	};
+
+	i2c@7000c000 {
+		status = "okay";
+		clock-frequency = <100000>;
+	};
+
+	i2c@7000c400 {
+		status = "okay";
+		clock-frequency = <100000>;
+	};
+
+	i2c@7000c500 {
+		status = "okay";
+		clock-frequency = <100000>;
+	};
+
+	hdmiddc: i2c@7000c700 {
+		status = "okay";
+		clock-frequency = <100000>;
+	};
+
+	i2c@7000d000 {
+		status = "okay";
+		clock-frequency = <100000>;
+
+		rt5640: rt5640@1c {
+			compatible = "realtek,rt5640";
+			reg = <0x1c>;
+			interrupt-parent = <&gpio>;
+			interrupts = <TEGRA_GPIO(X, 3) GPIO_ACTIVE_HIGH>;
+			realtek,ldo1-en-gpios =
+				<&gpio TEGRA_GPIO(X, 2) GPIO_ACTIVE_HIGH>;
+		};
+
+		pmic: tps65911@2d {
+			compatible = "ti,tps65911";
+			reg = <0x2d>;
+
+			interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
+			#interrupt-cells = <2>;
+			interrupt-controller;
+
+			ti,system-power-controller;
+
+			#gpio-cells = <2>;
+			gpio-controller;
+
+			vcc1-supply = <&vdd_5v_in_reg>;
+			vcc2-supply = <&vdd_5v_in_reg>;
+			vcc3-supply = <&vio_reg>;
+			vcc4-supply = <&vdd_5v_in_reg>;
+			vcc5-supply = <&vdd_5v_in_reg>;
+			vcc6-supply = <&vdd2_reg>;
+			vcc7-supply = <&vdd_5v_in_reg>;
+			vccio-supply = <&vdd_5v_in_reg>;
+
+			regulators {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				vdd1_reg: vdd1 {
+					regulator-name = "vddio_ddr_1v2";
+					regulator-min-microvolt = <1200000>;
+					regulator-max-microvolt = <1200000>;
+					regulator-always-on;
+				};
+
+				vdd2_reg: vdd2 {
+					regulator-name = "vdd_1v5_gen";
+					regulator-min-microvolt = <1500000>;
+					regulator-max-microvolt = <1500000>;
+					regulator-always-on;
+				};
+
+				vddctrl_reg: vddctrl {
+					regulator-name = "vdd_cpu,vdd_sys";
+					regulator-min-microvolt = <1000000>;
+					regulator-max-microvolt = <1000000>;
+					regulator-always-on;
+				};
+
+				vio_reg: vio {
+					regulator-name = "vdd_1v8_gen";
+					regulator-min-microvolt = <1800000>;
+					regulator-max-microvolt = <1800000>;
+					regulator-always-on;
+				};
+
+				ldo1_reg: ldo1 {
+					regulator-name = "vdd_pexa,vdd_pexb";
+					regulator-min-microvolt = <1050000>;
+					regulator-max-microvolt = <1050000>;
+				};
+
+				ldo2_reg: ldo2 {
+					regulator-name = "vdd_sata,avdd_plle";
+					regulator-min-microvolt = <1050000>;
+					regulator-max-microvolt = <1050000>;
+				};
+
+				/* LDO3 is not connected to anything */
+
+				ldo4_reg: ldo4 {
+					regulator-name = "vdd_rtc";
+					regulator-min-microvolt = <1200000>;
+					regulator-max-microvolt = <1200000>;
+					regulator-always-on;
+				};
+
+				ldo5_reg: ldo5 {
+					regulator-name = "vddio_sdmmc,avdd_vdac";
+					regulator-min-microvolt = <3300000>;
+					regulator-max-microvolt = <3300000>;
+					regulator-always-on;
+				};
+
+				ldo6_reg: ldo6 {
+					regulator-name = "avdd_dsi_csi,pwrdet_mipi";
+					regulator-min-microvolt = <1200000>;
+					regulator-max-microvolt = <1200000>;
+				};
+
+				ldo7_reg: ldo7 {
+					regulator-name = "vdd_pllm,x,u,a_p_c_s";
+					regulator-min-microvolt = <1200000>;
+					regulator-max-microvolt = <1200000>;
+					regulator-always-on;
+				};
+
+				ldo8_reg: ldo8 {
+					regulator-name = "vdd_ddr_hs";
+					regulator-min-microvolt = <1000000>;
+					regulator-max-microvolt = <1000000>;
+					regulator-always-on;
+				};
+			};
+		};
+
+		tps62361@60 {
+			compatible = "ti,tps62361";
+			reg = <0x60>;
+
+			regulator-name = "tps62361-vout";
+			regulator-min-microvolt = <500000>;
+			regulator-max-microvolt = <1500000>;
+			regulator-boot-on;
+			regulator-always-on;
+			ti,vsel0-state-high;
+			ti,vsel1-state-high;
+		};
+	};
+
+	spi@7000da00 {
+		status = "okay";
+		spi-max-frequency = <25000000>;
+		spi-flash@1 {
+			compatible = "winbond,w25q32";
+			reg = <1>;
+			spi-max-frequency = <20000000>;
+		};
+	};
+
+	pmc@7000e400 {
+		status = "okay";
+		nvidia,invert-interrupt;
+		nvidia,suspend-mode = <1>;
+		nvidia,cpu-pwr-good-time = <2000>;
+		nvidia,cpu-pwr-off-time = <200>;
+		nvidia,core-pwr-good-time = <3845 3845>;
+		nvidia,core-pwr-off-time = <0>;
+		nvidia,core-power-req-active-high;
+		nvidia,sys-clock-req-active-high;
+	};
+
+	ahub@70080000 {
+		i2s@70080400 {
+			status = "okay";
+		};
+	};
+
+	sdhci@78000000 {
+		status = "okay";
+		cd-gpios = <&gpio TEGRA_GPIO(I, 5) GPIO_ACTIVE_LOW>;
+		wp-gpios = <&gpio TEGRA_GPIO(T, 3) GPIO_ACTIVE_HIGH>;
+		power-gpios = <&gpio TEGRA_GPIO(D, 7) GPIO_ACTIVE_HIGH>;
+		bus-width = <4>;
+	};
+
+	sdhci@78000600 {
+		status = "okay";
+		bus-width = <8>;
+		non-removable;
+	};
+
+	usb@7d004000 {
+		status = "okay";
+	};
+
+	phy2: usb-phy@7d004000 {
+		vbus-supply = <&sys_3v3_reg>;
+		status = "okay";
+	};
+
+	usb@7d008000 {
+		status = "okay";
+	};
+
+	usb-phy@7d008000 {
+		vbus-supply = <&usb3_vbus_reg>;
+		status = "okay";
+	};
+
+	clocks {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		clk32k_in: clock@0 {
+			compatible = "fixed-clock";
+			reg=<0>;
+			#clock-cells = <0>;
+			clock-frequency = <32768>;
+		};
+	};
+
+	gpio-leds {
+		compatible = "gpio-leds";
+
+		gpled1 {
+			label = "LED1"; /* CR5A1 (blue) */
+			gpios = <&gpio TEGRA_GPIO(L, 1) GPIO_ACTIVE_HIGH>;
+		};
+		gpled2 {
+			label = "LED2"; /* CR4A2 (green) */
+			gpios = <&gpio TEGRA_GPIO(L, 0) GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+	regulators {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		vdd_5v_in_reg: regulator@0 {
+			compatible = "regulator-fixed";
+			reg = <0>;
+			regulator-name = "vdd_5v_in";
+			regulator-min-microvolt = <5000000>;
+			regulator-max-microvolt = <5000000>;
+			regulator-always-on;
+		};
+
+		chargepump_5v_reg: regulator@1 {
+			compatible = "regulator-fixed";
+			reg = <1>;
+			regulator-name = "chargepump_5v";
+			regulator-min-microvolt = <5000000>;
+			regulator-max-microvolt = <5000000>;
+			regulator-boot-on;
+			regulator-always-on;
+			enable-active-high;
+			gpio = <&pmic 0 GPIO_ACTIVE_HIGH>;
+		};
+
+		ddr_reg: regulator@2 {
+			compatible = "regulator-fixed";
+			reg = <2>;
+			regulator-name = "vdd_ddr";
+			regulator-min-microvolt = <1500000>;
+			regulator-max-microvolt = <1500000>;
+			regulator-always-on;
+			regulator-boot-on;
+			enable-active-high;
+			gpio = <&pmic 7 GPIO_ACTIVE_HIGH>;
+			vin-supply = <&vdd_5v_in_reg>;
+		};
+
+		vdd_5v_sata_reg: regulator@3 {
+			compatible = "regulator-fixed";
+			reg = <3>;
+			regulator-name = "vdd_5v_sata";
+			regulator-min-microvolt = <5000000>;
+			regulator-max-microvolt = <5000000>;
+			regulator-always-on;
+			regulator-boot-on;
+			enable-active-high;
+			gpio = <&gpio TEGRA_GPIO(D, 6) GPIO_ACTIVE_HIGH>;
+			vin-supply = <&vdd_5v_in_reg>;
+		};
+
+		usb1_vbus_reg: regulator@4 {
+			compatible = "regulator-fixed";
+			reg = <4>;
+			regulator-name = "usb1_vbus";
+			regulator-min-microvolt = <5000000>;
+			regulator-max-microvolt = <5000000>;
+			enable-active-high;
+			gpio = <&gpio TEGRA_GPIO(DD, 6) GPIO_ACTIVE_HIGH>;
+			gpio-open-drain;
+			vin-supply = <&vdd_5v_in_reg>;
+		};
+
+		usb3_vbus_reg: regulator@5 {
+			compatible = "regulator-fixed";
+			reg = <5>;
+			regulator-name = "usb3_vbus";
+			regulator-min-microvolt = <5000000>;
+			regulator-max-microvolt = <5000000>;
+			enable-active-high;
+			gpio = <&gpio TEGRA_GPIO(DD, 4) GPIO_ACTIVE_HIGH>;
+			gpio-open-drain;
+			vin-supply = <&vdd_5v_in_reg>;
+		};
+
+		sys_3v3_reg: regulator@6 {
+			compatible = "regulator-fixed";
+			reg = <6>;
+			regulator-name = "sys_3v3,vdd_3v3_alw";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			regulator-always-on;
+			regulator-boot-on;
+			enable-active-high;
+			gpio = <&pmic 6 GPIO_ACTIVE_HIGH>;
+			vin-supply = <&vdd_5v_in_reg>;
+		};
+
+		sys_3v3_pexs_reg: regulator@7 {
+			compatible = "regulator-fixed";
+			reg = <7>;
+			regulator-name = "sys_3v3_pexs";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			regulator-always-on;
+			regulator-boot-on;
+			enable-active-high;
+			gpio = <&gpio TEGRA_GPIO(L, 7) GPIO_ACTIVE_HIGH>;
+			vin-supply = <&sys_3v3_reg>;
+		};
+	};
+
+	sound {
+		compatible = "nvidia,tegra-audio-rt5640-beaver",
+			     "nvidia,tegra-audio-rt5640";
+		nvidia,model = "NVIDIA Tegra Beaver";
+
+		nvidia,audio-routing =
+			"Headphones", "HPOR",
+			"Headphones", "HPOL",
+			"Mic Jack", "MICBIAS1",
+			"IN2P", "Mic Jack";
+
+		nvidia,i2s-controller = <&tegra_i2s1>;
+		nvidia,audio-codec = <&rt5640>;
+
+		nvidia,hp-det-gpios = <&gpio TEGRA_GPIO(W, 2) GPIO_ACTIVE_HIGH>;
+
+		clocks = <&tegra_car TEGRA30_CLK_PLL_A>,
+			 <&tegra_car TEGRA30_CLK_PLL_A_OUT0>,
+			 <&tegra_car TEGRA30_CLK_EXTERN1>;
+		clock-names = "pll_a", "pll_a_out0", "mclk";
+	};
+};
diff --git a/arch/arm/mach-tegra/Kconfig b/arch/arm/mach-tegra/Kconfig
index c272e8e0dcb5..1bbe6ce5e1bc 100644
--- a/arch/arm/mach-tegra/Kconfig
+++ b/arch/arm/mach-tegra/Kconfig
@@ -60,6 +60,10 @@ config MACH_TOSHIBA_AC100
 	bool "Toshiba AC100"
 	select ARCH_TEGRA_2x_SOC
 
+config MACH_NVIDIA_BEAVER
+	bool "NVIDIA Beaver"
+	select ARCH_TEGRA_3x_SOC
+
 endmenu
 
 # ---------------------------------------------------------
diff --git a/images/Makefile.tegra b/images/Makefile.tegra
index f03503e83878..c957599958ca 100644
--- a/images/Makefile.tegra
+++ b/images/Makefile.tegra
@@ -12,3 +12,8 @@ image-$(CONFIG_MACH_TOSHIBA_AC100) += barebox-tegra20-toshiba-ac100.img
 pblx-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += start_toradex_colibri_t20_iris
 FILE_barebox-tegra20-toradex-colibri-t20-iris.img = start_toradex_colibri_t20_iris.pblx
 image-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += barebox-tegra20-toradex-colibri-t20-iris.img
+
+# ----------------------- Tegra30 based boards ---------------------------
+pblx-$(CONFIG_MACH_NVIDIA_BEAVER) += start_nvidia_beaver
+FILE_barebox-tegra30-nvidia-beaver.img = start_nvidia_beaver.pblx
+image-$(CONFIG_MACH_NVIDIA_BEAVER) += barebox-tegra30-nvidia-beaver.img
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
