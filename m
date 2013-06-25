Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrPR9-0000IB-WA
 for barebox@lists.infradead.org; Tue, 25 Jun 2013 09:21:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 25 Jun 2013 11:20:46 +0200
Message-Id: <1372152052-5463-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1372152052-5463-1-git-send-email-s.hauer@pengutronix.de>
References: <1372152052-5463-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/12] Add multi images support
To: barebox@lists.infradead.org

This adds the make infrastructure to build multiple SoC or
board specific images from a single barebox binary.

The basic idea is that we no longer have a single pbl, but instead
multiple pbls, one per image if necessary. Each pbl is defined
by its entry function so that each pbl can do exactly what a given
board needs. Additionally the pbls together with a self extracting
barebox binary can be encapsulated in specific image formats.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile                           |   8 +++
 arch/arm/cpu/Makefile              |   4 +-
 arch/arm/cpu/start-images.c        |  49 +++++++++++++++
 arch/arm/cpu/uncompress.c          | 108 ++++++++++++++++++++++++++++++++
 arch/arm/include/asm/barebox-arm.h |   4 ++
 arch/arm/mach-imx/Kconfig          |   1 +
 images/Makefile                    | 122 +++++++++++++++++++++++++++++++++++++
 pbl/Kconfig                        |  16 +++++
 8 files changed, 311 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/cpu/start-images.c
 create mode 100644 arch/arm/cpu/uncompress.c
 create mode 100644 images/Makefile

diff --git a/Makefile b/Makefile
index 32c46fd..d82e795 100644
--- a/Makefile
+++ b/Makefile
@@ -481,7 +481,14 @@ export KBUILD_BINARY ?= barebox.bin
 barebox-flash-image: $(KBUILD_IMAGE) FORCE
 	$(call if_changed,ln)
 
+images images/%.s: barebox.bin FORCE
+	$(Q)$(MAKE) $(build)=images $@
+
+ifdef CONFIG_PBL_MULTI_IMAGES
+all: $(KBUILD_DTBS) barebox.bin images
+else
 all: barebox-flash-image $(KBUILD_DTBS)
+endif
 
 common-$(CONFIG_PBL_IMAGE)	+= pbl/
 
@@ -987,6 +994,7 @@ clean-dirs      := $(addprefix _clean_,$(srctree) $(barebox-alldirs))
 
 PHONY += $(clean-dirs) clean archclean
 $(clean-dirs):
+	$(Q)$(MAKE) $(clean)=images
 	$(Q)$(MAKE) $(clean)=$(patsubst _clean_%,%,$@)
 
 clean: archclean $(clean-dirs)
diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index c442b35..d99577b 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -21,7 +21,9 @@ obj-$(CONFIG_CPU_32v7) += cache-armv7.o
 pbl-$(CONFIG_CPU_32v7) += cache-armv7.o
 obj-$(CONFIG_CACHE_L2X0) += cache-l2x0.o
 
-pbl-y += start-pbl.o setupc.o
+pbl-y += setupc.o
+pbl-$(CONFIG_PBL_SINGLE_IMAGE) += start-pbl.o
+pbl-$(CONFIG_PBL_MULTI_IMAGES) += start-images.o uncompress.o
 
 obj-y += common.o
 pbl-y += common.o
