Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9lSf-00073n-SC
 for barebox@lists.infradead.org; Thu, 05 Mar 2020 08:02:32 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 Mar 2020 09:02:25 +0100
Message-Id: <20200305080225.19103-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200305080225.19103-1-a.fatoum@pengutronix.de>
References: <20200305080225.19103-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH 2/2] ARM: at91: add sama5d27-based Groboards Giant Board
 support
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The Groboards Giant Board is a ATSAMA5D27C-D1G SiP-based SBC.
The board features a 500MHz ARM Cortex-A5 and 128MB DDR2 SDRAM in the
SiP as well as a MicroSD slot on the PCB.

barebox doesn't yet support the sama5d2 SDHCI-variant, so board support
is limited to toggling the LED and interfacing with the UART, but add
this now till the rest may follow. Device tree is based on the vendor's
device-tree available at https://github.com/Groboards/giantboard-tools

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/sama5d27-giantboard/Makefile  |   1 +
 .../arm/boards/sama5d27-giantboard/lowlevel.c |  56 ++++
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/at91-sama5d27_giantboard.dts     | 299 ++++++++++++++++++
 arch/arm/mach-at91/Kconfig                    |   8 +
 images/Makefile.at91                          |   4 +
 7 files changed, 370 insertions(+)
 create mode 100644 arch/arm/boards/sama5d27-giantboard/Makefile
 create mode 100644 arch/arm/boards/sama5d27-giantboard/lowlevel.c
 create mode 100644 arch/arm/dts/at91-sama5d27_giantboard.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 14538af53bf6..9fe458e0a390 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -113,6 +113,7 @@ obj-$(CONFIG_MACH_RPI_COMMON)			+= raspberry-pi/
 obj-$(CONFIG_MACH_SABRELITE)			+= freescale-mx6-sabrelite/
 obj-$(CONFIG_MACH_SABRESD)			+= freescale-mx6-sabresd/
 obj-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB)	+= freescale-mx6sx-sabresdb/
+obj-$(CONFIG_MACH_SAMA5D27_GIANTBOARD)		+= sama5d27-giantboard/
 obj-$(CONFIG_MACH_SAMA5D27_SOM1)		+= sama5d27-som1/
 obj-$(CONFIG_MACH_SAMA5D3XEK)			+= sama5d3xek/
 obj-$(CONFIG_MACH_SAMA5D3_XPLAINED)		+= sama5d3_xplained/
