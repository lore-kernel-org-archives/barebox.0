Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kQ9Cq-0008RD-KI
 for barebox@lists.infradead.org; Wed, 07 Oct 2020 13:10:10 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed,  7 Oct 2020 15:07:58 +0200
Message-Id: <20201007130757.20185-2-r.czerwinski@pengutronix.de>
In-Reply-To: <20201007130757.20185-1-r.czerwinski@pengutronix.de>
References: <20201007130757.20185-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH v2 2/2] ARM: imx: Add Support for Webasto ccbv2
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Add support for the Webasto Common Communication Board Version 2. The
device tree included with barebox can eventually be replaced with the
required barebox changes when the ccbv2 device tree is upstream.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
This should address all comments from the previous patch series,
thanks to Sascha, Ahmad and Roland for the review.
- Barebox should now correctly chainload if early OP-TEE was loaded
- DTS files have been split up
- Uses the iomux file for i.MX6UL to setup the UART instead of magic
  values
- Application of the overlay checks the board compatible before
  application of the overlay.

 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/webasto-ccbv2/Makefile        |   2 +
 arch/arm/boards/webasto-ccbv2/board.c         |  58 +++
 arch/arm/boards/webasto-ccbv2/ccbv2.h         |  15 +
 .../flash-header-imx6ul-webasto-ccbv2.imxcfg  |  87 ++++
 arch/arm/boards/webasto-ccbv2/lowlevel.c      |  75 +++
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/imx6ul-webasto-ccbv2.dts         | 120 +++++
 arch/arm/dts/imx6ul-webasto-ccbv2.dtsi        | 469 ++++++++++++++++++
 arch/arm/mach-imx/Kconfig                     |   5 +
 arch/arm/mach-imx/include/mach/imx6-regs.h    |   1 +
 arch/arm/mach-imx/include/mach/iomux-mx6ul.h  |   2 +-
 firmware/Kconfig                              |   5 +
 firmware/Makefile                             |   2 +
 images/Makefile.imx                           |   2 +
 15 files changed, 844 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/webasto-ccbv2/Makefile
 create mode 100644 arch/arm/boards/webasto-ccbv2/board.c
 create mode 100644 arch/arm/boards/webasto-ccbv2/ccbv2.h
 create mode 100644 arch/arm/boards/webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2.imxcfg
 create mode 100644 arch/arm/boards/webasto-ccbv2/lowlevel.c
 create mode 100644 arch/arm/dts/imx6ul-webasto-ccbv2.dts
 create mode 100644 arch/arm/dts/imx6ul-webasto-ccbv2.dtsi

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 986ea7a983..5438236af4 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -165,6 +165,7 @@ obj-$(CONFIG_MACH_VARISCITE_MX6)		+= variscite-mx6/
 obj-$(CONFIG_MACH_VSCOM_BALTOS)			+= vscom-baltos/
 obj-$(CONFIG_MACH_QEMU_VIRT64)			+= qemu-virt64/
 obj-$(CONFIG_MACH_WARP7)			+= element14-warp7/
+obj-$(CONFIG_MACH_WEBASTO_CCBV2)		+= webasto-ccbv2/
 obj-$(CONFIG_MACH_VF610_TWR)			+= freescale-vf610-twr/
 obj-$(CONFIG_MACH_XILINX_ZCU104)		+= xilinx-zcu104/
 obj-$(CONFIG_MACH_ZII_COMMON)			+= zii-common/
