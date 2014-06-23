Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22b.google.com ([2a00:1450:400c:c05::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzAaV-00017u-UH
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 20:11:38 +0000
Received: by mail-wi0-f171.google.com with SMTP id n15so4814119wiw.10
 for <barebox@lists.infradead.org>; Mon, 23 Jun 2014 13:11:07 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Mon, 23 Jun 2014 22:10:58 +0200
Message-Id: <1403554262-12777-8-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1403554262-12777-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1403554262-12777-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 07/11] ARM: mvebu: convert Globalscale Mirabox to
 PBL_MULTI_IMAGES
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This converts Marvell Armada 370 based Globalscale Mirabox
to PBL_MULTI_IMAGES. A DT overlay is added to keep possible
barebox-specific changes separated and added to lowlevel
board init.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 arch/arm/boards/globalscale-mirabox/Makefile     |  1 +
 arch/arm/boards/globalscale-mirabox/kwbimage.cfg |  2 +-
 arch/arm/boards/globalscale-mirabox/lowlevel.c   | 35 ++++++++++++++++++++++++
 arch/arm/dts/Makefile                            |  1 +
 arch/arm/dts/armada-370-mirabox-bb.dts           |  7 +++++
 images/Makefile.mvebu                            | 12 ++++++++
 6 files changed, 57 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/globalscale-mirabox/lowlevel.c

diff --git a/arch/arm/boards/globalscale-mirabox/Makefile b/arch/arm/boards/globalscale-mirabox/Makefile
index dcfc2937d325..01c7a259e9a5 100644
--- a/arch/arm/boards/globalscale-mirabox/Makefile
+++ b/arch/arm/boards/globalscale-mirabox/Makefile
@@ -1 +1,2 @@
 obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/globalscale-mirabox/kwbimage.cfg b/arch/arm/boards/globalscale-mirabox/kwbimage.cfg
index 72283d9b69f2..16fb77c31f18 100644
--- a/arch/arm/boards/globalscale-mirabox/kwbimage.cfg
+++ b/arch/arm/boards/globalscale-mirabox/kwbimage.cfg
@@ -2,4 +2,4 @@ VERSION 1
 BOOT_FROM nand
 NAND_BLKSZ 00020000
 NAND_BADBLK_LOCATION 01
-BINARY globalscale-mirabox-binary.0 0000005b 00000068
+BINARY arch/arm/boards/globalscale-mirabox/binary.0 0000005b 00000068
diff --git a/arch/arm/boards/globalscale-mirabox/lowlevel.c b/arch/arm/boards/globalscale-mirabox/lowlevel.c
new file mode 100644
index 000000000000..92203b768ab6
--- /dev/null
+++ b/arch/arm/boards/globalscale-mirabox/lowlevel.c
@@ -0,0 +1,35 @@
+/*
+ * Copyright (C) 2014
+ *  Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
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
+
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+#include <mach/lowlevel.h>
+
+extern char __dtb_armada_370_mirabox_bb_start[];
+
+ENTRY_FUNCTION(start_globalscale_mirabox, r0, r1, r2)
+{
+	void *fdt;
+
+	arm_cpu_lowlevel_init();
+
+	fdt = __dtb_armada_370_mirabox_bb_start -
+		get_runtime_offset();
+
+	mvebu_barebox_entry(fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 1b369100a537..c5a782befd07 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -59,6 +59,7 @@ pbl-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += imx53-qsb.dtb.o imx53-qsrb.dtb.o
 pbl-$(CONFIG_MACH_FREESCALE_MX53_VMX53) += imx53-voipac-bsb.dtb.o
 pbl-$(CONFIG_MACH_GK802) += imx6q-gk802.dtb.o
 pbl-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG) += kirkwood-guruplug-server-plus-bb.dtb.o
+pbl-$(CONFIG_MACH_GLOBALSCALE_MIRABOX) += armada-370-mirabox-bb.dtb.o
 pbl-$(CONFIG_MACH_GUF_SANTARO) += imx6q-guf-santaro.dtb.o
 pbl-$(CONFIG_MACH_NITROGEN6X) += imx6q-nitrogen6x.dtb.o imx6dl-nitrogen6x.dtb.o
 pbl-$(CONFIG_MACH_NVIDIA_BEAVER) += tegra30-beaver.dtb.o
diff --git a/arch/arm/dts/armada-370-mirabox-bb.dts b/arch/arm/dts/armada-370-mirabox-bb.dts
index 22fec18aaf93..de37a75bb960 100644
--- a/arch/arm/dts/armada-370-mirabox-bb.dts
+++ b/arch/arm/dts/armada-370-mirabox-bb.dts
@@ -6,7 +6,14 @@
 #include "arm/armada-370-mirabox.dts"
 
 / {
+	chosen {
+		stdout-path = "/soc/internal-regs/serial@12000";
+	};
+
 	soc {
+		ranges = <MBUS_ID(0xf0, 0x01) 0 0xf1000000 0x100000
+			  MBUS_ID(0x01, 0xe0) 0 0xfff00000 0x100000>;
+
 		internal-regs {
 			gpio_leds {
 				green_pwr_led {
diff --git a/images/Makefile.mvebu b/images/Makefile.mvebu
index fdc6822bd968..3b89f36fa610 100644
--- a/images/Makefile.mvebu
+++ b/images/Makefile.mvebu
@@ -13,6 +13,18 @@ board = $(srctree)/arch/$(ARCH)/boards
 
 KWBOPTS = -c -d 0x1000000 -e 0x1000000
 
+# ----------------------- Armada 370 based boards ---------------------------
+GLOBALSCALE_MIRABOX_KWBOPTS = ${KWBOPTS} -i $(board)/globalscale-mirabox/kwbimage.cfg
+OPTS_start_globalscale_mirabox.pblx.kwbimg = $(GLOBALSCALE_MIRABOX_KWBOPTS)
+OPTS_start_globalscale_mirabox.pblx.kwbuartimg = -m uart $(GLOBALSCALE_MIRABOX_KWBOPTS)
+FILE_barebox-globalscale-mirabox.img	= start_globalscale_mirabox.pblx.kwbimg
+FILE_barebox-globalscale-mirabox-uart.img = start_globalscale_mirabox.pblx.kwbuartimg
+FILE_barebox-globalscale-mirabox-2nd.img = start_globalscale_mirabox.pblx
+pblx-$(CONFIG_MACH_GLOBALSCALE_MIRABOX) += start_globalscale_mirabox
+image-$(CONFIG_MACH_GLOBALSCALE_MIRABOX) += barebox-globalscale-mirabox.img
+image-$(CONFIG_MACH_GLOBALSCALE_MIRABOX) += barebox-globalscale-mirabox-uart.img
+image-$(CONFIG_MACH_GLOBALSCALE_MIRABOX) += barebox-globalscale-mirabox-2nd.img
+
 # ----------------------- Dove 88AP510 based boards ---------------------------
 SOLIDRUN_CUBOX_KWBOPTS = ${KWBOPTS} -i $(board)/solidrun-cubox/kwbimage.cfg
 OPTS_start_solidrun_cubox.pblx.kwbimg = $(SOLIDRUN_CUBOX_KWBOPTS)
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
