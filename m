Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jawSP-0008LH-5e
 for barebox@lists.infradead.org; Tue, 19 May 2020 07:14:35 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 19 May 2020 16:13:51 +0900
Message-Id: <20200519071353.395493-7-masahiroy@kernel.org>
In-Reply-To: <20200519071353.395493-1-masahiroy@kernel.org>
References: <20200519071353.395493-1-masahiroy@kernel.org>
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
Subject: [PATCH 7/8] kbuild: switch over to thin archive
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

Starting v4.13, Linux always uses thin archive instead of relocatable
ELF to combine builtin objects.

The thin archive is basically a text file that only contains paths to
object files.

As Linux commit 98ced886dd79 mentioned, this has a lot of benefits:

 - save disk space for builds

 - speed-up building a little

 - fix some issues when liking a giant executable (for example,
   allyesconfig on ARM Linux)

 - work better with dead code elimination

The last one is important for barebox because pbl highly relies on the
dead code elimination (-f{function,data}-sections and --gc-sections)
dropping symbols that are unreachable from the linker's entry point.
The dead code elimination does not work if the same symbol names are
used in the pevious incremental link mechanism because the same name
symbols all go into the same section.

Commit a83c97f2a406 ("ARM: socfpga: generate smaller images when
multiple boards are selected") worked around it by giving a dedicate
section to each of the same name symbols. This workaround can go away.

built-in.o was renamed to built-in.a since it is now an archive.
built-in-pbl.o was renamed to built-in.pbl.a for consistency.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 Makefile               | 10 +++++-----
 arch/kvx/Makefile      |  2 +-
 arch/mips/Makefile     |  2 +-
 arch/mips/pbl/Makefile |  2 +-
 arch/sandbox/Makefile  |  2 +-
 arch/x86/Makefile      |  4 ++--
 images/Makefile        |  4 ++--
 scripts/Makefile.build | 20 ++++++++------------
 scripts/Makefile.lib   | 12 ++++++------
 9 files changed, 27 insertions(+), 31 deletions(-)

diff --git a/Makefile b/Makefile
index 9f30fafdd..c4a2519a1 100644
--- a/Makefile
+++ b/Makefile
@@ -664,8 +664,8 @@ barebox-alldirs	:= $(sort $(barebox-dirs) $(patsubst %/,%,$(filter %/, \
 		     $(core-n) $(core-) $(drivers-n) $(drivers-) \
 		     $(net-n)  $(net-)  $(libs-n)    $(libs-))))
 
-pbl-common-y	:= $(patsubst %/, %/built-in-pbl.o, $(common-y))
-common-y	:= $(patsubst %/, %/built-in.o, $(common-y))
+pbl-common-y	:= $(patsubst %/, %/built-in.pbl.a, $(common-y))
+common-y	:= $(patsubst %/, %/built-in.a, $(common-y))
 
 ifeq ($(CONFIG_DEFAULT_COMPRESSION_GZIP),y)
 DEFAULT_COMPRESSION_SUFFIX := .gz
@@ -687,7 +687,7 @@ export DEFAULT_COMPRESSION_SUFFIX
 # Build barebox
 # ---------------------------------------------------------------------------
 # barebox is built from the objects selected by $(barebox-init) and
-# $(barebox-main). Most are built-in.o files from top-level directories
+# $(barebox-main). Most are built-in.a files from top-level directories
 # in the kernel tree, others are specified in arch/$(SRCARCH)/Makefile.
 # Ordering when linking is important, and $(barebox-init) must be first.
 #
@@ -700,7 +700,7 @@ export DEFAULT_COMPRESSION_SUFFIX
 #   |   +--< init/version.o + more
 #   |
 #   +--< $(barebox-main)
-#   |    +--< driver/built-in.o mm/built-in.o + more
+#   |    +--< driver/built-in.a mm/built-in.a + more
 #   |
 #   +-< kallsyms.o (see description in CONFIG_KALLSYMS section)
 #
@@ -719,7 +719,7 @@ BAREBOX_LDS    := $(lds-y)
 quiet_cmd_barebox__ ?= LD      $@
       cmd_barebox__ ?= $(LD) $(KBUILD_LDFLAGS) $(LDFLAGS_barebox) -o $@ \
       -T $(BAREBOX_LDS)                         \
-      --start-group $(BAREBOX_OBJS) --end-group                  \
+      --whole-archive $(BAREBOX_OBJS) --no-whole-archive                  \
       $(filter-out $(BAREBOX_LDS) $(BAREBOX_OBJS) FORCE ,$^)
 
 # Generate new barebox version
diff --git a/arch/kvx/Makefile b/arch/kvx/Makefile
index 7abaed651..9e7c8c07f 100644
--- a/arch/kvx/Makefile
+++ b/arch/kvx/Makefile
@@ -30,6 +30,6 @@ lds-y += arch/kvx/cpu/barebox.lds
 
 cmd_barebox__ ?= $(LD) $(KBUILD_LDFLAGS) $(LDFLAGS_barebox) -o $@ \
       -T $(BAREBOX_LDS) \
-      --start-group $(BAREBOX_OBJS) --end-group \
+      --whole-archive $(BAREBOX_OBJS) --no-while-archive \
       -L$(LIBGCC_PATH) -lgcc \
       $(filter-out $(BAREBOX_LDS) $(BAREBOX_OBJS) FORCE ,$^)
diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 5604a0a10..4eb6ba772 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -102,7 +102,7 @@ lds-$(CONFIG_GENERIC_LINKER_SCRIPT)   := arch/mips/lib/barebox.lds
 
 cmd_barebox__ ?= $(LD) $(KBUILD_LDFLAGS) $(LDFLAGS_barebox) -o $@ \
       -T $(BAREBOX_LDS)                         \
-      --start-group $(BAREBOX_OBJS) --end-group                  \
+      --whole-archive $(BAREBOX_OBJS) --no-whole-archive        \
       $(filter-out $(BAREBOX_LDS) $(BAREBOX_OBJS) FORCE ,$^);	\
 	$(objtree)/scripts/mips-relocs $@
 
diff --git a/arch/mips/pbl/Makefile b/arch/mips/pbl/Makefile
index 535bb4bf5..3bd0df165 100644
--- a/arch/mips/pbl/Makefile
+++ b/arch/mips/pbl/Makefile
@@ -31,7 +31,7 @@ zbarebox-lds := $(obj)/zbarebox.lds
 quiet_cmd_zbarebox__ ?= LD      $@
       cmd_zbarebox__ ?= $(LD) $(KBUILD_LDFLAGS) $(LDFLAGS_zbarebox) -o $@ \
       -T $(zbarebox-lds)                                           \
-      --start-group $(zbarebox-common) --end-group                 \
+      --whole-archive $(zbarebox-common) --no-while-archive        \
       $(filter-out $(zbarebox-lds) $(zbarebox-common) FORCE ,$^)
 
 $(obj)/zbarebox: $(zbarebox-lds) $(zbarebox-common) FORCE
diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index 3d2eb5bc1..3917cade9 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -53,7 +53,7 @@ SANITIZER_LIBS += -fsanitize=undefined
 endif
 
 cmd_barebox__ = $(CC) -o $@ -Wl,-T,$(BAREBOX_LDS) \
-	-Wl,--start-group $(BAREBOX_OBJS) -Wl,--end-group \
+	-Wl,--whole-archive $(BAREBOX_OBJS) -Wl,--no-whole-archive \
 	-lrt -lpthread $(SDL_LIBS) $(FTDI1_LIBS) \
 	$(SANITIZER_LIBS)
 
diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 97f6d85f2..61e51abc7 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -73,8 +73,8 @@ lds-$(CONFIG_X86_64)   := arch/x86/mach-efi/elf_x86_64_efi.lds
 cmd_barebox__ ?= $(LD) $(KBUILD_LDFLAGS) $(LDFLAGS_barebox) -o $@	\
 		-T $(lds-y)					\
 		-shared -Bsymbolic -nostdlib -znocombreloc	\
-		--start-group $(BAREBOX_OBJS)			\
-		--end-group					\
+		--whole-archive $(BAREBOX_OBJS)			\
+		--no-whole-archive				\
 		$(filter-out $(BAREBOX_LDS) $(BAREBOX_OBJS) FORCE ,$^)
 
 quiet_cmd_efi_image = EFI-IMG $@
diff --git a/images/Makefile b/images/Makefile
index 0aa4676ae..b8899dcd2 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -57,8 +57,8 @@ quiet_cmd_elf__ ?= LD      $@
       cmd_elf__ ?= $(LD) $(LDFLAGS_pbl) --gc-sections		\
 		-e $(2) -Map $@.map $(LDFLAGS_$(@F)) -o $@		\
 		-T $(pbl-lds)						\
-		--start-group $(BAREBOX_PBL_OBJS) $(obj)/piggy.o	\
-		$(obj)/sha_sum.o --end-group
+		--whole-archive $(BAREBOX_PBL_OBJS) $(obj)/piggy.o	\
+		$(obj)/sha_sum.o
 
 PBL_CPPFLAGS	+= -fdata-sections -ffunction-sections
 
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 31341d23c..85cf96ccd 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -60,12 +60,12 @@ lib-target := $(obj)/lib.a
 endif
 
 ifneq ($(strip $(obj-y) $(obj-m) $(obj-) $(lib-target) $(pbl-y)),)
-builtin-target := $(obj)/built-in.o
+builtin-target := $(obj)/built-in.a
 endif
 
 ifeq ($(CONFIG_PBL_IMAGE), y)
 ifneq ($(strip $(pbl-y) $(builtin-target)),)
-pbl-target := $(obj)/built-in-pbl.o
+pbl-target := $(obj)/built-in.pbl.a
 endif
 endif
 
@@ -186,22 +186,18 @@ quiet_cmd_cpp_lds_S = LDS     $@
 $(sort $(subdir-obj-y)): $(subdir-ym) ;
 
 #
-# Rule to compile a set of .o files into one .o file
+# Rule to compile a set of .o files into one .a file (without symbol table)
 #
+quiet_cmd_ar_builtin = AR $(quiet_modtag)  $@
+      cmd_ar_builtin = rm -f $@; $(AR) cDPrST $@ $(real-prereqs)
 
-# If the list of objects to link is empty, just create an empty built-in.o
-quiet_cmd_link_o_target = LD $(quiet_modtag)  $@
-cmd_link_o_target = $(if $(strip $(real-prereqs)),\
-		      $(LD) $(ld_flags) -r -o $@ $(real-prereqs),\
-		      rm -f $@; $(AR) rcs $@)
-
-$(builtin-target): $(obj-y) FORCE
-	$(call if_changed,link_o_target)
+$(builtin-target): $(real-obj-y) FORCE
+	$(call if_changed,ar_builtin)
 
 targets += $(builtin-target)
 
 $(pbl-target): $(pbl-y) FORCE
-	$(call if_changed,link_o_target)
+	$(call if_changed,ar_builtin)
 
 targets += $(pbl-target)
 
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 55d251844..3799e777c 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -22,7 +22,7 @@ lib-y := $(filter-out $(obj-y), $(sort $(lib-y) $(lib-m)))
 
 # Handle objects in subdirs
 # ---------------------------------------------------------------------------
-# o if we encounter foo/ in $(obj-y), replace it by foo/built-in.o
+# o if we encounter foo/ in $(obj-y), replace it by foo/built-in.a
 #   and add the directory to the list of dirs to descend into: $(subdir-y)
 # o if we encounter foo/ in $(obj-m), remove it from $(obj-m)
 #   and add the directory to the list of dirs to descend into: $(subdir-m)
@@ -46,13 +46,13 @@ pbl-y		:= $(patsubst %.o,%.pbl.o,$(pbl-y))
 __pbl-y		:= $(filter-out $(pbl-y), $(filter %/, $(obj-y)))
 pbl-y		+= $(__pbl-y)
 
-pbl-y		:= $(sort $(patsubst %/, %/built-in-pbl.o, $(pbl-y)))
+pbl-y		:= $(sort $(patsubst %/, %/built-in.pbl.a, $(pbl-y)))
 
 __subdir-y	:= $(patsubst %/,%,$(filter %/, $(obj-y)))
 subdir-y	+= $(__subdir-y)
 __subdir-m	:= $(patsubst %/,%,$(filter %/, $(obj-m)))
 subdir-m	+= $(__subdir-m)
-obj-y		:= $(patsubst %/, %/built-in.o, $(obj-y))
+obj-y		:= $(patsubst %/, %/built-in.a, $(obj-y))
 obj-m		:= $(filter-out %/, $(obj-m))
 
 # Subdirectories we need to descend into
@@ -73,8 +73,8 @@ multi-objs   := $(multi-objs-y) $(multi-objs-m)
 
 # $(subdir-obj-y) is the list of objects in $(obj-y) which uses dir/ to
 # tell kbuild to descend
-__subdir-obj-y := $(filter %/built-in-pbl.o, $(pbl-y))
-subdir-obj-y := $(filter %/built-in.o, $(obj-y))
+__subdir-obj-y := $(filter %/built-in.pbl.a, $(pbl-y))
+subdir-obj-y := $(filter %/built-in.a, $(obj-y))
 subdir-obj-y += $(__subdir-obj-y)
 
 obj-y += $(patsubst %,%.bbenv$(DEFAULT_COMPRESSION_SUFFIX).o,$(bbenv-y))
@@ -154,7 +154,7 @@ __cpp_flags     =                          $(call flags,_cpp_flags)
 endif
 
 part-of-module = $(if $(filter $(basename $@).o, $(real-obj-m)),y)
-part-of-pbl    = $(if $(filter $(basename $@).o, $(pbl-y) $(pbl-target)),y)
+part-of-pbl    = $(if $(filter $(basename $@).o, $(pbl-y))$(filter $@, $(pbl-target)),y)
 quiet_modtag = $(if $(part-of-pbl),[P],$(if $(part-of-module),[M],   ))
 
 pbl_cppflags = $(if $(part-of-pbl), -D__PBL__ $(PBL_CPPFLAGS))
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
