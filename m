Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOSCC-0003Hv-Gy
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 13:30:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Mar 2014 14:30:19 +0100
Message-Id: <1394803820-29277-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1394803820-29277-1-git-send-email-s.hauer@pengutronix.de>
References: <1394803820-29277-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/6] ARM: pfla02: Add support for DualLite and Solo core
To: barebox@lists.infradead.org

From: Christian Hemp <c.hemp@phytec.de>

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 arch/arm/boards/phytec-phyflex-imx6/board.c        |   6 +-
 .../flash-header-phytec-pfla02dl-1gib.imxcfg       |   6 +
 .../flash-header-phytec-pfla02dl.h                 |  95 ++++++++++
 .../flash-header-phytec-pfla02s-512mb.imxcfg       |   6 +
 arch/arm/boards/phytec-phyflex-imx6/lowlevel.c     |  32 ++++
 arch/arm/dts/Makefile                              |   4 +-
 arch/arm/dts/imx6dl-phytec-pbab01.dts              |  29 +++
 arch/arm/dts/imx6dl-phytec-pfla02.dtsi             |  41 ++++
 arch/arm/dts/imx6q-phytec-pbab01.dts               |  23 +--
 arch/arm/dts/imx6q-phytec-pfla02.dtsi              | 207 +--------------------
 arch/arm/dts/imx6qdl-phytec-pbab01.dtsi            |  43 +++++
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi            | 171 +++++++++++++++++
 arch/arm/dts/imx6s-phytec-pbab01.dts               |  25 +++
 arch/arm/dts/imx6s-phytec-pfla02.dtsi              |  22 +++
 arch/arm/mach-imx/Kconfig                          |   2 +-
 images/Makefile.imx                                |  12 ++
 16 files changed, 494 insertions(+), 230 deletions(-)
 create mode 100644 arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg
 create mode 100644 arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02dl.h
 create mode 100644 arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02s-512mb.imxcfg
 create mode 100644 arch/arm/dts/imx6dl-phytec-pbab01.dts
 create mode 100644 arch/arm/dts/imx6dl-phytec-pfla02.dtsi
 create mode 100644 arch/arm/dts/imx6qdl-phytec-pbab01.dtsi
 create mode 100644 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
 create mode 100644 arch/arm/dts/imx6s-phytec-pbab01.dts
 create mode 100644 arch/arm/dts/imx6s-phytec-pfla02.dtsi

