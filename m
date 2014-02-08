Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x229.google.com ([2a00:1450:4013:c01::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WC7x3-0004Di-Ed
 for barebox@lists.infradead.org; Sat, 08 Feb 2014 13:28:10 +0000
Received: by mail-ea0-f169.google.com with SMTP id h10so2099561eak.0
 for <barebox@lists.infradead.org>; Sat, 08 Feb 2014 05:27:47 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Sat,  8 Feb 2014 14:27:36 +0100
Message-Id: <1391866056-13133-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH RFC] ARM: dove: build multiple pbl images for DT based boards
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

As my limited Makefile skills are now exhausted, I decided to put this
on list instead. Maybe somebody can give valuable hints on how to make
this idea into a smooth, beautiful patch instead.

What I want to achieve is to have a common pbl entry function for all
DT based boards of one SoC. For now, let's just talk about Marvell Dove
here, but on the long run, I'd like to have it also for the other MVEBU
SoCs. Right now, I guess, each SoC will still have its own "DT board"
but it could also end up in one board for all MVEBU SoCs..

Anyway, first of all, I'd summarize status quo from my current
understanding of how it all works.

For pbl images, barebox picks up all that is in $(pbl-y) and links it
up to one .pbl binary. At that point, the entry function and all symbols
(e.g. __dtb_vendor_board_start) have to be known. The entry function is
derived from the .pbl filename, e.g. start_my_board.pbl. The dtb symbol
is generated in dts make process from the dts base name, e.g.
vendor-board.dts for the symbol above.

From the .pbl binary then a .pblb is objcopy'd that strips all unused
symbols. The .bplb is compressed to .pblx and finally passed over to the
SoC specific image generation, e.g. kwbimage.

Now, for having one board file for a set of selectable dtbs, you would
need a single entry function name and also a single symbol to access
the linked dtb at runtime. In the example for Dove below, I have chosen
start_dove_dt for the entry function and __linked_dtb_start for the
required dtb.

In the Makefile diffs below, please ignore the $(my-debug-rule) stuff,
that was for me to get some more debug out of the Makefile process.

First of all, I modified the $(obj)/%.pbl rule to allow to override the
entry function name by checking for an ENTRY_%.pbl variable that will
replace the automatically derived one if present. This is done by a
sub-call to pbl-entry. That modification now allows me to set a common
entry function name for each .pbl generated, i.e. always dove_dt_start.

Also, I added a dependeny for EXTRA_%.pbl to allow to depend on more
files than just the generated pbl.lds and objects that have been in
$(pbl-y).

In Makefile.mvebu, that EXTRA_%.pbl variable will be set for each dtb
passed to build a small, generated C file that will take care of linking
the board specific __dtb_vendor_board_start to __linked_dtb_start. To
link this object to the %.pbl, I abused LDFLAGS_%.pbl but that is just
because I was too lazy to work it in properly now.

Basically, that's it. It works and generates the three Dove specific
boot images by adding the .dtbs and provide a BOARD_%.dtb variable
to translate the dtb name to something nicer for the final images.

Sebastian

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 arch/arm/Makefile                                  |  2 +-
 .../boards/{solidrun-cubox => dove-dt}/Makefile    |  0
 .../arm/boards/{solidrun-cubox => dove-dt}/board.c |  0
 .../boards/{solidrun-cubox => dove-dt}/config.h    |  0
 .../kwbimages/solidrun-cubox.cfg}                  |  0
 .../boards/{solidrun-cubox => dove-dt}/lowlevel.c  |  6 +--
 arch/arm/dts/Makefile                              |  4 +-
 images/Makefile                                    | 13 ++++-
 images/Makefile.mvebu                              | 61 +++++++++++++++++-----
 9 files changed, 66 insertions(+), 20 deletions(-)
 rename arch/arm/boards/{solidrun-cubox => dove-dt}/Makefile (100%)
 rename arch/arm/boards/{solidrun-cubox => dove-dt}/board.c (100%)
 rename arch/arm/boards/{solidrun-cubox => dove-dt}/config.h (100%)
 rename arch/arm/boards/{solidrun-cubox/kwbimage.cfg => dove-dt/kwbimages/solidrun-cubox.cfg} (100%)
 rename arch/arm/boards/{solidrun-cubox => dove-dt}/lowlevel.c (85%)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index fbc648001bae..7856f971783e 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -90,7 +90,7 @@ board-$(CONFIG_MACH_MINI2440)			+= friendlyarm-mini2440
 board-$(CONFIG_MACH_MINI6410)			+= friendlyarm-mini6410
 board-$(CONFIG_MACH_PCM027)			+= pcm027
 board-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3)	+= plathome-openblocks-ax3/
-board-$(CONFIG_MACH_SOLIDRUN_CUBOX)		+= solidrun-cubox
+board-$(CONFIG_ARCH_DOVE)			+= dove-dt
 board-$(CONFIG_MACH_TINY210)			+= friendlyarm-tiny210
 board-$(CONFIG_MACH_TINY6410)			+= friendlyarm-tiny6410
 board-$(CONFIG_MACH_USI_TOPKICK)		+= usi-topkick
