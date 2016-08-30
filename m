Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bei9R-000633-9X
 for barebox@lists.infradead.org; Tue, 30 Aug 2016 12:28:49 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 5EE2BA00405
 for <barebox@lists.infradead.org>; Tue, 30 Aug 2016 14:28:10 +0200 (CEST)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Tue, 30 Aug 2016 14:25:47 +0200
Message-Id: <1472559947-8248-1-git-send-email-w.egorov@phytec.de>
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
Subject: [PATCH v3 6/8] ARM: Add phyCORE-RK3288 SOM support
To: barebox@lists.infradead.org

The phyCORE-RK3288 aka PCM-059 is a SoM (System on Module)
containing a RK3288 SoC. The module can be connected to different
carrier boards.

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
Changes since v2:
- fixed sdmmc/emmc partition layouts
- renamed automount to automount-mmc to not overwrite the generic automount file
- removed bootsource file and added it's content to a nv variable
---
 arch/arm/boards/Makefile                           |   1 +
 arch/arm/boards/phytec-som-rk3288/Makefile         |   3 +
 arch/arm/boards/phytec-som-rk3288/board.c          |  31 +++++
 .../defaultenv-physom-rk3288/boot/emmc             |   6 +
 .../defaultenv-physom-rk3288/boot/mmc              |   6 +
 .../defaultenv-physom-rk3288/init/automount-mmc    |   7 +
 .../defaultenv-physom-rk3288/nv/boot.default       |   1 +
 arch/arm/boards/phytec-som-rk3288/lowlevel.c       |  44 ++++++
 arch/arm/dts/Makefile                              |   1 +
 arch/arm/dts/rk3288-phycore-som.dts                | 148 +++++++++++++++++++++
 arch/arm/mach-rockchip/Kconfig                     |   7 +
 images/Makefile.rockchip                           |   4 +
 12 files changed, 259 insertions(+)
 create mode 100644 arch/arm/boards/phytec-som-rk3288/Makefile
 create mode 100644 arch/arm/boards/phytec-som-rk3288/board.c
 create mode 100644 arch/arm/boards/phytec-som-rk3288/defaultenv-physom-rk3288/boot/emmc
 create mode 100644 arch/arm/boards/phytec-som-rk3288/defaultenv-physom-rk3288/boot/mmc
 create mode 100644 arch/arm/boards/phytec-som-rk3288/defaultenv-physom-rk3288/init/automount-mmc
 create mode 100644 arch/arm/boards/phytec-som-rk3288/defaultenv-physom-rk3288/nv/boot.default
 create mode 100644 arch/arm/boards/phytec-som-rk3288/lowlevel.c
 create mode 100644 arch/arm/dts/rk3288-phycore-som.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 35b636f..23a8dbd 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -96,6 +96,7 @@ obj-$(CONFIG_MACH_PM9G45)			+= pm9g45/
 obj-$(CONFIG_MACH_QIL_A9260)			+= qil-a926x/
 obj-$(CONFIG_MACH_QIL_A9G20)			+= qil-a926x/
 obj-$(CONFIG_MACH_RADXA_ROCK)			+= radxa-rock/
+obj-$(CONFIG_MACH_PHYTEC_SOM_RK3288)		+= phytec-som-rk3288/
 obj-$(CONFIG_MACH_REALQ7)			+= datamodul-edm-qmx6/
 obj-$(CONFIG_MACH_RPI_COMMON)			+= raspberry-pi/
 obj-$(CONFIG_MACH_SABRELITE)			+= freescale-mx6-sabrelite/
