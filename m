Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bQZcP-0000R0-Nb
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 12:31:58 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1bQZc2-0007AE-Jh
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 14:31:30 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 22 Jul 2016 14:31:29 +0200
Message-Id: <1469190690-14508-5-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1469190690-14508-1-git-send-email-l.stach@pengutronix.de>
References: <1469190690-14508-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 5/6] ARM: add support for Nitrogen6MAX QP variant
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 .../1066mhz_4x512mx16-qp.imxcfg                    | 67 +++++++++++++++++++++
 arch/arm/boards/boundarydevices-nitrogen6x/board.c | 11 +++-
 .../flash-header-nitrogen6qp-max.imxcfg            | 10 ++++
 .../boards/boundarydevices-nitrogen6x/lowlevel.c   | 13 ++++
 arch/arm/dts/Makefile                              |  2 +-
 arch/arm/dts/imx6qdl-nitrogen6_max.dtsi            | 69 ++++++++++++++++++++++
 arch/arm/dts/imx6qp-nitrogen6_max.dts              | 44 ++++++++++++++
 images/Makefile.imx                                |  5 ++
 8 files changed, 217 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm/boards/boundarydevices-nitrogen6x/1066mhz_4x512mx16-qp.imxcfg
 create mode 100644 arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6qp-max.imxcfg
 create mode 100644 arch/arm/dts/imx6qdl-nitrogen6_max.dtsi
 create mode 100644 arch/arm/dts/imx6qp-nitrogen6_max.dts

diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/1066mhz_4x512mx16-qp.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6x/1066mhz_4x512mx16-qp.imxcfg
new file mode 100644
index 000000000000..6409b745d727
--- /dev/null
+++ b/arch/arm/boards/boundarydevices-nitrogen6x/1066mhz_4x512mx16-qp.imxcfg
@@ -0,0 +1,67 @@
+/*
+ * Copyright (C) 2016 Boundary Devices
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
+ */
+
+/* NOC setup */
+wm 32 0x00bb0008				0x00000004
+wm 32 0x00bb000c				0x2891E41A
+wm 32 0x00bb0038				0x00000564
+wm 32 0x00bb0014				0x00000040
+wm 32 0x00bb0028				0x00000020
+wm 32 0x00bb002c				0x00000020
+
+/* Disable all MMDC arbitration and reordering controls */
+wm 32 0x021b0400				0x14420000
+
+wm 32 MX6_MMDC_P0_MDPDC			0x00020036
+wm 32 MX6_MMDC_P0_MDSCR			0x00008000
+wm 32 MX6_MMDC_P0_MDCFG0		0x898E79A4
+wm 32 MX6_MMDC_P0_MDCFG1		0xDB538F64
+wm 32 MX6_MMDC_P0_MDCFG2		0x01FF00DD
+wm 32 MX6_MMDC_P0_MDRWD			0x0f9f26d2
+wm 32 MX6_MMDC_P0_MDOR			0x008E1023
+wm 32 MX6_MMDC_P0_MDOTC			0x09444040
+wm 32 MX6_MMDC_P0_MDPDC			0x00025576
+wm 32 MX6_MMDC_P0_MDASP			0x00000047
+wm 32 MX6_MMDC_P0_MDCTL			0xC41A0000
+wm 32 MX6_MMDC_P0_MDSCR			0x04088032
+wm 32 MX6_MMDC_P0_MDSCR			0x0408803a
+wm 32 MX6_MMDC_P0_MDSCR			0x00008033
+wm 32 MX6_MMDC_P0_MDSCR			0x0000803b
+wm 32 MX6_MMDC_P0_MDSCR			0x00428031
+wm 32 MX6_MMDC_P0_MDSCR			0x00428039
+wm 32 MX6_MMDC_P0_MDSCR			0x19308030
+wm 32 MX6_MMDC_P0_MDSCR			0x19308038
+wm 32 MX6_MMDC_P0_MDSCR			0x04008040
+wm 32 MX6_MMDC_P0_MDSCR			0x04008048
+wm 32 MX6_MMDC_P0_MPZQHWCTRL	0xA1390003
+wm 32 MX6_MMDC_P1_MPZQHWCTRL	0xA1390003
+wm 32 MX6_MMDC_P0_MDREF			0x00007800
+wm 32 MX6_MMDC_P0_MPODTCTRL		0x00022227
+wm 32 MX6_MMDC_P1_MPODTCTRL		0x00022227
+wm 32 MX6_MMDC_P0_MPDGCTRL0		0x4327033b
+wm 32 MX6_MMDC_P0_MPDGCTRL1		0x0324031a
+wm 32 MX6_MMDC_P1_MPDGCTRL0		0x43240337
+wm 32 MX6_MMDC_P1_MPDGCTRL1		0x03210269
+wm 32 MX6_MMDC_P0_MPRDDLCTL		0x483c3e4a
+wm 32 MX6_MMDC_P1_MPRDDLCTL		0x423a3848
+wm 32 MX6_MMDC_P0_MPWRDLCTL		0x33363a2c
+wm 32 MX6_MMDC_P1_MPWRDLCTL		0x3e314137
+wm 32 MX6_MMDC_P0_MPWLDECTRL0	0x00200026
+wm 32 MX6_MMDC_P0_MPWLDECTRL1	0x00260021
+wm 32 MX6_MMDC_P1_MPWLDECTRL0	0x00180028
+wm 32 MX6_MMDC_P1_MPWLDECTRL1	0x000f001e
+wm 32 MX6_MMDC_P0_MPMUR0		0x00000800
+wm 32 MX6_MMDC_P1_MPMUR0		0x00000800
+wm 32 MX6_MMDC_P0_MDSCR			0x00000000
+wm 32 MX6_MMDC_P0_MAPSR			0x00011006
diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/board.c b/arch/arm/boards/boundarydevices-nitrogen6x/board.c
index 28dba3af9a15..d9514d9d4807 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6x/board.c
+++ b/arch/arm/boards/boundarydevices-nitrogen6x/board.c
@@ -23,13 +23,17 @@
 static int nitrogen6x_devices_init(void)
 {
 	if (!of_machine_is_compatible("boundary,imx6dl-nitrogen6x") &&
-	    !of_machine_is_compatible("boundary,imx6q-nitrogen6x"))
+	    !of_machine_is_compatible("boundary,imx6q-nitrogen6x") &&
+	    !of_machine_is_compatible("boundary,imx6qp-nitrogen6_max"))
 		return 0;
 
 	imx6_bbu_internal_spi_i2c_register_handler("spiflash", "/dev/m25p0.barebox",
 			BBU_HANDLER_FLAG_DEFAULT);
 
-	barebox_set_hostname("nitrogen6x");
+	if (of_machine_is_compatible("boundary,imx6qp-nitrogen6_max"))
+		barebox_set_hostname("nitrogen6max");
+	else
+		barebox_set_hostname("nitrogen6x");
 
 	return 0;
 }
@@ -55,7 +59,8 @@ static int ksz9021rn_phy_fixup(struct phy_device *dev)
 static int nitrogen6x_coredevices_init(void)
 {
 	if (!of_machine_is_compatible("boundary,imx6dl-nitrogen6x") &&
-	    !of_machine_is_compatible("boundary,imx6q-nitrogen6x"))
+	    !of_machine_is_compatible("boundary,imx6q-nitrogen6x") &&
+	    !of_machine_is_compatible("boundary,imx6qp-nitrogen6_max"))
 		return 0;
 
 	phy_register_fixup_for_uid(PHY_ID_KSZ9021, MICREL_PHY_ID_MASK,
diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6qp-max.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6qp-max.imxcfg
new file mode 100644
index 000000000000..66f0e1a86086
--- /dev/null
+++ b/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6qp-max.imxcfg
@@ -0,0 +1,10 @@
+soc imx6
+loadaddr 0x20000000
+dcdofs 0x400
+
+#include <mach/imx6-ddr-regs.h>
+#include <mach/imx6q-ddr-regs.h>
+#include <mach/imx6-ccm-regs.h>
+
+#include "ram-base.imxcfg"
+#include "1066mhz_4x512mx16-qp.imxcfg"
diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/lowlevel.c b/arch/arm/boards/boundarydevices-nitrogen6x/lowlevel.c
index 7eea3ce39034..bee70a5af412 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6x/lowlevel.c
+++ b/arch/arm/boards/boundarydevices-nitrogen6x/lowlevel.c
@@ -50,3 +50,16 @@ ENTRY_FUNCTION(start_imx6dl_nitrogen6x_2g, r0, r1, r2)
 
 	imx6q_barebox_entry(fdt);
 }