diff --git a/arch/arm/boards/solidrun-cubox/Makefile b/arch/arm/boards/dove-dt/Makefile
similarity index 100%
rename from arch/arm/boards/solidrun-cubox/Makefile
rename to arch/arm/boards/dove-dt/Makefile
diff --git a/arch/arm/boards/solidrun-cubox/board.c b/arch/arm/boards/dove-dt/board.c
similarity index 100%
rename from arch/arm/boards/solidrun-cubox/board.c
rename to arch/arm/boards/dove-dt/board.c
diff --git a/arch/arm/boards/solidrun-cubox/config.h b/arch/arm/boards/dove-dt/config.h
similarity index 100%
rename from arch/arm/boards/solidrun-cubox/config.h
rename to arch/arm/boards/dove-dt/config.h
diff --git a/arch/arm/boards/solidrun-cubox/kwbimage.cfg b/arch/arm/boards/dove-dt/kwbimages/solidrun-cubox.cfg
similarity index 100%
rename from arch/arm/boards/solidrun-cubox/kwbimage.cfg
rename to arch/arm/boards/dove-dt/kwbimages/solidrun-cubox.cfg
diff --git a/arch/arm/boards/solidrun-cubox/lowlevel.c b/arch/arm/boards/dove-dt/lowlevel.c
similarity index 85%
rename from arch/arm/boards/solidrun-cubox/lowlevel.c
rename to arch/arm/boards/dove-dt/lowlevel.c
index 1fcecb5b7c44..122bd029c479 100644
--- a/arch/arm/boards/solidrun-cubox/lowlevel.c
+++ b/arch/arm/boards/dove-dt/lowlevel.c
@@ -21,15 +21,15 @@
 #include <asm/barebox-arm-head.h>
 #include <mach/lowlevel.h>
 
-extern char __dtb_dove_cubox_start[];
+extern char __linked_dtb_start[];
 
-ENTRY_FUNCTION(start_solidrun_cubox, r0, r1, r2)
+ENTRY_FUNCTION(start_dove_dt, r0, r1, r2)
 {
 	uint32_t fdt;
 
 	arm_cpu_lowlevel_init();
 
-	fdt = (uint32_t)__dtb_dove_cubox_start - get_runtime_offset();
+	fdt = (uint32_t)__linked_dtb_start - get_runtime_offset();
 
 	mvebu_barebox_entry(fdt);
 }
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index bc314e922185..ee0b59348212 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -35,7 +35,9 @@ pbl-$(CONFIG_MACH_DFI_FS700_M60) += imx6q-dfi-fs700-m60-6q.dtb.o imx6dl-dfi-fs70
 pbl-$(CONFIG_MACH_PCM051) += am335x-phytec-phycore.dtb.o
 pbl-$(CONFIG_MACH_PHYTEC_PFLA02) += imx6q-phytec-pbab01.dtb.o
 pbl-$(CONFIG_MACH_REALQ7) += imx6q-dmo-realq7.dtb.o
-pbl-$(CONFIG_MACH_SOLIDRUN_CUBOX) += dove-cubox.dtb.o
+pbl-$(CONFIG_ARCH_DOVE) += \
+	dove-cubox.dtb.o \
+	dove-d3plug.dtb.o
 pbl-$(CONFIG_MACH_GK802) += imx6q-gk802.dtb.o
 pbl-$(CONFIG_MACH_TORADEX_COLIBRI_T20_IRIS) += tegra20-colibri-iris.dtb.o
 pbl-$(CONFIG_MACH_TOSHIBA_AC100) += tegra20-paz00.dtb.o
diff --git a/images/Makefile b/images/Makefile
index 4ff06025b1b0..78cd8694f7cf 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -61,10 +61,16 @@ quiet_cmd_elf__ ?= LD      $@
 
 PBL_CPPFLAGS	+= -fdata-sections -ffunction-sections
 
-$(obj)/%.pbl: $(pbl-lds) $(barebox-pbl-common) FORCE
-	$(call if_changed,elf__,$(*F))
+my-debug-rule = @echo "\033[0;31m $@ : * = '$*' + = '$+', 1 = $(1) \033[0m"
+
+pbl-entry = $(if $(ENTRY_$(1)),$(ENTRY_$(1)),$(*F))
+.SECONDEXPANSION:
+$(obj)/%.pbl: $$(EXTRA_$$(@F)) $(pbl-lds) $(barebox-pbl-common) FORCE
+	$(call my-debug-rule)
+	$(call if_changed,elf__,$(call pbl-entry,$(@F)))
 
 $(obj)/%.pblb: $(obj)/%.pbl FORCE
+	$(call my-debug-rule)
 	$(call if_changed,objcopy_bin,$(*F))
 
 quiet_cmd_pblx ?= PBLX    $@
@@ -73,9 +79,11 @@ quiet_cmd_pblx ?= PBLX    $@
 		  cat $(obj)/barebox.z >> $@
 
 $(obj)/%.pblx: $(obj)/%.pblb $(obj)/barebox.z FORCE