diff --git a/arch/arm/cpu/start-images.c b/arch/arm/cpu/start-images.c
new file mode 100644
index 0000000..d48d245
--- /dev/null
+++ b/arch/arm/cpu/start-images.c
@@ -0,0 +1,49 @@
+/*
+ * start-pbl.c
+ *
+ * Copyright (c) 2010-2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ * Copyright (c) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+
+#include <common.h>
+#include <init.h>
+#include <sizes.h>
+#include <pbl.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+#include <asm-generic/memory_layout.h>
+#include <asm/sections.h>
+#include <asm/pgtable.h>
+#include <debug_ll.h>
+
+void __naked __noreturn barebox_arm_entry(uint32_t membase, uint32_t memsize,
+		uint32_t boarddata)
+{
+	unsigned long barebox_base;
+	void __noreturn (*barebox)(uint32_t, uint32_t, uint32_t);
+
+	barebox_base = ld_var(__image_end) - get_runtime_offset() + 4;
+
+	if (IS_ENABLED(CONFIG_THUMB2_BAREBOX))
+		barebox = (void *)(barebox_base + 1);
+	else
+		barebox = (void *)barebox_base;
+
+	barebox(membase, memsize, boarddata);
+}
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
new file mode 100644
index 0000000..b401f8e
--- /dev/null
+++ b/arch/arm/cpu/uncompress.c
@@ -0,0 +1,108 @@
+/*
+ * uncompress.c - uncompressor code for self extracing pbl image
+ *
+ * Copyright (c) 2010-2013 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ * Copyright (c) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+
+#include <common.h>
+#include <init.h>
+#include <sizes.h>
+#include <pbl.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+#include <asm-generic/memory_layout.h>
+#include <asm/sections.h>
+#include <asm/pgtable.h>
+#include <asm/cache.h>
+
+#include <debug_ll.h>
+
+#include "mmu-early.h"
+
+unsigned long free_mem_ptr;
+unsigned long free_mem_end_ptr;
+
+static int __attribute__((__used__))
+	__attribute__((__section__(".image_end")))
+	__image_end_dummy = 0xdeadbeef;
+
+static void noinline uncompress(uint32_t membase,
+		uint32_t memsize, uint32_t boarddata)
+{
+	uint32_t offset;
+	uint32_t pg_len;
+	void __noreturn (*barebox)(uint32_t, uint32_t, uint32_t);
+	uint32_t endmem = membase + memsize;
+	unsigned long barebox_base;
+	uint32_t *ptr;
+	void *pg_start;
+
+	endmem -= STACK_SIZE; /* stack */
+
+	if (IS_ENABLED(CONFIG_PBL_RELOCATABLE))
+		relocate_to_current_adr();
+
+	/* Get offset between linked address and runtime address */
+	offset = get_runtime_offset();
+
+	if (IS_ENABLED(CONFIG_RELOCATABLE))
+		barebox_base = arm_barebox_image_place(membase + memsize);
+	else
+		barebox_base = TEXT_BASE;
+
+	setup_c();
+
+	if (IS_ENABLED(CONFIG_MMU_EARLY)) {
+		endmem &= ~0x3fff;
+		endmem -= SZ_16K; /* ttb */
+		mmu_early_enable(membase, memsize, endmem);
+	}
+
+	endmem -= SZ_128K; /* early malloc */
+	free_mem_ptr = endmem;
+	free_mem_end_ptr = free_mem_ptr + SZ_128K;
+
+	ptr = (void *)__image_end;
+	pg_start = ptr + 1;
+	pg_len = *(ptr);
+
+	pbl_barebox_uncompress((void*)barebox_base, pg_start, pg_len);
+
+	arm_early_mmu_cache_flush();
+	flush_icache();
+
+	if (IS_ENABLED(CONFIG_THUMB2_BAREBOX))
+		barebox = (void *)(barebox_base + 1);
+	else
+		barebox = (void *)barebox_base;
+
+	barebox(membase, memsize, boarddata);
+}
+
+/*
+ * Generic second stage pbl uncompressor entry
+ */
+ENTRY_FUNCTION(start_uncompress)(uint32_t membase, uint32_t memsize,
+		uint32_t boarddata)
+{
+	arm_setup_stack(membase + memsize - 16);
+
+	uncompress(membase, memsize, boarddata);
+}
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index cd8decf..226e000 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -77,4 +77,8 @@ static inline unsigned long arm_barebox_image_place(unsigned long endmem)
 	return endmem;
 }
 
