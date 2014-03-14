Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOTAg-00055S-Mu
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 14:33:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Mar 2014 15:32:22 +0100
Message-Id: <1394807569-23620-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1394807569-23620-1-git-send-email-s.hauer@pengutronix.de>
References: <1394807569-23620-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/29] ARM: i.MX6: Add initial variscite VAR-SOM-MX6 CPU
 support
To: barebox@lists.infradead.org

The VAR-SOM-MX6 is a System on module from Variscite, see:

http://www.variscite.com/products/system-on-module-som/cortex-a9/var-som-mx6-cpu-freescale-imx6

This adds support for this module on the VAR-MX6CustomBoard baseboard.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/Makefile                           |   1 +
 arch/arm/boards/variscite-mx6/Makefile             |   3 +
 arch/arm/boards/variscite-mx6/board.c              | 135 +++++++++++++++++++
 .../variscite-mx6/flash-header-variscite.imxcfg    |  86 ++++++++++++
 arch/arm/boards/variscite-mx6/lowlevel.c           |  74 ++++++++++
 arch/arm/dts/Makefile                              |   4 +-
 arch/arm/dts/imx6q-var-custom.dts                  | 149 +++++++++++++++++++++
 arch/arm/dts/imx6q-var-som.dtsi                    |  99 ++++++++++++++
 arch/arm/mach-imx/Kconfig                          |   6 +
 images/Makefile.imx                                |   5 +
 10 files changed, 561 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/variscite-mx6/Makefile
 create mode 100644 arch/arm/boards/variscite-mx6/board.c
 create mode 100644 arch/arm/boards/variscite-mx6/flash-header-variscite.imxcfg
 create mode 100644 arch/arm/boards/variscite-mx6/lowlevel.c
 create mode 100644 arch/arm/dts/imx6q-var-custom.dts
 create mode 100644 arch/arm/dts/imx6q-var-som.dtsi

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 0d8c9cf..ac85093 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -100,3 +100,4 @@ obj-$(CONFIG_MACH_USB_A9G20)			+= usb-a926x/
 obj-$(CONFIG_MACH_VERSATILEPB)			+= versatile/
 obj-$(CONFIG_MACH_VEXPRESS)			+= vexpress/
 obj-$(CONFIG_MACH_ZEDBOARD)			+= avnet-zedboard/
