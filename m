Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-12.nifty.com ([210.131.2.79])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR91J-0000Tv-5W
 for barebox@lists.infradead.org; Wed, 22 Apr 2020 06:38:09 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 22 Apr 2020 15:37:32 +0900
Message-Id: <20200422063732.1584550-4-masahiroy@kernel.org>
In-Reply-To: <20200422063732.1584550-1-masahiroy@kernel.org>
References: <20200422063732.1584550-1-masahiroy@kernel.org>
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
Subject: [PATCH v2 4/4] kbuild: prefix compiler flag variables with KBUILD_
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

In old days, Linux also used to use well-known variables such CFLAGS,
CPPFLAGS, etc.

They were prefixed with KBUILD_ presumably for preventing users from
overriding them accidentally.

Rename as follows:
  CFLAGS          ->  KBUILD_CFLAGS
  AFLAGS          ->  KBUILD_AFLAGS
  CPPFLAGS        ->  KBUILD_CPPFLAGS
  LDFLAGS         ->  KBUILD_LDFLAGS
  HOSTCFLAGS      ->  KBUILD_HOSTCFLAGS
  HOSTCXXFLAGS    ->  KBUILD_HOSTCXXFLAGS
  HOSTLDFLAGS     ->  KBUILD_HOSTLDFLAGS
  HOST_LOADLIBES  ->  KBUILD_HOSTLDLIBS

HOSTCFLAGS, HOSTCXXFLAGS, HOSTLDFLAGS, HOSTLDLIBS are re-used to allow
users to pass-in additional flags to the host compiler.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

Changes in v2: None

 Makefile                 | 51 +++++++++++++++++++++-------------------
 arch/arm/Makefile        | 34 +++++++++++++--------------
 arch/kvx/Makefile        | 12 +++++-----
 arch/mips/Makefile       | 22 ++++++++---------
 arch/mips/pbl/Makefile   |  2 +-
 arch/nios2/Makefile      |  2 +-
 arch/openrisc/Makefile   |  2 +-
 arch/ppc/Makefile        | 14 +++++------
 arch/riscv/Makefile      | 14 +++++------
 arch/sandbox/Makefile    | 10 ++++----
 arch/sandbox/os/Makefile |  8 +++----
 arch/x86/Makefile        | 32 ++++++++++++-------------
 arch/x86/boot/Makefile   |  2 +-
 scripts/Kbuild.include   | 10 ++++----
 scripts/Makefile         |  4 ++--
 scripts/Makefile.build   |  2 +-
 scripts/Makefile.host    | 12 +++++-----
 scripts/Makefile.lib     | 14 +++++------
 scripts/Makefile.modpost |  2 +-
 19 files changed, 126 insertions(+), 123 deletions(-)

diff --git a/Makefile b/Makefile
index aa9b9806e..6fc822da4 100644
--- a/Makefile
+++ b/Makefile
@@ -187,10 +187,12 @@ HOST_LFS_LIBS := $(shell getconf LFS_LIBS 2>/dev/null)
 
 HOSTCC       = gcc
 HOSTCXX      = g++
-HOSTCFLAGS   = -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer $(HOST_LFS_CFLAGS)
-HOSTCXXFLAGS = -O2 $(HOST_LFS_CFLAGS)
-HOSTLDFLAGS = $(HOST_LFS_LDFLAGS)
-HOST_LOADLIBES = $(HOST_LFS_LIBS)
+KBUILD_HOSTCFLAGS   := -Wall -Wstrict-prototypes -O2 \
+		-fomit-frame-pointer $(HOST_LFS_CFLAGS) \
+		$(HOSTCFLAGS)
+KBUILD_HOSTCXXFLAGS := -O2 $(HOST_LFS_CFLAGS) $(HOSTCXXFLAGS)
+KBUILD_HOSTLDFLAGS  := $(HOST_LFS_LDFLAGS) $(HOSTLDFLAGS)
+KBUILD_HOSTLDLIBS   := $(HOST_LFS_LIBS) $(HOSTLDLIBS)
 
 # Decide whether to build built-in, modular, or both.
 # Normally, just do built-in.
@@ -306,12 +308,12 @@ LINUXINCLUDE    := -Iinclude -I$(srctree)/dts/include \
 		   -I$(objtree)/arch/$(ARCH)/include \
                    -include $(srctree)/include/linux/kconfig.h
 
-CPPFLAGS        := -D__KERNEL__ -D__BAREBOX__ $(LINUXINCLUDE) -fno-builtin -ffreestanding
+KBUILD_CPPFLAGS        := -D__KERNEL__ -D__BAREBOX__ $(LINUXINCLUDE) -fno-builtin -ffreestanding
 
-CFLAGS          := -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs \
+KBUILD_CFLAGS          := -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs \
                    -Werror-implicit-function-declaration \
                    -fno-strict-aliasing -fno-common -Os -pipe -Wmissing-prototypes
-AFLAGS          := -D__ASSEMBLY__
+KBUILD_AFLAGS          := -D__ASSEMBLY__
 
 LDFLAGS_barebox	:= -Map barebox.map
 
@@ -324,14 +326,15 @@ KERNELRELEASE = $(shell cat include/config/kernel.release 2> /dev/null)
 KERNELVERSION = $(VERSION).$(PATCHLEVEL).$(SUBLEVEL)$(EXTRAVERSION)
 
 export VERSION PATCHLEVEL SUBLEVEL KERNELRELEASE KERNELVERSION
-export ARCH SRCARCH CONFIG_SHELL HOSTCC HOSTCFLAGS CROSS_COMPILE AS LD CC
+export ARCH SRCARCH CONFIG_SHELL HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE AS LD CC
 export CPP AR NM STRIP OBJCOPY OBJDUMP MAKE AWK GENKSYMS PERL PYTHON3 UTS_MACHINE
 export LEX YACC
-export HOSTCXX HOSTCXXFLAGS HOSTLDFLAGS HOST_LOADLIBES LDFLAGS_MODULE CHECK CHECKFLAGS
+export HOSTCXX CHECK CHECKFLAGS
+export KBUILD_HOSTCXXFLAGS KBUILD_HOSTLDFLAGS KBUILD_HOSTLDLIBS LDFLAGS_MODULE
 
