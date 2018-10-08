Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9P7m-0004zK-8j
 for barebox@lists.infradead.org; Mon, 08 Oct 2018 06:35:25 +0000
Received: by mail-pf1-x42b.google.com with SMTP id m77-v6so7862912pfi.8
 for <barebox@lists.infradead.org>; Sun, 07 Oct 2018 23:34:27 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun,  7 Oct 2018 23:34:09 -0700
Message-Id: <20181008063409.17566-7-andrew.smirnov@gmail.com>
In-Reply-To: <20181008063409.17566-1-andrew.smirnov@gmail.com>
References: <20181008063409.17566-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 6/6] i.MX: Add support for ZII's i.MX7D-based RPU2 board
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/zii-imx7d-rpu2/Makefile       |   2 +
 arch/arm/boards/zii-imx7d-rpu2/board.c        |  49 ++
 .../flash-header-zii-imx7d-rpu2.imxcfg        |   6 +
 arch/arm/boards/zii-imx7d-rpu2/lowlevel.c     |  50 ++
 arch/arm/dts/Makefile                         |   2 +
 arch/arm/dts/imx7d-zii-rpu2.dts               | 613 ++++++++++++++++++
 arch/arm/mach-imx/Kconfig                     |   4 +
 images/Makefile.imx                           |   5 +
 9 files changed, 732 insertions(+)
 create mode 100644 arch/arm/boards/zii-imx7d-rpu2/Makefile
 create mode 100644 arch/arm/boards/zii-imx7d-rpu2/board.c
 create mode 100644 arch/arm/boards/zii-imx7d-rpu2/flash-header-zii-imx7d-rpu2.imxcfg
 create mode 100644 arch/arm/boards/zii-imx7d-rpu2/lowlevel.c
 create mode 100644 arch/arm/dts/imx7d-zii-rpu2.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index b9bf67f0a..b6766616a 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -156,3 +156,4 @@ obj-$(CONFIG_MACH_ZII_RDU1)			+= zii-imx51-rdu1/
 obj-$(CONFIG_MACH_ZII_RDU2)			+= zii-imx6q-rdu2/
 obj-$(CONFIG_MACH_ZII_RDU3)			+= zii-imx8mq-rdu3/
 obj-$(CONFIG_MACH_ZII_VF610_DEV)		+= zii-vf610-dev/