diff --git a/arch/arm/boards/phytec-som-rk3288/Makefile b/arch/arm/boards/phytec-som-rk3288/Makefile
new file mode 100644
index 0000000..6f34c9a
--- /dev/null
+++ b/arch/arm/boards/phytec-som-rk3288/Makefile
@@ -0,0 +1,3 @@
+obj-y += board.o
+lwl-y += lowlevel.o
+bbenv-y += defaultenv-physom-rk3288
diff --git a/arch/arm/boards/phytec-som-rk3288/board.c b/arch/arm/boards/phytec-som-rk3288/board.c
new file mode 100644
index 0000000..8ea6c6c
--- /dev/null
+++ b/arch/arm/boards/phytec-som-rk3288/board.c
@@ -0,0 +1,31 @@
+/*
+ * Copyright (C) 2016 PHYTEC Messtechnik GmbH,
+ * Author: Wadim Egorov <w.egorov@phytec.de>
+ *
+ * Device initialization for the phyCORE-RK3288 SoM
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2 as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <envfs.h>
+
+static int physom_devices_init(void)
+{
+	if (!of_machine_is_compatible("phytec,rk3288-phycore-som"))
+		return 0;
+
+	barebox_set_hostname("pcm059");
+	defaultenv_append_directory(defaultenv_physom_rk3288);
+
+	return 0;
+}
+device_initcall(physom_devices_init);
diff --git a/arch/arm/boards/phytec-som-rk3288/defaultenv-physom-rk3288/boot/emmc b/arch/arm/boards/phytec-som-rk3288/defaultenv-physom-rk3288/boot/emmc
new file mode 100644
index 0000000..731b07f
--- /dev/null
+++ b/arch/arm/boards/phytec-som-rk3288/defaultenv-physom-rk3288/boot/emmc
@@ -0,0 +1,6 @@
+#!/bin/sh
+
+global.bootm.image=/mnt/emmc/linuximage
+global.bootm.oftree=/mnt/emmc/oftree
+
+global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rw rootwait"
diff --git a/arch/arm/boards/phytec-som-rk3288/defaultenv-physom-rk3288/boot/mmc b/arch/arm/boards/phytec-som-rk3288/defaultenv-physom-rk3288/boot/mmc
new file mode 100644
index 0000000..5b19dba
--- /dev/null
+++ b/arch/arm/boards/phytec-som-rk3288/defaultenv-physom-rk3288/boot/mmc
@@ -0,0 +1,6 @@
+#!/bin/sh
+
+global.bootm.image=/mnt/sdmmc/linuximage
+global.bootm.oftree=/mnt/sdmmc/oftree
+
+global.linux.bootargs.dyn.root="root=/dev/mmcblk1p2 rw rootwait"
diff --git a/arch/arm/boards/phytec-som-rk3288/defaultenv-physom-rk3288/init/automount-mmc b/arch/arm/boards/phytec-som-rk3288/defaultenv-physom-rk3288/init/automount-mmc
new file mode 100644
index 0000000..8b3f043
--- /dev/null
+++ b/arch/arm/boards/phytec-som-rk3288/defaultenv-physom-rk3288/init/automount-mmc
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+mkdir -p /mnt/emmc
+automount -d /mnt/emmc 'mshc0.probe=1 && [ -e /dev/mshc0.0 ] && mount /dev/mshc0.0 /mnt/emmc'
+
+mkdir -p /mnt/sdmmc
+automount -d /mnt/sdmmc 'mshc1.probe=1 && [ -e /dev/mshc1.0 ] && mount /dev/mshc1.0 /mnt/sdmmc'
diff --git a/arch/arm/boards/phytec-som-rk3288/defaultenv-physom-rk3288/nv/boot.default b/arch/arm/boards/phytec-som-rk3288/defaultenv-physom-rk3288/nv/boot.default
new file mode 100644
index 0000000..b4cedfc
--- /dev/null
+++ b/arch/arm/boards/phytec-som-rk3288/defaultenv-physom-rk3288/nv/boot.default
@@ -0,0 +1 @@
+emmc mmc
diff --git a/arch/arm/boards/phytec-som-rk3288/lowlevel.c b/arch/arm/boards/phytec-som-rk3288/lowlevel.c
new file mode 100644
index 0000000..7804a55
--- /dev/null
+++ b/arch/arm/boards/phytec-som-rk3288/lowlevel.c
@@ -0,0 +1,44 @@
+/*
+ * Copyright (C) 2016 PHYTEC Messtechnik GmbH,
+ * Author: Wadim Egorov <w.egorov@phytec.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2 as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <linux/sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/rk3288-regs.h>
+#include <mach/grf_rk3288.h>
+#include <mach/hardware.h>
+#include <debug_ll.h>
+
+extern char __dtb_rk3288_phycore_som_start[];
+
+ENTRY_FUNCTION(start_rk3288_phycore_som, r0, r1, r2)
+{
+	void *fdt;
+	arm_cpu_lowlevel_init();
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
+		struct rk3288_grf * const grf = (void *)RK3288_GRF_BASE;
+		rk_clrsetreg(&grf->gpio4c_iomux,
+			GPIO4C1_MASK << GPIO4C1_SHIFT |
+			GPIO4C0_MASK << GPIO4C0_SHIFT,
+			GPIO4C1_UART0BT_SOUT << GPIO4C1_SHIFT |
+			GPIO4C0_UART0BT_SIN << GPIO4C0_SHIFT);
+		INIT_LL();
+	}
+
+	fdt = __dtb_rk3288_phycore_som_start - get_runtime_offset();
+
+	barebox_arm_entry(0x0, SZ_1G, fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 09bf68e..d1a3fe8 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -54,6 +54,7 @@ pbl-dtb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += imx6q-phytec-pbaa03.dtb.o \
 pbl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += armada-xp-openblocks-ax3-4-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6) += kirkwood-openblocks_a6-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
+pbl-dtb-$(CONFIG_MACH_PHYTEC_SOM_RK3288) += rk3288-phycore-som.dtb.o
 pbl-dtb-$(CONFIG_MACH_REALQ7) += imx6q-dmo-edmqmx6.dtb.o
 pbl-dtb-$(CONFIG_MACH_SABRELITE) += imx6q-sabrelite.dtb.o imx6dl-sabrelite.dtb.o
 pbl-dtb-$(CONFIG_MACH_SABRESD) += imx6q-sabresd.dtb.o
diff --git a/arch/arm/dts/rk3288-phycore-som.dts b/arch/arm/dts/rk3288-phycore-som.dts
new file mode 100644
index 0000000..5410bd1
--- /dev/null
+++ b/arch/arm/dts/rk3288-phycore-som.dts
@@ -0,0 +1,148 @@
+/*
+ * Copyright (C) 2016 PHYTEC Messtechnik GmbH,
+ * Author: Wadim Egorov <w.egorov@phytec.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2 as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+/dts-v1/;
+
+#include <arm/rk3288.dtsi>
+
+/ {
+	model = "phycore-rk3288";
+	compatible = "phytec,rk3288-phycore-som", "rockchip,rk3288";
+
+	memory {
+		reg = <0 0x40000000>;
+	};
+
+	vcc33: fixedregulator@0 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc33";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		startup-delay-us = <100000>;
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
+	vcc18: fixedregulator@1 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc18";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
+	chosen {
+		stdout-path = &uart0;
+
+		environment-emmc {
+			compatible = "barebox,environment";
+			device-path = &emmc, "partname:barebox-environment";
+			status = "disabled";
+		};
+
+		environment-sdmmc {
+			compatible = "barebox,environment";
+			device-path = &sdmmc, "partname:barebox-environment";
+			status = "disabled";
+		};
+	};
+};
+
+&pinctrl {
+	sdmmc {
+		sdmmc_pwr: sdmmc-pwr {
+			rockchip,pins = <7 11 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&i2c0 {
+	clock-frequency = <400000>;
+	status = "okay";
+};
+
+&emmc {
+	broken-cd;
+	bus-width = <8>;
+	cap-mmc-highspeed;
+	disable-wp;
+	non-removable;
+	num-slots = <1>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_clk>, <&emmc_cmd>, <&emmc_pwr>, <&emmc_bus8>;
+	vmmc-supply = <&vcc33>;
+	vqmmc-supply = <&vcc18>;
+	status = "okay";
+
+	#size-cells = <1>;
+	#address-cells = <1>;
+
+	partition@8000 {
+		label = "spl";
+		reg = <0x8000 0x8000>;
+	};
+
+	partition@20000 {
+		label = "barebox";
+		reg = <0x20000 0x80000>;
+	};
+
+	partition@a0000 {
+		label = "barebox-environment";
+		reg = <0xa0000 0x20000>;
+	};
+};
+
+&sdmmc {
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	card-detect-delay = <200>;
+	disable-wp;
+	num-slots = <1>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc_clk>, <&sdmmc_cmd>, <&sdmmc_cd>, <&sdmmc_bus4>;
+	vmmc-supply = <&vcc33>;
+	status = "okay";
+
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@8000 {
+		label = "spl";
+		reg = <0x8000 0x8000>;
+	};
+
+	partition@20000 {
+		label = "barebox";
+		reg = <0x20000 0x80000>;
+	};
+
+	partition@a0000 {
+		label = "barebox-environment";
+		reg = <0xa0000 0x20000>;
+	};
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_xfer>, <&uart0_cts>, <&uart0_rts>;
+	reg-shift = <2>;
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};
diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index 71fcbe7..f2fa3c6 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -30,4 +30,11 @@ config MACH_RADXA_ROCK
 	select MFD_ACT8846
 	bool "Radxa rock board"
 
+config MACH_PHYTEC_SOM_RK3288
+	depends on ARCH_RK3288
+	select I2C
+	bool "RK3288 phyCORE SOM"
+	help
+	  Say Y here if you are using a RK3288 based Phytecs SOM
+
 endmenu
diff --git a/images/Makefile.rockchip b/images/Makefile.rockchip
index 9715b92..3f1ee57 100644
--- a/images/Makefile.rockchip
+++ b/images/Makefile.rockchip
@@ -5,3 +5,7 @@
 pblx-$(CONFIG_MACH_RADXA_ROCK) += start_radxa_rock
 FILE_barebox-radxa-rock.img = start_radxa_rock.pblx
 image-$(CONFIG_MACH_RADXA_ROCK) += barebox-radxa-rock.img
+
+pblx-$(CONFIG_MACH_PHYTEC_SOM_RK3288) += start_rk3288_phycore_som
+FILE_barebox-rk3288-phycore-som.img = start_rk3288_phycore_som.pblx
+image-$(CONFIG_MACH_PHYTEC_SOM_RK3288) += barebox-rk3288-phycore-som.img
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