-export CPPFLAGS NOSTDINC_FLAGS LINUXINCLUDE OBJCOPYFLAGS LDFLAGS
-export CFLAGS CFLAGS_KERNEL
-export AFLAGS AFLAGS_KERNEL
+export KBUILD_CPPFLAGS NOSTDINC_FLAGS LINUXINCLUDE OBJCOPYFLAGS KBUILD_LDFLAGS
+export KBUILD_CFLAGS CFLAGS_KERNEL
+export KBUILD_AFLAGS AFLAGS_KERNEL
 export LDFLAGS_barebox
 export LDFLAGS_pbl
 
@@ -471,33 +474,33 @@ endif # $(dot-config)
 
 include $(srctree)/arch/$(ARCH)/Makefile
 
-CFLAGS		+= -ggdb3
+KBUILD_CFLAGS		+= -ggdb3
 
 # Force gcc to behave correct even for buggy distributions
-CFLAGS          += $(call cc-option, -fno-stack-protector)
+KBUILD_CFLAGS          += $(call cc-option, -fno-stack-protector)
 
 # This warning generated too much noise in a regular build.
 # Use make W=1 to enable this warning (see scripts/Makefile.build)
-CFLAGS += $(call cc-disable-warning, unused-but-set-variable)
+KBUILD_CFLAGS += $(call cc-disable-warning, unused-but-set-variable)
 
-CFLAGS += $(call cc-disable-warning, trampolines)
+KBUILD_CFLAGS += $(call cc-disable-warning, trampolines)
 
-CFLAGS += $(call cc-option, -fno-delete-null-pointer-checks,)
+KBUILD_CFLAGS += $(call cc-option, -fno-delete-null-pointer-checks,)
 
-CFLAGS   += $(call cc-disable-warning, address-of-packed-member)
+KBUILD_CFLAGS   += $(call cc-disable-warning, address-of-packed-member)
 
 # arch Makefile may override CC so keep this after arch Makefile is included
 NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include)
 CHECKFLAGS     += $(NOSTDINC_FLAGS)
 
 # warn about C99 declaration after statement
-CFLAGS += $(call cc-option,-Wdeclaration-after-statement,)
+KBUILD_CFLAGS += $(call cc-option,-Wdeclaration-after-statement,)
 
 # disable pointer signed / unsigned warnings in gcc 4.0
-CFLAGS += $(call cc-option,-Wno-pointer-sign,)
+KBUILD_CFLAGS += $(call cc-option,-Wno-pointer-sign,)
 
 # change __FILE__ to the relative path from the srctree
-CFLAGS += $(call cc-option,-fmacro-prefix-map=$(srctree)/=)
+KBUILD_CFLAGS += $(call cc-option,-fmacro-prefix-map=$(srctree)/=)
 
 include $(srctree)/scripts/Makefile.ubsan
 
@@ -594,7 +597,7 @@ BAREBOX_LDS    := $(lds-y)
 # Rule to link barebox
 # May be overridden by arch/$(ARCH)/Makefile
 quiet_cmd_barebox__ ?= LD      $@
-      cmd_barebox__ ?= $(LD) $(LDFLAGS) $(LDFLAGS_barebox) -o $@ \
+      cmd_barebox__ ?= $(LD) $(KBUILD_LDFLAGS) $(LDFLAGS_barebox) -o $@ \
       -T $(BAREBOX_LDS)                         \
       --start-group $(BAREBOX_OBJS) --end-group                  \
       $(filter-out $(BAREBOX_LDS) $(BAREBOX_OBJS) FORCE ,$^)
@@ -1158,8 +1161,8 @@ quiet_cmd_rmfiles = $(if $(wildcard $(rm-files)),CLEAN   $(wildcard $(rm-files))
       cmd_rmfiles = rm -f $(rm-files)
 
 
-a_flags = -Wp,-MD,$(depfile) $(AFLAGS) $(AFLAGS_KERNEL) \
-	  $(NOSTDINC_FLAGS) $(CPPFLAGS) \
+a_flags = -Wp,-MD,$(depfile) $(KBUILD_AFLAGS) $(AFLAGS_KERNEL) \
+	  $(NOSTDINC_FLAGS) $(KBUILD_CPPFLAGS) \
 	  $(modkern_aflags) $(EXTRA_AFLAGS) $(AFLAGS_$(basetarget).o)
 
 quiet_cmd_as_o_S = AS      $@
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 29fd8e276..62b397a73 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -1,19 +1,19 @@
 KBUILD_DEFCONFIG := qemu_virt64_defconfig
 
-CPPFLAGS	+= -D__ARM__ -fno-strict-aliasing
+KBUILD_CPPFLAGS	+= -D__ARM__ -fno-strict-aliasing
 # Explicitly specifiy 32-bit ARM ISA since toolchain default can be -mthumb:
 ifeq ($(CONFIG_CPU_V8),y)
-CPPFLAGS	+=$(call cc-option,-maarch64,)
+KBUILD_CPPFLAGS	+=$(call cc-option,-maarch64,)
 else
-CPPFLAGS	+=$(call cc-option,-marm,)
+KBUILD_CPPFLAGS	+=$(call cc-option,-marm,)
 endif
 
 ifeq ($(CONFIG_CPU_BIG_ENDIAN),y)
-CPPFLAGS	+= -mbig-endian
+KBUILD_CPPFLAGS	+= -mbig-endian
 AS		+= -EB
 LD		+= -EB
 else
-CPPFLAGS	+= -mlittle-endian
+KBUILD_CPPFLAGS	+= -mlittle-endian
 AS		+= -EL
 LD		+= -EL
 endif
@@ -23,14 +23,14 @@ endif
 # conservative and instruct the compiler not to generate any unaligned
 # accesses
 ifneq ($(CONFIG_CPU_V8),y)
-CFLAGS += -mno-unaligned-access
+KBUILD_CFLAGS += -mno-unaligned-access
 else
-CFLAGS += -mstrict-align
+KBUILD_CFLAGS += -mstrict-align
 endif
 
 # Prevent use of floating point and Advanced SIMD registers.
 ifeq ($(CONFIG_CPU_V8),y)
-CFLAGS += -mgeneral-regs-only
+KBUILD_CFLAGS += -mgeneral-regs-only
 endif
 
 # This selects which instruction set is used.
@@ -70,12 +70,12 @@ AFLAGS_THUMB2	:=$(CFLAGS_THUMB2) -Wa$(comma)-mthumb
 endif
 
 ifeq ($(CONFIG_CPU_V8), y)
-CPPFLAGS += $(CFLAGS_ABI) $(arch-y) $(tune-y)
-AFLAGS   += -include asm/unified.h
+KBUILD_CPPFLAGS += $(CFLAGS_ABI) $(arch-y) $(tune-y)
+KBUILD_AFLAGS   += -include asm/unified.h
 export S64 = _64
 else
-CPPFLAGS += $(CFLAGS_ABI) $(arch-y) $(tune-y) -msoft-float $(CFLAGS_THUMB2)
-AFLAGS   += -include asm/unified.h -msoft-float $(AFLAGS_THUMB2)
+KBUILD_CPPFLAGS += $(CFLAGS_ABI) $(arch-y) $(tune-y) -msoft-float $(CFLAGS_THUMB2)
+KBUILD_AFLAGS   += -include asm/unified.h -msoft-float $(AFLAGS_THUMB2)
 endif
 
 # Machine directory name.  This list is sorted alphanumerically
@@ -128,22 +128,22 @@ board-$(CONFIG_MACH_TINY6410)			+= friendlyarm-tiny6410
 machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))
 
 ifeq ($(KBUILD_SRC),)