+
+extern char __dtb_imx6qp_nitrogen6_max_start[];
+
+ENTRY_FUNCTION(start_imx6qp_nitrogen6_max, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6_cpu_lowlevel_init();
+
+	fdt = __dtb_imx6qp_nitrogen6_max_start - get_runtime_offset();
+
+	imx6q_barebox_entry(fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 813e09814546..7a59402106c4 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -29,7 +29,7 @@ pbl-dtb-$(CONFIG_MACH_GW_VENTANA) += imx6q-gw54xx.dtb.o
 pbl-dtb-$(CONFIG_MACH_LENOVO_IX4_300D) += armada-xp-lenovo-ix4-300d-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP) += armada-xp-gp-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_NETGEAR_RN104) += armada-370-rn104-bb.dtb.o
-pbl-dtb-$(CONFIG_MACH_NITROGEN6X) += imx6q-nitrogen6x.dtb.o imx6dl-nitrogen6x.dtb.o
+pbl-dtb-$(CONFIG_MACH_NITROGEN6X) += imx6q-nitrogen6x.dtb.o imx6dl-nitrogen6x.dtb.o imx6qp-nitrogen6_max.dtb.o
 pbl-dtb-$(CONFIG_MACH_NVIDIA_BEAVER) += tegra30-beaver.dtb.o
 pbl-dtb-$(CONFIG_MACH_NVIDIA_JETSON) += tegra124-jetson-tk1.dtb.o
 pbl-dtb-$(CONFIG_MACH_PCA100) += imx27-phytec-phycard-s-rdk-bb.dtb.o
