Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V9903-0008BO-6F
 for barebox@lists.infradead.org; Tue, 13 Aug 2013 07:26:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 13 Aug 2013 09:26:09 +0200
Message-Id: <1376378772-25649-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1376378772-25649-1-git-send-email-s.hauer@pengutronix.de>
References: <1376378772-25649-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/6] ARM: mvebu: introduce multi image support
To: barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/solidrun-cubox/Makefile     |  1 +
 arch/arm/boards/solidrun-cubox/lowlevel.c   | 37 +++++++++++++++++++++++++++++
 arch/arm/configs/solidrun_cubox_defconfig   |  6 ++++-
 arch/arm/dts/Makefile                       |  1 +
 arch/arm/mach-mvebu/Kconfig                 |  1 +
 arch/arm/mach-mvebu/Makefile                |  2 +-
 arch/arm/mach-mvebu/common.c                |  4 ++--
 arch/arm/mach-mvebu/include/mach/lowlevel.h |  2 +-
 arch/arm/mach-mvebu/lowlevel.c              |  2 +-
 images/.gitignore                           |  2 ++
 images/Makefile                             |  4 +++-
 images/Makefile.mvebu                       | 26 ++++++++++++++++++++
 scripts/Makefile.lib                        |  3 +++
 13 files changed, 84 insertions(+), 7 deletions(-)
 create mode 100644 arch/arm/boards/solidrun-cubox/lowlevel.c
 create mode 100644 images/Makefile.mvebu

diff --git a/arch/arm/boards/solidrun-cubox/Makefile b/arch/arm/boards/solidrun-cubox/Makefile
index dcfc293..01c7a25 100644
--- a/arch/arm/boards/solidrun-cubox/Makefile
+++ b/arch/arm/boards/solidrun-cubox/Makefile
@@ -1 +1,2 @@
 obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/solidrun-cubox/lowlevel.c b/arch/arm/boards/solidrun-cubox/lowlevel.c