+	$(call my-debug-rule)
 	$(call if_changed,pblx,$(@F))
 
 $(obj)/%.s: $(obj)/% FORCE
+	$(call my-debug-rule)
 	$(call if_changed,disasm)
 
 suffix_$(CONFIG_IMAGE_COMPRESSION_GZIP) = gzip
@@ -97,6 +105,7 @@ quiet_cmd_selfextract = COMP    $@
 # ----------------------------------------------------------------
 .SECONDEXPANSION:
 $(obj)/%.img: $(obj)/$$(FILE_$$(@F))
+	$(call my-debug-rule)
 	$(Q)if [ -z $(FILE_$(@F)) ]; then echo "FILE_$(@F) empty!"; false; fi
 	$(call if_changed,shipped)
 
diff --git a/images/Makefile.mvebu b/images/Makefile.mvebu
index fe92cc2f5839..12f94bcae995 100644
--- a/images/Makefile.mvebu
+++ b/images/Makefile.mvebu
@@ -11,16 +11,51 @@ $(obj)/%.kwbuartimg: $(obj)/% FORCE
 
 board = $(srctree)/arch/$(ARCH)/boards
 
-# ----------------------- Dove 88AP510 based boards ---------------------------
-SOLIDRUN_CUBOX_KWBOPTS = -c -i $(board)/solidrun-cubox/kwbimage.cfg -d 0x1000000 -e 0x1000000
-pblx-$(CONFIG_MACH_SOLIDRUN_CUBOX) += start_solidrun_cubox
-OPTS_start_solidrun_cubox.pblx.kwbimg = $(SOLIDRUN_CUBOX_KWBOPTS)
-FILE_barebox-solidrun-cubox.img = start_solidrun_cubox.pblx.kwbimg
-image-$(CONFIG_MACH_SOLIDRUN_CUBOX) += barebox-solidrun-cubox.img
-
-OPTS_start_solidrun_cubox.pblx.kwbuartimg = -m uart $(SOLIDRUN_CUBOX_KWBOPTS)
-FILE_barebox-solidrun-cubox-uart.img = start_solidrun_cubox.pblx.kwbuartimg
-image-$(CONFIG_MACH_SOLIDRUN_CUBOX) += barebox-solidrun-cubox-uart.img
-
-FILE_barebox-solidrun-cubox-2nd.img = start_solidrun_cubox.pblx
-image-$(CONFIG_MACH_SOLIDRUN_CUBOX) += barebox-solidrun-cubox-2nd.img
+flatten-dtb-name = $(subst -,_,$(1))
+
+# Generate an C file to assign current board dtb to __linked_dtb_start
+quiet_cmd_link_dtb = LINK_DTB $@
+      cmd_link_dtb = (						\
+	echo 'extern char __dtb_$(2)_start[];';			\
+	echo 'char *__linked_dtb_start = __dtb_$(2)_start;';	\
+      ) > $@
+
+$(obj)/%.linked.dtb.c: FORCE
+	$(call cmd,link_dtb,$(call flatten-dtb-name,$(*F)))
+
+# multipbl:
+#  $(1) = common pbl entry start_$(1)
+#  $(2) = board dtb name $(2).dtb
+#
+define multipbl
+LDFLAGS_start_$(2).pbl := $$(obj)/$(2).linked.dtb.o
+EXTRA_start_$(2).pbl := $$(obj)/$(2).linked.dtb.o
+ENTRY_start_$(2).pbl := start_$(1)
+endef
+
+# dove-multipbl:
+#  $(1) = board dtb name $(1).dtb
+#  $(2) = board base name barebox-$(2)-{2nd,boot,uart}.img
+#
+define dove-multipbl
+$(eval $(call multipbl,dove_dt,$(1)))
+
+OPTS_start_$(1).pblx.kwbimg	= $(DOVE_KWBOPTS) -i $(board)/dove-dt/kwbimages/$(2).cfg
+OPTS_start_$(1).pblx.kwbuartimg	= -m uart $(DOVE_KWBOPTS) -i $(board)/dove-dt/kwbimages/$(2).cfg
+FILE_barebox-$(2)-2nd.img	:= start_$(1).pblx
+FILE_barebox-$(2)-boot.img	:= start_$(1).pblx.kwbimg
+FILE_barebox-$(2)-uart.img	:= start_$(1).pblx.kwbuartimg
+image-y				+= barebox-$(2)-2nd.img
+image-y				+= barebox-$(2)-boot.img
+image-y				+= barebox-$(2)-uart.img
+endef
+
+DOVE_KWBOPTS = -c -d 0x1000000 -e 0x1000000
+
+BOARD_dove-cubox.dtb	= solidrun-cubox
+BOARD_dove-d3plug.dtb	= globalscale-d3plug
+
+dove-multipbl-$(CONFIG_ARCH_DOVE)	+= dove-cubox.dtb
+dove-multipbl-$(CONFIG_ARCH_DOVE)	+= dove-d3plug.dtb
+
+$(foreach m,$(dove-multipbl-y),$(eval $(call dove-multipbl,$(patsubst %.dtb,%,$(m)),$$(BOARD_$(m)))))
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