+obj-$(CONFIG_MACH_ZII_IMX7D_RPU2)		+= zii-imx7d-rpu2/
diff --git a/arch/arm/boards/zii-imx7d-rpu2/Makefile b/arch/arm/boards/zii-imx7d-rpu2/Makefile
new file mode 100644
index 000000000..01c7a259e
--- /dev/null
+++ b/arch/arm/boards/zii-imx7d-rpu2/Makefile
@@ -0,0 +1,2 @@
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/zii-imx7d-rpu2/board.c b/arch/arm/boards/zii-imx7d-rpu2/board.c
new file mode 100644
index 000000000..0a99976b7
--- /dev/null
+++ b/arch/arm/boards/zii-imx7d-rpu2/board.c
@@ -0,0 +1,49 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+/*
+ * Copyright (C) 2018 Zodiac Inflight Innovation
+ * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <gpio.h>
+#include <mach/imx7-regs.h>
+#include <mfd/imx7-iomuxc-gpr.h>
+#include <environment.h>
+#include <envfs.h>
+#include <mach/bbu.h>
+
+static void zii_imx7d_rpu2_init_fec(void)
+{
+	void __iomem *gpr = IOMEM(MX7_IOMUXC_GPR_BASE_ADDR);
+	uint32_t gpr1;
+
+	/*
+	 * Make sure we do not drive ENETn_TX_CLK signal
+	 */
+	gpr1 = readl(gpr + IOMUXC_GPR1);
+	gpr1 &= ~(IMX7D_GPR1_ENET1_TX_CLK_SEL_MASK |
+		  IMX7D_GPR1_ENET1_CLK_DIR_MASK |
+		  IMX7D_GPR1_ENET2_TX_CLK_SEL_MASK |
+		  IMX7D_GPR1_ENET2_CLK_DIR_MASK);
+	writel(gpr1, gpr + IOMUXC_GPR1);
+}
+
+static int zii_imx7d_rpu2_coredevices_init(void)
+{
+	if (!of_machine_is_compatible("zii,imx7d-zii-rpu2"))
+		return 0;
+
+	zii_imx7d_rpu2_init_fec();
+
+	imx7_bbu_internal_spi_i2c_register_handler("SPI", "/dev/m25p0.barebox",
+						   BBU_HANDLER_FLAG_DEFAULT);
+
+	imx7_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc2", 0);
+
+	return 0;
+}
+coredevice_initcall(zii_imx7d_rpu2_coredevices_init);
+
diff --git a/arch/arm/boards/zii-imx7d-rpu2/flash-header-zii-imx7d-rpu2.imxcfg b/arch/arm/boards/zii-imx7d-rpu2/flash-header-zii-imx7d-rpu2.imxcfg
new file mode 100644
index 000000000..46f3d9504
--- /dev/null
+++ b/arch/arm/boards/zii-imx7d-rpu2/flash-header-zii-imx7d-rpu2.imxcfg
@@ -0,0 +1,6 @@
+soc imx7
+loadaddr 0x80000000
+dcdofs 0x400
+
+#include <mach/flash-header/imx7d-ddr-sabresd.imxcfg>
+
diff --git a/arch/arm/boards/zii-imx7d-rpu2/lowlevel.c b/arch/arm/boards/zii-imx7d-rpu2/lowlevel.c
new file mode 100644
index 000000000..1eeab7d21
--- /dev/null
+++ b/arch/arm/boards/zii-imx7d-rpu2/lowlevel.c
@@ -0,0 +1,50 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+/*
+ * Copyright (C) 2018 Zodiac Inflight Innovation
+ * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
+ */
+
+#include <debug_ll.h>
+#include <io.h>
+#include <common.h>
+#include <linux/sizes.h>
+#include <mach/generic.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/imx7-ccm-regs.h>
+#include <mach/iomux-mx7.h>
+#include <mach/debug_ll.h>
+#include <asm/cache.h>
+#include <mach/esdctl.h>
+
+extern char __dtb_imx7d_zii_rpu2_start[];
+
+static inline void setup_uart(void)
+{
+	void __iomem *iomux = IOMEM(MX7_IOMUXC_BASE_ADDR);
+	void __iomem *ccm   = IOMEM(MX7_CCM_BASE_ADDR);
+
+	writel(CCM_CCGR_SETTINGn_NEEDED(0),
+	       ccm + CCM_CCGRn_CLR(CCM_CCGR_UART2));
+	writel(CCM_TARGET_ROOTn_ENABLE | UART2_CLK_ROOT__OSC_24M,
+	       ccm + CCM_TARGET_ROOTn(UART2_CLK_ROOT));
+	writel(CCM_CCGR_SETTINGn_NEEDED(0),
+	       ccm + CCM_CCGRn_SET(CCM_CCGR_UART2));
+
+	mx7_setup_pad(iomux, MX7D_PAD_UART2_TX_DATA__UART2_DCE_TX);
+
+	imx7_uart_setup_ll();
+
+	putc_ll('>');
+}
+
+ENTRY_FUNCTION(start_zii_imx7d_rpu2, r0, r1, r2)
+{
+	imx7_cpu_lowlevel_init();
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		setup_uart();
+
+	imx7d_barebox_entry(__dtb_imx7d_zii_rpu2_start + get_runtime_offset());
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 2361e0d6f..f8ebb6ca5 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -118,4 +118,6 @@ pbl-dtb-$(CONFIG_MACH_ZII_VF610_DEV) += \
 pbl-dtb-$(CONFIG_MACH_AT91SAM9263EK_DT) += at91sam9263ek.dtb.o
 pbl-dtb-$(CONFIG_MACH_AT91SAM9X5EK) += at91sam9x5ek.dtb.o
 
+pbl-dtb-$(CONFIG_MACH_ZII_IMX7D_RPU2) += imx7d-zii-rpu2.dtb.o
+
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.lzo
diff --git a/arch/arm/dts/imx7d-zii-rpu2.dts b/arch/arm/dts/imx7d-zii-rpu2.dts
new file mode 100644
index 000000000..6fba73f43
--- /dev/null
+++ b/arch/arm/dts/imx7d-zii-rpu2.dts
@@ -0,0 +1,613 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/*
+ * Copyright (C) 2018 Zodiac Inflight Innovations
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/input/input.h>
+#include <arm/imx7d.dtsi>
+
+#include "imx7d-ddrc.dtsi"
+
+/ {
+	model = "ZII RPU2 Board";
+	compatible = "zii,imx7d-zii-rpu2","fsl,imx7d";
+
+	chosen {
+		stdout-path = &uart2;
+	};
+
+	gpio-leds {
+		compatible = "gpio-leds";
+		pinctrl-0 = <&pinctrl_leds_debug>;
+		pinctrl-names = "default";
+
+		debug {
+			label = "zii:green:debug1";
+			gpios = <&gpio2 8 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
+	regulators {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		reg_usb_otg1_vbus: regulator@0 {
+			compatible = "regulator-fixed";
+			reg = <0>;
+			regulator-name = "usb_otg1_vbus";
+			regulator-min-microvolt = <5000000>;
+			regulator-max-microvolt = <5000000>;
+		};
+
+		reg_usb_otg2_vbus: regulator@1 {
+			compatible = "regulator-fixed";
+			reg = <1>;
+			regulator-name = "usb_otg2_vbus";
+			regulator-min-microvolt = <5000000>;
+			regulator-max-microvolt = <5000000>;
+		};
+
+		reg_sd1_vmmc: regulator@3 {
+			compatible = "regulator-fixed";
+			regulator-name = "VDD_SD1";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			gpio = <&gpio5 2 GPIO_ACTIVE_HIGH>;
+			startup-delay-us = <200000>;
+			enable-active-high;
+		};
+
+		reg_can1_3v3: regulator@4 {
+			compatible = "regulator-fixed";
+			reg = <4>;
+			regulator-name = "can1-3v3";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			gpio = <&gpio1 8 GPIO_ACTIVE_LOW>;
+		};
+
+		reg_can2_3v3: regulator@5 {
+			compatible = "regulator-fixed";
+			reg = <5>;
+			regulator-name = "can2-3v3";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			gpio = <&gpio1 9 GPIO_ACTIVE_LOW>;
+		};
+
+		reg_vref_1v8: regulator@6 {
+			compatible = "regulator-fixed";
+			reg = <6>;
+			regulator-name = "vref-1v8";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+		};
+
+		wlreg_on: fixedregulator@100 {
+			compatible = "regulator-fixed";
+			regulator-min-microvolt = <5000000>;
+			regulator-max-microvolt = <5000000>;
+			regulator-name = "wlreg_on";
+			gpio = <&gpio4 21 GPIO_ACTIVE_HIGH>;
+			startup-delay-us = <100>;
+			enable-active-high;
+		};
+
+		reg_3p3v: regulator-3p3v {
+			compatible = "regulator-fixed";
+			regulator-name = "GEN_3V3";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			regulator-always-on;
+		};
+
+		reg_5p0v_main: regulator-5p0v-main {
+			compatible = "regulator-fixed";
+			regulator-name = "5V_MAIN";
+			regulator-min-microvolt = <5000000>;
+			regulator-max-microvolt = <5000000>;
+			regulator-always-on;
+		};
+	};
+};
+
+&adc1 {
+	vref-supply = <&reg_vref_1v8>;
+	status = "okay";
+};
+
+&adc2 {
+	vref-supply = <&reg_vref_1v8>;
+	status = "okay";
+};
+
+&cpu0 {
+	arm-supply = <&sw1a_reg>;
+};
+
+&clks {
+	assigned-clocks = <&clks IMX7D_PLL_AUDIO_POST_DIV>;
+	assigned-clock-rates = <884736000>;
+};
+
+&ecspi1 {
+	fsl,spi-num-chipselects = <1>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi1>;
+	status = "okay";
+
+	cs-gpios = <&gpio4 19 GPIO_ACTIVE_HIGH>;
+
+	nor_flash: nor-flash@0 {
+		compatible = "jedec,spi-nor";
+		spi-max-frequency = <20000000>;
+		reg = <0>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0xc0000>;
+		};
+
+		partition@c0000 {
+			label = "barebox-environment";
+			reg = <0xc0000 0x40000>;
+		};
+	};
+};
+
+&fec1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet1>;
+	assigned-clocks = <&clks IMX7D_ENET1_TIME_ROOT_SRC>,
+			  <&clks IMX7D_ENET1_TIME_ROOT_CLK>;
+	assigned-clock-parents = <&clks IMX7D_PLL_ENET_MAIN_100M_CLK>;
+	assigned-clock-rates = <0>, <100000000>;
+	phy-mode = "rgmii-id";
+	phy-handle = <&port_fec1>;
+	status = "okay";
+
+	mdio1: mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "okay";
+
+		switch0: switch0@0 {
+			compatible = "marvell,mv88e6085";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0>;
+			eeprom-length = <512>;
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				port@0 {
+					reg = <0>;
+					label = "eth_cu_1000_1";
+				};
+				port@1 {
+					reg = <1>;
+					label = "eth_cu_1000_2";
+				};
+
+				port@2 {
+					reg = <2>;
+					label = "pic";
+
+					fixed-link {
+						speed = <100>;
+						full-duplex;
+					};
+				};
+
+				port_fec1: port@5 {
+					reg = <5>;
+					label = "cpu";
+					ethernet = <&fec1>;
+
+					fixed-link {
+						speed = <1000>;
+						full-duplex;
+					};
+				};
+
+				port_fec2: port@6 {
+					reg = <6>;
+					label = "data";
+
+					fixed-link {
+						speed = <1000>;
+						full-duplex;
+					};
+				};
+			};
+		};
+	};
+};
+
+&fec2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet2>;
+	assigned-clocks = <&clks IMX7D_ENET2_TIME_ROOT_SRC>,
+			  <&clks IMX7D_ENET2_TIME_ROOT_CLK>;
+	assigned-clock-parents = <&clks IMX7D_PLL_ENET_MAIN_100M_CLK>;
+	assigned-clock-rates = <0>, <100000000>;
+	phy-mode = "rgmii-id";
+	phy-handle = <&port_fec1>;
+	fsl,magic-packet;
+	status = "okay";
+};
+
+&i2c1 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	pinctrl-1 = <&pinctrl_i2c1_gpio>;
+	scl-gpios = <&gpio4 8 GPIO_ACTIVE_HIGH>;
+	sda-gpios = <&gpio4 9 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+
+	nameplate_eeprom: at24c04@50 {
+		compatible = "atmel,24c04";
+		#address-cells=<1>;
+		#size-cells=<1>;
+		reg = <0x50>;
+	};
+
+	sandbox_eeprom: at24c04@52 {
+		compatible = "atmel,24c04";
+		reg = <0x52>;
+	};
+};
+
+&i2c2 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	pinctrl-1 = <&pinctrl_i2c2_gpio>;
+	scl-gpios = <&gpio4 10 GPIO_ACTIVE_HIGH>;
+	sda-gpios = <&gpio4 11 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+};
+
+&i2c3 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c3>;
+	pinctrl-1 = <&pinctrl_i2c3_gpio>;
+	scl-gpios = <&gpio4 12 GPIO_ACTIVE_HIGH>;
+	sda-gpios = <&gpio4 13 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+
+	pfuze3000@08 {
+		compatible = "fsl,pfuze3000";
+		reg = <0x08>;
+
+		regulators {
+			sw1a_reg: sw1a {
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <6250>;
+			};
+
+			sw1c_reg: sw1b {
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <1475000>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <6250>;
+			};
+
+			sw2_reg: sw2 {
+				regulator-min-microvolt = <1500000>;
+				regulator-max-microvolt = <1850000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			sw3a_reg: sw3 {
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <1650000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			swbst_reg: swbst {
+				regulator-min-microvolt = <5000000>;
+				regulator-max-microvolt = <5150000>;
+			};
+
+			snvs_reg: vsnvs {
+				regulator-min-microvolt = <1000000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vref_reg: vrefddr {
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vgen1_reg: vldo1 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			vgen2_reg: vldo2 {
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1550000>;
+				regulator-always-on;
+			};
+
+			vgen3_reg: vccsd {
+				regulator-min-microvolt = <2850000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			vgen4_reg: v33 {
+				regulator-min-microvolt = <2850000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			vgen5_reg: vldo3 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			vgen6_reg: vldo4 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+		};
+	};
+};
+
+&sdma {
+	status = "okay";
+};
+
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	assigned-clocks = <&clks IMX7D_UART2_ROOT_SRC>;
+	assigned-clock-parents = <&clks IMX7D_PLL_SYS_MAIN_240M_CLK>;
+	status = "okay";
+};
+
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart4>;
+	assigned-clocks = <&clks IMX7D_UART4_ROOT_SRC>;
+	assigned-clock-parents = <&clks IMX7D_PLL_SYS_MAIN_240M_CLK>;
+	status = "okay";
+
+	rave-sp {
+		compatible = "zii,rave-sp-rdu2";
+		current-speed = <1000000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		watchdog {
+			compatible = "zii,rave-sp-watchdog";
+			nvmem-cells = <&boot_source>;
+			nvmem-cell-names = "boot-source";
+		};
+
+		eeprom@a3 {
+			compatible = "zii,rave-sp-eeprom";
+			reg = <0xa3 0x4000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			zii,eeprom-name = "main-eeprom";
+
+			boot_source: boot-source@83 {
+				reg = <0x83 1>;
+			};
+		};
+	};
+};
+
+&usbotg1 {
+	vbus-supply = <&reg_usb_otg1_vbus>;
+	srp-disable;
+	hnp-disable;
+	adp-disable;
+	status = "okay";
+};
+
+&usbotg2 {
+	vbus-supply = <&reg_usb_otg2_vbus>;
+	dr_mode = "host";
+	status = "okay";
+};
+
+&usdhc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc1>;
+	keep-power-in-suspend;
+	bus-width = <4>;
+	no-1-8-v;
+	status = "okay";
+};
+
+&usdhc3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc3>;
+	bus-width = <8>;
+	non-removable;
+	no-1-8-v;
+	keep-power-in-suspend;
+	status = "okay";
+};
+
+&wdog1 {
+	fsl,wdog_b;
+};
+
+
+&iomuxc {
+	pinctrl_leds_debug: debuggrp {
+		fsl,pins = <
+		MX7D_PAD_EPDC_DATA08__GPIO2_IO8		0x59 /* HB_LED */
+		>;
+	};
+
+	pinctrl_enet1: enet1grp {
+		fsl,pins = <
+		MX7D_PAD_SD2_CD_B__ENET1_MDIO                           0x3
+		MX7D_PAD_SD2_WP__ENET1_MDC                              0x3
+		MX7D_PAD_ENET1_RGMII_TXC__ENET1_RGMII_TXC               0x1
+		MX7D_PAD_ENET1_RGMII_TD0__ENET1_RGMII_TD0               0x1
+		MX7D_PAD_ENET1_RGMII_TD1__ENET1_RGMII_TD1               0x1
+		MX7D_PAD_ENET1_RGMII_TD2__ENET1_RGMII_TD2               0x1
+		MX7D_PAD_ENET1_RGMII_TD3__ENET1_RGMII_TD3               0x1
+		MX7D_PAD_ENET1_RGMII_TX_CTL__ENET1_RGMII_TX_CTL         0x1
+		MX7D_PAD_ENET1_RGMII_RXC__ENET1_RGMII_RXC               0x1
+		MX7D_PAD_ENET1_RGMII_RD0__ENET1_RGMII_RD0               0x1
+		MX7D_PAD_ENET1_RGMII_RD1__ENET1_RGMII_RD1               0x1
+		MX7D_PAD_ENET1_RGMII_RD2__ENET1_RGMII_RD2               0x1
+		MX7D_PAD_ENET1_RGMII_RD3__ENET1_RGMII_RD3               0x1
+		MX7D_PAD_ENET1_RGMII_RX_CTL__ENET1_RGMII_RX_CTL         0x1
+		>;
+	};
+
+	pinctrl_enet2: enet2grp {
+		fsl,pins = <
+		MX7D_PAD_EPDC_GDSP__ENET2_RGMII_TXC                     0x1
+		MX7D_PAD_EPDC_SDCE2__ENET2_RGMII_TD0                    0x1
+		MX7D_PAD_EPDC_SDCE3__ENET2_RGMII_TD1                    0x1
+		MX7D_PAD_EPDC_GDCLK__ENET2_RGMII_TD2                    0x1
+		MX7D_PAD_EPDC_GDOE__ENET2_RGMII_TD3                     0x1
+		MX7D_PAD_EPDC_GDRL__ENET2_RGMII_TX_CTL                  0x1
+		MX7D_PAD_EPDC_SDCE1__ENET2_RGMII_RXC                    0x1
+		MX7D_PAD_EPDC_SDCLK__ENET2_RGMII_RD0                    0x1
+		MX7D_PAD_EPDC_SDLE__ENET2_RGMII_RD1                     0x1
+		MX7D_PAD_EPDC_SDOE__ENET2_RGMII_RD2                     0x1
+		MX7D_PAD_EPDC_SDSHR__ENET2_RGMII_RD3                    0x1
+		MX7D_PAD_EPDC_SDCE0__ENET2_RGMII_RX_CTL                 0x1
+		MX7D_PAD_UART1_TX_DATA__ENET2_1588_EVENT0_OUT           0x1
+		>;
+	};
+
+	pinctrl_i2c1: i2c1grp {
+		fsl,pins = <
+		MX7D_PAD_I2C1_SDA__I2C1_SDA             0x4000007f
+		MX7D_PAD_I2C1_SCL__I2C1_SCL             0x4000007f
+		>;
+	};
+
+	pinctrl_i2c1_gpio: i2c1gpiogrp {
+		fsl,pins = <
+		MX7D_PAD_I2C1_SDA__GPIO4_IO9            0x4000007f
+		MX7D_PAD_I2C1_SCL__GPIO4_IO8            0x4000007f
+		>;
+	};
+
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins = <
+		MX7D_PAD_I2C2_SDA__I2C2_SDA             0x4000007f
+		MX7D_PAD_I2C2_SCL__I2C2_SCL             0x4000007f
+		>;
+	};
+
+	pinctrl_i2c2_gpio: i2c2gpiogrp {
+		fsl,pins = <
+		MX7D_PAD_I2C2_SDA__GPIO4_IO11           0x4000007f
+		MX7D_PAD_I2C2_SCL__GPIO4_IO10           0x4000007f
+		>;
+	};
+
+	pinctrl_i2c3: i2c3grp {
+		fsl,pins = <
+		MX7D_PAD_I2C3_SDA__I2C3_SDA             0x4000007f
+		MX7D_PAD_I2C3_SCL__I2C3_SCL             0x4000007f
+		>;
+	};
+
+	pinctrl_i2c3_gpio: i2c3gpiogrp {
+		fsl,pins = <
+		MX7D_PAD_I2C3_SDA__GPIO4_IO13           0x4000007f
+		MX7D_PAD_I2C3_SCL__GPIO4_IO12           0x4000007f
+		>;
+	};
+
+	pinctrl_i2c4: i2c4grp {
+		fsl,pins = <
+		MX7D_PAD_SAI1_RX_BCLK__I2C4_SDA         0x4000007f
+		MX7D_PAD_SAI1_RX_SYNC__I2C4_SCL         0x4000007f
+		>;
+	};
+
+	pinctrl_i2c4_gpio: i2c4gpiogrp {
+		fsl,pins = <
+		MX7D_PAD_SAI1_RX_BCLK__GPIO6_IO17       0x4000007f
+		MX7D_PAD_SAI1_RX_SYNC__GPIO6_IO16       0x4000007f
+		>;
+	};
+
+	pinctrl_ecspi1: ecspi1grp {
+		fsl,pins = <
+		MX7D_PAD_ECSPI1_SCLK__ECSPI1_SCLK       0x2
+		MX7D_PAD_ECSPI1_MOSI__ECSPI1_MOSI       0x2
+		MX7D_PAD_ECSPI1_MISO__ECSPI1_MISO       0x2
+		MX7D_PAD_ECSPI1_SS0__GPIO4_IO19         0x59
+		>;
+	};
+
+	pinctrl_uart2: uart2grp {
+		fsl,pins = <
+		MX7D_PAD_UART2_RX_DATA__UART2_DCE_RX    0x79
+		MX7D_PAD_UART2_TX_DATA__UART2_DCE_TX    0x79
+		>;
+	};
+
+	pinctrl_uart4: uart4grp {
+		fsl,pins = <
+		MX7D_PAD_SD2_DATA0__UART4_DCE_RX        0x79
+		MX7D_PAD_SD2_DATA1__UART4_DCE_TX        0x79
+		>;
+	};
+
+	pinctrl_usdhc1: usdhc1grp {
+		fsl,pins = <
+		MX7D_PAD_SD1_CMD__SD1_CMD               0x59
+		MX7D_PAD_SD1_CLK__SD1_CLK               0x19
+		MX7D_PAD_SD1_DATA0__SD1_DATA0           0x59
+		MX7D_PAD_SD1_DATA1__SD1_DATA1           0x59
+		MX7D_PAD_SD1_DATA2__SD1_DATA2           0x59
+		MX7D_PAD_SD1_DATA3__SD1_DATA3           0x59
+		>;
+	};
+
+	pinctrl_usdhc3: usdhc3grp {
+		fsl,pins = <
+		MX7D_PAD_SD3_CMD__SD3_CMD               0x59
+		MX7D_PAD_SD3_CLK__SD3_CLK               0x19
+		MX7D_PAD_SD3_DATA0__SD3_DATA0           0x59
+		MX7D_PAD_SD3_DATA1__SD3_DATA1           0x59
+		MX7D_PAD_SD3_DATA2__SD3_DATA2           0x59
+		MX7D_PAD_SD3_DATA3__SD3_DATA3           0x59
+		MX7D_PAD_SD3_DATA4__SD3_DATA4           0x59
+		MX7D_PAD_SD3_DATA5__SD3_DATA5           0x59
+		MX7D_PAD_SD3_DATA6__SD3_DATA6           0x59
+		MX7D_PAD_SD3_DATA7__SD3_DATA7           0x59
+		MX7D_PAD_SD3_RESET_B__SD3_RESET_B       0x59
+		>;
+	};
+};
+
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 535c08e47..4a56fb9f4 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -435,6 +435,10 @@ config MACH_ZII_VF610_DEV
 	select ARCH_VF610
 	select CLKDEV_LOOKUP
 