new file mode 100644
index 0000000..fdf5a7e
--- /dev/null
+++ b/arch/arm/boards/solidrun-cubox/lowlevel.c
@@ -0,0 +1,37 @@
+/*
+ * Copyright (C) 2013
+ *  Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
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
+extern char __dtb_dove_cubox_start[];
+
+ENTRY_FUNCTION(start_solidrun_cubox)(void)
+{
+	uint32_t fdt;
+
+	__barebox_arm_head();
+
+	arm_cpu_lowlevel_init();
+
+	fdt = (uint32_t)__dtb_dove_cubox_start - get_runtime_offset();
+
+	mvebu_barebox_entry(fdt);
+}
diff --git a/arch/arm/configs/solidrun_cubox_defconfig b/arch/arm/configs/solidrun_cubox_defconfig
index 61195ae..40f5c0d 100644
--- a/arch/arm/configs/solidrun_cubox_defconfig
+++ b/arch/arm/configs/solidrun_cubox_defconfig
@@ -5,11 +5,15 @@ CONFIG_ARCH_DOVE=y
 CONFIG_AEABI=y
 CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_UNWIND=y
+CONFIG_MALLOC_TLSF=y
+CONFIG_KALLSYMS=y
+CONFIG_RELOCATABLE=y
 CONFIG_LONGHELP=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_DEBUG_LL=y
 CONFIG_CONSOLE_ACTIVATE_NONE=y
+CONFIG_DEBUG_LL=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_MSLEEP=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 77645ff..fb4aa0b 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -18,6 +18,7 @@ pbl-$(CONFIG_MACH_FREESCALE_MX51_PDK) += imx51-babbage.dtb.o
 pbl-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += imx53-qsb.dtb.o
 pbl-$(CONFIG_MACH_PHYTEC_PFLA02) += imx6q-phytec-pbab01.dtb.o
 pbl-$(CONFIG_MACH_REALQ7) += imx6q-dmo-realq7.dtb.o
+pbl-$(CONFIG_MACH_SOLIDRUN_CUBOX) += dove-cubox.dtb.o
 pbl-$(CONFIG_MACH_GK802) += imx6q-gk802.dtb.o
 pbl-$(CONFIG_MACH_TQMA6X) += imx6dl-mba6x.dtb.o imx6q-mba6x.dtb.o
 
diff --git a/arch/arm/mach-mvebu/Kconfig b/arch/arm/mach-mvebu/Kconfig
index 3c38642..8bb2ead 100644
--- a/arch/arm/mach-mvebu/Kconfig
+++ b/arch/arm/mach-mvebu/Kconfig
@@ -88,6 +88,7 @@ choice
 
 config MACH_SOLIDRUN_CUBOX
 	bool "SolidRun CuBox"
+	select HAVE_PBL_MULTI_IMAGES
 
 endchoice
 
diff --git a/arch/arm/mach-mvebu/Makefile b/arch/arm/mach-mvebu/Makefile
index 80b3947..6e30366 100644
--- a/arch/arm/mach-mvebu/Makefile
+++ b/arch/arm/mach-mvebu/Makefile
@@ -1,5 +1,5 @@
 lwl-y				+= lowlevel.o
-obj-y				+= common.o
+lwl-y				+= common.o
 obj-$(CONFIG_ARCH_ARMADA_370)	+= armada-370-xp.o
 obj-$(CONFIG_ARCH_ARMADA_XP)	+= armada-370-xp.o
 obj-$(CONFIG_ARCH_DOVE)		+= dove.o
diff --git a/arch/arm/mach-mvebu/common.c b/arch/arm/mach-mvebu/common.c
index e2092c8..921b515 100644
--- a/arch/arm/mach-mvebu/common.c
+++ b/arch/arm/mach-mvebu/common.c
@@ -49,9 +49,9 @@ static void mvebu_remap_registers(void)
 #define MVEBU_BOOTUP_MEMORY_BASE	0x00000000
 #define MVEBU_BOOTUP_MEMORY_SIZE	SZ_64M
 
-void __naked __noreturn mvebu_barebox_entry(void)
+void __naked __noreturn mvebu_barebox_entry(uint32_t boarddata)
 {
 	mvebu_remap_registers();
 	barebox_arm_entry(MVEBU_BOOTUP_MEMORY_BASE,
-			  MVEBU_BOOTUP_MEMORY_SIZE, 0);
+			  MVEBU_BOOTUP_MEMORY_SIZE, boarddata);
 }
diff --git a/arch/arm/mach-mvebu/include/mach/lowlevel.h b/arch/arm/mach-mvebu/include/mach/lowlevel.h
index e86d928..9fbf1ea 100644
--- a/arch/arm/mach-mvebu/include/mach/lowlevel.h
+++ b/arch/arm/mach-mvebu/include/mach/lowlevel.h
@@ -18,6 +18,6 @@
 #ifndef __MACH_LOWLEVEL_H__
 #define __MACH_LOWLEVEL_H__
 
-void mvebu_barebox_entry(void);
+void mvebu_barebox_entry(uint32_t boarddata);
 
 #endif
diff --git a/arch/arm/mach-mvebu/lowlevel.c b/arch/arm/mach-mvebu/lowlevel.c
index 3f64c4a..11810cc 100644
--- a/arch/arm/mach-mvebu/lowlevel.c
+++ b/arch/arm/mach-mvebu/lowlevel.c
@@ -24,5 +24,5 @@
 void __naked barebox_arm_reset_vector(void)
 {
 	arm_cpu_lowlevel_init();
-	mvebu_barebox_entry();
+	mvebu_barebox_entry(0);
 }
diff --git a/images/.gitignore b/images/.gitignore
index b15d560..9cc1728 100644
--- a/images/.gitignore
+++ b/images/.gitignore
@@ -5,6 +5,8 @@
 *.imximg
 *.map
 *.src
+*.kwbimg
+*.kwbuartimg
 pbl.lds
 barebox.x
 barebox.z
diff --git a/images/Makefile b/images/Makefile
index 65c533a..f17e699 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -108,6 +108,7 @@ $(obj)/%.img: $(obj)/$$(FILE_$$(@F))
 	$(call if_changed,shipped)
 
 include $(srctree)/images/Makefile.imx
+include $(srctree)/images/Makefile.mvebu
 
 targets += $(image-y) pbl.lds barebox.x barebox.z
 targets += $(patsubst %,%.pblx,$(pblx-y))
@@ -121,5 +122,6 @@ SECONDARY: $(addprefix $(obj)/,$(targets))
 images: $(addprefix $(obj)/, $(image-y)) FORCE
 	@echo "images built:\n" $(patsubst %,%\\n,$(image-y))
 
-clean-files := *.pbl *.pblb *.pblx *.map start_*.imximg *.img barebox.z
+clean-files := *.pbl *.pblb *.pblx *.map start_*.imximg *.img barebox.z start_*.kwbimg \
+	start_*.kwbuartimg
 clean-files += pbl.lds
diff --git a/images/Makefile.mvebu b/images/Makefile.mvebu
new file mode 100644
index 0000000..fe92cc2
--- /dev/null
+++ b/images/Makefile.mvebu
@@ -0,0 +1,26 @@
+#
+# barebox image generation Makefile for Marvell mvebu
+#
+
+# %.kwbimg - convert into kwb image
+# ----------------------------------------------------------------
+$(obj)/%.kwbimg: $(obj)/% FORCE
+	$(call if_changed,kwb_image)
+$(obj)/%.kwbuartimg: $(obj)/% FORCE
+	$(call if_changed,kwb_image)
+
+board = $(srctree)/arch/$(ARCH)/boards
+
+# ----------------------- Dove 88AP510 based boards ---------------------------
+SOLIDRUN_CUBOX_KWBOPTS = -c -i $(board)/solidrun-cubox/kwbimage.cfg -d 0x1000000 -e 0x1000000
+pblx-$(CONFIG_MACH_SOLIDRUN_CUBOX) += start_solidrun_cubox
+OPTS_start_solidrun_cubox.pblx.kwbimg = $(SOLIDRUN_CUBOX_KWBOPTS)
+FILE_barebox-solidrun-cubox.img = start_solidrun_cubox.pblx.kwbimg
+image-$(CONFIG_MACH_SOLIDRUN_CUBOX) += barebox-solidrun-cubox.img
+
+OPTS_start_solidrun_cubox.pblx.kwbuartimg = -m uart $(SOLIDRUN_CUBOX_KWBOPTS)
+FILE_barebox-solidrun-cubox-uart.img = start_solidrun_cubox.pblx.kwbuartimg
+image-$(CONFIG_MACH_SOLIDRUN_CUBOX) += barebox-solidrun-cubox-uart.img
+
+FILE_barebox-solidrun-cubox-2nd.img = start_solidrun_cubox.pblx
+image-$(CONFIG_MACH_SOLIDRUN_CUBOX) += barebox-solidrun-cubox-2nd.img
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 4f34b54..3ff094f 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -343,3 +343,6 @@ imximg-tmp = $(subst $(comma),_,$(dot-target).imxcfg.tmp)
 quiet_cmd_imx_image = IMX-IMG $@
       cmd_imx_image = $(CPP) $(imxcfg_cpp_flags) -o $(imximg-tmp) $(CFG_$(@F)) ; \
 		      $(objtree)/scripts/imx/imx-image -o $@ -b -c $(imximg-tmp) -f $<
+
+quiet_cmd_kwb_image = KWB     $@
+      cmd_kwb_image = scripts/kwbimage -p $< $(OPTS_$(@F)) -o $@
-- 
1.8.4.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
