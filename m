Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W1Z5f-0005La-JE
 for barebox@lists.infradead.org; Fri, 10 Jan 2014 10:13:25 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 10 Jan 2014 11:12:56 +0100
Message-Id: <1389348776-6136-2-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1389348776-6136-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1389348776-6136-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v2 2/2] ARM: i.MX53: dts: add support for MCIMX53-START-R
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

The start-r QSB has a different pmic than the older start QSB.
Add a new dts for the QSRB and let barebox generate two images when
LOCO is selected.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
Changes in V2:

	- add newlines after every DT-node
	- add phandle names to pmic-nodes

 arch/arm/boards/freescale-mx53-loco/lowlevel.c |  13 ++
 arch/arm/dts/Makefile                          |   3 +-
 arch/arm/dts/imx53-qsrb.dts                    | 157 +++++++++++++++++++++++++
 images/Makefile.imx                            |   5 +
 4 files changed, 177 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/dts/imx53-qsrb.dts

diff --git a/arch/arm/boards/freescale-mx53-loco/lowlevel.c b/arch/arm/boards/freescale-mx53-loco/lowlevel.c
index 7556a2e..c9e057a 100644
--- a/arch/arm/boards/freescale-mx53-loco/lowlevel.c
+++ b/arch/arm/boards/freescale-mx53-loco/lowlevel.c
@@ -15,3 +15,16 @@ ENTRY_FUNCTION(start_imx53_loco, r0, r1, r2)
 
 	imx53_barebox_entry(fdt);
 }
+
+extern char __dtb_imx53_qsrb_start[];
+
+ENTRY_FUNCTION(start_imx53_loco_r, r0, r1, r2)
+{
+	uint32_t fdt;
+
+	arm_cpu_lowlevel_init();
+
+	fdt = (uint32_t)__dtb_imx53_qsrb_start - get_runtime_offset();
+
+	imx53_barebox_entry(fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index bc314e9..ec46c4f 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -5,6 +5,7 @@ dtb-$(CONFIG_ARCH_AM33XX) += \
 dtb-$(CONFIG_ARCH_IMX51) += imx51-babbage.dtb \
 	imx51-genesi-efika-sb.dtb
 dtb-$(CONFIG_ARCH_IMX53) += imx53-qsb.dtb \
+	imx53-qsrb.dtb \
 	imx53-voipac-bsb.dtb
 dtb-$(CONFIG_ARCH_IMX6) += imx6q-gk802.dtb \
 	imx6dl-dfi-fs700-m60-6s.dtb \
@@ -29,7 +30,7 @@ obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
 pbl-$(CONFIG_MACH_BEAGLEBONE) += am335x-bone.dtb.o am335x-boneblack.dtb.o
 pbl-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK) += imx51-genesi-efika-sb.dtb.o
 pbl-$(CONFIG_MACH_FREESCALE_MX51_PDK) += imx51-babbage.dtb.o
-pbl-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += imx53-qsb.dtb.o
+pbl-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += imx53-qsb.dtb.o imx53-qsrb.dtb.o
 pbl-$(CONFIG_MACH_FREESCALE_MX53_VMX53) += imx53-voipac-bsb.dtb.o
 pbl-$(CONFIG_MACH_DFI_FS700_M60) += imx6q-dfi-fs700-m60-6q.dtb.o imx6dl-dfi-fs700-m60-6s.dtb.o
 pbl-$(CONFIG_MACH_PCM051) += am335x-phytec-phycore.dtb.o
diff --git a/arch/arm/dts/imx53-qsrb.dts b/arch/arm/dts/imx53-qsrb.dts
new file mode 100644
index 0000000..aed9862
--- /dev/null
+++ b/arch/arm/dts/imx53-qsrb.dts
@@ -0,0 +1,157 @@
+/*
+ * Copyright 2011 Freescale Semiconductor, Inc.
+ * Copyright 2011 Linaro Ltd.
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
+#include "imx53-qsb-common.dtsi"
+
+/ {
+	model = "Freescale i.MX53 Quick Start-R Board";
+	compatible = "fsl,imx53-qsb", "fsl,imx53";
+};
+
+&iomuxc {
+	i2c1 {
+		/* open drain */
+		pinctrl_i2c1_qsrb: i2c1grp-1 {
+			fsl,pins = <
+				MX53_PAD_CSI0_DAT8__I2C1_SDA      0x400001ec
+				MX53_PAD_CSI0_DAT9__I2C1_SCL      0x400001ec
+			>;
+		};
+	};
+};
+
+&i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1_qsrb>;
+
+	pmic: ripley@8 {
+		compatible = "fsl,mc34708";
+		reg = <0x08>;
+		interrupt-parent = <&gpio5>;
+		interrupts = <23 0x8>;
+		regulators {
+			sw1_reg: sw1a {
+				regulator-name = "SW1";
+				regulator-min-microvolt = <650000>;
+				regulator-max-microvolt = <1437500>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			sw1b_reg: sw1b {
+				regulator-name = "SW1B";
+				regulator-min-microvolt = <650000>;
+				regulator-max-microvolt = <1437500>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			sw2_reg: sw2 {
+				regulator-name = "SW2";
+				regulator-min-microvolt = <650000>;
+				regulator-max-microvolt = <1437500>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			sw3_reg: sw3 {
+				regulator-name = "SW3";
+				regulator-min-microvolt = <650000>;
+				regulator-max-microvolt = <1425000>;
+				regulator-boot-on;
+			};
+
+			sw4a_reg: sw4a {
+				regulator-name = "SW4A";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			sw4b_reg: sw4b {
+				regulator-name = "SW4B";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			sw5_reg: sw5 {
+				regulator-name = "SW5";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1975000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			swbst_reg: swbst {
+				regulator-name = "SWBST";
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vpll_reg: vpll {
+				regulator-name = "VPLL";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+			};
+
+			vrefddr_reg: vrefddr {
+				regulator-name = "VREFDDR";
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vusb_reg: vusb {
+				regulator-name = "VUSB";
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vusb2_reg: vusb2 {
+				regulator-name = "VUSB2";
+				regulator-min-microvolt = <2500000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vdac_reg: vdac {
+				regulator-name = "VDAC";
+				regulator-min-microvolt = <2500000>;
+				regulator-max-microvolt = <2775000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vgen1_reg: vgen1 {
+				regulator-name = "VGEN1";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1550000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vgen2_reg: vgen2 {
+				regulator-name = "VGEN2";
+				regulator-min-microvolt = <2500000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+		};
+	};
+};
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 49c7e3e..4995514 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -26,6 +26,11 @@ CFG_start_imx53_loco.pblx.imximg = $(board)/freescale-mx53-loco/flash-header-imx
 FILE_barebox-freescale-imx53-loco.img = start_imx53_loco.pblx.imximg
 image-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += barebox-freescale-imx53-loco.img
 
+pblx-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += start_imx53_loco_r
+CFG_start_imx53_loco_r.pblx.imximg = $(board)/freescale-mx53-loco/flash-header-imx53-loco.imxcfg
+FILE_barebox-freescale-imx53-loco-r.img = start_imx53_loco_r.pblx.imximg
+image-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += barebox-freescale-imx53-loco-r.img
+
 pblx-$(CONFIG_MACH_FREESCALE_MX53_VMX53) += start_imx53_vmx53
 CFG_start_imx53_vmx53.pblx.imximg = $(board)/freescale-mx53-vmx53/flash-header-imx53-vmx53.imxcfg
 FILE_barebox-freescale-imx53-vmx53.img = start_imx53_vmx53.pblx.imximg
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
