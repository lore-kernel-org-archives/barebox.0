Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zujpy-00034o-B1
 for barebox@lists.infradead.org; Fri, 06 Nov 2015 16:26:11 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1Zujpb-0000Eo-Ju
 for barebox@lists.infradead.org; Fri, 06 Nov 2015 17:25:39 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri,  6 Nov 2015 17:25:37 +0100
Message-Id: <1446827139-339-5-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1446827139-339-1-git-send-email-l.stach@pengutronix.de>
References: <1446827139-339-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 5/7] ARM: microsom: add full set of module variants on
 Hummingboard
To: barebox@lists.infradead.org

Now that we have a full set of DRAM configuration entries we can
build images for the full set of modules on Hummingboard.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/solidrun-microsom/board.c    |  6 +++--
 arch/arm/boards/solidrun-microsom/lowlevel.c | 31 ++++++++++++++++++++++++
 arch/arm/dts/Makefile                        |  2 +-
 arch/arm/dts/imx6dl-hummingboard.dts         |  4 ----
 arch/arm/dts/imx6q-hummingboard.dts          | 35 ++++++++++++++++++++++++++++
 images/Makefile.imx                          | 15 ++++++++++++
 6 files changed, 86 insertions(+), 7 deletions(-)
 create mode 100644 arch/arm/dts/imx6q-hummingboard.dts