diff --git a/arch/arm/boards/webasto-ccbv2/Makefile b/arch/arm/boards/webasto-ccbv2/Makefile
new file mode 100644
index 0000000000..01c7a259e9
--- /dev/null
+++ b/arch/arm/boards/webasto-ccbv2/Makefile
@@ -0,0 +1,2 @@
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/webasto-ccbv2/board.c b/arch/arm/boards/webasto-ccbv2/board.c
new file mode 100644
index 0000000000..4a1e472c3a
--- /dev/null
+++ b/arch/arm/boards/webasto-ccbv2/board.c
@@ -0,0 +1,58 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2019 Rouven Czerwinski, Pengutronix
+ */
+
+#include <common.h>
+#include <init.h>
+#include <mach/generic.h>
+#include <mach/bbu.h>
+#include <of.h>
+#include <string.h>
+
+#include "ccbv2.h"
+
+static int ccbv2_device_init(void)
+{
+	if (!of_machine_is_compatible("webasto,imx6ul-ccbv2"))
+		return 0;
+
+	/* the bootloader is stored in one of the two boot partitions */
+	imx6_bbu_internal_mmcboot_register_handler("emmc", "/dev/mmc1",
+			BBU_HANDLER_FLAG_DEFAULT);
+
+	barebox_set_hostname("weabsto-ccbv2");
+
+	return 0;
+
+}
+device_initcall(ccbv2_device_init);
+
+static int ccbv2_apply_overlay(void)
+{
+	struct device_node *overlay;
+	struct fdt_header *fdt;
+	int ret;
+
+	if(!IS_ENABLED(CONFIG_FIRMWARE_CCBV2_OPTEE)
+	   || !of_machine_is_compatible("webasto,imx6ul-ccbv2"))
+		return 0;
+
+	fdt = (void*)OPTEE_OVERLAY_LOCATION;
+	overlay = of_unflatten_dtb(fdt);
+
+	if (IS_ERR(overlay))
+		return PTR_ERR(overlay);
+
+	ret = of_register_overlay(overlay);
+	if (ret) {
+		printf("cannot apply oftree overlay: %s\n", strerror(-ret));
+		goto err;
+	}
+
+	return 0;
+err:
+	of_delete_node(overlay);
+	return ret;
+}
+device_initcall(ccbv2_apply_overlay);
diff --git a/arch/arm/boards/webasto-ccbv2/ccbv2.h b/arch/arm/boards/webasto-ccbv2/ccbv2.h
new file mode 100644
index 0000000000..bf43fe8410
--- /dev/null
+++ b/arch/arm/boards/webasto-ccbv2/ccbv2.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * ccbv2.h - common defines between OP-TEE and barebox
+ *
+ * Copyright (c) 2019 Rouven Czerwinski <r.czerwinski@pengutronix.de>, Pengutronix
+ *
+ */
+#ifndef __CCBV2_H_
+#define __CCBV2_H_
+
+/* MX6UL_MMDC_PORT0_BASE_ADDR + SZ_64M */
+#define OPTEE_OVERLAY_LOCATION 	0x84000000
+
+
+#endif // __CCBV2_H_
diff --git a/arch/arm/boards/webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2.imxcfg b/arch/arm/boards/webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2.imxcfg
new file mode 100644
index 0000000000..a464d2fcbb
--- /dev/null
+++ b/arch/arm/boards/webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2.imxcfg
@@ -0,0 +1,87 @@
+loadaddr 0x80000000
+soc imx6
+ivtofs 0x400
+
+/* Enable all clocks */
+wm 32 0x020c4068 0xffffffff
+wm 32 0x020c406c 0xffffffff
+wm 32 0x020c4070 0xffffffff
+wm 32 0x020c4074 0xffffffff
+wm 32 0x020c4078 0xffffffff
+wm 32 0x020c407c 0xffffffff
+wm 32 0x020c4080 0xffffffff
+
+/* IOMUX */
+/* DDR IO type */
+wm 32 0x020E04B4 0x000C0000
+wm 32 0x020E04AC 0x00000000
+/* Clock */
+wm 32 0x020E027C 0x00000028
+/* Control */
+wm 32 0x020E0250 0x00000028
+wm 32 0x020E024C 0x00000028
+wm 32 0x020E0490 0x00000028
+wm 32 0x020E0288 0x00000028
+wm 32 0x020E0270 0x00000000
+wm 32 0x020E0260 0x00000028
+wm 32 0x020E0264 0x00000028
+wm 32 0x020E04A0 0x00000028
+/* Data strobe */
+wm 32 0x020E0494 0x00020000
+wm 32 0x020E0280 0x00000028
+wm 32 0x020E0284 0x00000028
+/* Data */
+wm 32 0x020E04B0 0x00020000
+wm 32 0x020E0498 0x00000028
+wm 32 0x020E04A4 0x00000028
+wm 32 0x020E0244 0x00000028
+wm 32 0x020E0248 0x00000028
+
+/* DDR Controller registers */
+wm 32 0x021B001C 0x00008000
+wm 32 0x021B0800 0xA1390003
+/* Calibration values */
+wm 32 0x021B080C 0x000C0000
+wm 32 0x021B083C 0x01610162
+wm 32 0x021B0848 0x40405050
+wm 32 0x021B0850 0x4040544C
+wm 32 0x021B081C 0x33333333
+wm 32 0x021B0820 0x33333333
+wm 32 0x021B082C 0xf3333333
+wm 32 0x021B0830 0xf3333333
+/* END of calibration values */
+wm 32 0x021B08C0 0x00921012
+wm 32 0x021B08b8 0x00000800
+
+/* MMDC init */
+wm 32 0x021B0004 0x0002002D
+wm 32 0x021B0008 0x1b333030
+wm 32 0x021B000C 0x3F4352F3
+wm 32 0x021B0010 0xB66D0B63
+wm 32 0x021B0014 0x01FF00DB
+/* Consider reducing RALAT (currently set to 5) */
+wm 32 0x021B0018 0x00211740
+wm 32 0x021B001C 0x00008000
+wm 32 0x021B002C 0x000026D2
+wm 32 0x021B0030 0x00431023
+wm 32 0x021B0040 0x00000047
+wm 32 0x021B0000 0x83180000
+
+/* Mode registers writes for CS0 */
+wm 32 0x021B001C 0x02008032
+wm 32 0x021B001C 0x00008033
+wm 32 0x021B001C 0x00048031
+wm 32 0x021B001C 0x15208030
+wm 32 0x021B001C 0x04008040
+
+/* Final DDR setup */
+wm 32 0x021B0020 0x00007800
+wm 32 0x021B0818 0x00000227
+wm 32 0x021B0004 0x0002556D
+wm 32 0x021B0404 0x00011006
+wm 32 0x021B001C 0x00000000
+
+/* Disable TZASC bypass */
+wm 32 0x020E4024 0x00000001
+
+#include <mach/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/webasto-ccbv2/lowlevel.c b/arch/arm/boards/webasto-ccbv2/lowlevel.c
new file mode 100644
index 0000000000..64c4a4c840
--- /dev/null
+++ b/arch/arm/boards/webasto-ccbv2/lowlevel.c
@@ -0,0 +1,75 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2019 Rouven Czerwinski, Pengutronix
+ */
+
+#include <common.h>
+#include <debug_ll.h>
+#include <firmware.h>
+#include <mach/generic.h>
+#include <asm/barebox-arm.h>
+#include <mach/esdctl.h>
+#include <mach/iomux-mx6ul.h>
+#include <asm/cache.h>
+#include <tee/optee.h>
+
+#include "ccbv2.h"
+
+extern char __dtb_z_imx6ul_webasto_ccbv2_start[];
+
+static void configure_uart(void)
+{
+	void __iomem *iomuxbase = (void *)MX6_IOMUXC_BASE_ADDR;
+
+	imx6_ungate_all_peripherals();
+
+	imx_setup_pad(iomuxbase, MX6_PAD_LCD_DATA16__UART7_DCE_TX);
+	imx_setup_pad(iomuxbase, MX6_PAD_LCD_DATA17__UART7_DCE_RX);
+
+	imx6_uart_setup((void *)MX6_UART7_BASE_ADDR);
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		putc_ll('>');
+
+}
+
+static void noinline start_ccbv2(u32 r0)
+{
+	int tee_size;
+	void *tee;
+
+	/* Enable normal/secure r/w for TZC380 region0 */
+	writel(0xf0000000, 0x021D0108);
+
+	configure_uart();
+
+	/*
+	 * Chainloading barebox will pass a device tree within the RAM in r0,
+	 * skip OP-TEE early loading in this case
+	 */
+	if(IS_ENABLED(CONFIG_FIRMWARE_CCBV2_OPTEE)
+	   && !(r0 > MX6_MMDC_P0_BASE_ADDR
+	        &&  r0 < MX6_MMDC_P0_BASE_ADDR + SZ_256M)) {
+		get_builtin_firmware(ccbv2_optee_bin, &tee, &tee_size);
+
+		memset((void *)OPTEE_OVERLAY_LOCATION, 0, 0x1000);
+
+		start_optee_early(NULL, tee);
+	}
+
+	imx6ul_barebox_entry(__dtb_z_imx6ul_webasto_ccbv2_start);
+}
+
+ENTRY_FUNCTION(start_imx6ul_ccbv2, r0, r1, r2)
+{
+
+	imx6ul_cpu_lowlevel_init();
+
+	arm_setup_stack(0x00910000);
+
+	relocate_to_current_adr();
+	setup_c();
+	barrier();
+
+	start_ccbv2(r0);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index af061bd292..c6f5646488 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -138,6 +138,7 @@ lwl-$(CONFIG_MACH_VIRT2REAL) += virt2real.dtb.o
 lwl-$(CONFIG_MACH_VSCOM_BALTOS) += am335x-baltos-minimal.dtb.o
 lwl-$(CONFIG_MACH_WARP7) += imx7s-warp.dtb.o
 lwl-$(CONFIG_MACH_VF610_TWR) += vf610-twr.dtb.o
+lwl-$(CONFIG_MACH_WEBASTO_CCBV2) += imx6ul-webasto-ccbv2.dtb.o
 lwl-$(CONFIG_MACH_ZII_RDU1) +=	\
 	imx51-zii-rdu1.dtb.o		\
 	imx51-zii-scu2-mezz.dtb.o	\
diff --git a/arch/arm/dts/imx6ul-webasto-ccbv2.dts b/arch/arm/dts/imx6ul-webasto-ccbv2.dts
new file mode 100644
index 0000000000..93e9445b48
--- /dev/null
+++ b/arch/arm/dts/imx6ul-webasto-ccbv2.dts
@@ -0,0 +1,120 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright (C) 2019, Webasto SE
+ * Author: Johannes Eigner <johannes.eigner@webasto.com>
+ */
+
+/dts-v1/;
+
+#include "imx6ul-webasto-ccbv2.dtsi"
+
+/ {
+	chosen {
+		environment {
+			compatible = "barebox,environment";
+			device-path = &environment_emmc;
+		};
+	};
+
+	aliases {
+		state = &state_emmc;
+	};
+
+	reserved-memory {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		dt-overlay@84000000 {
+			reg = <0x84000000 0x100000>;
+			no-map;
+		};
+	};
+
+	state_emmc: state {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "barebox,state";
+		magic = <0x290cf8c6>;
+		backend-type = "raw";
+		backend = <&backend_state_emmc>;
+		backend-stridesize = <0x200>;
+
+		bootstate {
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			system0 {
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				remaining_attempts@0 {
+					reg = <0x0 0x4>;
+					type = "uint32";
+					default = <3>;
+				};
+
+				priority@4 {
+					reg = <0x4 0x4>;
+					type = "uint32";
+					default = <20>;
+				};
+			};
+
+			system1 {
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				remaining_attempts@8 {
+					reg = <0x8 0x4>;
+					type = "uint32";
+					default = <3>;
+				};
+
+				priority@c {
+					reg = <0xc 0x4>;
+					type = "uint32";
+					default = <21>;
+				};
+			};
+
+			last_chosen@10 {
+				reg = <0x10 0x4>;
+				type = "uint32";
+			};
+		};
+	};
+};
+
+&usdhc2 {
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0x100000>;
+		};
+
+		environment_emmc: partition@100000 {
+			label = "barebox-environment";
+			reg = <0x100000 0x100000>;
+		};
+
+		backend_state_emmc: partition@200000 {
+			label = "barebox-state";
+			reg = <0x200000 0x100000>;
+		};
+	};
+};
+
+
+&ocotp {
+	barebox,provide-mac-address = <&fec1 0x620>;
+};
+
+/* include the FIT public key for verifying on demand */
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#endif
diff --git a/arch/arm/dts/imx6ul-webasto-ccbv2.dtsi b/arch/arm/dts/imx6ul-webasto-ccbv2.dtsi
new file mode 100644
index 0000000000..829485de32
--- /dev/null
+++ b/arch/arm/dts/imx6ul-webasto-ccbv2.dtsi
@@ -0,0 +1,469 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+//
+// Copyright (C) 2019, Webasto SE
+//
+// Author: Johannes Eigner <johannes.eigner@webasto.com>
+
+/dts-v1/;
+
+#include <arm/imx6ul.dtsi>
+
+/ {
+	model = "Webasto common communication board version 2";
+	compatible = "webasto,imx6ul-ccbv2", "fsl,imx6ul";
+
+	chosen {
+		stdout-path = &uart7;
+	};
+
+	reg_4v: regulator-4v {
+		compatible = "regulator-fixed";
+		regulator-name = "V_+4V";
+		regulator-min-microvolt = <4000000>;
+		regulator-max-microvolt = <4000000>;
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
+	reg_wl18xx_vmmc: regulator-wl18xx {
+		compatible = "regulator-fixed";
+		regulator-name = "wl1837";
+		vin-supply = <&reg_4v>;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio4 22 GPIO_ACTIVE_HIGH>;
+		startup-delay-us = <70000>;
+		enable-active-high;
+	};
+
+	reg_dp83822_en: regulator-dp83822 {
+		compatible = "regulator-fixed";
+		regulator-name = "dp83822";
+		vin-supply = <&vcc_eth>;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		gpio = <&gpio1 8 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+};
+
+&fec1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet1>;
+	phy-mode = "rmii";
+	phy-supply = <&reg_dp83822_en>;
+	phy-handle = <&dp83822i>;
+	phy-reset-gpios = <&gpio1 9 GPIO_ACTIVE_LOW>;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		dp83822i: ethernet-phy@1 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <1>;
+			clocks = <&clks IMX6UL_CLK_ENET_REF>;
+			clock-names = "rmii-ref";
+		};
+	};
+};
+
+&i2c2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	clock-frequency = <100000>;
+	status = "okay";
+
+	pmic: mc34pf3000@8 {
+		compatible = "fsl,pfuze3000";
+		reg = <0x08>;
+		regulators {
+			sw1a_reg: sw1a {
+				regulator-name = "V_+3V3_SW1A";
+				vin-supply = <&reg_4v>;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <6250>;
+			};
+			vdd_soc_in: sw1b {
+				regulator-name = "V_+1V4_SW1B";
+				vin-supply = <&reg_4v>;
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <1475000>;
+				regulator-ramp-delay = <6250>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+			sw2_reg: sw2 {
+				regulator-name = "V_+3V3_SW2";
+				vin-supply = <&reg_4v>;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+			vcc_ddr3: sw3 {
+				regulator-name = "V_+1V35_SW3";
+				vin-supply = <&reg_4v>;
+				regulator-min-microvolt = <1350000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+			swbst_reg: swbst {
+				regulator-name = "V_+5V0_SWBST";
+				vin-supply = <&reg_4v>;
+				regulator-min-microvolt = <5000000>;
+				regulator-max-microvolt = <5150000>;
+			};
+			vdd_snvs: vsnvs {
+				regulator-name = "V_+3V0_SNVS";
+				vin-supply = <&reg_4v>;
+				regulator-min-microvolt = <1000000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+			vrefddr: vrefddr {
+				regulator-name = "V_+0V675_VREFDDR";
+				vin-supply = <&vcc_ddr3>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+			/* 3V3 Supply: i.MX6 modules */
+			vgen1_reg: vldo1 {
+				regulator-name = "V_+3V3_LDO1";
+				vin-supply = <&reg_4v>;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+			vgen2_reg: vldo2 {
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1550000>;
+			};
+			vgen3_reg: vccsd {
+				regulator-min-microvolt = <2850000>;
+				regulator-max-microvolt = <3300000>;
+			};
+			vdd_high_in: v33 {
+				regulator-name = "V_+3V3_V33";
+				vin-supply = <&reg_4v>;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+			vcc_eth: vldo3 {
+				regulator-name = "V_+1V8_LDO3";
+				vin-supply = <&reg_4v>;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+			vgen6_reg: vldo4 {
+				regulator-name = "V_+1V8_LDO4";
+				vin-supply = <&reg_4v>;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+		};
+	};
+};
+
+&ecspi1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_spi1>;
+	cs-gpios = <
+		&gpio3 26 GPIO_ACTIVE_LOW
+		&gpio3 10 GPIO_ACTIVE_LOW
+		&gpio3 12 GPIO_ACTIVE_LOW
+	>;
+	status = "okay";
+
+	cc2520: spi@0 {
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_cc2520>;
+		compatible = "ti,cc2520";
+		reg = <0>;
+		spi-max-frequency = <4000000>;
+		fifo-gpio = <&gpio3 15 0>;
+		fifop-gpio = <&gpio3 16 0>;
+		sfd-gpio = <&gpio3 24 0>;
+		cca-gpio = <&gpio3 20 0>;
+		vreg-gpio = <&gpio3 19 0>;
+		reset-gpio = <&gpio3 23 0>;
+		vin-supply = <&sw2_reg>;
+	};
+	qca7000: spi@1 {
+		compatible = "qca,qca7000";
+		reg = <1>;
+		spi-max-frequency = <8000000>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <16 0x1>;
+		spi-cpha;
+		spi-cpol;
+	};
+	tfr7970: spi@2 {
+		compatible = "ti,trf7970a";
+		reg = <2>;
+		spi-max-frequency = <2000000>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_trf7970>;
+		interrupt-parent = <&gpio3>;
+		interrupts = <14 0>;
+		ti,enable-gpios = <&gpio3 7 GPIO_ACTIVE_HIGH>, <&gpio3 17 GPIO_ACTIVE_HIGH>;
+		vin-supply = <&reg_4v>;
+		vdd-io-supply = <&sw2_reg>;
+		autosuspend-delay = <30000>;
+		clock-frequency = <27120000>;
+	};
+};
+
+&uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart3>;
+	uart-has-rtscts;
+	status = "okay";
+};
+
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart4>;
+	status = "okay";
+};
+
+&uart6 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart6>;
+	uart-has-rtscts;
+	status = "okay";
+	bluetooth {
+		compatible = "ti,wl1835-st";
+		enable-gpios = <&gpio2 11 GPIO_ACTIVE_HIGH>;
+		vin-supply = <&reg_4v>;
+	};
+};
+
+&uart7 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart7>;
+	status = "okay";
+};
+
+&usdhc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc1>;
+	bus-width = <4>;
+	vmmc-supply = <&reg_wl18xx_vmmc>;
+	non-removable;
+	keep-power-in-suspend;
+	cap-power-off-card;
+	max-frequency = <25000000>;
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	wlcore: wlcore@2 {
+		compatible = "ti,wl1837";
+		reg = <2>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <21 IRQ_TYPE_LEVEL_HIGH>;
+		tcxo-clock-frequency = <26000000>;
+	};
+};
+
+&usdhc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	bus-width = <8>;
+	vmmc-supply = <&sw1a_reg>;
+	no-1-8-v;
+	non-removable;
+	no-sd;
+	no-sdio;
+	keep-power-in-suspend;
+	status = "okay";
+};
+
+&usbotg1 {
+	dr_mode = "otg";
+	status = "okay";
+};
+
+&usbotg2 {
+	dr_mode = "host";
+	disable-over-current;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_minipcie>;
+	status = "okay";
+};
+
+&wdog1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_wdog>;
+	fsl,ext-reset-output;
+	status = "okay";
+};
+
+&reg_arm {
+	vin-supply = <&vdd_soc_in>;
+	regulator-allow-bypass;
+};
+
+&reg_soc {
+	vin-supply = <&vdd_soc_in>;
+	regulator-allow-bypass;
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+
+	pinctrl_enet1: enet1grp {
+		fsl,pins = <
+			MX6UL_PAD_GPIO1_IO06__ENET1_MDIO	0x1b0b0
+			MX6UL_PAD_GPIO1_IO07__ENET1_MDC		0x1b0b0
+			MX6UL_PAD_ENET1_RX_EN__ENET1_RX_EN	0x1b0b0
+			MX6UL_PAD_ENET1_RX_ER__ENET1_RX_ER	0x1b0b0
+			MX6UL_PAD_ENET1_RX_DATA0__ENET1_RDATA00	0x1b0b0
+			MX6UL_PAD_ENET1_RX_DATA1__ENET1_RDATA01	0x1b0b0
+			MX6UL_PAD_ENET1_TX_EN__ENET1_TX_EN	0x1b0b0
+			MX6UL_PAD_ENET1_TX_DATA0__ENET1_TDATA00	0x1b0b0
+			MX6UL_PAD_ENET1_TX_DATA1__ENET1_TDATA01	0x1b0b0
+			MX6UL_PAD_ENET1_TX_CLK__ENET1_REF_CLK1	0x4001b031
+			MX6UL_PAD_GPIO1_IO08__GPIO1_IO08	0x13030
+			MX6UL_PAD_GPIO1_IO09__GPIO1_IO09	0x13030
+		>;
+	};
+
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins = <
+			MX6UL_PAD_UART5_TX_DATA__I2C2_SCL   0x4001b8b0
+			MX6UL_PAD_UART5_RX_DATA__I2C2_SDA   0x4001b8b0
+			MX6UL_PAD_UART4_RX_DATA__GPIO1_IO29 0x10000
+		>;
+	};
+
+	pinctrl_minipcie: minipciegrp {
+		fsl,pins = <
+			/* HYS=1, 100k PullDown, 50MHz, R0/6 */
+			MX6UL_PAD_LCD_HSYNC__GPIO3_IO02   0x13030
+			MX6UL_PAD_LCD_VSYNC__GPIO3_IO03   0x13030
+			MX6UL_PAD_LCD_RESET__GPIO3_IO04   0x13030
+			MX6UL_PAD_LCD_DATA03__GPIO3_IO08  0x13030
+			MX6UL_PAD_LCD_DATA04__GPIO3_IO09  0x13030
+		>;
+	};
+
+	pinctrl_spi1: spi1grp {
+		fsl,pins = <
+			MX6UL_PAD_LCD_DATA20__ECSPI1_SCLK 0x1b0b0
+			MX6UL_PAD_LCD_DATA22__ECSPI1_MOSI 0x1b0b0
+			MX6UL_PAD_LCD_DATA23__ECSPI1_MISO 0x1b0b0
+			MX6UL_PAD_LCD_DATA05__GPIO3_IO10  0x17030
+			MX6UL_PAD_NAND_DQS__GPIO4_IO16    0x17030
+			MX6UL_PAD_LCD_DATA06__GPIO3_IO11  0x17030
+			MX6UL_PAD_LCD_DATA13__GPIO3_IO18  0x10030
+		>;
+	};
+
+	pinctrl_cc2520: cc2520grp {
+		fsl,pins = <
+			MX6UL_PAD_LCD_DATA10__GPIO3_IO15  0x13030
+			MX6UL_PAD_LCD_DATA11__GPIO3_IO16  0x13030
+			MX6UL_PAD_LCD_DATA14__GPIO3_IO19  0x13030
+			MX6UL_PAD_LCD_DATA15__GPIO3_IO20  0x13030
+			MX6UL_PAD_LCD_DATA18__GPIO3_IO23  0x13030
+			MX6UL_PAD_LCD_DATA19__GPIO3_IO24  0x13030
+			MX6UL_PAD_LCD_DATA21__GPIO3_IO26  0x17030
+
+		>;
+	};
+
+	pinctrl_trf7970: trf7970grp {
+		fsl,pins = <
+			MX6UL_PAD_LCD_DATA07__GPIO3_IO12  0x17030
+			MX6UL_PAD_LCD_DATA02__GPIO3_IO07  0x10030
+			MX6UL_PAD_LCD_DATA12__GPIO3_IO17  0x10030
+			MX6UL_PAD_LCD_DATA09__GPIO3_IO14  0x17000
+		>;
+	};
+
+	pinctrl_uart3: uart3grp {
+		fsl,pins = <
+			MX6UL_PAD_NAND_READY_B__UART3_DCE_TX  0x1b0b0
+			MX6UL_PAD_NAND_CE0_B__UART3_DCE_RX    0x1b0b0
+			MX6UL_PAD_NAND_CE1_B__UART3_DCE_CTS   0x1b0b0
+			MX6UL_PAD_NAND_CLE__UART3_DCE_RTS     0x1b0b0
+			MX6UL_PAD_LCD_DATA08__GPIO3_IO13      0x13030
+			MX6UL_PAD_NAND_WP_B__GPIO4_IO11       0x13030
+		>;
+	};
+
+	pinctrl_uart4: uart4grp {
+		fsl,pins = <
+			MX6UL_PAD_LCD_CLK__UART4_DCE_TX	      0x1b0b0
+			MX6UL_PAD_LCD_ENABLE__UART4_DCE_RX    0x1b0b0
+		>;
+	};
+
+	pinctrl_uart6: uart6grp {
+		fsl,pins = <
+			MX6UL_PAD_CSI_MCLK__UART6_DCE_TX      0x1b0b0
+			MX6UL_PAD_CSI_PIXCLK__UART6_DCE_RX    0x1b0b0
+			MX6UL_PAD_CSI_VSYNC__UART6_DCE_RTS    0x1b0b0
+			MX6UL_PAD_CSI_HSYNC__UART6_DCE_CTS    0x1b0b0
+			MX6UL_PAD_ENET2_TX_DATA0__GPIO2_IO11  0x10030
+			MX6UL_PAD_GPIO1_IO03__OSC32K_32K_OUT  0x00010
+		>;
+	};
+
+	pinctrl_uart7: uart7grp {
+		fsl,pins = <
+			MX6UL_PAD_LCD_DATA16__UART7_DCE_TX    0x1b0b0
+			MX6UL_PAD_LCD_DATA17__UART7_DCE_RX    0x1b0b0
+		>;
+	};
+
+	pinctrl_usdhc1: usdhc1grp {
+		fsl,pins = <
+			MX6UL_PAD_SD1_CMD__USDHC1_CMD        0x10059
+			MX6UL_PAD_SD1_CLK__USDHC1_CLK        0x10059
+			MX6UL_PAD_SD1_DATA0__USDHC1_DATA0    0x10059
+			MX6UL_PAD_SD1_DATA1__USDHC1_DATA1    0x10059
+			MX6UL_PAD_SD1_DATA2__USDHC1_DATA2    0x10059
+			MX6UL_PAD_SD1_DATA3__USDHC1_DATA3    0x10059
+			MX6UL_PAD_CSI_DATA00__GPIO4_IO21     0x17000
+			MX6UL_PAD_CSI_DATA01__GPIO4_IO22     0x10030
+		>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			MX6UL_PAD_NAND_RE_B__USDHC2_CLK      0x100e9
+			MX6UL_PAD_NAND_WE_B__USDHC2_CMD      0x100e9
+			MX6UL_PAD_NAND_DATA00__USDHC2_DATA0  0x100e9
+			MX6UL_PAD_NAND_DATA01__USDHC2_DATA1  0x100e9
+			MX6UL_PAD_NAND_DATA02__USDHC2_DATA2  0x100e9
+			MX6UL_PAD_NAND_DATA03__USDHC2_DATA3  0x100e9
+			MX6UL_PAD_NAND_DATA04__USDHC2_DATA4  0x100e9
+			MX6UL_PAD_NAND_DATA05__USDHC2_DATA5  0x100e9
+			MX6UL_PAD_NAND_DATA06__USDHC2_DATA6  0x100e9
+			MX6UL_PAD_NAND_DATA07__USDHC2_DATA7  0x100e9
+			MX6UL_PAD_NAND_ALE__GPIO4_IO10       0x10030
+		>;
+	};
+
+	pinctrl_wdog: wdoggrp {
+		fsl,pins = <
+			MX6UL_PAD_GPIO1_IO01__WDOG1_WDOG_B	0x00b0
+		>;
+	};
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 720fe874d7..6d8b7b9c4d 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -578,6 +578,11 @@ config MACH_DIGI_CCIMX6ULSBCPRO
 	select ARCH_IMX6UL
 	select ARM_USE_COMPRESSED_DTB
 