+obj-$(CONFIG_MACH_VARISCITE_MX6)		+= variscite-mx6/
diff --git a/arch/arm/boards/variscite-mx6/Makefile b/arch/arm/boards/variscite-mx6/Makefile
new file mode 100644
index 0000000..35b114b
--- /dev/null
+++ b/arch/arm/boards/variscite-mx6/Makefile
@@ -0,0 +1,3 @@
+obj-y += board.o flash-header-variscite.dcd.o
+extra-y += flash-header-variscite.dcd.S flash-header-variscite.dcd
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/variscite-mx6/board.c b/arch/arm/boards/variscite-mx6/board.c
new file mode 100644
index 0000000..592b111
--- /dev/null
+++ b/arch/arm/boards/variscite-mx6/board.c
@@ -0,0 +1,135 @@
+/*
+ * Copyright (C) 2013 Michael Burkey
+ * Based on code (C) Sascha Hauer, Pengutronix
+ * Based on code (C) Variscite, Ltd.
+ *
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation.
+ *
+ */
+
+#define pr_fmt(fmt) "var-som-mx6: " fmt
+
+#include <common.h>
+#include <gpio.h>
+#include <init.h>
+#include <of.h>
+#include <debug_ll.h>
+
+#include <environment.h>
+#include <asm/armlinux.h>
+#include <generated/mach-types.h>
+#include <partition.h>
+#include <asm/io.h>
+#include <asm/mmu.h>
+#include <mach/generic.h>
+#include <sizes.h>
+#include <mach/imx6.h>
+#include <mach/devices-imx6.h>
+#include <mach/iomux-mx6.h>
+#include <spi/spi.h>
+#include <mach/spi.h>
+#include <i2c/i2c.h>
+
+#define ETH_PHY_RST	IMX_GPIO_NR(1, 25)
+
+static int setup_pmic_voltages(void)
+{
+	unsigned char value, rev_id = 0 ;
+	struct i2c_adapter *adapter = NULL;
+	struct i2c_client client;
+	int addr = -1, ret, bus = 0;
+
+	/* I2C2 bus (2-1 = 1 in barebox numbering) */
+	bus = 1;
+
+	/* PFUZE100 device address is 0x08 */
+	addr = 0x08;
+
+	adapter = i2c_get_adapter(bus);
+	if (!adapter) {
+		pr_err("i2c bus %d not found\n", bus);
+		return -ENODEV;
+	}
+
+	client.adapter = adapter;
+	client.addr = addr;
+
+	/* Attempt to locate the PFUZE100 chip. */
+	if (i2c_read_reg(&client, 0x00, &value, 1) != 1) {
+		pr_err("Read device ID error!\n");
+		return -1;
+	}
+	if (i2c_read_reg(&client, 0x03, &rev_id, 1) != 1) {
+		pr_err("Read Rev ID error!\n");
+		return -1;
+	}
+
+	pr_info("Found PFUZE100! deviceid=%x,revid=%x\n", value, rev_id);
+
+	/* Set Gigabit Ethernet voltage (SOM v1.1/1.0)*/
+        value = 0x60;
+	ret = i2c_write_reg(&client, 0x4a, &value, 1);
+
+	/* set VGEN3 to 2.5V */
+	value = 0x77;
+	if (i2c_write_reg(&client, 0x6e, &value, 1) != 1) {
+		pr_err("Set VGEN3 error!\n");
+		return -EIO;
+	}
+
+	return 0;
+}
+
+static int eth_phy_reset(void)
+{
+	gpio_request(ETH_PHY_RST, "phy reset");
+	gpio_direction_output(ETH_PHY_RST, 0);
+	mdelay(1);
+	gpio_set_value(ETH_PHY_RST, 1);
+
+	return 0;
+}
+
+static int variscite_custom_init(void)
+{
+	if (!of_machine_is_compatible("variscite,imx6q-custom"))
+		return 0;
+
+	barebox_set_hostname("var-som-mx6");
+
+	setup_pmic_voltages();
+
+	eth_phy_reset();
+
+	armlinux_set_architecture(MACH_TYPE_VAR_SOM_MX6);
+
+	pr_debug("Completing custom_init()\n");
+
+	return 0;
+}
+device_initcall(variscite_custom_init);
+
+static int variscite_custom_core_init(void)
+{
+	if (!of_machine_is_compatible("variscite,imx6q-custom"))
+		return 0;
+
+	imx6_init_lowlevel();
+
+	pr_debug("Completing custom_core_init()\n");
+
+	return 0;
+}
+postcore_initcall(variscite_custom_core_init);
diff --git a/arch/arm/boards/variscite-mx6/flash-header-variscite.imxcfg b/arch/arm/boards/variscite-mx6/flash-header-variscite.imxcfg
new file mode 100644
index 0000000..ed21057
--- /dev/null
+++ b/arch/arm/boards/variscite-mx6/flash-header-variscite.imxcfg
@@ -0,0 +1,86 @@
+loadaddr 0x10000000
+soc imx6
+dcdofs 0x400
+wm 32 0x020e0798 0x000C0000
+wm 32 0x020e0758 0x00000000
+wm 32 0x020e0588 0x00000030
+wm 32 0x020e0594 0x00000030
+wm 32 0x020e056c 0x00000030
+wm 32 0x020e0578 0x00000030
+wm 32 0x020e074c 0x00000030
+wm 32 0x020e057c 0x00000030
+wm 32 0x020e058c 0x00000000
+wm 32 0x020e059c 0x00000030
+wm 32 0x020e05a0 0x00000030
+wm 32 0x020e078c 0x00000030
+wm 32 0x020e0750 0x00020000
+wm 32 0x020e05a8 0x00000030
+wm 32 0x020e05b0 0x00000030
+wm 32 0x020e0524 0x00000030
+wm 32 0x020e051c 0x00000030
+wm 32 0x020e0518 0x00000030
+wm 32 0x020e050c 0x00000030
+wm 32 0x020e05b8 0x00000030
+wm 32 0x020e05c0 0x00000030
+wm 32 0x020e0774 0x00020000
+wm 32 0x020e0784 0x00000030
+wm 32 0x020e0788 0x00000030
+wm 32 0x020e0794 0x00000030
+wm 32 0x020e079c 0x00000030
+wm 32 0x020e07a0 0x00000030
+wm 32 0x020e07a4 0x00000030
+wm 32 0x020e07a8 0x00000030
+wm 32 0x020e0748 0x00000030
+wm 32 0x020e05ac 0x00000030
+wm 32 0x020e05b4 0x00000030
+wm 32 0x020e0528 0x00000030
+wm 32 0x020e0520 0x00000030
+wm 32 0x020e0514 0x00000030
+wm 32 0x020e0510 0x00000030
+wm 32 0x020e05bc 0x00000030
+wm 32 0x020e05c4 0x00000030
+wm 32 0x021b0800 0xA1390003
+wm 32 0x021b080c 0x001F001F
+wm 32 0x021b0810 0x001F001F
+wm 32 0x021b480c 0x001F001F
+wm 32 0x021b4810 0x001F001F
+wm 32 0x021b083c 0x4333033F
+wm 32 0x021b0840 0x032C031D
+wm 32 0x021b483c 0x43200332
+wm 32 0x021b4840 0x031A026A
+wm 32 0x021b0848 0x4D464746
+wm 32 0x021b4848 0x47453F4D
+wm 32 0x021b0850 0x3E434440
+wm 32 0x021b4850 0x47384839
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+wm 32 0x021b481c 0x33333333
+wm 32 0x021b4820 0x33333333
+wm 32 0x021b4824 0x33333333
+wm 32 0x021b4828 0x33333333
+wm 32 0x021b08b8 0x00000800
+wm 32 0x021b48b8 0x00000800
+wm 32 0x021b0004 0x00020036
+wm 32 0x021b0008 0x09444040
+wm 32 0x021b000c 0x555A7975
+wm 32 0x021b0010 0xFF538F64
+wm 32 0x021b0014 0x01FF00DB
+wm 32 0x021b0018 0x00001740
+wm 32 0x021b001c 0x00008000
+wm 32 0x021b002c 0x000026D2
+wm 32 0x021b0030 0x005A1023
+wm 32 0x021b0040 0x00000027
+wm 32 0x021b0000 0x831A0000
+wm 32 0x021b001c 0x04088032
+wm 32 0x021b001c 0x00008033
+wm 32 0x021b001c 0x00048031
+wm 32 0x021b001c 0x09408030
+wm 32 0x021b001c 0x04008040
+wm 32 0x021b0020 0x00005800
+wm 32 0x021b0818 0x00011117
+wm 32 0x021b4818 0x00011117
+wm 32 0x021b0004 0x00025576
+wm 32 0x021b0404 0x00011006
+wm 32 0x021b001c 0x00000000
diff --git a/arch/arm/boards/variscite-mx6/lowlevel.c b/arch/arm/boards/variscite-mx6/lowlevel.c
new file mode 100644
index 0000000..e93e874
--- /dev/null
+++ b/arch/arm/boards/variscite-mx6/lowlevel.c
@@ -0,0 +1,74 @@
+/*
+ *
+ * Copyright (C) 2013 Michael Burkey
+ * Based on code by Sascha Hauer <s.hauer@pengutronix.de>
+ *
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
+#include <debug_ll.h>
+#include <common.h>
+#include <sizes.h>
+#include <io.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <asm/sections.h>
+#include <asm/cache.h>
+#include <asm/mmu.h>
+#include <mach/imx6-mmdc.h>
+#include <mach/imx6.h>
+
+static inline void setup_uart(void)
+{
+	void __iomem *ccmbase = (void *)MX6_CCM_BASE_ADDR;
+	void __iomem *uartbase = (void *)MX6_UART1_BASE_ADDR;
+	void __iomem *iomuxbase = (void *)MX6_IOMUXC_BASE_ADDR;
+
+	writel(0x03, iomuxbase + 0x0280);
+	writel(0x03, iomuxbase + 0x0284);
+
+	writel(0xffffffff, ccmbase + 0x68);
+	writel(0xffffffff, ccmbase + 0x6c);
+	writel(0xffffffff, ccmbase + 0x70);
+	writel(0xffffffff, ccmbase + 0x74);
+	writel(0xffffffff, ccmbase + 0x78);
+	writel(0xffffffff, ccmbase + 0x7c);
+	writel(0xffffffff, ccmbase + 0x80);
+
+	writel(0x00000000, uartbase + 0x80);
+	writel(0x00004027, uartbase + 0x84);
+	writel(0x00000704, uartbase + 0x88);
+	writel(0x00000a81, uartbase + 0x90);
+	writel(0x0000002b, uartbase + 0x9c);
+	writel(0x00013880, uartbase + 0xb0);
+	writel(0x0000047f, uartbase + 0xa4);
+	writel(0x0000c34f, uartbase + 0xa8);
+	writel(0x00000001, uartbase + 0x80);
+
+	putc_ll('>');
+}
+extern char __dtb_imx6q_var_custom_start[];
+
+ENTRY_FUNCTION(start_variscite_custom, r0, r1, r2)
+{
+	uint32_t fdt;
+
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(0x00920000 - 8);
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+	    setup_uart();
+
+	fdt = (uint32_t)__dtb_imx6q_var_custom_start - get_runtime_offset();
+
+	barebox_arm_entry(0x10000000, SZ_1G, fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 6bac3b9..d42fde9 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -25,7 +25,8 @@ dtb-$(CONFIG_ARCH_IMX6) += imx6q-gk802.dtb \
 	imx6q-guf-santaro.dtb \
 	imx6q-nitrogen6x.dtb \
 	imx6dl-nitrogen6x.dtb \
-	imx6q-udoo.dtb
+	imx6q-udoo.dtb \
+	imx6q-var-custom.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += dove-cubox-bb.dtb
 dtb-$(CONFIG_ARCH_SOCFPGA) += socfpga_cyclone5_sockit.dtb \
 	socfpga_cyclone5_socrates.dtb
@@ -60,6 +61,7 @@ pbl-$(CONFIG_MACH_SABRESD) += imx6q-sabresd.dtb.o
 pbl-$(CONFIG_MACH_GUF_SANTARO) += imx6q-guf-santaro.dtb.o
 pbl-$(CONFIG_MACH_NITROGEN6X) += imx6q-nitrogen6x.dtb.o imx6dl-nitrogen6x.dtb.o
 pbl-$(CONFIG_MACH_UDOO) += imx6q-udoo.dtb.o
+pbl-$(CONFIG_MACH_VARISCITE_MX6) += imx6q-var-custom.dtb.o
 
 .SECONDARY: $(obj)/$(BUILTIN_DTB).dtb.S
 .SECONDARY: $(patsubst %,$(obj)/%.S,$(dtb-y))
diff --git a/arch/arm/dts/imx6q-var-custom.dts b/arch/arm/dts/imx6q-var-custom.dts
new file mode 100644
index 0000000..bb1193f
--- /dev/null
+++ b/arch/arm/dts/imx6q-var-custom.dts
@@ -0,0 +1,149 @@
+/*
+ * Copyright 2013 Michael Burkey
+ * Based on code written by Christian Hemp, Phytec Messtechnik GmbH
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ *
+ *
+ * 		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &usdhc2, "partname:barebox-environment";
+		};
+
+ *
+ */
+
+/dts-v1/;
+#include "imx6q-var-som.dtsi"
+
+/ {
+	model = "Variscite i.MX6 Quad Custom Carrier-Board";
+	compatible = "variscite,imx6q-custom", "variscite,imx6q-som", "fsl,imx6q";
+
+	chosen {
+		linux,stdout-path = &uart1;
+
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &gpmi, "partname:barebox-environment";
+		};
+
+	};
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	imx6q-variscite-custom {
+		pinctrl_i2c1: i2c1grp {
+			fsl,pins = <MX6QDL_I2C1_PINGRP1>;
+		};
+
+		pinctrl_i2c3: i2c3grp {
+			fsl,pins = <MX6QDL_I2C3_PINGRP3>;
+		};
+
+		pinctrl_usdhc2: usdhc2grp {
+			fsl,pins = <MX6QDL_USDHC2_PINGRP_D4>;
+		};
+
+		pinctrl_usdhc2_cd: usdhc2cd {
+			fsl,pins = <
+				MX6QDL_PAD_KEY_COL4__GPIO4_IO14	 0x80000000
+				MX6QDL_PAD_KEY_ROW4__GPIO4_IO15	 0x80000000
+			>;
+		};
+
+		pinctrl_uart1: uart1grp {
+			fsl,pins = <MX6QDL_UART1_PINGRP1>;
+		};
+	};
+};
+
+&ldb {
+	status = "okay";
+
+	lvds-channel@0 {
+		fsl,data-mapping = "spwg";
+		fsl,data-width = <24>;
+		status = "okay";
+		display-timings {
+			native-mode = &claawvga;
+			claawvga: claawvga {
+				native-mode;
+				clock-frequency = <35714000>;
+				hactive = <800>;
+				vactive = <480>;
+				hback-porch = <28>;
+				hfront-porch = <17>;
+				vback-porch = <13>;
+				vfront-porch = <20>;
+				hsync-len = <20>;
+				vsync-len = <13>;
+			};
+		};
+	};
+};
+
+&uart1 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+};
+
+&usdhc2 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	cd-gpios = <&gpio4 14 0>;
+	wp-gpios = <&gpio4 15 0>;
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0x200000>;
+	};
+
+	partition@1 {
+		label = "barebox-environment";
+		reg = <0x200000 0x20000>;
+	};
+
+	partition@2 {
+		label = "kernel";
+		reg = <0x220000 0x600000>;
+	};
+
+	partition@3 {
+		label = "rootfs";
+		reg = <0x820000 0x18000000>;
+	};
+};
+
+&usbh1 {
+	status = "okay";
+	disable-over-current;
+	dr_mode = "host";
+	phy_type = "utmi";
+};
+
+&i2c1 {
+	status = "okay";
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+};
+
+&i2c3 {
+	status = "okay";
+	clock-frequency = <1000000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c3>;
+};
diff --git a/arch/arm/dts/imx6q-var-som.dtsi b/arch/arm/dts/imx6q-var-som.dtsi
new file mode 100644
index 0000000..f423f27
--- /dev/null
+++ b/arch/arm/dts/imx6q-var-som.dtsi
@@ -0,0 +1,99 @@
+/*
+ * Copyright 2013 Michael Burkey
+ * Based on code written by Christian Hemp, Phytec Messtechnik GmbH
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+#include "imx6q.dtsi"
+
+/ {
+	model = "Variscite i.MX6 Quad SOM";
+	compatible = "variscite,imx6q-som", "fsl,imx6q";
+
+	memory {
+		reg = <0x10000000 0x40000000>;
+	};
+};
+
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet>;
+	phy-mode = "rgmii";
+	status = "okay";
+};
+
+&gpmi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpmi_nand>;
+	nand-on-flash-bbt;
+	status = "okay";
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0x200000>;
+	};
+
+	partition@1 {
+		label = "barebox-environment";
+		reg = <0x200000 0x20000>;
+	};
+
+	partition@2 {
+		label = "kernel";
+		reg = <0x220000 0x600000>;
+	};
+
+	partition@3 {
+		label = "rootfs";
+		reg = <0x820000 0x1F7E0000>;
+	};
+};
+
+&hdmi {
+	status = "okay";
+	ddc-i2c-bus = <&i2c2>;
+};
+
+&i2c2 {
+	status = "okay";
+	clock-frequency = <1000000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	imx6q-variscite-som {
+		pinctrl_hog: hoggrp {
+			fsl,pins = <
+				MX6QDL_PAD_GPIO_0__CCM_CLKO1	0x80000000
+				MX6QDL_PAD_GPIO_3__CCM_CLKO2	0x80000000
+			>;
+		};
+
+		pinctrl_enet: enetgrp {
+			fsl,pins = <
+				MX6QDL_ENET_PINGRP_RGMII_MD(0x1b0b0, 0x1b0b0)
+				MX6QDL_PAD_ENET_CRS_DV__GPIO1_IO25 0x80000000		/* KSZ9031 PHY Reset */
+			  >;
+		};
+
+		pinctrl_gpmi_nand: gpmigrp {
+			fsl,pins = <MX6QDL_GPMI_NAND_PINGRP1>;
+		};
+
+		pinctrl_i2c2: i2c2grp {
+			fsl,pins = <MX6QDL_I2C2_PINGRP2>;
+		};
+	};
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index b7e7533..b242716 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -39,6 +39,7 @@ config ARCH_TEXT_BASE
 	default 0x4fc00000 if MACH_PHYTEC_PFLA02
 	default 0x4fc00000 if MACH_DFI_FS700_M60
 	default 0x4fc00000 if MACH_UDOO