diff --git a/arch/arm/boards/solidrun-microsom/board.c b/arch/arm/boards/solidrun-microsom/board.c
index c231c1710372..280653f5b8d1 100644
--- a/arch/arm/boards/solidrun-microsom/board.c
+++ b/arch/arm/boards/solidrun-microsom/board.c
@@ -63,7 +63,8 @@ static int ar8035_phy_fixup(struct phy_device *dev)
 
 static int hummingboard_device_init(void)
 {
-	if (!of_machine_is_compatible("solidrun,hummingboard/dl"))
+	if (!of_machine_is_compatible("solidrun,hummingboard/dl") &&
+	    !of_machine_is_compatible("solidrun,hummingboard/q"))
 		return 0;
 
 	phy_register_fixup_for_uid(0x004dd072, 0xffffffef, ar8035_phy_fixup);
@@ -80,7 +81,8 @@ device_initcall(hummingboard_device_init);
 
 static int hummingboard_late_init(void)
 {
-	if (!of_machine_is_compatible("solidrun,hummingboard/dl"))
+	if (!of_machine_is_compatible("solidrun,hummingboard/dl") &&
+	    !of_machine_is_compatible("solidrun,hummingboard/q"))
 		return 0;
 
 	imx6_bbu_internal_mmc_register_handler("sdcard", "/dev/mmc1.barebox",
diff --git a/arch/arm/boards/solidrun-microsom/lowlevel.c b/arch/arm/boards/solidrun-microsom/lowlevel.c
index 703c0aafd1d5..54f1cdf9f4ea 100644
--- a/arch/arm/boards/solidrun-microsom/lowlevel.c
+++ b/arch/arm/boards/solidrun-microsom/lowlevel.c
@@ -5,6 +5,7 @@
 #include <asm/barebox-arm.h>
 
 extern char __dtb_imx6dl_hummingboard_start[];
+extern char __dtb_imx6q_hummingboard_start[];
 
 ENTRY_FUNCTION(start_hummingboard_microsom_i1, r0, r1, r2)
 {
@@ -15,3 +16,33 @@ ENTRY_FUNCTION(start_hummingboard_microsom_i1, r0, r1, r2)
 	fdt = __dtb_imx6dl_hummingboard_start - get_runtime_offset();
 	barebox_arm_entry(0x10000000, SZ_512M, fdt);
 }
+
+ENTRY_FUNCTION(start_hummingboard_microsom_i2, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6_cpu_lowlevel_init();
+
+	fdt = __dtb_imx6dl_hummingboard_start - get_runtime_offset();
+	barebox_arm_entry(0x10000000, SZ_1G, fdt);
+}
+
+ENTRY_FUNCTION(start_hummingboard_microsom_i2ex, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6_cpu_lowlevel_init();
+
+	fdt = __dtb_imx6q_hummingboard_start - get_runtime_offset();
+	barebox_arm_entry(0x10000000, SZ_1G, fdt);
+}
+
+ENTRY_FUNCTION(start_hummingboard_microsom_i4, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6_cpu_lowlevel_init();
+
+	fdt = __dtb_imx6q_hummingboard_start - get_runtime_offset();
+	barebox_arm_entry(0x10000000, SZ_2G, fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 60880e4d20b4..dee4ad7b4519 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -51,7 +51,7 @@ pbl-dtb-$(CONFIG_MACH_SOCFPGA_ALTERA_SOCDK) += socfpga_cyclone5_socdk.dtb.o
 pbl-dtb-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += socfpga_cyclone5_socrates.dtb.o
 pbl-dtb-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += socfpga_cyclone5_sockit.dtb.o
 pbl-dtb-$(CONFIG_MACH_SOLIDRUN_CUBOX) += dove-cubox-bb.dtb.o
-pbl-dtb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += imx6dl-hummingboard.dtb.o
+pbl-dtb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += imx6dl-hummingboard.dtb.o imx6q-hummingboard.dtb.o
 pbl-dtb-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += tegra20-colibri-iris.dtb.o
 pbl-dtb-$(CONFIG_MACH_TOSHIBA_AC100) += tegra20-paz00.dtb.o
 pbl-dtb-$(CONFIG_MACH_TQMA53) += imx53-mba53.dtb.o
diff --git a/arch/arm/dts/imx6dl-hummingboard.dts b/arch/arm/dts/imx6dl-hummingboard.dts
index 24f6bfa8171c..3c35cbaee2c6 100644
--- a/arch/arm/dts/imx6dl-hummingboard.dts
+++ b/arch/arm/dts/imx6dl-hummingboard.dts
@@ -17,10 +17,6 @@
 			device-path = &usdhc2, "partname:barebox-environment";
 		};
 	};
-
-	memory {
-		reg = <0x10000000 0x20000000>;
-	};
 };
 
 &usdhc2 {
diff --git a/arch/arm/dts/imx6q-hummingboard.dts b/arch/arm/dts/imx6q-hummingboard.dts
new file mode 100644
index 000000000000..ab4510e874c9
--- /dev/null
+++ b/arch/arm/dts/imx6q-hummingboard.dts
@@ -0,0 +1,35 @@
+/*
+ * Copyright (C) 2013 Russell King
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License version 2.
+ */
+
+#include <arm/imx6q-hummingboard.dts>
+#include "imx6qdl.dtsi"
+
+/ {
+	chosen {
+		linux,stdout-path = &uart1;
+
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &usdhc2, "partname:barebox-environment";
+		};
+	};
+};
+
+&usdhc2 {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0x80000>;
+	};
+
+	partition@1 {
+		label = "barebox-environment";
+		reg = <0x80000 0x80000>;
+	};
+};
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 3b8d6577ed99..8208fe9e2afd 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -207,6 +207,21 @@ CFG_start_hummingboard_microsom_i1.pblx.imximg = $(board)/solidrun-microsom/flas
 FILE_barebox-solidrun-hummingboard-microsom-i1.img = start_hummingboard_microsom_i1.pblx.imximg
 image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard-microsom-i1.img
 
+pblx-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard_microsom_i2
+CFG_start_hummingboard_microsom_i2.pblx.imximg = $(board)/solidrun-microsom/flash-header-microsom-i2.imxcfg
+FILE_barebox-solidrun-hummingboard-microsom-i2.img = start_hummingboard_microsom_i2.pblx.imximg
+image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard-microsom-i2.img
+
+pblx-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard_microsom_i2ex
+CFG_start_hummingboard_microsom_i2ex.pblx.imximg = $(board)/solidrun-microsom/flash-header-microsom-i2eX.imxcfg
+FILE_barebox-solidrun-hummingboard-microsom-i2eX.img = start_hummingboard_microsom_i2ex.pblx.imximg
+image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard-microsom-i2eX.img
+
+pblx-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard_microsom_i4
+CFG_start_hummingboard_microsom_i4.pblx.imximg = $(board)/solidrun-microsom/flash-header-microsom-i4.imxcfg
+FILE_barebox-solidrun-hummingboard-microsom-i4.img = start_hummingboard_microsom_i4.pblx.imximg
+image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard-microsom-i4.img
+
 pblx-$(CONFIG_MACH_NITROGEN6X) += start_imx6q_nitrogen6x_1g
 CFG_start_imx6q_nitrogen6x_1g.pblx.imximg = $(board)/boundarydevices-nitrogen6x/flash-header-nitrogen6q-1g.imxcfg
 FILE_barebox-boundarydevices-imx6q-nitrogen6x-1g.img = start_imx6q_nitrogen6x_1g.pblx.imximg
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
