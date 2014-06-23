Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x232.google.com ([2a00:1450:400c:c05::232])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzAak-0003Dr-Pw
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 20:11:51 +0000
Received: by mail-wi0-f178.google.com with SMTP id n15so4814439wiw.11
 for <barebox@lists.infradead.org>; Mon, 23 Jun 2014 13:11:08 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Mon, 23 Jun 2014 22:10:59 +0200
Message-Id: <1403554262-12777-9-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 08/11] ARM: mvebu: convert Marvell Armada XP GP to
 PBL_MULTI_IMAGES
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This converts Marvell Armada XP based Marvell Armada XP GP
to PBL_MULTI_IMAGES. A DT overlay is added to keep possible
barebox-specific changes separated and added to lowlevel
board init.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 arch/arm/boards/marvell-armada-xp-gp/Makefile     |  1 +
 arch/arm/boards/marvell-armada-xp-gp/kwbimage.cfg |  2 +-
 arch/arm/boards/marvell-armada-xp-gp/lowlevel.c   | 34 +++++++++++++++++++++++
 arch/arm/dts/Makefile                             |  1 +
 arch/arm/dts/armada-xp-gp-bb.dts                  |  6 ++++
 images/Makefile.mvebu                             | 12 ++++++++
 6 files changed, 55 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/marvell-armada-xp-gp/lowlevel.c

diff --git a/arch/arm/boards/marvell-armada-xp-gp/Makefile b/arch/arm/boards/marvell-armada-xp-gp/Makefile
index dcfc2937d325..01c7a259e9a5 100644
--- a/arch/arm/boards/marvell-armada-xp-gp/Makefile
+++ b/arch/arm/boards/marvell-armada-xp-gp/Makefile
@@ -1 +1,2 @@
 obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/marvell-armada-xp-gp/kwbimage.cfg b/arch/arm/boards/marvell-armada-xp-gp/kwbimage.cfg
index db75969fe0cb..3f66aa080edb 100644
--- a/arch/arm/boards/marvell-armada-xp-gp/kwbimage.cfg
+++ b/arch/arm/boards/marvell-armada-xp-gp/kwbimage.cfg
@@ -1,3 +1,3 @@
 VERSION 1
 BOOT_FROM spi
-BINARY marvell-armada-xp-gp-binary.0 0000005b 00000068
+BINARY arch/arm/boards/marvell-armada-xp-gp/binary.0 0000005b 00000068
diff --git a/arch/arm/boards/marvell-armada-xp-gp/lowlevel.c b/arch/arm/boards/marvell-armada-xp-gp/lowlevel.c
new file mode 100644
index 000000000000..046057f56ab1
--- /dev/null
+++ b/arch/arm/boards/marvell-armada-xp-gp/lowlevel.c
@@ -0,0 +1,34 @@
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
+extern char __dtb_armada_xp_gp_bb_start[];
+
+ENTRY_FUNCTION(start_marvell_armada_xp_gp, r0, r1, r2)
+{
+	void *fdt;
+
+	arm_cpu_lowlevel_init();
+
+	fdt = __dtb_armada_xp_gp_bb_start - get_runtime_offset();
+
+	mvebu_barebox_entry(fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index c5a782befd07..a185afdfe881 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -61,6 +61,7 @@ pbl-$(CONFIG_MACH_GK802) += imx6q-gk802.dtb.o
 pbl-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG) += kirkwood-guruplug-server-plus-bb.dtb.o
 pbl-$(CONFIG_MACH_GLOBALSCALE_MIRABOX) += armada-370-mirabox-bb.dtb.o
 pbl-$(CONFIG_MACH_GUF_SANTARO) += imx6q-guf-santaro.dtb.o
+pbl-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP) += armada-xp-gp-bb.dtb.o
 pbl-$(CONFIG_MACH_NITROGEN6X) += imx6q-nitrogen6x.dtb.o imx6dl-nitrogen6x.dtb.o
 pbl-$(CONFIG_MACH_NVIDIA_BEAVER) += tegra30-beaver.dtb.o
 pbl-$(CONFIG_MACH_NVIDIA_JETSON) += tegra124-jetson-tk1.dtb.o
diff --git a/arch/arm/dts/armada-xp-gp-bb.dts b/arch/arm/dts/armada-xp-gp-bb.dts
index e27a9664451d..3836016425b9 100644
--- a/arch/arm/dts/armada-xp-gp-bb.dts
+++ b/arch/arm/dts/armada-xp-gp-bb.dts
@@ -4,3 +4,9 @@
  */
 
 #include "arm/armada-xp-gp.dts"
+
+/ {
+	chosen {
+		stdout-path = "/soc/internal-regs/serial@12000";
+	};
+};
diff --git a/images/Makefile.mvebu b/images/Makefile.mvebu
index 3b89f36fa610..faaf93f331ee 100644
--- a/images/Makefile.mvebu
+++ b/images/Makefile.mvebu
@@ -25,6 +25,18 @@ image-$(CONFIG_MACH_GLOBALSCALE_MIRABOX) += barebox-globalscale-mirabox.img
 image-$(CONFIG_MACH_GLOBALSCALE_MIRABOX) += barebox-globalscale-mirabox-uart.img
 image-$(CONFIG_MACH_GLOBALSCALE_MIRABOX) += barebox-globalscale-mirabox-2nd.img
 
+# ----------------------- Armada XP based boards ---------------------------
+MARVELL_ARMADA_XP_GP_KWBOPTS = ${KWBOPTS} -i $(board)/marvell-armada-xp-gp/kwbimage.cfg
+OPTS_start_marvell_armada_xp_gp.pblx.kwbimg = $(MARVELL_ARMADA_XP_GP_KWBOPTS)
+OPTS_start_marvell_armada_xp_gp.pblx.kwbuartimg = -m uart $(MARVELL_ARMADA_XP_GP_KWBOPTS)
+FILE_barebox-marvell-armada-xp-gp.img   = start_marvell_armada_xp_gp.pblx.kwbimg
+FILE_barebox-marvell-armada-xp-gp-uart.img = start_marvell_armada_xp_gp.pblx.kwbuartimg
+FILE_barebox-marvell-armada-xp-gp-2nd.img = start_marvell_armada_xp_gp.pblx
+pblx-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP) += start_marvell_armada_xp_gp
+image-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP) += barebox-marvell-armada-xp-gp.img
+image-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP) += barebox-marvell-armada-xp-gp-uart.img
+image-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP) += barebox-marvell-armada-xp-gp-2nd.img
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