+#define ENTRY_FUNCTION(name)  \
+	void __naked __section(.text_head_entry_##name) \
+		name
+
 #endif	/* _BAREBOX_ARM_H_ */
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 644c05e..d58682b 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -67,6 +67,7 @@ config BOARDINFO
 choice
 	prompt "Select boot mode"
 	depends on !ARCH_IMX_INTERNAL_BOOT_USE_IMXIMAGE
+	depends on !HAVE_PBL_MULTI_IMAGES
 	help
 	  i.MX processors support two different boot modes. With the internal
 	  boot mode the boot medium contains a header describing the image to
diff --git a/images/Makefile b/images/Makefile
new file mode 100644
index 0000000..fe1f77d
--- /dev/null
+++ b/images/Makefile
@@ -0,0 +1,122 @@
+#
+# barebox image generation Makefile
+#
+# This Makefile generates multiple images from a common barebox image
+# and different pbl (pre bootloader) images. Optionally the result is
+# encapsulated in SoC (or SoC boot type) specific image formats.
+#
+# The basic idea here is that we generate a single barebox main binary. This
+# is compressed and prepended with a self extractor, generated as barebox.x.
+# barebox.x is then prepended with different board specific pbls. The pbls
+# are generally named after their entrypoints. So a pcm038 specific pbl will
+# generate the following files:
+#
+# start_imx27_pcm038.pbl - The ELF file, linked with the entrypoint start_imx27_pcm038
+# start_imx27_pcm038.pblb - The raw binary of the above.
+# start_imx27_pcm038.pblx - The pblb appended with barebox.x
+# start_imx27_pcm038.pbl.map - The linker map file
+# start_imx27_pcm038.pbl.s - the disassembled ELF, generated with:
+#                            make images/start_imx27_pcm038.pbl.s
+#
+# Example Makefile snippets for the i.MX51 babbage board (for readability in opposite
+# order):
+#
+## image-$(CONFIG_MACH_FREESCALE_MX51_PDK) += barebox-imx51-babbage.img
+#
+# For CONFIG_MACH_FREESCALE_MX51_PDK build barebox-imx51-babbage.img
+#
+## FILE_barebox-imx51-babbage.img = start_imx51_babbage.pblx.imximg
+#
+# barebox-imx51-babbage.img should be generated (copied) from
+# start_imx51_babbage.pblx.imximg. This copy process is only done so that we
+# can generate images with a sane name. So what we really need for this
+# board is a i.MX specific image, a .imximg
+#
+## imximage-$(CONFIG_MACH_FREESCALE_MX51_PDK) += start_imx51_babbage.pblx.imximg
+## CFG_start_imx51_babbage.pblx.imximg = $(board)/freescale-mx51-pdk/flash-header.imxcfg
+#
+# The .imximg can be generated from a .pblx using a rule specified in Makefile.imx.
+# The configfile needed for this image is specified with CFG_<filename> = <configfile>
+#
+## pblx-$(CONFIG_MACH_FREESCALE_MX51_PDK) += start_imx51_babbage
+#
+# For this image we need a pblx (self extracting barebox binary) with
+# start_imx51_babbage as entrypoint. start_imx51_babbage will be used
+# both as entrypoint and as filename
+#
+
+quiet_cmd_objcopy_bin = OBJCOPYB $@
+      cmd_objcopy_bin = $(OBJCOPY) -O binary $(OBJCOPYFLAGS) $(OBJCOPYFLAGS_$(@F)) $< $@
+
+pbl-lds := $(obj)/pbl.lds
+extra-y += $(pbl-lds)
+
+$(pbl-lds): $(obj)/../arch/$(ARCH)/lib/pbl.lds.S FORCE
+	$(call if_changed_dep,cpp_lds_S)
+
+quiet_cmd_elf__ ?= LD      $@
+      cmd_elf__ ?= $(LD) $(LDFLAGS) -static --gc-sections -pie		\
+		-e $(2) -Map $@.map $(LDFLAGS_$(@F)) -o $@		\
+		-T $(pbl-lds)						\
+		--start-group $(barebox-pbl-common) --end-group
+
+PBL_CPPFLAGS	+= -fdata-sections -ffunction-sections
+
+$(obj)/%.pbl: $(pbl-lds) $(barebox-pbl-common) FORCE
+	$(call if_changed,elf__,$(*F))
+
+$(obj)/%.pblb: $(obj)/%.pbl FORCE
+	$(call if_changed,objcopy_bin,$(*F))
+
+quiet_cmd_pblx ?= PBLX    $@
+      cmd_pblx ?= cat $(obj)/$(patsubst %.pblx,%.pblb,$(2)) > $@; \
+		  $(call size_append, $(obj)/barebox.x) >> $@; \
+		  cat $(obj)/barebox.x >> $@
+
+$(obj)/%.pblx: $(obj)/%.pblb $(obj)/barebox.x FORCE
+	$(call if_changed,pblx,$(@F))
+
+$(obj)/%.s: $(obj)/% FORCE
+	$(call if_changed,disasm)
+
+suffix_$(CONFIG_IMAGE_COMPRESSION_GZIP) = gzip
+suffix_$(CONFIG_IMAGE_COMPRESSION_LZO)  = lzo
+suffix_$(CONFIG_IMAGE_COMPRESSION_NONE) = shipped
+
+# barebox.z - compressed barebox binary
+# ----------------------------------------------------------------
+$(obj)/barebox.z: $(obj)/../barebox.bin FORCE
+	$(call if_changed,$(suffix_y))
+
+quiet_cmd_selfextract = COMP    $@
+      cmd_selfextract = cat $(obj)/start_uncompress.pblb > $@; \
+			$(call size_append, $<) >> $@; \
+			cat $< >> $@
+
+pblx-y += start_uncompress
+# barebox.x - self extracting barebox binary
+# ----------------------------------------------------------------
+$(obj)/barebox.x: $(obj)/barebox.z $(obj)/start_uncompress.pblb FORCE
+	$(call if_changed,selfextract)
+
+# %.img - create a copy from another file
+# ----------------------------------------------------------------
+.SECONDEXPANSION:
+$(obj)/%.img: $(obj)/$$(FILE_$$(@F))
+	$(Q)if [ -z $(FILE_$(@F)) ]; then echo "FILE_$(@F) empty!"; false; fi
+	$(call if_changed,shipped)
+
+targets += $(image-y) pbl.lds barebox.x barebox.z
+targets += $(patsubst %,%.pblx,$(pblx-y))
+targets += $(patsubst %,%.pblb,$(pblx-y))
+targets += $(patsubst %,%.pbl,$(pblx-y))
+targets += $(patsubst %,%.s,$(pblx-y))
+targets += $(imximage-y)
+
+SECONDARY: $(addprefix $(obj)/,$(targets))
+
+images: $(addprefix $(obj)/, $(image-y)) FORCE
+	@echo "images built:\n" $(patsubst %,%\\n,$(image-y))
+
+clean-files := *.pbl *.pblb *.pblx *.map start_*.imximg *.img barebox.z
+clean-files += pbl.lds
diff --git a/pbl/Kconfig b/pbl/Kconfig
index 5c7f62e..a37c976 100644
--- a/pbl/Kconfig
+++ b/pbl/Kconfig
@@ -1,6 +1,9 @@
 config HAVE_PBL_IMAGE
 	bool
 
+config HAVE_PBL_MULTI_IMAGES
+	bool
+
 config HAVE_IMAGE_COMPRESSION
 	bool
 
@@ -8,6 +11,19 @@ config PBL_IMAGE
 	bool "Pre-Bootloader image"
 	depends on HAVE_PBL_IMAGE
 
+config PBL_MULTI_IMAGES
+	bool
+	select PBL_IMAGE
+	select PBL_RELOCATABLE
+	depends on HAVE_PBL_MULTI_IMAGES
+	default y
+
+config PBL_SINGLE_IMAGE
+	bool
+	depends on PBL_IMAGE
+	depends on !HAVE_PBL_MULTI_IMAGES
+	default y
+
 config PBL_FORCE_PIGGYDATA_COPY
 	bool
 	help
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