diff --git a/arch/arm/boards/sama5d27-giantboard/Makefile b/arch/arm/boards/sama5d27-giantboard/Makefile
new file mode 100644
index 000000000000..b08c4a93ca27
--- /dev/null
+++ b/arch/arm/boards/sama5d27-giantboard/Makefile
@@ -0,0 +1 @@
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/sama5d27-giantboard/lowlevel.c b/arch/arm/boards/sama5d27-giantboard/lowlevel.c
new file mode 100644
index 000000000000..cd762bd9f053
--- /dev/null
+++ b/arch/arm/boards/sama5d27-giantboard/lowlevel.c
@@ -0,0 +1,56 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2019 Ahmad Fatoum, Pengutronix
+ */
+
+#include <common.h>
+#include <init.h>
+
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/at91_pmc_ll.h>
+
+#include <mach/hardware.h>
+#include <mach/iomux.h>
+#include <debug_ll.h>
+#include <mach/at91_dbgu.h>
+
+/* PCK = 492MHz, MCK = 164MHz */
+#define MASTER_CLOCK	164000000
+
+#define sama5d2_pmc_enable_periph_clock(clk) \
+	at91_pmc_sam9x5_enable_periph_clock(IOMEM(SAMA5D2_BASE_PMC), clk)
+
+static __always_inline void dbgu_init(void)
+{
+	unsigned mck = MASTER_CLOCK / 2;
+
+	sama5d2_pmc_enable_periph_clock(SAMA5D2_ID_PIOD);
+
+	at91_mux_pio4_set_A_periph(IOMEM(SAMA5D2_BASE_PIOD),
+				   pin_to_mask(AT91_PIN_PD3)); /* DBGU TXD */
+
+	sama5d2_pmc_enable_periph_clock(SAMA5D2_ID_UART1);
+
+	at91_dbgu_setup_ll(IOMEM(SAMA5D2_BASE_UART1), mck, 115200);
+
+	putc_ll('>');
+}
+
+extern char __dtb_z_at91_sama5d27_giantboard_start[];
+
+ENTRY_FUNCTION(start_sama5d27_giantboard, r0, r1, r2)
+{
+	void *fdt;
+
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(SAMA5D2_SRAM_BASE + SAMA5D2_SRAM_SIZE - 16);
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		dbgu_init();
+
+	fdt = __dtb_z_at91_sama5d27_giantboard_start + get_runtime_offset();
+
+	barebox_arm_entry(SAMA5_DDRCS, SZ_128M, fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index b1c9a2c7903f..ddfe64e83bdf 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -138,6 +138,7 @@ lwl-dtb-$(CONFIG_MACH_ZII_VF610_DEV) += \
 lwl-dtb-$(CONFIG_MACH_AT91SAM9263EK_DT) += at91sam9263ek.dtb.o
 lwl-dtb-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += at91-microchip-ksz9477-evb.dtb.o
 lwl-dtb-$(CONFIG_MACH_SAMA5D27_SOM1) += at91-sama5d27_som1_ek.dtb.o
+lwl-dtb-$(CONFIG_MACH_SAMA5D27_GIANTBOARD) += at91-sama5d27_giantboard.dtb.o
 lwl-dtb-$(CONFIG_MACH_AT91SAM9X5EK) += at91sam9x5ek.dtb.o
 lwl-dtb-$(CONFIG_MACH_XILINX_ZCU104) += zynqmp-zcu104-revA.dtb.o
 
diff --git a/arch/arm/dts/at91-sama5d27_giantboard.dts b/arch/arm/dts/at91-sama5d27_giantboard.dts
new file mode 100644
index 000000000000..940379e43005
--- /dev/null
+++ b/arch/arm/dts/at91-sama5d27_giantboard.dts
@@ -0,0 +1,299 @@
+// SPDX-License-Identifer: GPL-2.0-or-later OR X11
+/*
+ * at91-sama5d27_giantboard.dts - Device Tree file for SAMA5D27 Giant Board
+ *
+ *  Copyright (c) 2017, Microchip Technology Inc.
+ *                2016 Nicolas Ferre <nicolas.ferre@atmel.com>
+ *                2017 Cristian Birsan <cristian.birsan@microchip.com>
+ *                2017 Claudiu Beznea <claudiu.beznea@microchip.com>
+ *                2019 Ahmad Fatoum <a.fatoum@pengutronix.de>
+ */
+
+/dts-v1/;
+
+#include <arm/sama5d2.dtsi>
+#include <arm/sama5d2-pinfunc.h>
+#include <dt-bindings/mfd/atmel-flexcom.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/regulator/active-semi,8945a-regulator.h>
+
+/ {
+	model = "Giant Board";
+	compatible = "groboards,sama5d27-giantboard", "atmel,sama5d27", "atmel,sama5d2", "atmel,sama5";
+
+	chosen {
+		stdout-path = &uart1;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_led_gpio_default>;
+
+		orange {
+			label = "orange";
+			gpios = <&pioA PIN_PA6 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "mmc0";
+		};
+	};
+
+	memory {
+		reg = <0x20000000 0x8000000>;
+	};
+};
+
+&slow_xtal {
+	clock-frequency = <32768>;
+};
+
+&main_xtal {
+	clock-frequency = <24000000>;
+};
+
+&usb0 {
+	status = "okay";
+};
+
+&sdmmc1 {
+	bus-width = <4>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_sdmmc1_default>;
+	status = "okay";
+};
+
+&spi0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_spi0_default>;
+	status = "disabled";
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1_default>;
+	atmel,use-dma-rx;
+	atmel,use-dma-tx;
+	status = "okay";
+};
+
+&shutdown_controller {
+	atmel,shdwc-debouncer = <976>;
+	atmel,wakeup-rtc-timer;
+
+	input@0 {
+		reg = <0>;
+		atmel,wakeup-type = "low";
+	};
+};
+
+&watchdog {
+	status = "okay";
+};
+
+&i2c0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c0_default>;
+	dmas = <0>, <0>;
+};
+
+&i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1_default>;
+	dmas = <0>, <0>;
+	i2c-sda-hold-time-ns = <350>;
+	status = "okay";
+
+	pmic@5b {
+		compatible = "active-semi,act8945a";
+		reg = <0x5b>;
+		active-semi,vsel-low;
+
+		regulators {
+			vdd_1v8_reg: REG_DCDC1 {
+				regulator-name = "VDD_1V8";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-always-on;
+
+				regulator-allowed-modes = <ACT8945A_REGULATOR_MODE_FIXED>,
+							  <ACT8945A_REGULATOR_MODE_LOWPOWER>;
+				regulator-initial-mode = <ACT8945A_REGULATOR_MODE_FIXED>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-min-microvolt=<1850000>;
+					regulator-suspend-max-microvolt=<1850000>;
+					regulator-changeable-in-suspend;
+					regulator-mode=<ACT8945A_REGULATOR_MODE_LOWPOWER>;
+				};
+			};
+
+			vdd_1v2_reg: REG_DCDC2 {
+				regulator-name = "VDD_1V2";
+				regulator-min-microvolt = <1100000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-allowed-modes = <ACT8945A_REGULATOR_MODE_FIXED>,
+							  <ACT8945A_REGULATOR_MODE_LOWPOWER>;
+				regulator-initial-mode = <ACT8945A_REGULATOR_MODE_FIXED>;
+				regulator-always-on;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_3v3_reg: REG_DCDC3 {
+				regulator-name = "VDD_3V3";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-allowed-modes = <ACT8945A_REGULATOR_MODE_FIXED>,
+							  <ACT8945A_REGULATOR_MODE_LOWPOWER>;
+				regulator-initial-mode = <ACT8945A_REGULATOR_MODE_FIXED>;
+				regulator-always-on;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_fuse_reg: REG_LDO1 {
+				regulator-name = "VDD_FUSE";
+				regulator-min-microvolt = <2500000>;
+				regulator-max-microvolt = <2500000>;
+				regulator-allowed-modes = <ACT8945A_REGULATOR_MODE_NORMAL>,
+							  <ACT8945A_REGULATOR_MODE_LOWPOWER>;
+				regulator-initial-mode = <ACT8945A_REGULATOR_MODE_NORMAL>;
+				regulator-always-on;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_3v3_lp_reg: REG_LDO2 {
+				regulator-name = "VDD_3V3_LP";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-allowed-modes = <ACT8945A_REGULATOR_MODE_NORMAL>,
+							  <ACT8945A_REGULATOR_MODE_LOWPOWER>;
+				regulator-initial-mode = <ACT8945A_REGULATOR_MODE_NORMAL>;
+				regulator-always-on;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_led_reg: REG_LDO3 {
+				regulator-name = "VDD_LED";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-allowed-modes = <ACT8945A_REGULATOR_MODE_NORMAL>,
+							  <ACT8945A_REGULATOR_MODE_LOWPOWER>;
+				regulator-initial-mode = <ACT8945A_REGULATOR_MODE_NORMAL>;
+				regulator-always-on;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_sdhc_1v8_reg: REG_LDO4 {
+				regulator-name = "VDD_SDHC_1V8";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-allowed-modes = <ACT8945A_REGULATOR_MODE_NORMAL>,
+							  <ACT8945A_REGULATOR_MODE_LOWPOWER>;
+				regulator-initial-mode = <ACT8945A_REGULATOR_MODE_NORMAL>;
+				regulator-always-on;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+		};
+
+		charger {
+			compatible = "active-semi,act8945a-charger";
+			pinctrl-names = "default";
+			pinctrl-0 = <&pinctrl_charger_chglev &pinctrl_charger_lbo &pinctrl_charger_irq>;
+			interrupt-parent = <&pioA>;
+			interrupts = <PIN_PB13 IRQ_TYPE_EDGE_RISING>;
+
+			active-semi,chglev-gpios = <&pioA PIN_PA12 GPIO_ACTIVE_HIGH>;
+			active-semi,lbo-gpios = <&pioA PIN_PC8 GPIO_ACTIVE_LOW>;
+			active-semi,input-voltage-threshold-microvolt = <6600>;
+			active-semi,precondition-timeout = <40>;
+			active-semi,total-timeout = <3>;
+		};
+	};
+};
+
+&adc {
+	vddana-supply = <&vdd_3v3_reg>;
+	vref-supply = <&vdd_3v3_reg>;
+	status = "disabled";
+};
+
+&pioA {
+	pinctrl_i2c0_default: i2c0_default {
+		pinmux = <PIN_PB31__TWD0>,
+			 <PIN_PC0__TWCK0>;
+		bias-disable;
+	};
+
+	pinctrl_i2c1_default: i2c1_default {
+		pinmux = <PIN_PD4__TWD1>,
+			 <PIN_PD5__TWCK1>;
+		bias-disable;
+	};
+
+	pinctrl_led_gpio_default: led_gpio_default {
+		pinmux = <PIN_PA6__GPIO>;
+		bias-pull-down;
+	};
+
+	pinctrl_sdmmc1_default: sdmmc1_default {
+		cmd_data {
+			pinmux = <PIN_PA28__SDMMC1_CMD>,
+				 <PIN_PA18__SDMMC1_DAT0>,
+				 <PIN_PA19__SDMMC1_DAT1>,
+				 <PIN_PA20__SDMMC1_DAT2>,
+				 <PIN_PA21__SDMMC1_DAT3>;
+			bias-pull-up;
+		};
+
+		conf-ck_cd {
+			pinmux = <PIN_PA22__SDMMC1_CK>,
+			<PIN_PA30__SDMMC1_CD>;
+			bias-disable;
+		};
+	};
+
+	pinctrl_spi0_default: spi0_default {
+		pinmux = <PIN_PA14__SPI0_SPCK>,
+			 <PIN_PA15__SPI0_MOSI>,
+			 <PIN_PA16__SPI0_MISO>;
+		bias-disable;
+	};
+
+	pinctrl_uart1_default: uart1_default {
+		pinmux = <PIN_PD2__URXD1>,
+			 <PIN_PD3__UTXD1>;
+		bias-disable;
+	};
+
+	pinctrl_charger_chglev: charger_chglev {
+		pinmux = <PIN_PA12__GPIO>;
+		bias-disable;
+	};
+
+	pinctrl_charger_irq: charger_irq {
+		pinmux = <PIN_PB13__GPIO>;
+		bias-disable;
+	};
+
+	pinctrl_charger_lbo: charger_lbo {
+		pinmux = <PIN_PC8__GPIO>;
+		bias-pull-up;
+	};
+};
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 0eb5410664bb..eb14cd2c28da 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -587,6 +587,14 @@ config MACH_SAMA5D27_SOM1
 	help
 	  Select this if you are using Microchip's sama5d27 SoM evaluation kit
 
+config MACH_SAMA5D27_GIANTBOARD
+	bool "Groboards SAMA5D27 Giant Board"
+	select SOC_SAMA5D2
+	select OFDEVICE
+	select COMMON_CLK_OF_PROVIDER
+	help
+	  Select this if you are using the Groboards sama5d27 Giantboard
+
 endif
 
 comment "AT91 Board Options"
diff --git a/images/Makefile.at91 b/images/Makefile.at91
index f321bdec3696..448d71fb981d 100644
--- a/images/Makefile.at91
+++ b/images/Makefile.at91
@@ -17,3 +17,7 @@ image-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += barebox-microchip-ksz9477-evb.img
 pblb-$(CONFIG_MACH_SAMA5D27_SOM1) += start_sama5d27_som1_ek
 FILE_barebox-sama5d27-som1-ek.img = start_sama5d27_som1_ek.pblb
 image-$(CONFIG_MACH_SAMA5D27_SOM1) += barebox-sama5d27-som1-ek.img
+
+pblb-$(CONFIG_MACH_SAMA5D27_GIANTBOARD) += start_sama5d27_giantboard
+FILE_barebox-groboards-sama5d27-giantboard.img = start_sama5d27_giantboard.pblb
+image-$(CONFIG_MACH_SAMA5D27_GIANTBOARD) += barebox-groboards-sama5d27-giantboard.img
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