+config MACH_WEBASTO_CCBV2
+	bool "Webasto Common Communication Board V2"
+	select ARCH_IMX6UL
+	select ARM_USE_COMPRESSED_DTB
+
 endif
 
 # ----------------------------------------------------------
diff --git a/arch/arm/mach-imx/include/mach/imx6-regs.h b/arch/arm/mach-imx/include/mach/imx6-regs.h
index 1ba22b5bc6..7350ffd16f 100644
--- a/arch/arm/mach-imx/include/mach/imx6-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx6-regs.h
@@ -115,6 +115,7 @@
 #define MX6_IP2APB_USBPHY1_BASE_ADDR    (MX6_AIPS2_OFF_BASE_ADDR + 0x78000)
 #define MX6_IP2APB_USBPHY2_BASE_ADDR    (MX6_AIPS2_OFF_BASE_ADDR + 0x7C000)
 
+#define MX6_UART7_BASE_ADDR		0x02018000
 #define MX6_SATA_BASE_ADDR		0x02200000
 
 #define MX6_MMDC_PORT01_BASE_ADDR	0x10000000
diff --git a/arch/arm/mach-imx/include/mach/iomux-mx6ul.h b/arch/arm/mach-imx/include/mach/iomux-mx6ul.h
index 7ac5801049..b7727191c2 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx6ul.h
+++ b/arch/arm/mach-imx/include/mach/iomux-mx6ul.h
@@ -6,7 +6,7 @@
 #ifndef __ASM_ARCH_IMX6UL_PINS_H__
 #define __ASM_ARCH_IMX6UL_PINS_H__
 
