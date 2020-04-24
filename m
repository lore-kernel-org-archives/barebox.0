Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-07.nifty.com ([210.131.2.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS3YZ-0000kl-0o
 for barebox@lists.infradead.org; Fri, 24 Apr 2020 19:00:22 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 25 Apr 2020 03:59:23 +0900
Message-Id: <20200424185924.705754-5-masahiroy@kernel.org>
In-Reply-To: <20200424185924.705754-1-masahiroy@kernel.org>
References: <20200424185924.705754-1-masahiroy@kernel.org>
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
Subject: [PATCH 5/6] kbuild: use $(SRCARCH) to point to the arch directory
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

A couple of arch directories in Linux are biarch, that is, a single
arch/*/ directory supports both 32-bit and 64-bit.

In old days of Linux, they started as separated directories.
arm/arm64 is the exceptional case, but the other architectures were
unified.

e.g.)

  arch/i386, arch/x86_64    ->  arch/x86
  arch/sh, arch/sh64        ->  arch/sh
  arch/sparc, arch/sparc64  ->  arch/sparc

Linux commit 6752ed90da03 ("Kbuild: allow arch/xxx to use a different
source path") introduced SRCARCH to point to the arch directory, still
allowing to pass in the former ARCH=i386 or ARCH=x86_64.

The top Makefile in Linux converts ARCH to SRCARCH as follows:

  # Additional ARCH settings for x86
  ifeq ($(ARCH),i386)
          SRCARCH := x86
  endif
  ifeq ($(ARCH),x86_64)
          SRCARCH := x86
  endif

So, if you follow the upstream Kbuild convention, using arch/$(SRCARCH)
is the correct way to point to the arch directory.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 Makefile               | 26 +++++++++++++-------------
 images/Makefile        |  6 +++---
 scripts/Makefile.build |  2 +-
 3 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/Makefile b/Makefile
index e01a7491a..477741a72 100644
--- a/Makefile
+++ b/Makefile
@@ -307,8 +307,8 @@ export MODVERDIR := $(if $(KBUILD_EXTMOD),$(firstword $(KBUILD_EXTMOD))/).tmp_ve
 # Needed to be compatible with the O= option
 LINUXINCLUDE    := -Iinclude -I$(srctree)/dts/include \
                    $(if $(KBUILD_SRC), -I$(srctree)/include) \
-		   -I$(srctree)/arch/$(ARCH)/include \
-		   -I$(objtree)/arch/$(ARCH)/include \
+		   -I$(srctree)/arch/$(SRCARCH)/include \
+		   -I$(objtree)/arch/$(SRCARCH)/include \
                    -include $(srctree)/include/linux/kconfig.h
 
 KBUILD_CPPFLAGS        := -D__KERNEL__ -D__BAREBOX__ $(LINUXINCLUDE) -fno-builtin -ffreestanding
@@ -424,7 +424,7 @@ ifeq ($(config-targets),1)
 # Read arch specific Makefile to set KBUILD_DEFCONFIG as needed.
 # KBUILD_DEFCONFIG may point out an alternative default configuration
 # used for 'make defconfig'
-include $(srctree)/arch/$(ARCH)/Makefile
+include $(srctree)/arch/$(SRCARCH)/Makefile
 export KBUILD_DEFCONFIG
 
 config: scripts_basic outputmakefile FORCE
@@ -452,7 +452,7 @@ endif
 # Objects we will link into barebox / subdirs we need to visit
 common-y		:= common/ drivers/ commands/ lib/ crypto/ net/ fs/ firmware/
 
-include $(srctree)/arch/$(ARCH)/Makefile
+include $(srctree)/arch/$(SRCARCH)/Makefile
 
 ifeq ($(dot-config),1)
 # Read in dependencies to all Kconfig* files, make sure to run syncconfig if
@@ -520,7 +520,7 @@ export KBUILD_IMAGE ?= barebox.bin
 export KBUILD_BINARY ?= barebox.bin
 # KBUILD_IMAGE and _BINARY may be overruled on the command line or
 # set in the environment.
-# Also any assignments in arch/$(ARCH)/Makefile take precedence over
+# Also any assignments in arch/$(SRCARCH)/Makefile take precedence over
 # the default value.
 
 barebox-flash-image: $(KBUILD_IMAGE) FORCE
@@ -574,7 +574,7 @@ export DEFAULT_COMPRESSION_SUFFIX
 # ---------------------------------------------------------------------------
 # barebox is built from the objects selected by $(barebox-init) and
 # $(barebox-main). Most are built-in.o files from top-level directories
-# in the kernel tree, others are specified in arch/$(ARCH)Makefile.
+# in the kernel tree, others are specified in arch/$(SRCARCH)/Makefile.
 # Ordering when linking is important, and $(barebox-init) must be first.
 #
 # FIXME: This picture is wrong for barebox. We have no init, driver, mm
@@ -601,7 +601,7 @@ export BAREBOX_PBL_OBJS := $(pbl-common-y)
 BAREBOX_LDS    := $(lds-y)
 
 # Rule to link barebox
-# May be overridden by arch/$(ARCH)/Makefile
+# May be overridden by arch/$(SRCARCH)/Makefile
 quiet_cmd_barebox__ ?= LD      $@
       cmd_barebox__ ?= $(LD) $(KBUILD_LDFLAGS) $(LDFLAGS_barebox) -o $@ \
       -T $(BAREBOX_LDS)                         \
@@ -742,7 +742,7 @@ UIMAGE_BASE ?= $(shell printf "0x%08x" $$(($(CONFIG_TEXT_BASE) - 0x200000)))
 # For development provide a target which makes barebox loadable by an
 # unmodified u-boot
 quiet_cmd_barebox_mkimage = MKIMAGE $@
-      cmd_barebox_mkimage = $(srctree)/scripts/mkimage -A $(ARCH) -T firmware -C none \
+      cmd_barebox_mkimage = $(srctree)/scripts/mkimage -A $(SRCARCH) -T firmware -C none \
        -O barebox -a $(UIMAGE_BASE) -e $(UIMAGE_BASE) \
        -n "barebox $(KERNELRELEASE)" -d $< $@
 
@@ -851,9 +851,9 @@ prepare0: archprepare FORCE
 prepare prepare-all: prepare0
 
 # Leave this as default for preprocessing barebox.lds.S, which is now
-# done in arch/$(ARCH)/kernel/Makefile
+# done in arch/$(SRCARCH)/kernel/Makefile
 
-export CPPFLAGS_barebox.lds += -C -U$(ARCH)
+export CPPFLAGS_barebox.lds += -C -U$(SRCARCH)
 
 define symlink-config-h
 	if [ -f $(srctree)/$(BOARD)/config.h ]; then		\
@@ -1052,7 +1052,7 @@ rpm: include/config/kernel.release FORCE
 # Brief documentation of the typical targets used
 # ---------------------------------------------------------------------------
 
-boards := $(wildcard $(srctree)/arch/$(ARCH)/configs/*_defconfig)
+boards := $(wildcard $(srctree)/arch/$(SRCARCH)/configs/*_defconfig)
 boards := $(sort $(notdir $(boards)))
 
 help:
@@ -1080,9 +1080,9 @@ help:
 	@echo  '  checkstack      - Generate a list of stack hogs'
 	@echo  '  namespacecheck  - Name space analysis on compiled kernel'
 	@echo  ''
-	@echo  'Architecture specific targets ($(ARCH)):'
+	@echo  'Architecture specific targets ($(SRCARCH)):'
 	@$(if $(archhelp),$(archhelp),\
-		echo '  No architecture specific help defined for $(ARCH)')
+		echo '  No architecture specific help defined for $(SRCARCH)')
 	@echo  ''
 	@$(if $(boards), \
 		$(foreach b, $(boards), \
diff --git a/images/Makefile b/images/Makefile
index fe29c75e2..0aa4676ae 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -50,7 +50,7 @@ quiet_cmd_objcopy_bin = OBJCOPYB $@
 pbl-lds := $(obj)/pbl.lds
 extra-y += $(pbl-lds)
 
-$(pbl-lds): $(obj)/../arch/$(ARCH)/lib/pbl.lds.S FORCE
+$(pbl-lds): $(obj)/../arch/$(SRCARCH)/lib/pbl.lds.S FORCE
 	$(call if_changed_dep,cpp_lds_S)
 
 quiet_cmd_elf__ ?= LD      $@
@@ -139,8 +139,8 @@ $(obj)/%.img: $(obj)/$$(FILE_$$(@F))
 	$(Q)if [ -z $(FILE_$(@F)) ]; then echo "FILE_$(@F) empty!"; false; fi
 	$(call if_changed,shipped)
 
-board = $(srctree)/arch/$(ARCH)/boards
-objboard = $(objtree)/arch/$(ARCH)/boards
+board = $(srctree)/arch/$(SRCARCH)/boards
+objboard = $(objtree)/arch/$(SRCARCH)/boards
 
 include $(srctree)/images/Makefile.am33xx
 include $(srctree)/images/Makefile.am35xx
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 601a4d9cd..57c946769 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -175,7 +175,7 @@ cmd_modversions =							\
 	if $(OBJDUMP) -h $(@D)/.tmp_$(@F) | grep -q __ksymtab; then	\
 		$(CPP) -D__GENKSYMS__ $(c_flags) $<			\
 		| $(GENKSYMS) $(if $(KBUILD_SYMTYPES),			\
-			      -T $(@D)/$(@F:.o=.symtypes)) -a $(ARCH)	\
+			      -T $(@D)/$(@F:.o=.symtypes)) 		\
 		> $(@D)/.tmp_$(@F:.o=.ver);				\
 									\
 		$(LD) $(KBUILD_LDFLAGS) -r -o $@ $(@D)/.tmp_$(@F) 		\
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
