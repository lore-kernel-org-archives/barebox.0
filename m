Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x230.google.com ([2a00:1450:400c:c03::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzAaP-00017i-Gd
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 20:11:31 +0000
Received: by mail-we0-f176.google.com with SMTP id u56so7586506wes.7
 for <barebox@lists.infradead.org>; Mon, 23 Jun 2014 13:11:07 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Mon, 23 Jun 2014 22:10:57 +0200
Message-Id: <1403554262-12777-7-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 06/11] ARM: mvebu: convert USI Topkick to PBL_MULTI_IMAGES
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This converts Marvell Kirkwood based USI Topkick to
PBL_MULTI_IMAGES.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 arch/arm/boards/usi-topkick/Makefile   |  1 +
 arch/arm/boards/usi-topkick/lowlevel.c | 34 ++++++++++++++++++++++++++++++++++
 arch/arm/dts/Makefile                  |  1 +
 images/Makefile.mvebu                  | 11 +++++++++++
 4 files changed, 47 insertions(+)
 create mode 100644 arch/arm/boards/usi-topkick/lowlevel.c

diff --git a/arch/arm/boards/usi-topkick/Makefile b/arch/arm/boards/usi-topkick/Makefile
index dcfc2937d325..01c7a259e9a5 100644
--- a/arch/arm/boards/usi-topkick/Makefile
+++ b/arch/arm/boards/usi-topkick/Makefile
@@ -1 +1,2 @@
 obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/usi-topkick/lowlevel.c b/arch/arm/boards/usi-topkick/lowlevel.c
new file mode 100644
index 000000000000..df661564dac4
--- /dev/null
+++ b/arch/arm/boards/usi-topkick/lowlevel.c
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
+extern char __dtb_kirkwood_topkick_bb_start[];
+
+ENTRY_FUNCTION(start_usi_topkick, r0, r1, r2)
+{
+	void *fdt;
+
+	arm_cpu_lowlevel_init();
+
+	fdt = __dtb_kirkwood_topkick_bb_start - get_runtime_offset();
+
+	mvebu_barebox_entry(fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index b747c59c460f..1b369100a537 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -82,6 +82,7 @@ pbl-$(CONFIG_MACH_TQMA53) += imx53-mba53.dtb.o
 pbl-$(CONFIG_MACH_TQMA6X) += imx6dl-mba6x.dtb.o imx6q-mba6x.dtb.o
 pbl-$(CONFIG_MACH_TX25) += imx25-karo-tx25.dtb.o
 pbl-$(CONFIG_MACH_UDOO) += imx6q-udoo.dtb.o
+pbl-$(CONFIG_MACH_USI_TOPKICK) += kirkwood-topkick-bb.dtb.o
 pbl-$(CONFIG_MACH_VARISCITE_MX6) += imx6q-var-custom.dtb.o
 
 .SECONDARY: $(obj)/$(BUILTIN_DTB).dtb.S
diff --git a/images/Makefile.mvebu b/images/Makefile.mvebu
index c09a77d1473c..fdc6822bd968 100644
--- a/images/Makefile.mvebu
+++ b/images/Makefile.mvebu
@@ -36,3 +36,14 @@ pblx-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG) += start_globalscale_guruplug
 image-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG) += barebox-globalscale-guruplug.img
 image-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG) += barebox-globalscale-guruplug-uart.img
 image-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG) += barebox-globalscale-guruplug-2nd.img
+
+USI_TOPKICK_KWBOPTS = ${KWBOPTS} -i $(board)/usi-topkick/kwbimage.cfg
+OPTS_start_usi_topkick.pblx.kwbimg = $(USI_TOPKICK_KWBOPTS)
+OPTS_start_usi_topkick.pblx.kwbuartimg = -m uart $(USI_TOPKICK_KWBOPTS)
+FILE_barebox-usi-topkick.img	= start_usi_topkick.pblx.kwbimg
+FILE_barebox-usi-topkick-uart.img = start_usi_topkick.pblx.kwbuartimg
+FILE_barebox-usi-topkick-2nd.img = start_usi_topkick.pblx
+pblx-$(CONFIG_MACH_USI_TOPKICK) += start_usi_topkick
+image-$(CONFIG_MACH_USI_TOPKICK) += barebox-usi-topkick.img
+image-$(CONFIG_MACH_USI_TOPKICK) += barebox-usi-topkick-uart.img
+image-$(CONFIG_MACH_USI_TOPKICK) += barebox-usi-topkick-2nd.img
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
