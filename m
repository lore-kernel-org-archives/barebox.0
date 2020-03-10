Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBd47-000225-4M
 for barebox@lists.infradead.org; Tue, 10 Mar 2020 11:28:54 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 10 Mar 2020 20:28:15 +0900
Message-Id: <20200310112816.7415-4-masahiroy@kernel.org>
In-Reply-To: <20200310112816.7415-1-masahiroy@kernel.org>
References: <20200310112816.7415-1-masahiroy@kernel.org>
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
Subject: [PATCH 4/5] kbuild: rename barebox-{common, lds} to BAREBOX_{OBJS,
 LDS}
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

The previous commit renamed barebox-pbl-common because you cannot
export a variable that contain hyphens.

These variables are not exported for now. I am just renaming them for
consistency.

  barebox-common -> BAREBOX_OBJS
  barebox-lds    -> BAREBOX_LDS

If barebox moves the link rules into scripts/link-barebox.sh like
Linux did, these two must be exported anyway.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 Makefile              | 22 +++++++++++-----------
 arch/mips/Makefile    |  6 +++---
 arch/sandbox/Makefile |  4 ++--
 arch/x86/Makefile     |  4 ++--
 4 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/Makefile b/Makefile
index 20fa85ed8be4..40d146e511ac 100644
--- a/Makefile
+++ b/Makefile
@@ -583,18 +583,18 @@ export DEFAULT_COMPRESSION_SUFFIX
 #
 # System.map is generated to document addresses of all kernel symbols
 
-barebox-common := $(common-y)
+BAREBOX_OBJS := $(common-y)
 export BAREBOX_PBL_OBJS := $(pbl-common-y)
-barebox-all    := $(barebox-common)
-barebox-lds    := $(lds-y)
+barebox-all    := $(BAREBOX_OBJS)
+BAREBOX_LDS    := $(lds-y)
 
 # Rule to link barebox
 # May be overridden by arch/$(ARCH)/Makefile
 quiet_cmd_barebox__ ?= LD      $@
       cmd_barebox__ ?= $(LD) $(LDFLAGS) $(LDFLAGS_barebox) -o $@ \
-      -T $(barebox-lds)                         \
-      --start-group $(barebox-common) --end-group                  \
-      $(filter-out $(barebox-lds) $(barebox-common) FORCE ,$^)
+      -T $(BAREBOX_LDS)                         \
+      --start-group $(BAREBOX_OBJS) --end-group                  \
+      $(filter-out $(BAREBOX_LDS) $(BAREBOX_OBJS) FORCE ,$^)
 
 # Generate new barebox version
 quiet_cmd_barebox_version = GEN     .version
@@ -691,13 +691,13 @@ quiet_cmd_kallsyms = KSYM    $@
 	$(call cmd,kallsyms)
 
 # .tmp_barebox1 must be complete except kallsyms, so update barebox version
-.tmp_barebox1: $(barebox-lds) $(barebox-all) FORCE
+.tmp_barebox1: $(BAREBOX_LDS) $(barebox-all) FORCE
 	$(call if_changed_rule,ksym_ld)
 
-.tmp_barebox2: $(barebox-lds) $(barebox-all) .tmp_kallsyms1.o FORCE
+.tmp_barebox2: $(BAREBOX_LDS) $(barebox-all) .tmp_kallsyms1.o FORCE
 	$(call if_changed,barebox__)
 
-.tmp_barebox3: $(barebox-lds) $(barebox-all) .tmp_kallsyms2.o FORCE
+.tmp_barebox3: $(BAREBOX_LDS) $(barebox-all) .tmp_kallsyms2.o FORCE
 	$(call if_changed,barebox__)
 
 # Needs to visit scripts/ before $(KALLSYMS) can be used.
@@ -767,7 +767,7 @@ barebox.S barebox.s: barebox FORCE
 endif
 
 # barebox image
-barebox: $(barebox-lds) $(barebox-common) $(kallsyms.o) FORCE
+barebox: $(BAREBOX_LDS) $(BAREBOX_OBJS) $(kallsyms.o) FORCE
 	$(call if_changed_rule,barebox__)
 	$(Q)rm -f .old_version
 
@@ -776,7 +776,7 @@ barebox.srec: barebox
 
 # The actual objects are generated when descending,
 # make sure no implicit rule kicks in
-$(sort $(barebox-common) ) $(barebox-lds) $(BAREBOX_PBL_OBJS): $(barebox-dirs) ;
+$(sort $(BAREBOX_OBJS)) $(BAREBOX_LDS) $(BAREBOX_PBL_OBJS): $(barebox-dirs) ;
 
 # Handle descending into subdirectories listed in $(barebox-dirs)
 # Preset locale variables to speed up the build process. Limit locale
diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 486dfd82533c..ee3364d27a89 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -118,9 +118,9 @@ CFLAGS += $(cflags-y)
 lds-$(CONFIG_GENERIC_LINKER_SCRIPT)   := arch/mips/lib/barebox.lds
 
 cmd_barebox__ ?= $(LD) $(LDFLAGS) $(LDFLAGS_barebox) -o $@ \
-      -T $(barebox-lds)                         \
-      --start-group $(barebox-common) --end-group                  \
-      $(filter-out $(barebox-lds) $(barebox-common) FORCE ,$^);	\
+      -T $(BAREBOX_LDS)                         \
+      --start-group $(BAREBOX_OBJS) --end-group                  \
+      $(filter-out $(BAREBOX_LDS) $(BAREBOX_OBJS) FORCE ,$^);	\
 	$(objtree)/scripts/mips-relocs $@
 
 
diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index b127560a2b8c..b7470c3330eb 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -56,8 +56,8 @@ ifeq ($(CONFIG_UBSAN),y)
 SANITIZER_LIBS += -fsanitize=undefined
 endif
 
-cmd_barebox__ = $(CC) -o $@ -Wl,-T,$(barebox-lds) \
-	-Wl,--start-group $(barebox-common) -Wl,--end-group \
+cmd_barebox__ = $(CC) -o $@ -Wl,-T,$(BAREBOX_LDS) \
+	-Wl,--start-group $(BAREBOX_OBJS) -Wl,--end-group \
 	-lrt -lpthread $(SDL_LIBS) $(FTDI1_LIBS) \
 	$(SANITIZER_LIBS)
 
diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 0751e6364999..4d471c2f8ae0 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -77,9 +77,9 @@ lds-$(CONFIG_X86_64)   := arch/x86/mach-efi/elf_x86_64_efi.lds
 cmd_barebox__ ?= $(LD) $(LDFLAGS) $(LDFLAGS_barebox) -o $@	\
 		-T $(lds-y)					\
 		-shared -Bsymbolic -nostdlib -znocombreloc	\
-		--start-group $(barebox-common)			\
+		--start-group $(BAREBOX_OBJS)			\
 		--end-group					\
-		$(filter-out $(barebox-lds) $(barebox-common) FORCE ,$^)
+		$(filter-out $(BAREBOX_LDS) $(BAREBOX_OBJS) FORCE ,$^)
 
 quiet_cmd_efi_image = EFI-IMG $@
       cmd_efi_image = $(OBJCOPY) -j .text -j .sdata -j .data -j .dynamic \
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
