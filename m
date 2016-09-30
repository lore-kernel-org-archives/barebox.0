Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bq0IR-0002ds-Jf
 for barebox@lists.infradead.org; Fri, 30 Sep 2016 16:04:25 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1bq0I5-0000bj-FE
 for barebox@lists.infradead.org; Fri, 30 Sep 2016 18:04:01 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 30 Sep 2016 18:04:01 +0200
Message-Id: <20160930160401.21147-3-l.stach@pengutronix.de>
In-Reply-To: <20160930160401.21147-1-l.stach@pengutronix.de>
References: <20160930160401.21147-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: imx6: add support for Auvidea H100
To: barebox@lists.infradead.org

The Auvidea H100 is a baseboard for the SolidRun MicroSOM, which
provides HDMI IN/OUT capabilities.

Currently supported is only a combination of the H100 baseboard
with a i2eX MicroSOM.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/solidrun-microsom/board.c    | 16 ++++++-
 arch/arm/boards/solidrun-microsom/lowlevel.c | 11 +++++
 arch/arm/dts/Makefile                        |  2 +-
 arch/arm/dts/imx6q-h100.dts                  | 70 ++++++++++++++++++++++++++++
 images/Makefile.imx                          |  5 ++
 5 files changed, 102 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/dts/imx6q-h100.dts

diff --git a/arch/arm/boards/solidrun-microsom/board.c b/arch/arm/boards/solidrun-microsom/board.c
index 28a60b9e8c79..b9041687e49c 100644
--- a/arch/arm/boards/solidrun-microsom/board.c
+++ b/arch/arm/boards/solidrun-microsom/board.c
@@ -93,10 +93,24 @@ static int hummingboard_device_init(void)
 }
 device_initcall(hummingboard_device_init);
 