-CPPFLAGS += $(patsubst %,-I%include,$(machdirs))
+KBUILD_CPPFLAGS += $(patsubst %,-I%include,$(machdirs))
 else
-CPPFLAGS += $(patsubst %,-I$(srctree)/%include,$(machdirs))
+KBUILD_CPPFLAGS += $(patsubst %,-I$(srctree)/%include,$(machdirs))
 endif
 
 TEXT_BASE = $(CONFIG_TEXT_BASE)
 
-CPPFLAGS += -DTEXT_BASE=$(TEXT_BASE)
+KBUILD_CPPFLAGS += -DTEXT_BASE=$(TEXT_BASE)
 
 # Add cleanup flags
-CPPFLAGS += -fdata-sections -ffunction-sections
+KBUILD_CPPFLAGS += -fdata-sections -ffunction-sections
 LDFLAGS_barebox += --gc-sections
 LDFLAGS_pbl += --gc-sections
 
 # early code often runs at addresses we are not linked at
-CPPFLAGS += -fPIE
+KBUILD_CPPFLAGS += -fPIE
 
 ifdef CONFIG_RELOCATABLE
 LDFLAGS_barebox += -pie
diff --git a/arch/kvx/Makefile b/arch/kvx/Makefile
index 81040f4e6..c97cff345 100644
--- a/arch/kvx/Makefile
+++ b/arch/kvx/Makefile
@@ -1,6 +1,6 @@
 KBUILD_DEFCONFIG := generic_defconfig
 
-CPPFLAGS += -fno-strict-aliasing
+KBUILD_CPPFLAGS += -fno-strict-aliasing
 
 board-$(CONFIG_GENERIC) := generic
 
@@ -13,12 +13,12 @@ endif
 DEFAULT_CFLAGS := -nostdlib -fno-builtin -fstrict-align -g
 DEFAULT_CFLAGS += -DTEXT_BASE=$(CONFIG_TEXT_BASE)
 
-LIBGCC_PATH = $(dir $(shell $(CC) $(CFLAGS) --print-libgcc-file-name))
+LIBGCC_PATH = $(dir $(shell $(CC) $(KBUILD_CFLAGS) --print-libgcc-file-name))
 
-CFLAGS += $(DEFAULT_CFLAGS)
-AFLAGS += $(DEFAULT_CFLAGS)
+KBUILD_CFLAGS += $(DEFAULT_CFLAGS)
+KBUILD_AFLAGS += $(DEFAULT_CFLAGS)
 
-LDFLAGS += -m elf64kvx
+KBUILD_LDFLAGS += -m elf64kvx
 
 archprepare: maketools
 
@@ -30,7 +30,7 @@ common-$(CONFIG_OFTREE) += arch/kvx/dts/
 
 lds-y += arch/kvx/cpu/barebox.lds
 
-cmd_barebox__ ?= $(LD) $(LDFLAGS) $(LDFLAGS_barebox) -o $@ \
+cmd_barebox__ ?= $(LD) $(KBUILD_LDFLAGS) $(LDFLAGS_barebox) -o $@ \
       -T $(BAREBOX_LDS) \
       --start-group $(BAREBOX_OBJS) --end-group \
       -L$(LIBGCC_PATH) -lgcc \
diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 932fdab0a..4717f49a4 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -11,7 +11,7 @@ else
 64bit-emul		= elf64btsmip
 endif
 
-CPPFLAGS += -D__MIPS__ -fno-strict-aliasing -fno-merge-constants
+KBUILD_CPPFLAGS += -D__MIPS__ -fno-strict-aliasing -fno-merge-constants
 
 cflags-y += -G 0 -mno-abicalls -fno-pic -pipe
 cflags-y += -Wall -Wstrict-prototypes \