diff --git a/arch/arm/dts/imx6qdl-nitrogen6_max.dtsi b/arch/arm/dts/imx6qdl-nitrogen6_max.dtsi
new file mode 100644
index 000000000000..26c685c52955
--- /dev/null
+++ b/arch/arm/dts/imx6qdl-nitrogen6_max.dtsi
@@ -0,0 +1,69 @@
+/*
+ * Copyright 2016 Pengutronix, Lucas Stach
+ *
+ * This file is dual-licensed: you can use it either under the terms
+ * of the GPL or the X11 license, at your option. Note that this dual
+ * licensing only applies to this file, and not this project as a
+ * whole.
+ *
+ *  a) This file is free software; you can redistribute it and/or
+ *     modify it under the terms of the GNU General Public License as
+ *     published by the Free Software Foundation; either version 2 of the
+ *     License, or (at your option) any later version.
+ *
+ *     This file is distributed in the hope that it will be useful,
+ *     but WITHOUT ANY WARRANTY; without even the implied warranty of
+ *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ *     GNU General Public License for more details.
+ *
+ * Or, alternatively,
+ *
+ *  b) Permission is hereby granted, free of charge, to any person
+ *     obtaining a copy of this software and associated documentation
+ *     files (the "Software"), to deal in the Software without
+ *     restriction, including without limitation the rights to use,
+ *     copy, modify, merge, publish, distribute, sublicense, and/or
+ *     sell copies of the Software, and to permit persons to whom the
+ *     Software is furnished to do so, subject to the following
+ *     conditions:
+ *
+ *     The above copyright notice and this permission notice shall be
+ *     included in all copies or substantial portions of the Software.
+ *
+ *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
+ *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
+ *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
+ *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
+ *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
+ *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
+ *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
+ *     OTHER DEALINGS IN THE SOFTWARE.
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
+&flash {
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
+
+&ocotp {
+	barebox,provide-mac-address = <&fec 0x620>;
+};
\ No newline at end of file
diff --git a/arch/arm/dts/imx6qp-nitrogen6_max.dts b/arch/arm/dts/imx6qp-nitrogen6_max.dts
new file mode 100644
index 000000000000..93f0741062e7
--- /dev/null
+++ b/arch/arm/dts/imx6qp-nitrogen6_max.dts
@@ -0,0 +1,44 @@
+/*
+ * Copyright 2016 Boundary Devices, Inc.
+ *
+ * This file is dual-licensed: you can use it either under the terms
+ * of the GPL or the X11 license, at your option. Note that this dual
+ * licensing only applies to this file, and not this project as a
+ * whole.
+ *
+ *  a) This file is free software; you can redistribute it and/or
+ *     modify it under the terms of the GNU General Public License as
+ *     published by the Free Software Foundation; either version 2 of the
+ *     License, or (at your option) any later version.
+ *
+ *     This file is distributed in the hope that it will be useful,
+ *     but WITHOUT ANY WARRANTY; without even the implied warranty of
+ *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ *     GNU General Public License for more details.
+ *
+ * Or, alternatively,
+ *
+ *  b) Permission is hereby granted, free of charge, to any person
+ *     obtaining a copy of this software and associated documentation
+ *     files (the "Software"), to deal in the Software without
+ *     restriction, including without limitation the rights to use,
+ *     copy, modify, merge, publish, distribute, sublicense, and/or
+ *     sell copies of the Software, and to permit persons to whom the
+ *     Software is furnished to do so, subject to the following
+ *     conditions:
+ *
+ *     The above copyright notice and this permission notice shall be
+ *     included in all copies or substantial portions of the Software.
+ *
+ *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
+ *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
+ *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
+ *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
+ *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
+ *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
+ *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
+ *     OTHER DEALINGS IN THE SOFTWARE.
+ */
+
+#include <arm/imx6qp-nitrogen6_max.dts>
+#include "imx6qdl-nitrogen6_max.dtsi"
diff --git a/images/Makefile.imx b/images/Makefile.imx
index effa5edc0f6e..166bb8ee4dfe 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -288,6 +288,11 @@ CFG_start_imx6dl_nitrogen6x_2g.pblx.imximg = $(board)/boundarydevices-nitrogen6x
 FILE_barebox-boundarydevices-imx6dl-nitrogen6x-2g.img = start_imx6dl_nitrogen6x_2g.pblx.imximg
 image-$(CONFIG_MACH_NITROGEN6X) += barebox-boundarydevices-imx6dl-nitrogen6x-2g.img
 
+pblx-$(CONFIG_MACH_NITROGEN6X) += start_imx6qp_nitrogen6_max
+CFG_start_imx6qp_nitrogen6_max.pblx.imximg = $(board)/boundarydevices-nitrogen6x/flash-header-nitrogen6qp-max.imxcfg
+FILE_barebox-boundarydevices-imx6qp-nitrogen6_max.img = start_imx6qp_nitrogen6_max.pblx.imximg
+image-$(CONFIG_MACH_NITROGEN6X) += barebox-boundarydevices-imx6qp-nitrogen6_max.img
+
 pblx-$(CONFIG_MACH_TX6X) += start_imx6dl_tx6x_512m
 CFG_start_imx6dl_tx6x_512m.pblx.imximg = $(board)/karo-tx6x/flash-header-tx6dl-512m.imxcfg
 FILE_barebox-karo-imx6dl-tx6x-512m.img = start_imx6dl_tx6x_512m.pblx.imximg
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