+	default 0x4fc00000 if MACH_VARISCITE_MX6
 
 config ARCH_IMX_INTERNAL_BOOT
 	bool "support internal boot mode"
@@ -247,6 +248,11 @@ config MACH_UDOO
 	bool "Freescale i.MX6 UDOO Board"
 	select ARCH_IMX6
 
+config MACH_VARISCITE_MX6
+	bool "Variscite i.MX6 Quad SOM"
+	select ARCH_IMX6
+
+
 endif
 
 # ----------------------------------------------------------
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 5b650de..6754a3f 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -143,3 +143,8 @@ pblx-$(CONFIG_MACH_UDOO) += start_imx6_udoo
 CFG_start_imx6_udoo.pblx.imximg = $(board)/udoo/flash-header-mx6-udoo.imxcfg
 FILE_barebox-udoo-imx6q.img = start_imx6_udoo.pblx.imximg
 image-$(CONFIG_MACH_UDOO) += barebox-udoo-imx6q.img
+
+pblx-$(CONFIG_MACH_VARISCITE_MX6) += start_variscite_custom
+CFG_start_variscite_custom.pblx.imximg = $(board)/variscite-mx6/flash-header-variscite.imxcfg
+FILE_barebox-variscite-custom.img = start_variscite_custom.pblx.imximg
+image-$(CONFIG_MACH_VARISCITE_MX6) += barebox-variscite-custom.img
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
