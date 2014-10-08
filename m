Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XbrrM-0006KX-Us
 for barebox@lists.infradead.org; Wed, 08 Oct 2014 14:04:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  8 Oct 2014 16:04:00 +0200
Message-Id: <1412777041-23714-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1412777041-23714-1-git-send-email-s.hauer@pengutronix.de>
References: <1412777041-23714-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] ARM: nitrogen6x: Add support for 2GB board variants
To: barebox@lists.infradead.org

The nitrogen6x have variants with 2GB SDRAM. Add support for them. The
imxcfg files are from U-Boot.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../1066mhz_4x256mx16.imxcfg                       | 50 ++++++++++++++++++++++
 .../800mhz_4x256mx16.imxcfg                        | 50 ++++++++++++++++++++++
 .../flash-header-nitrogen6dl-2g.imxcfg             | 10 +++++
 .../flash-header-nitrogen6q-2g.imxcfg              | 10 +++++
 .../boards/boundarydevices-nitrogen6x/lowlevel.c   | 22 ++++++++++
 images/Makefile.imx                                | 10 +++++
 6 files changed, 152 insertions(+)
 create mode 100644 arch/arm/boards/boundarydevices-nitrogen6x/1066mhz_4x256mx16.imxcfg
 create mode 100644 arch/arm/boards/boundarydevices-nitrogen6x/800mhz_4x256mx16.imxcfg
 create mode 100644 arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6dl-2g.imxcfg
 create mode 100644 arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6q-2g.imxcfg

diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/1066mhz_4x256mx16.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6x/1066mhz_4x256mx16.imxcfg
new file mode 100644
index 0000000..4d8a715
--- /dev/null
+++ b/arch/arm/boards/boundarydevices-nitrogen6x/1066mhz_4x256mx16.imxcfg
@@ -0,0 +1,50 @@
+/*
+ * Copyright (C) 2013 Boundary Devices
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
+wm 32 MX6_MMDC_P0_MDPDC 0x00020036
+wm 32 MX6_MMDC_P0_MDCFG0 0x898E7974
+wm 32 MX6_MMDC_P0_MDCFG1 0xDB538F64
+wm 32 MX6_MMDC_P0_MDCFG2 0x01FF00DB
+wm 32 MX6_MMDC_P0_MDRWD 0x000026D2
+wm 32 MX6_MMDC_P0_MDOR 0x008E1023
+wm 32 MX6_MMDC_P0_MDOTC 0x09444040
+wm 32 MX6_MMDC_P0_MDPDC 0x00025576
+wm 32 MX6_MMDC_P0_MDASP 0x00000047
+wm 32 MX6_MMDC_P0_MDCTL 0x841A0000
+wm 32 MX6_MMDC_P0_MDSCR 0x04088032
+wm 32 MX6_MMDC_P0_MDSCR 0x00008033
+wm 32 MX6_MMDC_P0_MDSCR 0x00428031
+wm 32 MX6_MMDC_P0_MDSCR 0x19308030
+wm 32 MX6_MMDC_P0_MDSCR 0x04008040
+wm 32 MX6_MMDC_P0_MPZQHWCTRL 0xA1390003
+wm 32 MX6_MMDC_P1_MPZQHWCTRL 0xA1390003
+wm 32 MX6_MMDC_P0_MDREF 0x00007800
+wm 32 MX6_MMDC_P0_MPODTCTRL 0x00022227
+wm 32 MX6_MMDC_P1_MPODTCTRL 0x00022227
+wm 32 MX6_MMDC_P0_MPDGCTRL0 0x43040319
+wm 32 MX6_MMDC_P0_MPDGCTRL1 0x03040279
+wm 32 MX6_MMDC_P1_MPDGCTRL0 0x43040321
+wm 32 MX6_MMDC_P1_MPDGCTRL1 0x03030251
+wm 32 MX6_MMDC_P0_MPRDDLCTL 0x4d434248
+wm 32 MX6_MMDC_P1_MPRDDLCTL 0x42413c4d
+wm 32 MX6_MMDC_P0_MPWRDLCTL 0x34424543
+wm 32 MX6_MMDC_P1_MPWRDLCTL 0x49324933
+wm 32 MX6_MMDC_P0_MPWLDECTRL0 0x001a0017
+wm 32 MX6_MMDC_P0_MPWLDECTRL1 0x001F001F
+wm 32 MX6_MMDC_P1_MPWLDECTRL0 0x00170027
+wm 32 MX6_MMDC_P1_MPWLDECTRL1 0x000a001f
+wm 32 MX6_MMDC_P0_MPMUR0 0x00000800
+wm 32 MX6_MMDC_P1_MPMUR0 0x00000800
+wm 32 MX6_MMDC_P0_MDSCR 0x00000000
+wm 32 MX6_MMDC_P0_MAPSR 0x00011006
diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/800mhz_4x256mx16.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6x/800mhz_4x256mx16.imxcfg
new file mode 100644
index 0000000..09c8555
--- /dev/null
+++ b/arch/arm/boards/boundarydevices-nitrogen6x/800mhz_4x256mx16.imxcfg
@@ -0,0 +1,50 @@
+/*
+ * Copyright (C) 2013 Boundary Devices
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
+wm 32 MX6_MMDC_P0_MDPDC 0x0002002D
+wm 32 MX6_MMDC_P0_MDCFG0 0x696C5323
+wm 32 MX6_MMDC_P0_MDCFG1 0xB66E8D63
+wm 32 MX6_MMDC_P0_MDCFG2 0x01FF00DB
+wm 32 MX6_MMDC_P0_MDRWD 0x000026D2
+wm 32 MX6_MMDC_P0_MDOR 0x006C1023
+wm 32 MX6_MMDC_P0_MDOTC 0x00333030
+wm 32 MX6_MMDC_P0_MDPDC 0x0002556D
+wm 32 MX6_MMDC_P0_MDASP 0x00000047
+wm 32 MX6_MMDC_P0_MDCTL 0x841A0000
+wm 32 MX6_MMDC_P0_MDSCR 0x04008032
+wm 32 MX6_MMDC_P0_MDSCR 0x00008033
+wm 32 MX6_MMDC_P0_MDSCR 0x00048031
+wm 32 MX6_MMDC_P0_MDSCR 0x13208030
+wm 32 MX6_MMDC_P0_MDSCR 0x04008040
+wm 32 MX6_MMDC_P0_MPZQHWCTRL 0xA1390003
+wm 32 MX6_MMDC_P1_MPZQHWCTRL 0xA1390003
+wm 32 MX6_MMDC_P0_MDREF 0x00007800
+wm 32 MX6_MMDC_P0_MPODTCTRL 0x00022227
+wm 32 MX6_MMDC_P1_MPODTCTRL 0x00022227
+wm 32 MX6_MMDC_P0_MPDGCTRL0 0x42350231
+wm 32 MX6_MMDC_P0_MPDGCTRL1 0x021A0218
+wm 32 MX6_MMDC_P1_MPDGCTRL0 0x42350231
+wm 32 MX6_MMDC_P1_MPDGCTRL1 0x021A0218
+wm 32 MX6_MMDC_P0_MPRDDLCTL 0x4B4B4E49
+wm 32 MX6_MMDC_P1_MPRDDLCTL 0x4B4B4E49
+wm 32 MX6_MMDC_P0_MPWRDLCTL 0x3F3F3035
+wm 32 MX6_MMDC_P1_MPWRDLCTL 0x3F3F3035
+wm 32 MX6_MMDC_P0_MPWLDECTRL0 0x0040003C
+wm 32 MX6_MMDC_P0_MPWLDECTRL1 0x0032003E
+wm 32 MX6_MMDC_P1_MPWLDECTRL0 0x0040003C
+wm 32 MX6_MMDC_P1_MPWLDECTRL1 0x0032003E
+wm 32 MX6_MMDC_P0_MPMUR0 0x00000800
+wm 32 MX6_MMDC_P1_MPMUR0 0x00000800
+wm 32 MX6_MMDC_P0_MDSCR 0x00000000
+wm 32 MX6_MMDC_P0_MAPSR 0x00011006
diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6dl-2g.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6dl-2g.imxcfg
new file mode 100644
index 0000000..6622c51
--- /dev/null
+++ b/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6dl-2g.imxcfg
@@ -0,0 +1,10 @@
+soc imx6
+loadaddr 0x20000000
+dcdofs 0x400
+
+#include <mach/imx6-ddr-regs.h>
+#include <mach/imx6dl-ddr-regs.h>
+#include <mach/imx6-ccm-regs.h>
+
+#include "ram-base.imxcfg"
+#include "800mhz_4x256mx16.imxcfg"
diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6q-2g.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6q-2g.imxcfg
new file mode 100644
index 0000000..89aa21c
--- /dev/null
+++ b/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6q-2g.imxcfg
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
+#include "1066mhz_4x256mx16.imxcfg"
diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/lowlevel.c b/arch/arm/boards/boundarydevices-nitrogen6x/lowlevel.c
index 5371be6..a32e29c 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6x/lowlevel.c
+++ b/arch/arm/boards/boundarydevices-nitrogen6x/lowlevel.c
@@ -17,6 +17,17 @@ ENTRY_FUNCTION(start_imx6q_nitrogen6x_1g, r0, r1, r2)
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
 
+ENTRY_FUNCTION(start_imx6q_nitrogen6x_2g, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6_cpu_lowlevel_init();
+
+	fdt = __dtb_imx6q_nitrogen6x_start - get_runtime_offset();
+
+	barebox_arm_entry(0x10000000, SZ_2G, fdt);
+}
+
 extern char __dtb_imx6dl_nitrogen6x_start[];
 
 ENTRY_FUNCTION(start_imx6dl_nitrogen6x_1g, r0, r1, r2)
@@ -29,3 +40,14 @@ ENTRY_FUNCTION(start_imx6dl_nitrogen6x_1g, r0, r1, r2)
 
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
+
+ENTRY_FUNCTION(start_imx6dl_nitrogen6x_2g, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6_cpu_lowlevel_init();
+
+	fdt = __dtb_imx6dl_nitrogen6x_start - get_runtime_offset();
+
+	barebox_arm_entry(0x10000000, SZ_2G, fdt);
+}
diff --git a/images/Makefile.imx b/images/Makefile.imx
index b6ca6c2..23a3d66 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -155,11 +155,21 @@ CFG_start_imx6q_nitrogen6x_1g.pblx.imximg = $(board)/boundarydevices-nitrogen6x/
 FILE_barebox-boundarydevices-imx6q-nitrogen6x-1g.img = start_imx6q_nitrogen6x_1g.pblx.imximg
 image-$(CONFIG_MACH_NITROGEN6X) += barebox-boundarydevices-imx6q-nitrogen6x-1g.img
 
+pblx-$(CONFIG_MACH_NITROGEN6X) += start_imx6q_nitrogen6x_2g
+CFG_start_imx6q_nitrogen6x_2g.pblx.imximg = $(board)/boundarydevices-nitrogen6x/flash-header-nitrogen6q-2g.imxcfg
+FILE_barebox-boundarydevices-imx6q-nitrogen6x-2g.img = start_imx6q_nitrogen6x_2g.pblx.imximg
+image-$(CONFIG_MACH_NITROGEN6X) += barebox-boundarydevices-imx6q-nitrogen6x-2g.img
+
 pblx-$(CONFIG_MACH_NITROGEN6X) += start_imx6dl_nitrogen6x_1g
 CFG_start_imx6dl_nitrogen6x_1g.pblx.imximg = $(board)/boundarydevices-nitrogen6x/flash-header-nitrogen6dl-1g.imxcfg
 FILE_barebox-boundarydevices-imx6dl-nitrogen6x-1g.img = start_imx6dl_nitrogen6x_1g.pblx.imximg
 image-$(CONFIG_MACH_NITROGEN6X) += barebox-boundarydevices-imx6dl-nitrogen6x-1g.img
 
+pblx-$(CONFIG_MACH_NITROGEN6X) += start_imx6dl_nitrogen6x_2g
+CFG_start_imx6dl_nitrogen6x_2g.pblx.imximg = $(board)/boundarydevices-nitrogen6x/flash-header-nitrogen6dl-2g.imxcfg
+FILE_barebox-boundarydevices-imx6dl-nitrogen6x-2g.img = start_imx6dl_nitrogen6x_2g.pblx.imximg
+image-$(CONFIG_MACH_NITROGEN6X) += barebox-boundarydevices-imx6dl-nitrogen6x-2g.img
+
 pblx-$(CONFIG_MACH_TX6X) += start_imx6dl_tx6x_1g
 CFG_start_imx6dl_tx6x_1g.pblx.imximg = $(board)/karo-tx6x/flash-header-tx6dl-1g.imxcfg
 FILE_barebox-karo-imx6dl-tx6x-1g.img = start_imx6dl_tx6x_1g.pblx.imximg
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