@@ -42,7 +42,7 @@ cflags-y += $(shell $(CC) -dumpmachine |grep -q 'mips.*el-.*' || echo -EL $(unde
 mips-ldflags-y += $(shell $(CC) -dumpmachine |grep -q 'mips.*el-.*' || echo -EL )
 endif
 
-LDFLAGS += $(mips-ldflags-y) -m $(ld-emul)
+KBUILD_LDFLAGS += $(mips-ldflags-y) -m $(ld-emul)
 LDFLAGS_barebox += $(mips-ldflags-y)
 LDFLAGS_pbl += $(mips-ldflags-y)
 
@@ -55,11 +55,11 @@ cflags-$(CONFIG_CPU_MIPS64_R1) += $(call cc-option,-march=mips64,-mips64 -U_MIPS
 cflags-$(CONFIG_CPU_MIPS64_R2) += $(call cc-option,-march=mips64r2,-mips64r2 -U_MIPS_ISA -D_MIPS_ISA=_MIPS_ISA_MIPS64) -Wa,-mips64r2 -Wa,--trap
 cflags-$(CONFIG_CPU_GS232)     += $(call cc-option,-march=mips32r2,-mips32r2 -U_MIPS_ISA -D_MIPS_ISA=_MIPS_ISA_MIPS32) -Wa,-mips32r2 -Wa,--trap
 
-CPPFLAGS += -DTEXT_BASE=$(CONFIG_TEXT_BASE)
+KBUILD_CPPFLAGS += -DTEXT_BASE=$(CONFIG_TEXT_BASE)
 
 ifndef CONFIG_MODULES
 # Add cleanup flags
-CPPFLAGS += -fdata-sections -ffunction-sections
+KBUILD_CPPFLAGS += -fdata-sections -ffunction-sections
 LDFLAGS_barebox += -static --gc-sections --emit-relocs
 endif
 
@@ -83,9 +83,9 @@ machine-$(CONFIG_MACH_MIPS_XBURST)	:= xburst
 machdirs := $(patsubst %,arch/mips/mach-%/,$(machine-y))
 
 ifeq ($(KBUILD_SRC),)
-CPPFLAGS += $(patsubst %,-I%include,$(machdirs))
+KBUILD_CPPFLAGS += $(patsubst %,-I%include,$(machdirs))
 else
-CPPFLAGS += $(patsubst %,-I$(srctree)/%include,$(machdirs))
+KBUILD_CPPFLAGS += $(patsubst %,-I$(srctree)/%include,$(machdirs))
 endif
 
 ifeq ($(incdir-y),)
@@ -94,9 +94,9 @@ endif
 INCDIR   := arch-$(incdir-y)
 
 ifeq ($(KBUILD_SRC),)
-CPPFLAGS += -I$(BOARD)/include
+KBUILD_CPPFLAGS += -I$(BOARD)/include
 else
-CPPFLAGS += -I$(srctree)/$(BOARD)/include
+KBUILD_CPPFLAGS += -I$(srctree)/$(BOARD)/include
 endif
 
 ifneq ($(machine-y),)
@@ -112,12 +112,12 @@ common-y += arch/mips/lib/
 common-y += arch/mips/boot/
 common-y += arch/mips/boards/
 
-CPPFLAGS += $(cflags-y)
-CFLAGS += $(cflags-y)
+KBUILD_CPPFLAGS += $(cflags-y)
+KBUILD_CFLAGS += $(cflags-y)
 
 lds-$(CONFIG_GENERIC_LINKER_SCRIPT)   := arch/mips/lib/barebox.lds
 
-cmd_barebox__ ?= $(LD) $(LDFLAGS) $(LDFLAGS_barebox) -o $@ \
+cmd_barebox__ ?= $(LD) $(KBUILD_LDFLAGS) $(LDFLAGS_barebox) -o $@ \
       -T $(BAREBOX_LDS)                         \
       --start-group $(BAREBOX_OBJS) --end-group                  \
       $(filter-out $(BAREBOX_LDS) $(BAREBOX_OBJS) FORCE ,$^);	\
diff --git a/arch/mips/pbl/Makefile b/arch/mips/pbl/Makefile
index 8f9e9fe59..535bb4bf5 100644
--- a/arch/mips/pbl/Makefile
+++ b/arch/mips/pbl/Makefile
@@ -29,7 +29,7 @@ zbarebox-common := $(BAREBOX_PBL_OBJS) $(obj)/$(piggy_o)
 zbarebox-lds := $(obj)/zbarebox.lds
 
 quiet_cmd_zbarebox__ ?= LD      $@
-      cmd_zbarebox__ ?= $(LD) $(LDFLAGS) $(LDFLAGS_zbarebox) -o $@ \
+      cmd_zbarebox__ ?= $(LD) $(KBUILD_LDFLAGS) $(LDFLAGS_zbarebox) -o $@ \
       -T $(zbarebox-lds)                                           \
       --start-group $(zbarebox-common) --end-group                 \
       $(filter-out $(zbarebox-lds) $(zbarebox-common) FORCE ,$^)
diff --git a/arch/nios2/Makefile b/arch/nios2/Makefile
index 0dff0bed3..ef283f414 100644
--- a/arch/nios2/Makefile
+++ b/arch/nios2/Makefile
@@ -1,6 +1,6 @@
 KBUILD_DEFCONFIG := generic_defconfig
 
-CPPFLAGS += -fno-strict-aliasing -mno-hw-mul
+KBUILD_CPPFLAGS += -fno-strict-aliasing -mno-hw-mul
 
 board-$(CONFIG_GENERIC) := generic
 
diff --git a/arch/openrisc/Makefile b/arch/openrisc/Makefile
index 5394afb7f..72d7fa3d5 100644
--- a/arch/openrisc/Makefile
+++ b/arch/openrisc/Makefile
@@ -1,6 +1,6 @@
 KBUILD_DEFCONFIG := generic_defconfig
 
-CPPFLAGS += -D__OR1K__ -ffixed-r10 -mhard-mul -mhard-div
+KBUILD_CPPFLAGS += -D__OR1K__ -ffixed-r10 -mhard-mul -mhard-div
 
 board-$(CONFIG_GENERIC) := generic
 
diff --git a/arch/ppc/Makefile b/arch/ppc/Makefile
index ebf60eded..10f8ae3fe 100644
--- a/arch/ppc/Makefile
+++ b/arch/ppc/Makefile
@@ -1,15 +1,15 @@
 KBUILD_DEFCONFIG := p2020rdb_defconfig
 
-CPPFLAGS += -ffixed-r14 -m32 	\
+KBUILD_CPPFLAGS += -ffixed-r14 -m32 	\
 	-meabi -D __PPC__ -D CONFIG_PPC \
 	-fno-strict-aliasing -mno-spe -mspe=no
 
 ifdef CONFIG_RELOCATABLE
-CPPFLAGS += -fPIC -mrelocatable
+KBUILD_CPPFLAGS += -fPIC -mrelocatable
 endif
 
 ifdef CONFIG_MPC85xx
-CPPFLAGS += -Wa,-me500x2 -msoft-float -mno-string
+KBUILD_CPPFLAGS += -Wa,-me500x2 -msoft-float -mno-string
 endif
 
 board-$(CONFIG_MACH_PHYCORE_MPC5200B_TINY)	:= pcm030
@@ -25,20 +25,20 @@ cpu-$(CONFIG_ARCH_MPC85XX)			:= 85xx
 
 TEXT_BASE = $(CONFIG_TEXT_BASE)
 
-CPPFLAGS += -DTEXT_BASE=$(TEXT_BASE)
+KBUILD_CPPFLAGS += -DTEXT_BASE=$(TEXT_BASE)
 
 # Add cleanup flags
 ifndef CONFIG_MODULES
-CPPFLAGS += -fdata-sections -ffunction-sections
+KBUILD_CPPFLAGS += -fdata-sections -ffunction-sections
 LDFLAGS_barebox += --gc-sections
 endif
 
 machdirs := $(patsubst %,arch/ppc/mach-%/,$(machine-y))
 
 ifeq ($(KBUILD_SRC),)
-CPPFLAGS += $(patsubst %,-I%include,$(machdirs))
+KBUILD_CPPFLAGS += $(patsubst %,-I%include,$(machdirs))
 else
-CPPFLAGS += $(patsubst %,-I$(srctree)/%include,$(machdirs))
+KBUILD_CPPFLAGS += $(patsubst %,-I$(srctree)/%include,$(machdirs))
 endif
 
 archprepare: maketools
diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index b71a52ad1..5096bde0d 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -1,6 +1,6 @@
 KBUILD_DEFCONFIG := erizo_generic_defconfig
 
-CPPFLAGS += -fno-strict-aliasing
+KBUILD_CPPFLAGS += -fno-strict-aliasing
 
 ifeq ($(CONFIG_ARCH_RV32I),y)
 	cflags-y += -march=rv32im
@@ -15,11 +15,11 @@ LDFLAGS_barebox += -nostdlib
 machine-$(CONFIG_MACH_ERIZO)	:= erizo
 
 TEXT_BASE = $(CONFIG_TEXT_BASE)
-CPPFLAGS += -DTEXT_BASE=$(CONFIG_TEXT_BASE)
+KBUILD_CPPFLAGS += -DTEXT_BASE=$(CONFIG_TEXT_BASE)
 
 ifndef CONFIG_MODULES
 # Add cleanup flags
-CPPFLAGS += -fdata-sections -ffunction-sections
+KBUILD_CPPFLAGS += -fdata-sections -ffunction-sections
 LDFLAGS_barebox += -static --gc-sections
 endif
 
@@ -28,9 +28,9 @@ KBUILD_BINARY := barebox.bin
 machdirs := $(patsubst %,arch/riscv/mach-%/,$(machine-y))
 
 ifeq ($(KBUILD_SRC),)
-CPPFLAGS += $(patsubst %,-I%include,$(machdirs))
+KBUILD_CPPFLAGS += $(patsubst %,-I%include,$(machdirs))
 else
-CPPFLAGS += $(patsubst %,-I$(srctree)/%include,$(machdirs))
+KBUILD_CPPFLAGS += $(patsubst %,-I$(srctree)/%include,$(machdirs))
 endif
 
 archprepare: maketools
@@ -49,8 +49,8 @@ common-y += arch/riscv/lib/
 
 common-$(CONFIG_OFTREE) += arch/riscv/dts/
 
-CPPFLAGS += $(cflags-y)
-CFLAGS += $(cflags-y)
+KBUILD_CPPFLAGS += $(cflags-y)
+KBUILD_CFLAGS += $(cflags-y)
 
 lds-y	:= arch/riscv/lib/barebox.lds
 
diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index b7470c333..c205f47ff 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -1,6 +1,6 @@
 KBUILD_DEFCONFIG := sandbox_defconfig
 
-CPPFLAGS += -D__SANDBOX__ -fno-strict-aliasing -fvisibility=hidden
+KBUILD_CPPFLAGS += -D__SANDBOX__ -fno-strict-aliasing -fvisibility=hidden
 
 
 machine-y := sandbox
@@ -11,7 +11,7 @@ lds-y   := $(BOARD)/barebox.lds
 
 
 TEXT_BASE = $(CONFIG_TEXT_BASE)
-CFLAGS += -Dmalloc=barebox_malloc -Dcalloc=barebox_calloc \
+KBUILD_CFLAGS += -Dmalloc=barebox_malloc -Dcalloc=barebox_calloc \
 		-Dfree=barebox_free -Drealloc=barebox_realloc \
 		-Dread=barebox_read -Dwrite=barebox_write \
 		-Dopen=barebox_open -Dclose=barebox_close \
@@ -30,9 +30,9 @@ CFLAGS += -Dmalloc=barebox_malloc -Dcalloc=barebox_calloc \
 machdirs := $(patsubst %,arch/sandbox/mach-%/,$(machine-y))
 
 ifeq ($(KBUILD_SRC),)
-CPPFLAGS += $(patsubst %,-I%include,$(machdirs))
+KBUILD_CPPFLAGS += $(patsubst %,-I%include,$(machdirs))
 else
-CPPFLAGS += $(patsubst %,-I$(srctree)/%include,$(machdirs))
+KBUILD_CPPFLAGS += $(patsubst %,-I$(srctree)/%include,$(machdirs))
 endif
 
 archprepare: maketools
@@ -48,7 +48,7 @@ FTDI1_LIBS := $(shell pkg-config libftdi1 --libs)
 endif
 
 ifeq ($(CONFIG_KASAN),y)
-CPPFLAGS += -fsanitize=address
+KBUILD_CPPFLAGS += -fsanitize=address
 SANITIZER_LIBS += -fsanitize=address
 endif
 
diff --git a/arch/sandbox/os/Makefile b/arch/sandbox/os/Makefile
index 75baa34a8..40306b5ff 100644
--- a/arch/sandbox/os/Makefile
+++ b/arch/sandbox/os/Makefile
@@ -3,14 +3,14 @@ machine-y := sandbox
 machdirs := $(patsubst %,arch/sandbox/mach-%/,$(machine-y))
 
 ifeq ($(KBUILD_SRC),)
-CPPFLAGS := $(patsubst %,-I%include,$(machdirs))
+KBUILD_CPPFLAGS := $(patsubst %,-I%include,$(machdirs))
 else
-CPPFLAGS = $(patsubst %,-I$(srctree)/%include,$(machdirs))
+KBUILD_CPPFLAGS = $(patsubst %,-I$(srctree)/%include,$(machdirs))
 endif
 
-CPPFLAGS += -DCONFIG_MALLOC_SIZE=$(CONFIG_MALLOC_SIZE)
+KBUILD_CPPFLAGS += -DCONFIG_MALLOC_SIZE=$(CONFIG_MALLOC_SIZE)
 
-CFLAGS := -Wall
+KBUILD_CFLAGS := -Wall
 NOSTDINC_FLAGS :=
 
 obj-y = common.o tap.o
diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 4d471c2f8..c93a680e4 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -1,6 +1,6 @@
 KBUILD_DEFCONFIG := generic_defconfig
 
-CPPFLAGS += -D__X86__
+KBUILD_CPPFLAGS += -D__X86__
 
 board-$(CONFIG_MACH_X86_GENERIC) := x86_generic
 
@@ -8,15 +8,15 @@ TEXT_BASE = $(CONFIG_TEXT_BASE)
 
 ifeq ($(CONFIG_X86_EFI),y)
 machine-y := efi
-CFLAGS += -fpic -fshort-wchar -mno-sse -mno-mmx
+KBUILD_CFLAGS += -fpic -fshort-wchar -mno-sse -mno-mmx
 ifeq ($(CONFIG_X86_32),y)
 	TARGET = efi-app-ia32
 else
 	TARGET = efi-app-x86_64
 endif
 else
-CPPFLAGS += -fno-strict-aliasing
-CPPFLAGS += -march=i386 -DTEXT_BASE=$(TEXT_BASE) \
+KBUILD_CPPFLAGS += -fno-strict-aliasing
+KBUILD_CPPFLAGS += -march=i386 -DTEXT_BASE=$(TEXT_BASE) \
 	-fno-unwind-tables -fno-asynchronous-unwind-tables
 
 machine-y := i386
@@ -25,21 +25,21 @@ endif
 ifeq ($(CONFIG_X86_32),y)
 	UTS_MACHINE := i386
 	biarch := $(call cc-option,-m32)
-	AFLAGS += $(biarch)
-	CFLAGS += $(biarch)
-	CPPFLAGS += $(biarch)
+	KBUILD_AFLAGS += $(biarch)
+	KBUILD_CFLAGS += $(biarch)
+	KBUILD_CPPFLAGS += $(biarch)
 else
 	UTS_MACHINE := x86_64
-	AFLAGS += -m64
-	CFLAGS += -m64 -mno-red-zone
-	CPPFLAGS += -m64
+	KBUILD_AFLAGS += -m64
+	KBUILD_CFLAGS += -m64 -mno-red-zone
+	KBUILD_CPPFLAGS += -m64
 endif
 
 
 ifndef CONFIG_MODULES
 # Add cleanup flags
 ifneq ($(CONFIG_X86_EFI),y)
-CPPFLAGS += -fdata-sections -ffunction-sections
+KBUILD_CPPFLAGS += -fdata-sections -ffunction-sections
 LDFLAGS_barebox += -static --gc-sections
 endif
 endif
@@ -47,9 +47,9 @@ endif
 machdirs := $(patsubst %,arch/x86/mach-%/,$(machine-y))
 
 ifeq ($(KBUILD_SRC),)
-CPPFLAGS += $(patsubst %,-I%include,$(machdirs))
+KBUILD_CPPFLAGS += $(patsubst %,-I%include,$(machdirs))
 else
-CPPFLAGS += $(patsubst %,-I$(srctree)/%include,$(machdirs))
+KBUILD_CPPFLAGS += $(patsubst %,-I$(srctree)/%include,$(machdirs))
 endif
 
 ifneq ($(board-y),)
@@ -74,7 +74,7 @@ ifeq ($(CONFIG_X86_EFI),y)
 lds-$(CONFIG_X86_32)   := arch/x86/mach-efi/elf_ia32_efi.lds
 lds-$(CONFIG_X86_64)   := arch/x86/mach-efi/elf_x86_64_efi.lds
 
-cmd_barebox__ ?= $(LD) $(LDFLAGS) $(LDFLAGS_barebox) -o $@	\
+cmd_barebox__ ?= $(LD) $(KBUILD_LDFLAGS) $(LDFLAGS_barebox) -o $@	\
 		-T $(lds-y)					\
 		-shared -Bsymbolic -nostdlib -znocombreloc	\
 		--start-group $(BAREBOX_OBJS)			\
@@ -89,7 +89,7 @@ quiet_cmd_efi_image = EFI-IMG $@
 
 KBUILD_BINARY := barebox
 
-LDFLAGS := --no-undefined
+KBUILD_LDFLAGS := --no-undefined
 
 barebox.efi: $(KBUILD_BINARY) FORCE
 	$(call if_changed,efi_image)
@@ -104,7 +104,7 @@ lds-$(CONFIG_BOARD_LINKER_SCRIPT)     := $(BOARD)/barebox.lds
 
 endif
 
-LDFLAGS += -m elf_$(UTS_MACHINE)
+KBUILD_LDFLAGS += -m elf_$(UTS_MACHINE)
 
 CLEAN_FILES += $(lds-y)
 CLEAN_FILES    += arch/x86/lib/barebox.lds barebox.map barebox.S
diff --git a/arch/x86/boot/Makefile b/arch/x86/boot/Makefile
index b92b4750f..4a520a2a8 100644
--- a/arch/x86/boot/Makefile
+++ b/arch/x86/boot/Makefile
@@ -1,5 +1,5 @@
 
-CPPFLAGS += -D__I386__ -fno-strict-aliasing -m32 -g -Os -march=i386 \
+KBUILD_CPPFLAGS += -D__I386__ -fno-strict-aliasing -m32 -g -Os -march=i386 \
 	-mregparm=3 -fno-strict-aliasing -fomit-frame-pointer -ffreestanding \
 	-fno-toplevel-reorder -fno-unit-at-a-time -fno-stack-protector \
 	-mpreferred-stack-boundary=2
diff --git a/scripts/Kbuild.include b/scripts/Kbuild.include
index 919f28616..227a022b4 100644
--- a/scripts/Kbuild.include
+++ b/scripts/Kbuild.include
@@ -97,7 +97,7 @@ try-run = $(shell set -e;		\
 # Usage: cflags-y += $(call as-option,-Wa$(comma)-isa=foo,)
 
 as-option = $(call try-run,\
-	$(CC) $(CFLAGS) $(1) -c -xassembler /dev/null -o "$$TMP",$(1),$(2))
+	$(CC) $(KBUILD_CFLAGS) $(1) -c -xassembler /dev/null -o "$$TMP",$(1),$(2))
 
 # as-instr
 # Usage: cflags-y += $(call as-instr,instr,option1,option2)
@@ -109,17 +109,17 @@ as-instr = $(call try-run,\
 # Usage: cflags-y += $(call cc-option,-march=winchip-c6,-march=i586)
 
 cc-option = $(call try-run,\
-	$(CC) -Werror $(KBUILD_CPPFLAGS) $(CFLAGS) $(1) -c -xc /dev/null -o "$$TMP",$(1),$(2))
+	$(CC) -Werror $(KBUILD_CPPFLAGS) $(KBUILD_CFLAGS) $(1) -c -xc /dev/null -o "$$TMP",$(1),$(2))
 
 # cc-option-yn
 # Usage: flag := $(call cc-option-yn,-march=winchip-c6)
 cc-option-yn = $(call try-run,\
-	$(CC) -Werror $(KBUILD_CPPFLAGS) $(CFLAGS) $(1) -c -xc /dev/null -o "$$TMP",y,n)
+	$(CC) -Werror $(KBUILD_CPPFLAGS) $(KBUILD_CFLAGS) $(1) -c -xc /dev/null -o "$$TMP",y,n)
 
 # cc-disable-warning
 # Usage: cflags-y += $(call cc-disable-warning,unused-but-set-variable)
 cc-disable-warning = $(call try-run,\
-	$(CC) -Werror $(KBUILD_CPPFLAGS) $(CFLAGS) -W$(strip $(1)) -c -xc /dev/null -o "$$TMP",-Wno-$(strip $(1)))
+	$(CC) -Werror $(KBUILD_CPPFLAGS) $(KBUILD_CFLAGS) -W$(strip $(1)) -c -xc /dev/null -o "$$TMP",-Wno-$(strip $(1)))
 
 # cc-version
 # Usage gcc-ver := $(call cc-version)
@@ -130,7 +130,7 @@ cc-version = $(shell $(CONFIG_SHELL) $(srctree)/scripts/gcc-version.sh $(CC))
 cc-ifversion = $(shell [ $(call cc-version, $(CC)) $(1) $(2) ] && echo $(3))
 
 # ld-option
-# Usage: LDFLAGS += $(call ld-option, -X)
+# Usage: KBUILD_LDFLAGS += $(call ld-option, -X)
 ld-option = $(call try-run,\
 	$(CC) -x c /dev/null -c -o "$$TMPO" ; $(LD) $(1) "$$TMPO" -o "$$TMP",$(1),$(2))
 
diff --git a/scripts/Makefile b/scripts/Makefile
index eb6718fad..f3b9aece9 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -26,7 +26,7 @@ hostprogs-$(CONFIG_ARCH_SOCFPGA) += socfpga_mkimage
 hostprogs-$(CONFIG_MXS_HOSTTOOLS)+= mxsimage mxsboot
 hostprogs-$(CONFIG_ARCH_LAYERSCAPE) += pblimage
 hostprogs-$(CONFIG_ARCH_STM32MP) += stm32image
-HOSTCFLAGS += -I$(srctree)/scripts/include/
+KBUILD_HOSTCFLAGS += -I$(srctree)/scripts/include/
 HOSTLDLIBS_mxsimage  = `pkg-config --libs openssl`
 HOSTCFLAGS_omap3-usb-loader.o = `pkg-config --cflags libusb-1.0`
 HOSTLDLIBS_omap3-usb-loader  = `pkg-config --libs libusb-1.0`
@@ -50,7 +50,7 @@ targetprogs-$(CONFIG_IMD_TARGET) += bareboximd-target
 subdir-	+= basic kconfig setupmbr
 
 quiet_cmd_csingle	= CC      $@
-      cmd_csingle	= $(CC) -Wp,-MD,$(depfile) $(TARGETCFLAGS) $(CFLAGS) -o $@ $<
+      cmd_csingle	= $(CC) -Wp,-MD,$(depfile) $(TARGETCFLAGS) $(KBUILD_CFLAGS) -o $@ $<
 
 __targetprogs	:= $(sort $(targetprogs-y) $(targetprogs-m))
 target-csingle	:= $(foreach m,$(__targetprogs),$(if $($(m)-objs),,$(m)))
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index a6ed83e6d..601a4d9cd 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -178,7 +178,7 @@ cmd_modversions =							\
 			      -T $(@D)/$(@F:.o=.symtypes)) -a $(ARCH)	\
 		> $(@D)/.tmp_$(@F:.o=.ver);				\
 									\
