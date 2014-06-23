Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22c.google.com ([2a00:1450:400c:c00::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzAaR-000187-SD
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 20:11:33 +0000
Received: by mail-wg0-f44.google.com with SMTP id x13so6924549wgg.3
 for <barebox@lists.infradead.org>; Mon, 23 Jun 2014 13:11:08 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Mon, 23 Jun 2014 22:10:56 +0200
Message-Id: <1403554262-12777-6-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 05/11] ARM: mvebu: convert Globalscale Guruplug to
 PBL_MULTI_IMAGES
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This converts Marvell Kirkwood based Globalscale Guruplug to
PBL_MULTI_IMAGES.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 arch/arm/boards/globalscale-guruplug/Makefile   |  1 +
 arch/arm/boards/globalscale-guruplug/lowlevel.c | 35 +++++++++++++++++++++++++
 arch/arm/dts/Makefile                           |  1 +
 images/Makefile.mvebu                           | 12 +++++++++
 4 files changed, 49 insertions(+)
 create mode 100644 arch/arm/boards/globalscale-guruplug/lowlevel.c

diff --git a/arch/arm/boards/globalscale-guruplug/Makefile b/arch/arm/boards/globalscale-guruplug/Makefile
index dcfc2937d325..01c7a259e9a5 100644
--- a/arch/arm/boards/globalscale-guruplug/Makefile
+++ b/arch/arm/boards/globalscale-guruplug/Makefile
@@ -1 +1,2 @@
 obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/globalscale-guruplug/lowlevel.c b/arch/arm/boards/globalscale-guruplug/lowlevel.c
new file mode 100644
index 000000000000..508746a06f81
--- /dev/null
+++ b/arch/arm/boards/globalscale-guruplug/lowlevel.c
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
+extern char __dtb_kirkwood_guruplug_server_plus_bb_start[];
+
+ENTRY_FUNCTION(start_globalscale_guruplug, r0, r1, r2)
+{
+	void *fdt;
+
+	arm_cpu_lowlevel_init();
+
+	fdt = __dtb_kirkwood_guruplug_server_plus_bb_start -
+		get_runtime_offset();
+
+	mvebu_barebox_entry(fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 4642f979f6d5..b747c59c460f 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -58,6 +58,7 @@ pbl-$(CONFIG_MACH_FREESCALE_MX51_PDK) += imx51-babbage.dtb.o
 pbl-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += imx53-qsb.dtb.o imx53-qsrb.dtb.o
 pbl-$(CONFIG_MACH_FREESCALE_MX53_VMX53) += imx53-voipac-bsb.dtb.o
 pbl-$(CONFIG_MACH_GK802) += imx6q-gk802.dtb.o
+pbl-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG) += kirkwood-guruplug-server-plus-bb.dtb.o
 pbl-$(CONFIG_MACH_GUF_SANTARO) += imx6q-guf-santaro.dtb.o
 pbl-$(CONFIG_MACH_NITROGEN6X) += imx6q-nitrogen6x.dtb.o imx6dl-nitrogen6x.dtb.o
 pbl-$(CONFIG_MACH_NVIDIA_BEAVER) += tegra30-beaver.dtb.o
diff --git a/images/Makefile.mvebu b/images/Makefile.mvebu
index 8559556e203c..c09a77d1473c 100644
--- a/images/Makefile.mvebu
+++ b/images/Makefile.mvebu
@@ -24,3 +24,15 @@ pblx-$(CONFIG_MACH_SOLIDRUN_CUBOX) += start_solidrun_cubox
 image-$(CONFIG_MACH_SOLIDRUN_CUBOX) += barebox-solidrun-cubox.img
 image-$(CONFIG_MACH_SOLIDRUN_CUBOX) += barebox-solidrun-cubox-uart.img
 image-$(CONFIG_MACH_SOLIDRUN_CUBOX) += barebox-solidrun-cubox-2nd.img
+
+# ----------------------- Kirkwood based boards ---------------------------
+GLOBALSCALE_GURUPLUG_KWBOPTS = ${KWBOPTS} -i $(board)/globalscale-guruplug/kwbimage.cfg
+OPTS_start_globalscale_guruplug.pblx.kwbimg = $(GLOBALSCALE_GURUPLUG_KWBOPTS)
+OPTS_start_globalscale_guruplug.pblx.kwbuartimg = -m uart $(GLOBALSCALE_GURUPLUG_KWBOPTS)
+FILE_barebox-globalscale-guruplug.img	= start_globalscale_guruplug.pblx.kwbimg
+FILE_barebox-globalscale-guruplug-uart.img = start_globalscale_guruplug.pblx.kwbuartimg
+FILE_barebox-globalscale-guruplug-2nd.img = start_globalscale_guruplug.pblx
+pblx-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG) += start_globalscale_guruplug
+image-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG) += barebox-globalscale-guruplug.img
+image-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG) += barebox-globalscale-guruplug-uart.img
+image-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG) += barebox-globalscale-guruplug-2nd.img
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
