Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k1N8X-0004E2-W6
 for barebox@lists.infradead.org; Fri, 31 Jul 2020 04:59:19 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri, 31 Jul 2020 06:59:05 +0200
Message-Id: <20200731045905.546141-1-ahmad@a3f.at>
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
Subject: [PATCH] ARM: stm32mp: add support for Seeed Odyssey board
To: barebox@lists.infradead.org
Cc: Xogium <contact@xogium.me>, Jookia <contact@jookia.org>

Board consists of SoM with stm32mp157c with 4G eMMC and 512M DDR3 RAM.
Carrier board features USB and ETH interfaces and SD card connector.

USB and ETH interfaces not yet operational.

Boot from eMMC requires boot ack bit set.

Device Tree taken from v5 of kernel device tree off mailing list[1].

[1]: https://lore.kernel.org/linux-arm-kernel/20200724145107.35772-3-marcin.sloniewski@gmail.com/

Tested-by: Jookia <contact@jookia.org>
Tested-by: Xogium <contact@xogium.me>
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 Documentation/boards/stm32mp.rst          |   1 +
 arch/arm/boards/Makefile                  |   1 +
 arch/arm/boards/seeed-odyssey/Makefile    |   2 +
 arch/arm/boards/seeed-odyssey/board.c     |  30 +++
 arch/arm/boards/seeed-odyssey/lowlevel.c  |  19 ++
 arch/arm/configs/stm32mp_defconfig        |   1 +
 arch/arm/dts/Makefile                     |   1 +
 arch/arm/dts/stm32mp157c-odyssey-som.dtsi | 294 ++++++++++++++++++++++
 arch/arm/dts/stm32mp157c-odyssey.dts      |  27 ++
 arch/arm/dts/stm32mp157c-odyssey.dtsi     |  72 ++++++
 arch/arm/mach-stm32mp/Kconfig             |   4 +
 images/Makefile.stm32mp                   |   5 +
 12 files changed, 457 insertions(+)
 create mode 100644 arch/arm/boards/seeed-odyssey/Makefile
 create mode 100644 arch/arm/boards/seeed-odyssey/board.c
 create mode 100644 arch/arm/boards/seeed-odyssey/lowlevel.c
 create mode 100644 arch/arm/dts/stm32mp157c-odyssey-som.dtsi
 create mode 100644 arch/arm/dts/stm32mp157c-odyssey.dts
 create mode 100644 arch/arm/dts/stm32mp157c-odyssey.dtsi

diff --git a/Documentation/boards/stm32mp.rst b/Documentation/boards/stm32mp.rst
index 607c59fd0757..7c657eb99044 100644
--- a/Documentation/boards/stm32mp.rst
+++ b/Documentation/boards/stm32mp.rst
@@ -31,6 +31,7 @@ The resulting images will be placed under ``images/``:
 
   barebox-stm32mp157c-dk2.img
   barebox-stm32mp157c-lxa-mc1.img
+  barebox-stm32mp157c-seeed-odyssey.img
 
 
 Flashing barebox
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 304ae59851d6..729faddec99f 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -123,6 +123,7 @@ obj-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB)	+= microchip-ksz9477-evb/
 obj-$(CONFIG_MACH_SAMA5D4_XPLAINED)		+= sama5d4_xplained/
 obj-$(CONFIG_MACH_SAMA5D4EK)			+= sama5d4ek/
 obj-$(CONFIG_MACH_SCB9328)			+= scb9328/
+obj-$(CONFIG_MACH_SEEED_ODYSSEY)		+= seeed-odyssey/
 obj-$(CONFIG_MACH_SOCFPGA_ALTERA_SOCDK)		+= altera-socdk/
 obj-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES)		+= ebv-socrates/
 obj-$(CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES)	+= reflex-achilles/