-		$(LD) $(LDFLAGS) -r -o $@ $(@D)/.tmp_$(@F) 		\
+		$(LD) $(KBUILD_LDFLAGS) -r -o $@ $(@D)/.tmp_$(@F) 		\
 			-T $(@D)/.tmp_$(@F:.o=.ver);			\
 		rm -f $(@D)/.tmp_$(@F) $(@D)/.tmp_$(@F:.o=.ver);	\
 	else								\
diff --git a/scripts/Makefile.host b/scripts/Makefile.host
index 8f4d62f22..9740f3106 100644
--- a/scripts/Makefile.host
+++ b/scripts/Makefile.host
@@ -81,9 +81,9 @@ obj-dirs += $(host-objdirs)
 #####
 # Handle options to gcc. Support building with separate output directory
 
-_hostc_flags   = $(HOSTCFLAGS)   $(HOST_EXTRACFLAGS)   \
+_hostc_flags   = $(KBUILD_HOSTCFLAGS)   $(HOST_EXTRACFLAGS)   \
                  $(HOSTCFLAGS_$(target-stem).o)
-_hostcxx_flags = $(HOSTCXXFLAGS) $(HOST_EXTRACXXFLAGS) \
+_hostcxx_flags = $(KBUILD_HOSTCXXFLAGS) $(HOST_EXTRACXXFLAGS) \
                  $(HOSTCXXFLAGS_$(target-stem).o)
 
 ifeq ($(KBUILD_SRC),)