+static int h100_device_init(void)
+{
+	if (!of_machine_is_compatible("auvidea,h100"))
+		return 0;
+
+	microsom_eth_init();
+
+	barebox_set_hostname("h100");
+
+	return 0;
+}
+device_initcall(h100_device_init);
+
 static int hummingboard_late_init(void)
 {
 	if (!of_machine_is_compatible("solidrun,hummingboard/dl") &&
-	    !of_machine_is_compatible("solidrun,hummingboard/q"))
+	    !of_machine_is_compatible("solidrun,hummingboard/q") &&
+	    !of_machine_is_compatible("auvidea,h100"))
 		return 0;
 
 	imx6_bbu_internal_mmc_register_handler("sdcard", "/dev/mmc1.barebox",
diff --git a/arch/arm/boards/solidrun-microsom/lowlevel.c b/arch/arm/boards/solidrun-microsom/lowlevel.c
index 3d5ab7a13f42..7b97f2e94797 100644
--- a/arch/arm/boards/solidrun-microsom/lowlevel.c
+++ b/arch/arm/boards/solidrun-microsom/lowlevel.c
@@ -5,6 +5,7 @@
 
 extern char __dtb_imx6dl_hummingboard_start[];
 extern char __dtb_imx6q_hummingboard_start[];
+extern char __dtb_imx6q_h100_start[];
 
 ENTRY_FUNCTION(start_hummingboard_microsom_i1, r0, r1, r2)
 {
@@ -45,3 +46,13 @@ ENTRY_FUNCTION(start_hummingboard_microsom_i4, r0, r1, r2)
 	fdt = __dtb_imx6q_hummingboard_start - get_runtime_offset();
 	imx6q_barebox_entry(fdt);
 }
+
+ENTRY_FUNCTION(start_h100_microsom_i2ex, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6_cpu_lowlevel_init();
+
+	fdt = __dtb_imx6q_h100_start - get_runtime_offset();
+	imx6q_barebox_entry(fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index d1a3fe8ae847..2aca5e757da0 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -64,7 +64,7 @@ pbl-dtb-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += socfpga_cyclone5_socrates.dtb.o
 pbl-dtb-$(CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC) += socfpga_cyclone5_de0_nano_soc.dtb.o
 pbl-dtb-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += socfpga_cyclone5_sockit.dtb.o
 pbl-dtb-$(CONFIG_MACH_SOLIDRUN_CUBOX) += dove-cubox-bb.dtb.o
-pbl-dtb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += imx6dl-hummingboard.dtb.o imx6q-hummingboard.dtb.o
+pbl-dtb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += imx6dl-hummingboard.dtb.o imx6q-hummingboard.dtb.o imx6q-h100.dtb.o
 pbl-dtb-$(CONFIG_MACH_TECHNEXION_WANDBOARD) += imx6q-wandboard.dtb.o imx6dl-wandboard.dtb.o
 pbl-dtb-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += tegra20-colibri-iris.dtb.o
 pbl-dtb-$(CONFIG_MACH_TOSHIBA_AC100) += tegra20-paz00.dtb.o
diff --git a/arch/arm/dts/imx6q-h100.dts b/arch/arm/dts/imx6q-h100.dts
new file mode 100644
index 000000000000..bfee186f28a4
--- /dev/null
+++ b/arch/arm/dts/imx6q-h100.dts
@@ -0,0 +1,70 @@
+/*
+ * Copyright (C) 2015 Lucas Stach <kernel@pengutronix.de>
+ *
+ * This file is dual-licensed: you can use it either under the terms
+ * of the GPL or the X11 license, at your option. Note that this dual
+ * licensing only applies to this file, and not this project as a
+ * whole.
+ *
+ *  a) This file is free software; you can redistribute it and/or
+ *     modify it under the terms of the GNU General Public License
+ *     version 2 as published by the Free Software Foundation.
+ *
+ *     This file is distributed in the hope that it will be useful
+ *     but WITHOUT ANY WARRANTY; without even the implied warranty of
+ *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ *     GNU General Public License for more details.
+ *
+ * Or, alternatively
+ *
+ *  b) Permission is hereby granted, free of charge, to any person
+ *     obtaining a copy of this software and associated documentation
+ *     files (the "Software"), to deal in the Software without
+ *     restriction, including without limitation the rights to use
+ *     copy, modify, merge, publish, distribute, sublicense, and/or
+ *     sell copies of the Software, and to permit persons to whom the
+ *     Software is furnished to do so, subject to the following
+ *     conditions:
+ *
+ *     The above copyright notice and this permission notice shall be
+ *     included in all copies or substantial portions of the Software.
+ *
+ *     THE SOFTWARE IS PROVIDED , WITHOUT WARRANTY OF ANY KIND
+ *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
+ *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
+ *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
+ *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY
+ *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
+ *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
+ *     OTHER DEALINGS IN THE SOFTWARE.
+ */
+
+#include <arm/imx6q-h100.dts>
+
+/ {
+	chosen {
+		environment {
+			compatible = "barebox,environment";
+			device-path = &usdhc2, "partname:barebox-environment";
+		};
+	};
+};
+
+&ocotp {
+	barebox,provide-mac-address = <&fec 0x620>;
+};
+
+&usdhc2 {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0xe0000>;
+	};
+
+	partition@e0000 {
+		label = "barebox-environment";
+		reg = <0xe0000 0x20000>;
+	};
+};
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 1904e8bcf3db..8db9c754f212 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -274,6 +274,11 @@ CFG_start_hummingboard_microsom_i4.pblx.imximg = $(board)/solidrun-microsom/flas
 FILE_barebox-solidrun-hummingboard-microsom-i4.img = start_hummingboard_microsom_i4.pblx.imximg
 image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard-microsom-i4.img
 
+pblx-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_h100_microsom_i2ex
+CFG_start_h100_microsom_i2ex.pblx.imximg = $(board)/solidrun-microsom/flash-header-microsom-i2eX.imxcfg
+FILE_barebox-auvidea-h100-microsom-i2eX.img = start_h100_microsom_i2ex.pblx.imximg
+image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-auvidea-h100-microsom-i2eX.img
+
 pblx-$(CONFIG_MACH_NITROGEN6) += start_imx6q_nitrogen6x_1g
 CFG_start_imx6q_nitrogen6x_1g.pblx.imximg = $(board)/boundarydevices-nitrogen6/flash-header-nitrogen6q-1g.imxcfg
 FILE_barebox-boundarydevices-imx6q-nitrogen6x-1g.img = start_imx6q_nitrogen6x_1g.pblx.imximg
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