diff --git a/arch/arm/boards/seeed-odyssey/Makefile b/arch/arm/boards/seeed-odyssey/Makefile
new file mode 100644
index 000000000000..092c31d6b28d
--- /dev/null
+++ b/arch/arm/boards/seeed-odyssey/Makefile
@@ -0,0 +1,2 @@
+lwl-y += lowlevel.o
+obj-y += board.o
diff --git a/arch/arm/boards/seeed-odyssey/board.c b/arch/arm/boards/seeed-odyssey/board.c
new file mode 100644
index 000000000000..85990a2d78e2
--- /dev/null
+++ b/arch/arm/boards/seeed-odyssey/board.c
@@ -0,0 +1,30 @@
+// SPDX-License-Identifier: GPL-2.0+
+#include <common.h>
+#include <linux/sizes.h>
+#include <init.h>
+#include <asm/memory.h>
+#include <mach/bbu.h>
+#include <bootsource.h>
+#include <of.h>
+
+static int odyssey_device_init(void)
+{
+	int flags;
+	if (!of_machine_is_compatible("seeed,stm32mp157c-odyssey-som"))
+		return 0;
+
+	flags = bootsource_get_instance() == 0 ? BBU_HANDLER_FLAG_DEFAULT : 0;
+	stm32mp_bbu_mmc_register_handler("sd", "/dev/mmc0.ssbl", flags);
+
+	flags = bootsource_get_instance() == 1 ? BBU_HANDLER_FLAG_DEFAULT : 0;
+	stm32mp_bbu_mmc_register_handler("emmc", "/dev/mmc1.ssbl", flags);
+
+
+	if (bootsource_get_instance() == 0)
+		of_device_enable_path("/chosen/environment-sd");
+	else
+		of_device_enable_path("/chosen/environment-emmc");
+
+	return 0;
+}
+device_initcall(odyssey_device_init);
diff --git a/arch/arm/boards/seeed-odyssey/lowlevel.c b/arch/arm/boards/seeed-odyssey/lowlevel.c
new file mode 100644
index 000000000000..5ab1639dfe06
--- /dev/null
+++ b/arch/arm/boards/seeed-odyssey/lowlevel.c
@@ -0,0 +1,19 @@
+// SPDX-License-Identifier: GPL-2.0+
+#include <common.h>
+#include <mach/entry.h>
+#include <debug_ll.h>
+
+extern char __dtb_z_stm32mp157c_odyssey_start[];
+
+ENTRY_FUNCTION(start_stm32mp157c_seeed_odyssey, r0, r1, r2)
+{
+	void *fdt;
+
+	stm32mp_cpu_lowlevel_init();
+
+	putc_ll('>');
+
+	fdt = __dtb_z_stm32mp157c_odyssey_start + get_runtime_offset();
+
+	stm32mp1_barebox_entry(fdt);
+}
diff --git a/arch/arm/configs/stm32mp_defconfig b/arch/arm/configs/stm32mp_defconfig
index 4b902e174113..c98908debc2a 100644
--- a/arch/arm/configs/stm32mp_defconfig
+++ b/arch/arm/configs/stm32mp_defconfig
@@ -1,6 +1,7 @@
 CONFIG_ARCH_STM32MP=y
 CONFIG_MACH_STM32MP157C_DK2=y
 CONFIG_MACH_LXA_MC1=y
+CONFIG_MACH_SEEED_ODYSSEY=y
 CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_BOARD_APPEND_ATAG=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 3cbf65078dd6..4d01bebf8739 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -109,6 +109,7 @@ lwl-$(CONFIG_MACH_SOLIDRUN_CUBOX) += dove-cubox-bb.dtb.o
 lwl-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += imx6dl-hummingboard.dtb.o imx6q-hummingboard.dtb.o \
 				imx6dl-hummingboard2.dtb.o imx6q-hummingboard2.dtb.o \
 				imx6q-h100.dtb.o
+lwl-$(CONFIG_MACH_SEEED_ODYSSEY) += stm32mp157c-odyssey.dtb.o
 lwl-$(CONFIG_MACH_STM32MP157C_DK2) += stm32mp157c-dk2.dtb.o
 lwl-$(CONFIG_MACH_LXA_MC1) += stm32mp157c-lxa-mc1.dtb.o
 lwl-$(CONFIG_MACH_SCB9328) += imx1-scb9328.dtb.o