@@ -103,15 +103,15 @@ hostcxx_flags  = -Wp,-MD,$(depfile) $(__hostcxx_flags)
 # Create executable from a single .c file
 # host-csingle -> Executable
 quiet_cmd_host-csingle 	= HOSTCC  $@
-      cmd_host-csingle	= $(HOSTCC) $(hostc_flags) $(HOSTLDFLAGS) -o $@ $< \
-		$(HOST_LOADLIBES) $(HOSTLDLIBS_$(target-stem))
+      cmd_host-csingle	= $(HOSTCC) $(hostc_flags) $(KBUILD_HOSTLDFLAGS) -o $@ $< \
+		$(KBUILD_HOSTLDLIBS) $(HOSTLDLIBS_$(target-stem))
 $(host-csingle): $(obj)/%: $(src)/%.c FORCE
 	$(call if_changed_dep,host-csingle)
 
 # Link an executable based on list of .o files, all plain c
 # host-cmulti -> executable
 quiet_cmd_host-cmulti	= HOSTLD  $@
-      cmd_host-cmulti	= $(HOSTCC) $(HOSTLDFLAGS) -o $@ \
+      cmd_host-cmulti	= $(HOSTCC) $(KBUILD_HOSTLDFLAGS) -o $@ \
 			  $(addprefix $(obj)/, $($(target-stem)-objs)) \
 			  $(KBUILD_HOSTLDLIBS) $(HOSTLDLIBS_$(target-stem))
 $(host-cmulti): FORCE