-#include <asm/mach-imx/iomux-v3.h>
+#include <mach/iomux-v3.h>
 
 enum {
 
diff --git a/firmware/Kconfig b/firmware/Kconfig
index 97b7b3c2ee..c2ff51b911 100644
--- a/firmware/Kconfig
+++ b/firmware/Kconfig
@@ -16,4 +16,9 @@ config FIRMWARE_IMX8MP_ATF
 config FIRMWARE_IMX8MQ_ATF
         bool
 
+config FIRMWARE_CCBV2_OPTEE
+	bool
+	depends on MACH_WEBASTO_CCBV2 && PBL_OPTEE
+	default y
+
 endmenu
diff --git a/firmware/Makefile b/firmware/Makefile
index 3d4b7fd935..0d1b445783 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -17,6 +17,8 @@ firmware-$(CONFIG_DRIVER_NET_FSL_FMAN) += fsl_fman_ucode_ls1046_r1.0_106_4_18.bi
 
 firmware-$(CONFIG_ARCH_LAYERSCAPE_PPA) += ppa-ls1046a.bin
 
+firmware-$(CONFIG_FIRMWARE_CCBV2_OPTEE) += ccbv2_optee.bin
+
 # Create $(fwabs) from $(CONFIG_EXTRA_FIRMWARE_DIR) -- if it doesn't have a
 # leading /, it's relative to $(srctree).
 fwdir := $(subst $(quote),,$(CONFIG_EXTRA_FIRMWARE_DIR))
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 3434a10e7c..d30d06451b 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -362,6 +362,8 @@ $(call build_imx_habv4img, CONFIG_MACH_TECHNEXION_PICO_HOBBIT, start_imx6ul_pico
 
 $(call build_imx_habv4img, CONFIG_MACH_DIGI_CCIMX6ULSBCPRO, start_imx6ul_ccimx6ulsbcpro, digi-ccimx6ulsom/flash-header-imx6ul-ccimx6ulsbcpro, imx6ul-ccimx6ulsbcpro)
 
+$(call build_imx_habv4img, CONFIG_MACH_WEBASTO_CCBV2, start_imx6ul_ccbv2, webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2, imx6ul-webasto-ccbv2)
+
 # ----------------------- vf6xx based boards ---------------------------
 pblb-$(CONFIG_MACH_VF610_TWR) += start_vf610_twr
 CFG_start_vf610_twr.pblb.imximg = $(board)/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
