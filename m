Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9lQ6-00070h-13
 for barebox@lists.infradead.org; Mon, 16 Sep 2019 07:27:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Sep 2019 09:27:20 +0200
Message-Id: <20190916072721.12392-6-s.hauer@pengutronix.de>
In-Reply-To: <20190916072721.12392-1-s.hauer@pengutronix.de>
References: <20190916072721.12392-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/6] ARM: remove now unused PBL code
To: Barebox List <barebox@lists.infradead.org>

Single PBL is now built as part of the multi PBL images, so drop the now
unused single PBL code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile              |  8 -----
 arch/arm/pbl/.gitignore        |  9 -----
 arch/arm/pbl/Makefile          | 61 ----------------------------------
 arch/arm/pbl/piggy.comp_copy.S |  6 ----
 arch/arm/pbl/piggy.gzip.S      |  6 ----
 arch/arm/pbl/piggy.lz4.S       |  6 ----
 arch/arm/pbl/piggy.lzo.S       |  6 ----
 arch/arm/pbl/piggy.xzkern.S    |  6 ----
 8 files changed, 108 deletions(-)
 delete mode 100644 arch/arm/pbl/.gitignore
 delete mode 100644 arch/arm/pbl/Makefile
 delete mode 100644 arch/arm/pbl/piggy.comp_copy.S
 delete mode 100644 arch/arm/pbl/piggy.gzip.S
 delete mode 100644 arch/arm/pbl/piggy.lz4.S
 delete mode 100644 arch/arm/pbl/piggy.lzo.S
 delete mode 100644 arch/arm/pbl/piggy.xzkern.S

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index cbf3d310db..13e8cee286 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -147,11 +147,7 @@ else
 LDFLAGS_barebox += -static
 endif
 
-ifdef CONFIG_IMAGE_COMPRESSION
-KBUILD_BINARY := arch/arm/pbl/zbarebox.bin
-else
 KBUILD_BINARY := barebox.bin
-endif
 
 barebox.s5p: $(KBUILD_BINARY)
 	$(Q)scripts/s5p_cksum $< barebox.s5p
@@ -254,10 +250,6 @@ CFG_barebox.imximg := $(imxcfg-y)
 KBUILD_IMAGE  := barebox.imximg
 endif
 
-pbl := arch/arm/pbl
-$(pbl)/zbarebox.S $(pbl)/zbarebox.bin $(pbl)/zbarebox: barebox.bin FORCE
-	$(Q)$(MAKE) $(build)=$(pbl) $@
-
 archclean:
 	$(MAKE) $(clean)=$(pbl)
 