@@ -128,7 +128,7 @@ $(host-cobjs): $(obj)/%.o: $(src)/%.c FORCE
 # Link an executable based on list of .o files, a mixture of .c and .cc
 # host-cxxmulti -> executable
 quiet_cmd_host-cxxmulti	= HOSTLD  $@
-      cmd_host-cxxmulti	= $(HOSTCXX) $(HOSTLDFLAGS) -o $@ \
+      cmd_host-cxxmulti	= $(HOSTCXX) $(KBUILD_HOSTLDFLAGS) -o $@ \
 			  $(foreach o,objs cxxobjs,\
 			  $(addprefix $(obj)/, $($(target-stem)-$(o)))) \
 			  $(KBUILD_HOSTLDLIBS) $(HOSTLDLIBS_$(target-stem))
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 5a5d6a3a6..985fc1303 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -132,9 +132,9 @@ basename_flags = -D"KBUILD_BASENAME=KBUILD_STR($(call name-fix,$(basetarget)))"
 modname_flags  = $(if $(filter 1,$(words $(modname))),\
                  -D"KBUILD_MODNAME=KBUILD_STR($(call name-fix,$(modname)))")
 
-_c_flags       = $(CFLAGS) $(ccflags-y) $(CFLAGS_$(target-stem).o)
-_a_flags       = $(AFLAGS) $(asflags-y) $(AFLAGS_$(target-stem).o)
-_cpp_flags     = $(CPPFLAGS) $(cppflags-y) $(CPPFLAGS_$(target-stem).lds)
+_c_flags       = $(KBUILD_CFLAGS) $(ccflags-y) $(CFLAGS_$(target-stem).o)
+_a_flags       = $(KBUILD_AFLAGS) $(asflags-y) $(AFLAGS_$(target-stem).o)
+_cpp_flags     = $(KBUILD_CPPFLAGS) $(cppflags-y) $(CPPFLAGS_$(target-stem).lds)
 
 ifeq ($(CONFIG_UBSAN),y)
 _CFLAGS_UBSAN   = $(eval _CFLAGS_UBSAN := $(CFLAGS_UBSAN))$(_CFLAGS_UBSAN)
