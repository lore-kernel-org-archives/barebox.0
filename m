Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x230.google.com ([2a00:1450:400c:c00::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzAam-0002aq-Cq
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 20:11:53 +0000
Received: by mail-wg0-f48.google.com with SMTP id n12so6872814wgh.31
 for <barebox@lists.infradead.org>; Mon, 23 Jun 2014 13:11:08 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Mon, 23 Jun 2014 22:11:00 +0200
Message-Id: <1403554262-12777-10-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 09/11] ARM: mvebu: convert PlatHome Openblocks AX3-4 to
 PBL_MULTI_IMAGES
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This converts Marvell Armada XP based PlatHome Openblocks AX3-4
to PBL_MULTI_IMAGES. A DT overlay is added to keep possible
barebox-specific changes separated and added to lowlevel
board init.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 arch/arm/boards/plathome-openblocks-ax3/Makefile   |  1 +
 .../boards/plathome-openblocks-ax3/kwbimage.cfg    |  2 +-
 arch/arm/boards/plathome-openblocks-ax3/lowlevel.c | 35 ++++++++++++++++++++++
 arch/arm/dts/Makefile                              |  1 +
 arch/arm/dts/armada-xp-openblocks-ax3-4-bb.dts     |  8 +++++
 images/Makefile.mvebu                              | 11 +++++++
 6 files changed, 57 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/plathome-openblocks-ax3/lowlevel.c

diff --git a/arch/arm/boards/plathome-openblocks-ax3/Makefile b/arch/arm/boards/plathome-openblocks-ax3/Makefile
index dcfc2937d325..01c7a259e9a5 100644
--- a/arch/arm/boards/plathome-openblocks-ax3/Makefile
+++ b/arch/arm/boards/plathome-openblocks-ax3/Makefile
@@ -1 +1,2 @@
 obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/plathome-openblocks-ax3/kwbimage.cfg b/arch/arm/boards/plathome-openblocks-ax3/kwbimage.cfg
index 69fd1fd1c1cf..1d0571503a7b 100644
--- a/arch/arm/boards/plathome-openblocks-ax3/kwbimage.cfg
+++ b/arch/arm/boards/plathome-openblocks-ax3/kwbimage.cfg
@@ -1,3 +1,3 @@
 VERSION 1
 BOOT_FROM spi
-BINARY plathome-openblocks-ax3-binary.0 0000005b 00000068
+BINARY arch/arm/boards/plathome-openblocks-ax3/binary.0 0000005b 00000068
diff --git a/arch/arm/boards/plathome-openblocks-ax3/lowlevel.c b/arch/arm/boards/plathome-openblocks-ax3/lowlevel.c
new file mode 100644
index 000000000000..721d2de978f9
--- /dev/null
+++ b/arch/arm/boards/plathome-openblocks-ax3/lowlevel.c
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
+extern char __dtb_armada_xp_openblocks_ax3_4_bb_start[];
+
+ENTRY_FUNCTION(start_plathome_openblocks_ax3, r0, r1, r2)
+{
+	void *fdt;
+
+	arm_cpu_lowlevel_init();
+
+	fdt = __dtb_armada_xp_openblocks_ax3_4_bb_start -
+		get_runtime_offset();
+
+	mvebu_barebox_entry(fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index a185afdfe881..f35d9386d6e7 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -70,6 +70,7 @@ pbl-$(CONFIG_MACH_PCAAXL3) += imx6q-phytec-pbaa03.dtb.o
 pbl-$(CONFIG_MACH_PCM038) += imx27-phytec-phycore-rdk.dtb.o
 pbl-$(CONFIG_MACH_PCM051) += am335x-phytec-phycore.dtb.o
 pbl-$(CONFIG_MACH_PHYTEC_PFLA02) += imx6s-phytec-pbab01.dtb.o imx6dl-phytec-pbab01.dtb.o imx6q-phytec-pbab01.dtb.o
+pbl-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += armada-xp-openblocks-ax3-4-bb.dtb.o
 pbl-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
 pbl-$(CONFIG_MACH_REALQ7) += imx6q-dmo-edmqmx6.dtb.o
 pbl-$(CONFIG_MACH_SABRELITE) += imx6q-sabrelite.dtb.o imx6dl-sabrelite.dtb.o
diff --git a/arch/arm/dts/armada-xp-openblocks-ax3-4-bb.dts b/arch/arm/dts/armada-xp-openblocks-ax3-4-bb.dts
index 350aa1cb0a6d..611d72707fa2 100644
--- a/arch/arm/dts/armada-xp-openblocks-ax3-4-bb.dts
+++ b/arch/arm/dts/armada-xp-openblocks-ax3-4-bb.dts
@@ -6,7 +6,15 @@
 #include "arm/armada-xp-openblocks-ax3-4.dts"
 
 / {
+	chosen {
+		stdout-path = "/soc/internal-regs/serial@12000";
+	};
+
 	soc {
+		ranges = <MBUS_ID(0xf0, 0x01) 0 0 0xf1000000 0x100000
+			  MBUS_ID(0x01, 0x1d) 0 0 0xfff00000 0x100000
+			  MBUS_ID(0x01, 0x2f) 0 0 0xf0000000 0x8000000>;
+
 		internal-regs {
 			gpio_leds {
 				red_led {
diff --git a/images/Makefile.mvebu b/images/Makefile.mvebu
index faaf93f331ee..009807d7c29c 100644
--- a/images/Makefile.mvebu
+++ b/images/Makefile.mvebu
@@ -26,6 +26,17 @@ image-$(CONFIG_MACH_GLOBALSCALE_MIRABOX) += barebox-globalscale-mirabox-uart.img
 image-$(CONFIG_MACH_GLOBALSCALE_MIRABOX) += barebox-globalscale-mirabox-2nd.img
 
 # ----------------------- Armada XP based boards ---------------------------
+PLATHOME_OPENBLOCKS_AX3_KWBOPTS = ${KWBOPTS} -i $(board)/plathome-openblocks-ax3/kwbimage.cfg
+OPTS_start_plathome_openblocks_ax3.pblx.kwbimg = $(PLATHOME_OPENBLOCKS_AX3_KWBOPTS)
+OPTS_start_plathome_openblocks_ax3.pblx.kwbuartimg = -m uart $(PLATHOME_OPENBLOCKS_AX3_KWBOPTS)
+FILE_barebox-plathome-openblocks-ax3.img   = start_plathome_openblocks_ax3.pblx.kwbimg
+FILE_barebox-plathome-openblocks-ax3-uart.img = start_plathome_openblocks_ax3.pblx.kwbuartimg
+FILE_barebox-plathome-openblocks-ax3-2nd.img = start_plathome_openblocks_ax3.pblx
+pblx-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += start_plathome_openblocks_ax3
+image-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += barebox-plathome-openblocks-ax3.img
+image-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += barebox-plathome-openblocks-ax3-uart.img
+image-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += barebox-plathome-openblocks-ax3-2nd.img
+
 MARVELL_ARMADA_XP_GP_KWBOPTS = ${KWBOPTS} -i $(board)/marvell-armada-xp-gp/kwbimage.cfg
 OPTS_start_marvell_armada_xp_gp.pblx.kwbimg = $(MARVELL_ARMADA_XP_GP_KWBOPTS)
 OPTS_start_marvell_armada_xp_gp.pblx.kwbuartimg = -m uart $(MARVELL_ARMADA_XP_GP_KWBOPTS)
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