+config MACH_ZII_IMX7D_RPU2
+	bool "ZII i.MX7D RPU2"
+	select ARCH_IMX7
+
 config MACH_PHYTEC_PHYCORE_IMX7
 	bool "Phytec phyCORE i.MX7"
 	select ARCH_IMX7
diff --git a/images/Makefile.imx b/images/Makefile.imx
index eb3ed492e..e91976996 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -532,6 +532,11 @@ CFG_start_imx7d_sabresd.pblx.imximg = $(board)/freescale-mx7-sabresd/flash-heade
 FILE_barebox-freescale-mx7-sabresd.img = start_imx7d_sabresd.pblx.imximg
 image-$(CONFIG_MACH_FREESCALE_MX7_SABRESD) += barebox-freescale-mx7-sabresd.img
 
+pblx-$(CONFIG_MACH_ZII_IMX7D_RPU2) += start_zii_imx7d_rpu2
+CFG_start_zii_imx7d_rpu2.pblx.imximg = $(board)/zii-imx7d-rpu2/flash-header-zii-imx7d-rpu2.imxcfg
+FILE_barebox-zii-imx7d-rpu2.img = start_zii_imx7d_rpu2.pblx.imximg
+image-$(CONFIG_MACH_ZII_IMX7D_RPU2) += barebox-zii-imx7d-rpu2.img
+
 # ----------------------- i.MX8mq based boards --------------------------
 pblx-$(CONFIG_MACH_NXP_IMX8MQ_EVK) += start_nxp_imx8mq_evk
 CFG_start_nxp_imx8mq_evk.imx-sram-img = $(board)/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