diff --git a/arch/arm/pbl/.gitignore b/arch/arm/pbl/.gitignore
deleted file mode 100644
index be604a81bf..0000000000
--- a/arch/arm/pbl/.gitignore
+++ /dev/null
@@ -1,9 +0,0 @@
-piggy.gzip
-piggy.lzo
-piggy.lz4
-piggy.xzkern
-piggy.shipped
-zbarebox
-zbarebox.bin
-zbarebox.lds
-zbarebox.map
diff --git a/arch/arm/pbl/Makefile b/arch/arm/pbl/Makefile
deleted file mode 100644
index 5d7e85b373..0000000000
--- a/arch/arm/pbl/Makefile
+++ /dev/null
@@ -1,61 +0,0 @@
-
-suffix_$(CONFIG_IMAGE_COMPRESSION_GZIP) = gzip
-suffix_$(CONFIG_IMAGE_COMPRESSION_LZO)	= lzo
-suffix_$(CONFIG_IMAGE_COMPRESSION_LZ4)	= lz4
-suffix_$(CONFIG_IMAGE_COMPRESSION_XZKERN)	= xzkern
-suffix_$(CONFIG_IMAGE_COMPRESSION_NONE)	= comp_copy
-
-OBJCOPYFLAGS_zbarebox.bin = -O binary
-piggy_o := piggy.$(suffix_y).o
-
-targets := zbarebox.lds zbarebox zbarebox.bin zbarebox.S \
-	   $(piggy_o) piggy.$(suffix_y)
-
-# Make sure files are removed during clean
-extra-y       += piggy.gzip piggy.lz4 piggy.lzo piggy.lzma piggy.xzkern piggy.shipped zbarebox.map
-
-ifeq ($(CONFIG_CPU_BIG_ENDIAN),y)
-FIX_SIZE=-b
-else
-FIX_SIZE=
-endif
-
-$(obj)/zbarebox.bin:	$(obj)/zbarebox FORCE
-	$(call if_changed,objcopy)
-	$(call cmd,check_file_size,$@,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
-	$(Q)$(kecho) '  Barebox: fix size'
-	$(Q)$(objtree)/scripts/fix_size -i -f $(objtree)/$@ $(FIX_SIZE)
-	$(Q)$(kecho) '  Barebox: $@ is ready'
-
-$(obj)/zbarebox.S: $(obj)/zbarebox FORCE
-	$(call if_changed,disasm)
-
-PBL_CPPFLAGS		+= -fdata-sections -ffunction-sections
-LDFLAGS_zbarebox	:= -Map $(obj)/zbarebox.map --gc-sections
-ifdef CONFIG_PBL_RELOCATABLE
-LDFLAGS_zbarebox += -pie
-else
-LDFLAGS_zbarebox += -static
-endif
-
-LDFLAGS_zbarebox += $(call ld-option, --no-dynamic-linker)
-
-zbarebox-common := $(barebox-pbl-common) $(obj)/$(piggy_o)
-zbarebox-lds := $(obj)/zbarebox.lds
-
-$(zbarebox-lds): $(obj)/../lib/pbl.lds.S FORCE
-	$(call if_changed_dep,cpp_lds_S)
-
-quiet_cmd_zbarebox__ ?= LD      $@
-      cmd_zbarebox__ ?= $(LD) $(LDFLAGS) $(LDFLAGS_zbarebox) -o $@ \
-      -e pbl_start -T $(zbarebox-lds)                              \
-      --start-group $(zbarebox-common) --end-group                 \
-      $(filter-out $(zbarebox-lds) $(zbarebox-common) FORCE ,$^)
-
-$(obj)/zbarebox: $(zbarebox-lds) $(zbarebox-common) FORCE
-	$(call if_changed,zbarebox__)
-
-$(obj)/piggy.$(suffix_y): $(obj)/../../../barebox.bin FORCE
-	$(call if_changed,$(suffix_y))
-
-$(obj)/$(piggy_o): $(obj)/piggy.$(suffix_y) FORCE
diff --git a/arch/arm/pbl/piggy.comp_copy.S b/arch/arm/pbl/piggy.comp_copy.S
deleted file mode 100644
index 2b5a812ded..0000000000
--- a/arch/arm/pbl/piggy.comp_copy.S
+++ /dev/null
@@ -1,6 +0,0 @@
-	.section .piggydata,#alloc
-	.globl	input_data
-input_data:
-	.incbin	"arch/arm/pbl/piggy.comp_copy"
-	.globl	input_data_end
-input_data_end:
diff --git a/arch/arm/pbl/piggy.gzip.S b/arch/arm/pbl/piggy.gzip.S
deleted file mode 100644
index 4a623c0c57..0000000000
--- a/arch/arm/pbl/piggy.gzip.S
+++ /dev/null
@@ -1,6 +0,0 @@
-	.section .piggydata,#alloc
-	.globl  input_data
-input_data:
-	.incbin "arch/arm/pbl/piggy.gzip"
-	.globl  input_data_end
-input_data_end:
diff --git a/arch/arm/pbl/piggy.lz4.S b/arch/arm/pbl/piggy.lz4.S
deleted file mode 100644
index fa9b2469e1..0000000000
--- a/arch/arm/pbl/piggy.lz4.S
+++ /dev/null
@@ -1,6 +0,0 @@
-	.section .piggydata,#alloc
-	.globl	input_data
-input_data:
-	.incbin	"arch/arm/pbl/piggy.lz4"
-	.globl	input_data_end
-input_data_end:
diff --git a/arch/arm/pbl/piggy.lzo.S b/arch/arm/pbl/piggy.lzo.S
deleted file mode 100644
index e0484c7d5c..0000000000
--- a/arch/arm/pbl/piggy.lzo.S
+++ /dev/null
@@ -1,6 +0,0 @@
-	.section .piggydata,#alloc
-	.globl	input_data
-input_data:
-	.incbin	"arch/arm/pbl/piggy.lzo"
-	.globl	input_data_end
-input_data_end:
diff --git a/arch/arm/pbl/piggy.xzkern.S b/arch/arm/pbl/piggy.xzkern.S
deleted file mode 100644
index a7c0259590..0000000000
--- a/arch/arm/pbl/piggy.xzkern.S
+++ /dev/null
@@ -1,6 +0,0 @@
-	.section .piggydata,#alloc
-	.globl	input_data
-input_data:
-	.incbin	"arch/arm/pbl/piggy.xzkern"
-	.globl	input_data_end
-input_data_end:
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