diff --git a/arch/arm/dts/stm32mp157c-odyssey-som.dtsi b/arch/arm/dts/stm32mp157c-odyssey-som.dtsi
new file mode 100644
index 000000000000..1e5bd8bccb71
--- /dev/null
+++ b/arch/arm/dts/stm32mp157c-odyssey-som.dtsi
@@ -0,0 +1,294 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
+/*
+ * Copyright (C) 2020 Marcin Sloniewski <marcin.sloniewski@gmail.com>.
+ */
+
+/dts-v1/;
+
+#include <arm/stm32mp157.dtsi>
+#include <arm/stm32mp15xc.dtsi>
+#include <arm/stm32mp15-pinctrl.dtsi>
+#include <arm/stm32mp15xxac-pinctrl.dtsi>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/mfd/st,stpmic1.h>
+
+/ {
+	model = "Seeed Studio Odyssey-STM32MP157C SOM";
+	compatible = "seeed,stm32mp157c-odyssey-som", "st,stm32mp157";
+
+	memory@c0000000 {
+		device_type = "memory";
+		reg = <0xc0000000 0x20000000>;
+	};
+
+	reserved-memory {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		mcuram2: mcuram2@10000000 {
+			compatible = "shared-dma-pool";
+			reg = <0x10000000 0x40000>;
+			no-map;
+		};
+
+		vdev0vring0: vdev0vring0@10040000 {
+			compatible = "shared-dma-pool";
+			reg = <0x10040000 0x1000>;
+			no-map;
+		};
+
+		vdev0vring1: vdev0vring1@10041000 {
+			compatible = "shared-dma-pool";
+			reg = <0x10041000 0x1000>;
+			no-map;
+		};
+
+		vdev0buffer: vdev0buffer@10042000 {
+			compatible = "shared-dma-pool";
+			reg = <0x10042000 0x4000>;
+			no-map;
+		};
+
+		mcuram: mcuram@30000000 {
+			compatible = "shared-dma-pool";
+			reg = <0x30000000 0x40000>;
+			no-map;
+		};
+
+		retram: retram@38000000 {
+			compatible = "shared-dma-pool";
+			reg = <0x38000000 0x10000>;
+			no-map;
+		};
+
+		gpu_reserved: gpu@d4000000 {
+			reg = <0xd4000000 0x4000000>;
+			no-map;
+		};
+	};
+
+	led {
+		compatible = "gpio-leds";
+		led-blue {
+			color = <LED_COLOR_ID_BLUE>;
+			function = LED_FUNCTION_HEARTBEAT;
+			gpios = <&gpiog 3 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+};
+
+&gpu {
+	contiguous-area = <&gpu_reserved>;
+	status = "okay";
+};
+
+&i2c2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c2_pins_a>;
+	i2c-scl-rising-time-ns = <185>;
+	i2c-scl-falling-time-ns = <20>;
+	status = "okay";
+	/* spare dmas for other usage */
+	/delete-property/dmas;
+	/delete-property/dma-names;
+
+	pmic: stpmic@33 {
+		compatible = "st,stpmic1";
+		reg = <0x33>;
+		interrupts-extended = <&gpioa 0 IRQ_TYPE_EDGE_FALLING>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+
+		regulators {
+			compatible = "st,stpmic1-regulators";
+			ldo1-supply = <&v3v3>;
+			ldo3-supply = <&vdd_ddr>;
+			ldo6-supply = <&v3v3>;
+			pwr_sw1-supply = <&bst_out>;
+			pwr_sw2-supply = <&bst_out>;
+
+			vddcore: buck1 {
+				regulator-name = "vddcore";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-always-on;
+				regulator-initial-mode = <0>;
+				regulator-over-current-protection;
+			};
+
+			vdd_ddr: buck2 {
+				regulator-name = "vdd_ddr";
+				regulator-min-microvolt = <1350000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-always-on;
+				regulator-initial-mode = <0>;
+				regulator-over-current-protection;
+			};
+
+			vdd: buck3 {
+				regulator-name = "vdd";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+				st,mask-reset;
+				regulator-initial-mode = <0>;
+				regulator-over-current-protection;
+			};
+
+			v3v3: buck4 {
+				regulator-name = "v3v3";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+				regulator-over-current-protection;
+				regulator-initial-mode = <0>;
+			};
+
+			v1v8_audio: ldo1 {
+				regulator-name = "v1v8_audio";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-always-on;
+				interrupts = <IT_CURLIM_LDO1 0>;
+			};
+
+			v3v3_hdmi: ldo2 {
+				regulator-name = "v3v3_hdmi";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+				interrupts = <IT_CURLIM_LDO2 0>;
+			};
+
+			vtt_ddr: ldo3 {
+				regulator-name = "vtt_ddr";
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <750000>;
+				regulator-always-on;
+				regulator-over-current-protection;
+			};
+
+			vdd_usb: ldo4 {
+				regulator-name = "vdd_usb";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				interrupts = <IT_CURLIM_LDO4 0>;
+			};
+
+			vdda: ldo5 {
+				regulator-name = "vdda";
+				regulator-min-microvolt = <2900000>;
+				regulator-max-microvolt = <2900000>;
+				interrupts = <IT_CURLIM_LDO5 0>;
+				regulator-boot-on;
+			};
+
+			v1v2_hdmi: ldo6 {
+				regulator-name = "v1v2_hdmi";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1200000>;
+				regulator-always-on;
+				interrupts = <IT_CURLIM_LDO6 0>;
+			};
+
+			vref_ddr: vref_ddr {
+				regulator-name = "vref_ddr";
+				regulator-always-on;
+				regulator-over-current-protection;
+			};
+
+			 bst_out: boost {
+				regulator-name = "bst_out";
+				interrupts = <IT_OCP_BOOST 0>;
+			 };
+
+			vbus_otg: pwr_sw1 {
+				regulator-name = "vbus_otg";
+				interrupts = <IT_OCP_OTG 0>;
+			 };
+
+			 vbus_sw: pwr_sw2 {
+				regulator-name = "vbus_sw";
+				interrupts = <IT_OCP_SWOUT 0>;
+				regulator-active-discharge;
+			 };
+		};
+
+		onkey {
+			compatible = "st,stpmic1-onkey";
+			interrupts = <IT_PONKEY_F 0>, <IT_PONKEY_R 0>;
+			interrupt-names = "onkey-falling", "onkey-rising";
+			power-off-time-sec = <10>;
+		};
+
+		watchdog {
+			compatible = "st,stpmic1-wdt";
+			status = "disabled";
+		};
+	};
+};
+
+&ipcc {
+	status = "okay";
+};
+
+&iwdg2 {
+	timeout-sec = <32>;
+	status = "okay";
+};
+
+&m4_rproc {
+	memory-region = <&retram>, <&mcuram>, <&mcuram2>, <&vdev0vring0>,
+			<&vdev0vring1>, <&vdev0buffer>;
+	mboxes = <&ipcc 0>, <&ipcc 1>, <&ipcc 2>;
+	mbox-names = "vq0", "vq1", "shutdown";
+	interrupt-parent = <&exti>;
+	interrupts = <68 1>;
+	status = "okay";
+};
+
+&rng1 {
+	status = "okay";
+};
+
+&rtc {
+	status = "okay";
+};
+
+&sdmmc2_d47_pins_a {
+	pins {
+		pinmux = <STM32_PINMUX('A', 8, AF9)>, /* SDMMC2_D4 */
+			 <STM32_PINMUX('A', 9, AF10)>, /* SDMMC2_D5 */
+			 <STM32_PINMUX('E', 5, AF9)>, /* SDMMC2_D6 */
+			 <STM32_PINMUX('C', 7, AF10)>; /* SDMMC2_D7 */
+	};
+};
+
+&sdmmc2_d47_sleep_pins_a {
+	pins {
+		pinmux = <STM32_PINMUX('A', 8, ANALOG)>, /* SDMMC2_D4 */
+			 <STM32_PINMUX('A', 9, ANALOG)>, /* SDMMC2_D5 */
+			 <STM32_PINMUX('E', 5, ANALOG)>, /* SDMMC2_D6 */
+			 <STM32_PINMUX('C', 7, ANALOG)>; /* SDMMC2_D7 */
+	};
+};
+
+&sdmmc2 {
+	pinctrl-names = "default", "opendrain", "sleep";
+	pinctrl-0 = <&sdmmc2_b4_pins_a &sdmmc2_d47_pins_a>;
+	pinctrl-1 = <&sdmmc2_b4_od_pins_a &sdmmc2_d47_pins_a>;
+	pinctrl-2 = <&sdmmc2_b4_sleep_pins_a &sdmmc2_d47_sleep_pins_a>;
+	non-removable;
+	no-sd;
+	no-sdio;
+	st,neg-edge;
+	bus-width = <8>;
+	vmmc-supply = <&v3v3>;
+	vqmmc-supply = <&v3v3>;
+	mmc-ddr-3_3v;
+	status = "okay";
+};
+
diff --git a/arch/arm/dts/stm32mp157c-odyssey.dts b/arch/arm/dts/stm32mp157c-odyssey.dts
new file mode 100644
index 000000000000..0e395bdec961
--- /dev/null
+++ b/arch/arm/dts/stm32mp157c-odyssey.dts
@@ -0,0 +1,27 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
+/*
+ * Copyright (C) 2020 Ahmad Fatoum, Pengutronix
+ */
+
+#include "stm32mp157c-odyssey.dtsi"
+#include "stm32mp151.dtsi"
+
+/ {
+	chosen {
+		environment-sd {
+			compatible = "barebox,environment";
+			device-path = &sdmmc1, "partname:barebox-environment";
+			status = "disabled";
+		};
+
+		environment-emmc {
+			compatible = "barebox,environment";
+			device-path = &sdmmc2, "partname:barebox-environment";
+			status = "disabled";
+		};
+	};
+};
+
+&phy0 {
+	reset-gpios = <&gpiog 0 GPIO_ACTIVE_LOW>;
+};
diff --git a/arch/arm/dts/stm32mp157c-odyssey.dtsi b/arch/arm/dts/stm32mp157c-odyssey.dtsi
new file mode 100644
index 000000000000..85a4f313ae33
--- /dev/null
+++ b/arch/arm/dts/stm32mp157c-odyssey.dtsi
@@ -0,0 +1,72 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
+/*
+ * Copyright (C) 2020 Marcin Sloniewski <marcin.sloniewski@gmail.com>.
+ */
+
+/dts-v1/;
+
+#include "stm32mp157c-odyssey-som.dtsi"
+
+/ {
+	model = "Seeed Studio Odyssey-STM32MP157C Board";
+	compatible = "seeed,stm32mp157c-odyssey",
+		     "seeed,stm32mp157c-odyssey-som", "st,stm32mp157";
+
+	aliases {
+		ethernet0 = &ethernet0;
+		serial0 = &uart4;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+};
+
+&ethernet0 {
+	status = "okay";
+	pinctrl-0 = <&ethernet0_rgmii_pins_a>;
+	pinctrl-1 = <&ethernet0_rgmii_sleep_pins_a>;
+	pinctrl-names = "default", "sleep";
+	phy-mode = "rgmii-id";
+	max-speed = <1000>;
+	phy-handle = <&phy0>;
+
+	mdio0 {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		compatible = "snps,dwmac-mdio";
+		phy0: ethernet-phy@7 { /* KSZ9031RN */
+			reg = <7>;
+		};
+	};
+};
+
+&i2c1 {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&i2c1_pins_a>;
+	pinctrl-1 = <&i2c1_sleep_pins_a>;
+	i2c-scl-rising-time-ns = <100>;
+	i2c-scl-falling-time-ns = <7>;
+	status = "okay";
+	/delete-property/dmas;
+	/delete-property/dma-names;
+};
+
+&sdmmc1 {
+	pinctrl-names = "default", "opendrain", "sleep";
+	pinctrl-0 = <&sdmmc1_b4_pins_a>;
+	pinctrl-1 = <&sdmmc1_b4_od_pins_a>;
+	pinctrl-2 = <&sdmmc1_b4_sleep_pins_a>;
+	cd-gpios = <&gpiob 7 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
+	disable-wp;
+	st,neg-edge;
+	bus-width = <4>;
+	vmmc-supply = <&v3v3>;
+	status = "okay";
+};
+
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart4_pins_a>;
+	status = "okay";
+};
diff --git a/arch/arm/mach-stm32mp/Kconfig b/arch/arm/mach-stm32mp/Kconfig
index 6e816ef9d1a4..f064a38088f4 100644
--- a/arch/arm/mach-stm32mp/Kconfig
+++ b/arch/arm/mach-stm32mp/Kconfig
@@ -16,4 +16,8 @@ config MACH_LXA_MC1
 	select ARCH_STM32MP157
 	bool "Linux Automation MC-1 board"
 
+config MACH_SEEED_ODYSSEY
+	select ARCH_STM32MP157
+	bool "Seeed Studio Odyssey"
+
 endif
diff --git a/images/Makefile.stm32mp b/images/Makefile.stm32mp
index 38872c952571..1330a7ef3d71 100644
--- a/images/Makefile.stm32mp
+++ b/images/Makefile.stm32mp
@@ -22,3 +22,8 @@ pblb-$(CONFIG_MACH_LXA_MC1) += start_stm32mp157c_lxa_mc1
 FILE_barebox-stm32mp157c-lxa-mc1.img = start_stm32mp157c_lxa_mc1.pblb.stm32
 OPTS_start_stm32mp157c_lxa_mc1.pblb.stm32 = $(STM32MP1_OPTS)
 image-$(CONFIG_MACH_LXA_MC1) += barebox-stm32mp157c-lxa-mc1.img
+
+pblb-$(CONFIG_MACH_SEEED_ODYSSEY) += start_stm32mp157c_seeed_odyssey
+FILE_barebox-stm32mp157c-seeed-odyssey.img = start_stm32mp157c_seeed_odyssey.pblb.stm32
+OPTS_start_stm32mp157c_seeed_odyssey.pblb.stm32 = $(STM32MP1_OPTS)
+image-$(CONFIG_MACH_SEEED_ODYSSEY) += barebox-stm32mp157c-seeed-odyssey.img
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