@@ -162,16 +162,16 @@ __a_flags	=                          $(call flags,_a_flags)
 __cpp_flags     =                          $(call flags,_cpp_flags)
 endif
 
-c_flags        = -Wp,-MD,$(depfile) $(NOSTDINC_FLAGS) $(CPPFLAGS) \
+c_flags        = -Wp,-MD,$(depfile) $(NOSTDINC_FLAGS) $(KBUILD_CPPFLAGS) \
 		 $(__c_flags) $(modkern_cflags) \
 		 -D"KBUILD_STR(s)=\#s" $(basename_flags) $(modname_flags)
 
-a_flags        = -Wp,-MD,$(depfile) $(NOSTDINC_FLAGS) $(CPPFLAGS) \
+a_flags        = -Wp,-MD,$(depfile) $(NOSTDINC_FLAGS) $(KBUILD_CPPFLAGS) \
 		 $(__a_flags) $(modkern_aflags)
 
 cpp_flags      = -Wp,-MD,$(depfile) $(NOSTDINC_FLAGS) $(__cpp_flags)
 
-ld_flags       = $(LDFLAGS) $(ldflags-y)
+ld_flags       = $(KBUILD_LDFLAGS) $(ldflags-y)
 
 dtc_cpp_flags  = -Wp,-MD,$(depfile).pre -nostdinc                        \
 		 -I$(srctree)/arch/$(SRCARCH)/dts/include		 \
@@ -223,7 +223,7 @@ $(obj)/%:: $(src)/%_shipped
 # ---------------------------------------------------------------------------
 
 quiet_cmd_ld = LD      $@
-cmd_ld = $(LD) $(LDFLAGS) $(EXTRA_LDFLAGS) $(LDFLAGS_$(@F)) \
+cmd_ld = $(LD) $(KBUILD_LDFLAGS) $(EXTRA_LDFLAGS) $(LDFLAGS_$(@F)) \
 	       $(filter-out FORCE,$^) -o $@
 
 # Objcopy
diff --git a/scripts/Makefile.modpost b/scripts/Makefile.modpost
index 78e6edd92..78e4ed718 100644
--- a/scripts/Makefile.modpost
+++ b/scripts/Makefile.modpost
@@ -97,7 +97,7 @@ targets += $(modules:.ko=.mod.o)
 
 # Step 6), final link of the modules
 quiet_cmd_ld_ko_o = LD [M]  $@
-      cmd_ld_ko_o = $(LD) -r $(LDFLAGS) $(LDFLAGS_MODULE) -o $@		\
+      cmd_ld_ko_o = $(LD) -r $(KBUILD_LDFLAGS) $(LDFLAGS_MODULE) -o $@		\
 			  $(filter-out FORCE,$^)
 
 $(modules): %.ko :%.o %.mod.o FORCE
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