diff --git a/arch/arm/boards/phytec-phyflex-imx6/board.c b/arch/arm/boards/phytec-phyflex-imx6/board.c
index e9bd168..f510407 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/board.c
+++ b/arch/arm/boards/phytec-phyflex-imx6/board.c
@@ -38,7 +38,9 @@ static int eth_phy_reset(void)
 
 static int phytec_pfla02_init(void)
 {
-	if (!of_machine_is_compatible("phytec,imx6q-pfla02"))
+	if (!of_machine_is_compatible("phytec,imx6q-pfla02") &&
+			!of_machine_is_compatible("phytec,imx6dl-pfla02") &&
+			!of_machine_is_compatible("phytec,imx6s-pfla02"))
 		return 0;
 
 	eth_phy_reset();
@@ -49,7 +51,7 @@ device_initcall(phytec_pfla02_init);
 
 static int phytec_pfla02_core_init(void)
 {
-	if (!of_machine_is_compatible("phytec,imx6q-pfla02"))
+	if (!of_machine_is_compatible("phytec,imx6x-pbab01"))
 		return 0;
 
 	imx6_init_lowlevel();
diff --git a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg
new file mode 100644
index 0000000..e5a7292
--- /dev/null
+++ b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg
@@ -0,0 +1,6 @@
+
+#define SETUP_S_DL_512MB_1GB		\
+	wm 32 0x021b0040 0x00000017;	\
+	wm 32 0x021b0000 0xc21a0000
+
+#include "flash-header-phytec-pfla02dl.h"
diff --git a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02dl.h b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02dl.h
new file mode 100644
index 0000000..0f83bc9
--- /dev/null
+++ b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02dl.h
@@ -0,0 +1,95 @@
+soc imx6
+loadaddr 0x20000000
+dcdofs 0x400
+
+wm 32 0x020e04bc 0x00000030
+wm 32 0x020e04c0 0x00000030
+wm 32 0x020e04c4 0x00000030
+wm 32 0x020e04c8 0x00000030
+wm 32 0x020e04cc 0x00000030
+wm 32 0x020e04d0 0x00000030
+wm 32 0x020e04d4 0x00000030
+wm 32 0x020e04d8 0x00000030
+wm 32 0x020e0470 0x00020030
+wm 32 0x020e0474 0x00020030
+wm 32 0x020e0478 0x00020030
+wm 32 0x020e047c 0x00020030
+wm 32 0x020e0480 0x00020030
+wm 32 0x020e0484 0x00020030
+wm 32 0x020e0488 0x00020030
+wm 32 0x020e048c 0x00020030
+wm 32 0x020e0464 0x00020030
+wm 32 0x020e0490 0x00020030
+wm 32 0x020e04ac 0x00020030
+wm 32 0x020e04b0 0x00020030
+wm 32 0x020e0494 0x00020030
+wm 32 0x020e04a4 0x00003000
+wm 32 0x020e04a8 0x00003000
+wm 32 0x020e04a0 0x00000000
+wm 32 0x020e04b4 0x00003030
+wm 32 0x020e04b8 0x00003030
+wm 32 0x020e0764 0x00000030
+wm 32 0x020e0770 0x00000030
+wm 32 0x020e0778 0x00000030
+wm 32 0x020e077c 0x00000030
+wm 32 0x020e0780 0x00000030
+wm 32 0x020e0784 0x00000030
+wm 32 0x020e078c 0x00000030
+wm 32 0x020e0748 0x00000030
+wm 32 0x020e074c 0x00000030
+wm 32 0x020e0750 0x00020000
+wm 32 0x020e0754 0x00000000
+wm 32 0x020e0760 0x00020000
+wm 32 0x020e076c 0x00000030
+wm 32 0x020e0774 0x000c0000
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+wm 32 0x021b481c 0x33333333
+wm 32 0x021b4820 0x33333333
+wm 32 0x021b4824 0x33333333
+wm 32 0x021b4828 0x33333333
+wm 32 0x021b0018 0x00081740
+wm 32 0x021b001c 0x00008000
+wm 32 0x021b000c 0x555a7975
+wm 32 0x021b0010 0xff538e64
+wm 32 0x021b0014 0x01ff00db
+wm 32 0x021b002c 0x000026d2
+wm 32 0x021b0030 0x005b0e21
+wm 32 0x021b0008 0x09444040
+wm 32 0x021b0004 0x00025576
+
+SETUP_S_DL_512MB_1GB
+
+wm 32 0x021b001c 0x04088032
+wm 32 0x021b001c 0x0408803a
+wm 32 0x021b001c 0x00008033
+wm 32 0x021b001c 0x0000803b
+wm 32 0x021b001c 0x00428031
+wm 32 0x021b001c 0x00428039
+wm 32 0x021b001c 0x09408030
+wm 32 0x021b001c 0x09408038
+wm 32 0x021b001c 0x04008040
+wm 32 0x021b001c 0x04008048
+wm 32 0x021b0800 0xa1380003
+wm 32 0x021b4800 0xa1380003
+wm 32 0x021b0020 0x00005800
+wm 32 0x021b0818 0x00011117
+wm 32 0x021b4818 0x00011117
+wm 32 0x021b083c 0x422D0230
+wm 32 0x021b0840 0x022F022E
+wm 32 0x021b483c 0x4237023D
+wm 32 0x021b4840 0x02340224
+wm 32 0x021b0848 0x38333135
+wm 32 0x021b4848 0x36353338
+wm 32 0x021b0850 0x2E2E332C
+wm 32 0x021b4850 0x3727382F
+wm 32 0x021b080c 0x000C000D
+wm 32 0x021b0810 0x0018001A
+wm 32 0x021b480c 0x00270023
+wm 32 0x021b4810 0x002F002D
+wm 32 0x021b08b8 0x00000800
+wm 32 0x021b48b8 0x00000800
+wm 32 0x021b001c 0x00000000
+wm 32 0x021b0404 0x00011006
diff --git a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02s-512mb.imxcfg b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02s-512mb.imxcfg
new file mode 100644
index 0000000..3116e36
--- /dev/null
+++ b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02s-512mb.imxcfg
@@ -0,0 +1,6 @@
+
+#define SETUP_S_DL_512MB_1GB		\
+	wm 32 0x021b0040 0x00000017;	\
+	wm 32 0x021b0000 0x83190000
+
+#include "flash-header-phytec-pfla02dl.h"
diff --git a/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c b/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
index c0b0c87..fb7b186 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
@@ -54,6 +54,8 @@ static inline void setup_uart(void)
 }
 
 extern char __dtb_imx6q_phytec_pbab01_start[];
+extern char __dtb_imx6dl_phytec_pbab01_start[];
+extern char __dtb_imx6s_phytec_pbab01_start[];
 
 ENTRY_FUNCTION(start_phytec_pbab01_1gib, r0, r1, r2)
 {
@@ -101,3 +103,33 @@ ENTRY_FUNCTION(start_phytec_pbab01_4gib, r0, r1, r2)
 
 	barebox_arm_entry(0x10000000, 0xEFFFFFF8, fdt);
 }
+
+ENTRY_FUNCTION(start_phytec_pbab01dl_1gib, r0, r1, r2)
+{
+        uint32_t fdt;
+
+        __barebox_arm_head();
+
+        arm_cpu_lowlevel_init();
+
+        arm_setup_stack(0x00920000 - 8);
+
+	fdt = (uint32_t)__dtb_imx6dl_phytec_pbab01_start - get_runtime_offset();
+
+        barebox_arm_entry(0x10000000, SZ_1G, fdt);
+}
+
+ENTRY_FUNCTION(start_phytec_pbab01s_512mb, r0, r1, r2)
+{
+	uint32_t fdt;
+
+	__barebox_arm_head();
+
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(0x00920000 - 8);
+
+	fdt = (uint32_t)__dtb_imx6s_phytec_pbab01_start - get_runtime_offset();
+
+	barebox_arm_entry(0x10000000, SZ_512M, fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 6bac3b9..4c9c149 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -20,7 +20,9 @@ dtb-$(CONFIG_ARCH_IMX6) += imx6q-gk802.dtb \
 	imx6q-sabresd.dtb \
 	imx6dl-mba6x.dtb \
 	imx6q-mba6x.dtb \
+	imx6dl-phytec-pbab01.dtb \
 	imx6q-phytec-pbab01.dtb \
+	imx6s-phytec-pbab01.dtb \
 	imx6dl-hummingboard.dtb \
 	imx6q-guf-santaro.dtb \
 	imx6q-nitrogen6x.dtb \
@@ -43,7 +45,7 @@ pbl-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += imx53-qsb.dtb.o imx53-qsrb.dtb.o
 pbl-$(CONFIG_MACH_FREESCALE_MX53_VMX53) += imx53-voipac-bsb.dtb.o
 pbl-$(CONFIG_MACH_DFI_FS700_M60) += imx6q-dfi-fs700-m60-6q.dtb.o imx6dl-dfi-fs700-m60-6s.dtb.o
 pbl-$(CONFIG_MACH_PCM051) += am335x-phytec-phycore.dtb.o
-pbl-$(CONFIG_MACH_PHYTEC_PFLA02) += imx6q-phytec-pbab01.dtb.o
+pbl-$(CONFIG_MACH_PHYTEC_PFLA02) += imx6s-phytec-pbab01.dtb.o imx6dl-phytec-pbab01.dtb.o imx6q-phytec-pbab01.dtb.o
 pbl-$(CONFIG_MACH_REALQ7) += imx6q-dmo-edmqmx6.dtb.o
 pbl-$(CONFIG_MACH_SOLIDRUN_CUBOX) += dove-cubox-bb.dtb.o
 pbl-$(CONFIG_MACH_GK802) += imx6q-gk802.dtb.o
diff --git a/arch/arm/dts/imx6dl-phytec-pbab01.dts b/arch/arm/dts/imx6dl-phytec-pbab01.dts
new file mode 100644
index 0000000..0e90c47
--- /dev/null
+++ b/arch/arm/dts/imx6dl-phytec-pbab01.dts
@@ -0,0 +1,29 @@
+/*
+ * Copyright 2013 Christian Hemp, Phytec Messtechnik GmbH
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+/dts-v1/;
+
+#include "imx6dl-phytec-pfla02.dtsi"
+#include "imx6qdl-phytec-pbab01.dtsi"
+
+/ {
+	model = "Phytec phyFLEX-i.MX6 Duallite Carrier-Board";
+	compatible = "phytec,imx6x-pbab01", "phytec,imx6dl-pfla02", "fsl,imx6dl";
+
+	chosen {
+		linux,stdout-path = &uart4;
+
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &flash, "partname:barebox-environment";
+		};
+	};
+};
diff --git a/arch/arm/dts/imx6dl-phytec-pfla02.dtsi b/arch/arm/dts/imx6dl-phytec-pfla02.dtsi
new file mode 100644
index 0000000..fa3a49a
--- /dev/null
+++ b/arch/arm/dts/imx6dl-phytec-pfla02.dtsi
@@ -0,0 +1,41 @@
+/*
+ * Copyright 2013 Christian Hemp, Phytec Messtechnik GmbH
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+#include "imx6dl.dtsi"
+#include "imx6qdl-phytec-pfla02.dtsi"
+
+/ {
+	model = "Phytec phyFLEX-i.MX6 Dual Lite";
+	compatible = "phytec,imx6dl-pfla02", "fsl,imx6dl";
+
+	memory {
+		reg = <0x10000000 0x40000000>;
+	};
+};
+
+&ecspi3 {
+	status = "okay";
+};
+
+&flash {
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        partition@0 {
+                label = "barebox";
+                reg = <0x0 0x80000>;
+        };
+
+        partition@1 {
+                label = "barebox-environment";
+                reg = <0x80000 0x10000>;
+        };
+};
diff --git a/arch/arm/dts/imx6q-phytec-pbab01.dts b/arch/arm/dts/imx6q-phytec-pbab01.dts
index b35b2e5..26046e0 100644
--- a/arch/arm/dts/imx6q-phytec-pbab01.dts
+++ b/arch/arm/dts/imx6q-phytec-pbab01.dts
@@ -11,10 +11,11 @@
 
 /dts-v1/;
 #include "imx6q-phytec-pfla02.dtsi"
+#include "imx6qdl-phytec-pbab01.dtsi"
 
 / {
 	model = "Phytec phyFLEX-i.MX6 Quad Carrier-Board";
-	compatible = "phytec,imx6q-pbab01", "phytec,imx6q-pfla02", "fsl,imx6q";
+	compatible = "phytec,imx6x-pbab01", "phytec,imx6q-pfla02", "fsl,imx6q";
 
 	chosen {
 		linux,stdout-path = &uart4;
@@ -25,23 +26,3 @@
 		};
 	};
 };
-
-&fec {
-	status = "okay";
-};
-
-&uart1 {
-	status = "okay";
-};
-
-&uart4 {
-	status = "okay";
-};
-
-&usdhc2 {
-	status = "okay";
-};
-
-&usdhc3 {
-	status = "okay";
-};
diff --git a/arch/arm/dts/imx6q-phytec-pfla02.dtsi b/arch/arm/dts/imx6q-phytec-pfla02.dtsi
index 402eee8..781a90a 100644
--- a/arch/arm/dts/imx6q-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6q-phytec-pfla02.dtsi
@@ -10,9 +10,10 @@
  */
 
 #include "imx6q.dtsi"
+#include "imx6qdl-phytec-pfla02.dtsi"
 
 / {
-	model = "Phytec phyFLEX-i.MX6 Ouad";
+	model = "Phytec phyFLEX-i.MX6 Quad";
 	compatible = "phytec,imx6q-pfla02", "fsl,imx6q";
 
 	memory {
@@ -21,165 +22,7 @@
 };
 
 &ecspi3 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_ecspi3>;
 	status = "okay";
-	fsl,spi-num-chipselects = <1>;
-	cs-gpios = <&gpio4 24 0>;
-
-	flash: m25p80@0 {
-		compatible = "m25p80";
-		spi-max-frequency = <20000000>;
-		reg = <0>;
-	};
-};
-
-&i2c1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c1>;
-	status = "okay";
-
-	eeprom@50 {
-		compatible = "atmel,24c32";
-		reg = <0x50>;
-	};
-
-	pmic@58 {
-		compatible = "dialog,da9063";
-		reg = <0x58>;
-		interrupt-parent = <&gpio4>;
-		interrupts = <17 0x8>; /* active-low GPIO4_17 */
-
-		regulators {
-			vddcore_reg: bcore1 {
-				regulator-min-microvolt = <730000>;
-				regulator-max-microvolt = <1380000>;
-				regulator-always-on;
-			};
-
-			vddsoc_reg: bcore2 {
-				regulator-min-microvolt = <730000>;
-				regulator-max-microvolt = <1380000>;
-				regulator-always-on;
-			};
-
-			vdd_ddr3_reg: bpro {
-				regulator-min-microvolt = <1500000>;
-				regulator-max-microvolt = <1500000>;
-				regulator-always-on;
-			};
-
-			vdd_3v3_reg: bperi {
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-always-on;
-			};
-
-			vdd_buckmem_reg: bmem {
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-always-on;
-			};
-
-			vdd_eth_reg: bio {
-				regulator-min-microvolt = <1200000>;
-				regulator-max-microvolt = <1200000>;
-				regulator-always-on;
-			};
-
-			vdd_eth_io_reg: ldo4 {
-				regulator-min-microvolt = <2500000>;
-				regulator-max-microvolt = <2500000>;
-				regulator-always-on;
-			};
-
-			vdd_mx6_snvs_reg: ldo5 {
-				regulator-min-microvolt = <3000000>;
-				regulator-max-microvolt = <3000000>;
-				regulator-always-on;
-			};
-
-			vdd_3v3_pmic_io_reg: ldo6 {
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-always-on;
-			};
-
-			vdd_sd0_reg: ldo9 {
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-			};
-
-			vdd_sd1_reg: ldo10 {
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-			};
-
-			vdd_mx6_high_reg: ldo11 {
-				regulator-min-microvolt = <3000000>;
-				regulator-max-microvolt = <3000000>;
-				regulator-always-on;
-			};
-		};
-	};
-};
-
-&iomuxc {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_hog>;
-
-	imx6q-phytec-pfla02 {
-		pinctrl_hog: hoggrp {
-			fsl,pins = <
-				MX6QDL_PAD_EIM_D23__GPIO3_IO23 0x80000000
-				MX6QDL_PAD_DISP0_DAT3__GPIO4_IO24 0x80000000 /* SPI NOR chipselect */
-				MX6QDL_PAD_DI0_PIN15__GPIO4_IO17  0x80000000 /* PMIC interrupt */
-			>;
-		};
-
-		pinctrl_ecspi3: ecspi3grp {
-			fsl,pins = <MX6QDL_ECSPI3_PINGRP1>;
-		};
-
-		pinctrl_enet: enetgrp {
-			fsl,pins = <MX6QDL_ENET_PINGRP3>;
-		};
-
-		pinctrl_gpmi_nand: gpmigrp {
-			fsl,pins = <MX6QDL_GPMI_NAND_PINGRP1>;
-		};
-
-		pinctrl_i2c1: i2c1grp {
-			fsl,pins = <MX6QDL_I2C1_PINGRP1>;
-		};
-
-		pinctrl_uart4: uart4grp {
-			fsl,pins = <MX6QDL_UART4_PINGRP1>;
-		};
-
-		pinctrl_usdhc2: usdhc2grp {
-			fsl,pins = <MX6QDL_USDHC2_PINGRP_D4>;
-		};
-
-		pinctrl_usdhc3: usdhc3grp {
-			fsl,pins = <MX6QDL_USDHC3_PINGRP_D4>;
-		};
-
-		pinctrl_usdhc3_cdwp: usdhc3cdwp {
-			fsl,pins = <
-				MX6QDL_PAD_ENET_RXD0__GPIO1_IO27 0x80000000
-				MX6QDL_PAD_ENET_TXD1__GPIO1_IO29 0x80000000
-			>;
-		};
-	};
-};
-
-&fec {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_enet>;
-	phy-mode = "rgmii";
-	phy-reset-gpios = <&gpio3 23 0>;
-	status = "disabled";
 };
 
 &flash {
@@ -196,49 +39,3 @@
 		reg = <0x80000 0x10000>;
 	};
 };
-
-&gpmi {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_gpmi_nand>;
-	nand-on-flash-bbt;
-	status = "okay";
-	#address-cells = <1>;
-	#size-cells = <1>;
-
-	partition@0 {
-		label = "barebox";
-		reg = <0x0 0x200000>;
-	};
-
-	partition@1 {
-		label = "ubi";
-		reg = <0x200000 0x3fe00000>;
-	};
-};
-
-&ocotp {
-	barebox,provide-mac-address = <&fec 0x620>;
-};
-
-&uart4 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart4>;
-	status = "disabled";
-};
-
-&usdhc2 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usdhc2>;
-	cd-gpios = <&gpio1 4 0>;
-	wp-gpios = <&gpio1 2 0>;
-	status = "disabled";
-};
-
-&usdhc3 {
-        pinctrl-names = "default";
-        pinctrl-0 = <&pinctrl_usdhc3
-		     &pinctrl_usdhc3_cdwp>;
-        cd-gpios = <&gpio1 27 0>;
-        wp-gpios = <&gpio1 29 0>;
-        status = "disabled";
-};
diff --git a/arch/arm/dts/imx6qdl-phytec-pbab01.dtsi b/arch/arm/dts/imx6qdl-phytec-pbab01.dtsi
new file mode 100644
index 0000000..8f5dea7
--- /dev/null
+++ b/arch/arm/dts/imx6qdl-phytec-pbab01.dtsi
@@ -0,0 +1,43 @@
+/*
+ * Copyright 2013 Christian Hemp, Phytec Messtechnik GmbH
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+/ {
+	chosen {
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &flash, "partname:barebox-environment";
+		};
+	};
+};
+
+&fec {
+	status = "okay";
+};
+
+&ocotp {
+	barebox,provide-mac-address = <&fec 0x620>;
+};
+
+&uart1 {
+	status = "okay";
+};
+
+&uart4 {
+	status = "okay";
+};
+
+&usdhc2 {
+	status = "okay";
+};
+
+&usdhc3 {
+	status = "okay";
+};
diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
new file mode 100644
index 0000000..d1eb9d0
--- /dev/null
+++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
@@ -0,0 +1,171 @@
+/*
+ * Copyright 2013 Christian Hemp, Phytec Messtechnik GmbH
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+&ecspi3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi3>;
+	status = "disabled";
+	fsl,spi-num-chipselects = <1>;
+	cs-gpios = <&gpio4 24 0>;
+
+	flash: m25p80@0 {
+		compatible = "m25p80";
+		spi-max-frequency = <20000000>;
+	};
+};
+
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet>;
+	phy-mode = "rgmii";
+	phy-reset-gpios = <&gpio3 23 0>;
+	status = "disabled";
+};
+
+&gpmi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpmi_nand>;
+	nand-on-flash-bbt;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	ecspi3 {
+		pinctrl_ecspi3: ecspi3grp {
+			fsl,pins = <
+				MX6QDL_PAD_DISP0_DAT2__ECSPI3_MISO 0x100b1
+				MX6QDL_PAD_DISP0_DAT1__ECSPI3_MOSI 0x100b1
+				MX6QDL_PAD_DISP0_DAT0__ECSPI3_SCLK 0x100b1
+				MX6QDL_PAD_DISP0_DAT3__GPIO4_IO24 0x80000000 /* SPI NOR chipselect */
+				MX6QDL_PAD_SD4_DAT3__GPIO2_IO11 0x80000000
+			>;
+		};
+	};
+
+	enet {
+		pinctrl_enet: enetgrp {
+			fsl,pins = <
+				MX6QDL_PAD_ENET_MDIO__ENET_MDIO       0x1b0b0
+				MX6QDL_PAD_ENET_MDC__ENET_MDC         0x1b0b0
+				MX6QDL_PAD_RGMII_TXC__RGMII_TXC       0x1b0b0
+				MX6QDL_PAD_RGMII_TD0__RGMII_TD0       0x1b0b0
+				MX6QDL_PAD_RGMII_TD1__RGMII_TD1       0x1b0b0
+				MX6QDL_PAD_RGMII_TD2__RGMII_TD2       0x1b0b0
+				MX6QDL_PAD_RGMII_TD3__RGMII_TD3       0x1b0b0
+				MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL 0x1b0b0
+				MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK  0x1b0b0
+				MX6QDL_PAD_RGMII_RXC__RGMII_RXC       0x1b0b0
+				MX6QDL_PAD_RGMII_RD0__RGMII_RD0       0x1b0b0
+				MX6QDL_PAD_RGMII_RD1__RGMII_RD1       0x1b0b0
+				MX6QDL_PAD_RGMII_RD2__RGMII_RD2       0x1b0b0
+				MX6QDL_PAD_RGMII_RD3__RGMII_RD3       0x1b0b0
+				MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL 0x1b0b0
+				MX6QDL_PAD_ENET_TX_EN__ENET_TX_EN     0x1b0b0
+			>;
+		};
+	};
+
+	gpmi-nand {
+		pinctrl_gpmi_nand: gpmi-nand {
+			fsl,pins = <
+				MX6QDL_PAD_NANDF_CLE__NAND_CLE     0xb0b1
+				MX6QDL_PAD_NANDF_ALE__NAND_ALE     0xb0b1
+				MX6QDL_PAD_NANDF_WP_B__NAND_WP_B   0xb0b1
+				MX6QDL_PAD_NANDF_RB0__NAND_READY_B 0xb000
+				MX6QDL_PAD_NANDF_CS0__NAND_CE0_B   0xb0b1
+				MX6QDL_PAD_NANDF_CS1__NAND_CE1_B   0xb0b1
+				MX6QDL_PAD_NANDF_CS2__NAND_CE2_B   0xb0b1
+				MX6QDL_PAD_NANDF_CS3__NAND_CE3_B   0xb0b1
+				MX6QDL_PAD_SD4_CMD__NAND_RE_B      0xb0b1
+				MX6QDL_PAD_SD4_CLK__NAND_WE_B      0xb0b1
+				MX6QDL_PAD_NANDF_D0__NAND_DATA00   0xb0b1
+				MX6QDL_PAD_NANDF_D1__NAND_DATA01   0xb0b1
+				MX6QDL_PAD_NANDF_D2__NAND_DATA02   0xb0b1
+				MX6QDL_PAD_NANDF_D3__NAND_DATA03   0xb0b1
+				MX6QDL_PAD_NANDF_D4__NAND_DATA04   0xb0b1
+				MX6QDL_PAD_NANDF_D5__NAND_DATA05   0xb0b1
+				MX6QDL_PAD_NANDF_D6__NAND_DATA06   0xb0b1
+				MX6QDL_PAD_NANDF_D7__NAND_DATA07   0xb0b1
+				MX6QDL_PAD_SD4_DAT0__NAND_DQS      0x00b1
+			>;
+		};
+	};
+
+	hog {
+		pinctrl_hog: hoggrp {
+			fsl,pins = <
+				MX6QDL_PAD_EIM_D23__GPIO3_IO23  0x80000000
+			>;
+		};
+	};
+
+	uart4 {
+		pinctrl_uart4: uart4grp {
+			fsl,pins = <
+				MX6QDL_PAD_KEY_COL0__UART4_TX_DATA 0x1b0b1
+				MX6QDL_PAD_KEY_ROW0__UART4_RX_DATA 0x1b0b1
+			>;
+		};
+	};
+
+	usdhc2 {
+		pinctrl_usdhc2: usdhc2grp {
+			fsl,pins = <
+				MX6QDL_PAD_SD2_CMD__SD2_CMD    0x17059
+				MX6QDL_PAD_SD2_CLK__SD2_CLK    0x10059
+				MX6QDL_PAD_SD2_DAT0__SD2_DATA0 0x17059
+				MX6QDL_PAD_SD2_DAT1__SD2_DATA1 0x17059
+				MX6QDL_PAD_SD2_DAT2__SD2_DATA2 0x17059
+				MX6QDL_PAD_SD2_DAT3__SD2_DATA3 0x17059
+			>;
+		};
+	};
+
+	usdhc3 {
+		pinctrl_usdhc3: usdhc3grp {
+			fsl,pins = <
+				MX6QDL_PAD_SD3_CMD__SD3_CMD    0x17059
+				MX6QDL_PAD_SD3_CLK__SD3_CLK    0x10059
+				MX6QDL_PAD_SD3_DAT0__SD3_DATA0 0x17059
+				MX6QDL_PAD_SD3_DAT1__SD3_DATA1 0x17059
+				MX6QDL_PAD_SD3_DAT2__SD3_DATA2 0x17059
+				MX6QDL_PAD_SD3_DAT3__SD3_DATA3 0x17059
+				MX6QDL_PAD_ENET_RXD0__GPIO1_IO27 0x80000000
+				MX6QDL_PAD_ENET_TXD1__GPIO1_IO29 0x80000000
+			>;
+		};
+	};
+};
+
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart4>;
+	status = "disabled";
+};
+
+&usdhc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	cd-gpios = <&gpio1 4 0>;
+	wp-gpios = <&gpio1 2 0>;
+	status = "disabled";
+};
+
+&usdhc3 {
+        pinctrl-names = "default";
+        pinctrl-0 = <&pinctrl_usdhc3>;
+        cd-gpios = <&gpio1 27 0>;
+        wp-gpios = <&gpio1 29 0>;
+        status = "disabled";
+};
diff --git a/arch/arm/dts/imx6s-phytec-pbab01.dts b/arch/arm/dts/imx6s-phytec-pbab01.dts
new file mode 100644
index 0000000..95841de
--- /dev/null
+++ b/arch/arm/dts/imx6s-phytec-pbab01.dts
@@ -0,0 +1,25 @@
+/*
+ * Copyright 2013 Christian Hemp, Phytec Messtechnik GmbH
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+/dts-v1/;
+
+#include "imx6s-phytec-pfla02.dtsi"
+#include "imx6qdl-phytec-pbab01.dtsi"
+
+/ {
+	model = "Phytec phyFLEX-i.MX6 Single Carrier-Board";
+	compatible = "phytec,imx6x-pbab01", "phytec,imx6s-pfla02", "fsl,imx6dl";
+
+	chosen {
+		linux,stdout-path = &uart4;
+
+	};
+};
diff --git a/arch/arm/dts/imx6s-phytec-pfla02.dtsi b/arch/arm/dts/imx6s-phytec-pfla02.dtsi
new file mode 100644
index 0000000..8322426
--- /dev/null
+++ b/arch/arm/dts/imx6s-phytec-pfla02.dtsi
@@ -0,0 +1,22 @@
+/*
+ * Copyright 2013 Christian Hemp, Phytec Messtechnik GmbH
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+#include "imx6dl.dtsi"
+#include "imx6qdl-phytec-pfla02.dtsi"
+
+/ {
+	model = "Phytec phyFLEX-i.MX6 Single";
+	compatible = "phytec,imx6s-pfla02", "fsl,imx6dl";
+
+	memory {
+		reg = <0x10000000 0x20000000>;
+	};
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index b7e7533..4d7d999 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -202,7 +202,7 @@ config MACH_FREESCALE_MX53_VMX53
 	  module equipped with a Freescale i.MX53 Processor
 
 config MACH_PHYTEC_PFLA02
-	bool "Phytec phyFLEX-i.MX6 Ouad"
+	bool "Phytec phyFLEX-i.MX6"
 	select ARCH_IMX6
 
 config MACH_DFI_FS700_M60
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 29cec43..6eee4a2 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -98,6 +98,18 @@ CFG_start_phytec_pbab01_1gib.pblx.imximg = $(board)/phytec-phyflex-imx6/flash-he
 FILE_barebox-phytec-pbab01-1gib.img = start_phytec_pbab01_1gib.pblx.imximg
 image-$(CONFIG_MACH_PHYTEC_PFLA02) += barebox-phytec-pbab01-1gib.img
 
+pblx-$(CONFIG_MACH_PHYTEC_PFLA02) += start_phytec_pbab01dl_1gib
+CFG_start_phytec_pbab01dl_1gib.pblx.imximg = $(board)/phytec-phyflex-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg
+imximage-$(CONFIG_MACH_PHYTEC_PFLA02) += start_phytec_pbab01dl_1gib.pblx.imximg
+FILE_barebox-phytec-pbab01dl-1gib.img = start_phytec_pbab01dl_1gib.pblx.imximg
+image-$(CONFIG_MACH_PHYTEC_PFLA02) += barebox-phytec-pbab01dl-1gib.img
+
+pblx-$(CONFIG_MACH_PHYTEC_PFLA02) += start_phytec_pbab01s_512mb
+CFG_start_phytec_pbab01s_512mb.pblx.imximg = $(board)/phytec-phyflex-imx6/flash-header-phytec-pfla02s-512mb.imxcfg
+imximage-$(CONFIG_MACH_PHYTEC_PFLA02) += start_phytec_pbab01s_512mb.pblx.imximg
+FILE_barebox-phytec-pbab01s-512mb.img = start_phytec_pbab01s_512mb.pblx.imximg
+image-$(CONFIG_MACH_PHYTEC_PFLA02) += barebox-phytec-pbab01s-512mb.img
+
 pblx-$(CONFIG_MACH_DFI_FS700_M60) += start_imx6dl_dfi_fs700_m60_6s
 CFG_start_imx6dl_dfi_fs700_m60_6s.pblx.imximg = $(board)/dfi-fs700-m60/flash-header-fs700-m60-6s.imxcfg
 FILE_barebox-dfi-fs700-m60-6s.img = start_imx6dl_dfi_fs700_m60_6s.pblx.imximg
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
