Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo1.mail-out.ovh.net ([178.32.228.1])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SxF4O-0000cR-S7
 for barebox@lists.infradead.org; Fri, 03 Aug 2012 10:25:28 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 626F4FFA357
 for <barebox@lists.infradead.org>; Fri,  3 Aug 2012 12:31:35 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  3 Aug 2012 12:25:13 +0200
Message-Id: <1343989522-8807-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1343989522-8807-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120803102300.GB23597@game.jcrosoft.org>
 <1343989522-8807-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 03/12] Add pre-bootloader (pbl) image support
To: barebox@lists.infradead.org

This allows for creating a pre-bootloader binary for
 - nand boot
 - mmc boot
 - compressed image

The pbl will be incharge of the lowlevel init if needed.
The barebox will skip it.

Import string functions from linux 3.4 (arch/arm/boot/compressed/string.c) and
implement a dummy panic.

For now on introduce dummy zbarebox* targets and c code that will contain later
the decompressor. This only implemeted on ARM.

This patch is based on Sascha Hauer <s.hauer@pengutronix.de>
Add compressed image support patch

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 Makefile                                           |    6 +-
 arch/arm/Kconfig                                   |    1 +
 arch/arm/Makefile                                  |    7 ++
 arch/arm/cpu/Makefile                              |    3 +-
 arch/arm/cpu/{start.c => start-pbl.c}              |   58 ++-------
 arch/arm/cpu/{start.c => start-reset.c}            |   49 +-------
 arch/arm/cpu/start.c                               |   54 +++------
 arch/arm/lib/Makefile                              |    4 +
 arch/arm/lib/barebox.lds.S                         |    3 +-
 arch/arm/pbl/Makefile                              |   25 ++++
 arch/arm/{lib/barebox.lds.S => pbl/zbarebox.lds.S} |   56 +++------
 common/Kconfig                                     |   30 +++++
 include/asm-generic/memory_layout.h                |    1 +
 pbl/Makefile                                       |    5 +
 pbl/misc.c                                         |   14 +++
 pbl/string.c                                       |  127 ++++++++++++++++++++
 16 files changed, 268 insertions(+), 175 deletions(-)
 copy arch/arm/cpu/{start.c => start-pbl.c} (64%)
 copy arch/arm/cpu/{start.c => start-reset.c} (58%)
 create mode 100644 arch/arm/pbl/Makefile
 copy arch/arm/{lib/barebox.lds.S => pbl/zbarebox.lds.S} (60%)
 create mode 100644 pbl/Makefile
 create mode 100644 pbl/misc.c
 create mode 100644 pbl/string.c

diff --git a/Makefile b/Makefile
index ca47cb1..ce1506c 100644
--- a/Makefile
+++ b/Makefile
@@ -474,6 +474,8 @@ CFLAGS += $(call cc-option,-Wno-pointer-sign,)
 # this default value
 export KBUILD_IMAGE ?= barebox
 
+common-$(CONFIG_PBL_IMAGE)	+= pbl/
+
 barebox-dirs	:= $(patsubst %/,%,$(filter %/, $(common-y)))
 
 barebox-alldirs	:= $(sort $(barebox-dirs) $(patsubst %/,%,$(filter %/, \
@@ -520,7 +522,7 @@ barebox-lds    := $(lds-y)
 # May be overridden by arch/$(ARCH)/Makefile
 quiet_cmd_barebox__ ?= LD      $@
       cmd_barebox__ ?= $(LD) $(LDFLAGS) $(LDFLAGS_barebox) -o $@ \
-      -T $(barebox-lds) $(barebox-head)                         \
+      -T $(barebox-lds)                         \
       --start-group $(barebox-common) --end-group                  \
       $(filter-out $(barebox-lds) $(barebox-common) FORCE ,$^)
 
@@ -674,7 +676,9 @@ OBJCOPYFLAGS_barebox.bin = -O binary
 
 barebox.bin: barebox FORCE
 	$(call if_changed,objcopy)
+ifndef CONFIG_PBL_IMAGE
 	$(call cmd,check_file_size,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
+endif
 
 ifdef CONFIG_X86
 barebox.S: barebox
diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 08c742b..7932afc 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -4,6 +4,7 @@ config ARM
 	select HAS_MODULES
 	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
 	select HAVE_CONFIGURABLE_TEXT_BASE
+	select HAVE_PBL_IMAGE
 	default y
 
 config ARM_AMBA
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 1b60261..0ea050e 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -197,6 +197,13 @@ ifeq ($(CONFIG_ARCH_DAVINCI),y)
 KBUILD_IMAGE := barebox.ubl
 endif
 
+pbl := arch/arm/pbl
+zbarebox.S zbarebox.bin zbarebox: barebox.bin
+	$(Q)$(MAKE) $(build)=$(pbl) $(pbl)/$@
+
+archclean:
+	$(MAKE) $(clean)=$(pbl)
+
 all: $(KBUILD_IMAGE)
 
 archprepare: maketools
diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 93a34a9..78d300d 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -1,7 +1,7 @@
 obj-y += cpu.o
 obj-$(CONFIG_ARM_EXCEPTIONS) += exceptions.o
 obj-$(CONFIG_ARM_EXCEPTIONS) += interrupts.o
-obj-y += start.o
+obj-y += start.o start-reset.o
 
 #
 # Any variants can be called as start-armxyz.S
@@ -15,3 +15,4 @@ obj-$(CONFIG_CPU_32v6) += cache-armv6.o
 obj-$(CONFIG_CPU_32v7) += cache-armv7.o
 obj-$(CONFIG_CACHE_L2X0) += cache-l2x0.o
 
+pbl-y += start-pbl.o start-reset.o
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start-pbl.c
similarity index 64%
copy from arch/arm/cpu/start.c
copy to arch/arm/cpu/start-pbl.c
index 112403e..28d6f34 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -1,7 +1,8 @@
 /*
- * start-arm.c
+ * start-pbl.c
  *
- * Copyright (c) 2010 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ * Copyright (c) 2010-2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ * Copyright (c) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
  *
  * See file CREDITS for list of people who contributed to this
  * project.
@@ -24,53 +25,16 @@
 #include <init.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
-#include <asm/system.h>
 #include <asm-generic/memory_layout.h>
 #include <asm/sections.h>
 
-void __naked __section(.text_entry) start(void)
+void __naked __section(.text_head_entry) pbl_start(void)
 {
 	barebox_arm_head();
 }
 
-/*
- * The actual reset vector. This code is position independent and usually
- * does not run at the address it's linked at.
- */
-void __naked __bare_init reset(void)
+void barebox_pbl(uint32_t offset)
 {
-	uint32_t r;
-
-	/* set the cpu to SVC32 mode */
-	__asm__ __volatile__("mrs %0, cpsr":"=r"(r));
-	r &= ~0x1f;
-	r |= 0xd3;
-	__asm__ __volatile__("msr cpsr, %0" : : "r"(r));
-
-#ifdef CONFIG_ARCH_HAS_LOWLEVEL_INIT
-	arch_init_lowlevel();
-#endif
-
-	/* disable MMU stuff and caches */
-	r = get_cr();
-	r &= ~(CR_M | CR_C | CR_B | CR_S | CR_R | CR_V);
-	r |= CR_I;
-
-#if __LINUX_ARM_ARCH__ >= 6
-	r |= CR_U;
-#else
-	r |= CR_A;
-#endif
-
-#ifdef __ARMEB__
-	r |= CR_B;
-#endif
-	set_cr(r);
-
-#ifdef CONFIG_MACH_DO_LOWLEVEL_INIT
-	board_init_lowlevel();
-#endif
-	board_init_lowlevel_return();
 }
 
 /*
@@ -105,8 +69,12 @@ void __naked __section(.text_ll_return) board_init_lowlevel_return(void)
 	/* flush I-cache before jumping to the copied binary */
 	__asm__ __volatile__("mcr p15, 0, %0, c7, c5, 0" : : "r" (0));
 
-	/* call start_barebox with its absolute address */
-	r = (unsigned int)&start_barebox;
-	__asm__ __volatile__("mov pc, %0" : : "r"(r));
+	r = (unsigned int)&barebox_pbl;
+	/* call barebox_uncompress with its absolute address */
+	__asm__ __volatile__(
+		"mov r0, %1\n"
+		"mov pc, %0\n"
+		:
+		: "r"(r), "r"(offset),
+		: "r0");
 }
-
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start-reset.c
similarity index 58%
copy from arch/arm/cpu/start.c
copy to arch/arm/cpu/start-reset.c
index 112403e..e0df676 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start-reset.c
@@ -1,5 +1,5 @@
 /*
- * start-arm.c
+ * start-reset.c
  *
  * Copyright (c) 2010 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
  *
@@ -22,17 +22,10 @@
 
 #include <common.h>
 #include <init.h>
-#include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
 #include <asm/system.h>
-#include <asm-generic/memory_layout.h>
+#include <asm/barebox-arm.h>
 #include <asm/sections.h>
 
-void __naked __section(.text_entry) start(void)
-{
-	barebox_arm_head();
-}
-
 /*
  * The actual reset vector. This code is position independent and usually
  * does not run at the address it's linked at.
@@ -72,41 +65,3 @@ void __naked __bare_init reset(void)
 #endif
 	board_init_lowlevel_return();
 }
-
-/*
- * Board code can jump here by either returning from board_init_lowlevel
- * or by calling this function directly.
- */
-void __naked __section(.text_ll_return) board_init_lowlevel_return(void)
-{
-	uint32_t r, addr, offset;
-
-	/*
-	 * Get runtime address of this function. Do not
-	 * put any code above this.
-	 */
-	__asm__ __volatile__("1: adr %0, 1b":"=r"(addr));
-
-	/* Setup the stack */
-	r = STACK_BASE + STACK_SIZE - 16;
-	__asm__ __volatile__("mov sp, %0" : : "r"(r));
-
-	/* Get offset between linked address and runtime address */
-	offset = (uint32_t)__ll_return - addr;
-
-	/* relocate to link address if necessary */
-	if (offset)
-		memcpy((void *)_text, (void *)(_text - offset),
-				__bss_start - _text);
-
-	/* clear bss */
-	memset(__bss_start, 0, __bss_stop - __bss_start);
-
-	/* flush I-cache before jumping to the copied binary */
-	__asm__ __volatile__("mcr p15, 0, %0, c7, c5, 0" : : "r" (0));
-
-	/* call start_barebox with its absolute address */
-	r = (unsigned int)&start_barebox;
-	__asm__ __volatile__("mov pc, %0" : : "r"(r));
-}
-
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 112403e..8365a75 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -24,53 +24,31 @@
 #include <init.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
-#include <asm/system.h>
 #include <asm-generic/memory_layout.h>
 #include <asm/sections.h>
 
-void __naked __section(.text_entry) start(void)
-{
-	barebox_arm_head();
-}
-
+#ifdef CONFIG_PBL_IMAGE
 /*
- * The actual reset vector. This code is position independent and usually
- * does not run at the address it's linked at.
+ * First function in the pbl image. We get here from
+ * the pbl.
  */
-void __naked __bare_init reset(void)
+void __naked __section(.text_entry) start(void)
 {
-	uint32_t r;
+	u32 r;
 
-	/* set the cpu to SVC32 mode */
-	__asm__ __volatile__("mrs %0, cpsr":"=r"(r));
-	r &= ~0x1f;
-	r |= 0xd3;
-	__asm__ __volatile__("msr cpsr, %0" : : "r"(r));
-
-#ifdef CONFIG_ARCH_HAS_LOWLEVEL_INIT
-	arch_init_lowlevel();
-#endif
-
-	/* disable MMU stuff and caches */
-	r = get_cr();
-	r &= ~(CR_M | CR_C | CR_B | CR_S | CR_R | CR_V);
-	r |= CR_I;
+	/* Setup the stack */
+	r = STACK_BASE + STACK_SIZE - 16;
+	__asm__ __volatile__("mov sp, %0" : : "r"(r));
+	/* clear bss */
+	memset(__bss_start, 0, __bss_stop - __bss_start);
 
-#if __LINUX_ARM_ARCH__ >= 6
-	r |= CR_U;
+	start_barebox();
+}
 #else
-	r |= CR_A;
-#endif
-
-#ifdef __ARMEB__
-	r |= CR_B;
-#endif
-	set_cr(r);
 
-#ifdef CONFIG_MACH_DO_LOWLEVEL_INIT
-	board_init_lowlevel();
-#endif
-	board_init_lowlevel_return();
+void __naked __section(.text_entry) start(void)
+{
+	barebox_arm_head();
 }
 
 /*
@@ -109,4 +87,4 @@ void __naked __section(.text_ll_return) board_init_lowlevel_return(void)
 	r = (unsigned int)&start_barebox;
 	__asm__ __volatile__("mov pc, %0" : : "r"(r));
 }
-
+#endif
diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
index 1eaf474..9d0ff7a 100644
--- a/arch/arm/lib/Makefile
+++ b/arch/arm/lib/Makefile
@@ -21,3 +21,7 @@ obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memset.o
 obj-$(CONFIG_ARM_UNWIND) += unwind.o
 obj-$(CONFIG_MODULES) += module.o
 extra-y += barebox.lds
+
+pbl-y	+= lib1funcs.o
+pbl-y	+= ashldi3.o
+pbl-y	+= div0.o
diff --git a/arch/arm/lib/barebox.lds.S b/arch/arm/lib/barebox.lds.S
index e0bae70..a69013f 100644
--- a/arch/arm/lib/barebox.lds.S
+++ b/arch/arm/lib/barebox.lds.S
@@ -31,8 +31,9 @@ SECTIONS
 {
 	. = TEXT_BASE;
 
+#ifndef CONFIG_PBL_IMAGE
 	PRE_IMAGE
-
+#endif
 	. = ALIGN(4);
 	.text      :
 	{
diff --git a/arch/arm/pbl/Makefile b/arch/arm/pbl/Makefile
new file mode 100644
index 0000000..9b364bb
--- /dev/null
+++ b/arch/arm/pbl/Makefile
@@ -0,0 +1,25 @@
+
+OBJCOPYFLAGS_zbarebox.bin = -O binary
+
+targets := zbarebox.lds zbarebox zbarebox.bin zbarebox.S
+
+$(obj)/zbarebox.bin:	$(obj)/zbarebox FORCE
+	$(call if_changed,objcopy)
+	$(call cmd,check_file_size,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
+	@echo '  Barebox: $@ is ready'
+
+$(obj)/zbarebox.S: $(obj)/zbarebox FORCE
+	$(call if_changed,disasm)
+
+LDFLAGS_zbarebox	:= -Map zbarebox.map
+zbarebox-common := $(barebox-pbl-common)
+zbarebox-lds := $(obj)/zbarebox.lds
+
+quiet_cmd_zbarebox__ ?= LD      $@
+      cmd_zbarebox__ ?= $(LD) $(LDFLAGS) $(LDFLAGS_zbarebox) -o $@ \
+      -T $(zbarebox-lds)                                           \
+      --start-group $(zbarebox-common) --end-group                 \
+      $(filter-out $(zbarebox-lds) $(zbarebox-common) FORCE ,$^)
+
+$(obj)/zbarebox: $(zbarebox-lds) $(zbarebox-common) FORCE
+	$(call if_changed,zbarebox__)
diff --git a/arch/arm/lib/barebox.lds.S b/arch/arm/pbl/zbarebox.lds.S
similarity index 60%
copy from arch/arm/lib/barebox.lds.S
copy to arch/arm/pbl/zbarebox.lds.S
index e0bae70..b6e8028 100644
--- a/arch/arm/lib/barebox.lds.S
+++ b/arch/arm/pbl/zbarebox.lds.S
@@ -1,6 +1,5 @@
 /*
- * (C) Copyright 2000-2004
- * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
+ * (C) Copyright 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
  *
  * See file CREDITS for list of people who contributed to this
  * project.
@@ -23,13 +22,14 @@
  */
 
 #include <asm-generic/barebox.lds.h>
+#include <asm-generic/memory_layout.h>
 
 OUTPUT_FORMAT("elf32-littlearm", "elf32-littlearm", "elf32-littlearm")
 OUTPUT_ARCH(arm)
-ENTRY(start)
+ENTRY(pbl_start)
 SECTIONS
 {
-	. = TEXT_BASE;
+	. = HEAD_TEXT_BASE;
 
 	PRE_IMAGE
 
@@ -38,15 +38,12 @@ SECTIONS
 	{
 		_stext = .;
 		_text = .;
-		*(.text_entry*)
+		*(.text_head_entry*)
 		__ll_return = .;
 		*(.text_ll_return*)
 		__bare_init_start = .;
 		*(.text_bare_init*)
 		__bare_init_end = .;
-		__exceptions_start = .;
-		KEEP(*(.text_exceptions*))
-		__exceptions_stop = .;
 		*(.text*)
 	}
 	BAREBOX_BARE_INIT_SIZE
@@ -54,48 +51,23 @@ SECTIONS
 	. = ALIGN(4);
 	.rodata : { *(.rodata*) }
 
-#ifdef CONFIG_ARM_UNWIND
-	/*
-	 * Stack unwinding tables
-	 */
-	. = ALIGN(8);
-	.ARM.unwind_idx : {
-		__start_unwind_idx = .;
-		*(.ARM.exidx*)
-		__stop_unwind_idx = .;
-	}
-	.ARM.unwind_tab : {
-		__start_unwind_tab = .;
-		*(.ARM.extab*)
-		__stop_unwind_tab = .;
-	}
-#endif
 	_etext = .;			/* End of text and rodata section */
 
 	. = ALIGN(4);
 	.data : { *(.data*) }
 
-	. = .;
-	__barebox_cmd_start = .;
-	.barebox_cmd : { BAREBOX_CMDS }
-	__barebox_cmd_end = .;
-
-	__barebox_magicvar_start = .;
-	.barebox_magicvar : { BAREBOX_MAGICVARS }
-	__barebox_magicvar_end = .;
-
-	__barebox_initcalls_start = .;
-	.barebox_initcalls : { INITCALLS }
-	__barebox_initcalls_end = .;
-
-	__usymtab_start = .;
-	__usymtab : { BAREBOX_SYMS }
-	__usymtab_end = .;
-
 	. = ALIGN(4);
 	__bss_start = .;
 	.bss : { *(.bss*) }
 	__bss_stop = .;
 	_end = .;
-	_barebox_image_size = __bss_start - TEXT_BASE;
+
+	. = ALIGN(4);
+	__piggydata_start = .;
+	.piggydata : {
+		*(.piggydata)
+	}
+	__piggydata_end = .;
+
+	_barebox_image_size = __piggydata_end - HEAD_TEXT_BASE;
 }
diff --git a/common/Kconfig b/common/Kconfig
index 7eb5b49..7b5a307 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -101,6 +101,36 @@ config ENVIRONMENT_VARIABLES
 
 menu "memory layout                 "
 
+config HAVE_PBL_IMAGE
+	bool
+
+config HAVE_IMAGE_COMPRESSION
+	bool
+
+config PBL_IMAGE
+	bool "Pre-Bootloader image"
+	depends on HAVE_PBL_IMAGE
+
+if PBL_IMAGE
+
+config IMAGE_COMPRESSION
+	bool "Compressed image"
+	depends on HAVE_IMAGE_COMPRESSION
+
+if IMAGE_COMPRESSION
+
+choice
+	prompt "Compression"
+
+config IMAGE_COMPRESSION_LZO
+	bool "lzo"
+
+endchoice
+
+endif
+
+endif
+
 config MMU
 	bool "Enable MMU"
 	help
diff --git a/include/asm-generic/memory_layout.h b/include/asm-generic/memory_layout.h
index 941cd42..eb1607f 100644
--- a/include/asm-generic/memory_layout.h
+++ b/include/asm-generic/memory_layout.h
@@ -13,6 +13,7 @@
 
 #endif
 
+#define HEAD_TEXT_BASE MALLOC_BASE
 #define MALLOC_SIZE CONFIG_MALLOC_SIZE
 #define STACK_SIZE  CONFIG_STACK_SIZE
 
diff --git a/pbl/Makefile b/pbl/Makefile
new file mode 100644
index 0000000..7169c6c
--- /dev/null
+++ b/pbl/Makefile
@@ -0,0 +1,5 @@
+#
+# only unsed by the pbl
+#
+pbl-y += misc.o
+pbl-y += string.o
diff --git a/pbl/misc.c b/pbl/misc.c
new file mode 100644
index 0000000..47e9cea
--- /dev/null
+++ b/pbl/misc.c
@@ -0,0 +1,14 @@
+#include <common.h>
+#include <init.h>
+#include <linux/types.h>
+#include <linux/string.h>
+#include <linux/ctype.h>
+
+void __noreturn panic(const char *fmt, ...)
+{
+	while(1);
+}
+
+void start_barebox(void)
+{
+}
diff --git a/pbl/string.c b/pbl/string.c
new file mode 100644
index 0000000..6787e82
--- /dev/null
+++ b/pbl/string.c
@@ -0,0 +1,127 @@
+/*
+ * arch/arm/boot/compressed/string.c
+ *
+ * Small subset of simple string routines
+ */
+
+#include <linux/types.h>
+
+void *memcpy(void *__dest, __const void *__src, size_t __n)
+{
+	int i = 0;
+	unsigned char *d = (unsigned char *)__dest, *s = (unsigned char *)__src;
+
+	for (i = __n >> 3; i > 0; i--) {
+		*d++ = *s++;
+		*d++ = *s++;
+		*d++ = *s++;
+		*d++ = *s++;
+		*d++ = *s++;
+		*d++ = *s++;
+		*d++ = *s++;
+		*d++ = *s++;
+	}
+
+	if (__n & 1 << 2) {
+		*d++ = *s++;
+		*d++ = *s++;
+		*d++ = *s++;
+		*d++ = *s++;
+	}
+
+	if (__n & 1 << 1) {
+		*d++ = *s++;
+		*d++ = *s++;
+	}
+
+	if (__n & 1)
+		*d++ = *s++;
+
+	return __dest;
+}
+
+void *memmove(void *__dest, __const void *__src, size_t count)
+{
+	unsigned char *d = __dest;
+	const unsigned char *s = __src;
+
+	if (__dest == __src)
+		return __dest;
+
+	if (__dest < __src)
+		return memcpy(__dest, __src, count);
+
+	while (count--)
+		d[count] = s[count];
+	return __dest;
+}
+
+size_t strlen(const char *s)
+{
+	const char *sc = s;
+
+	while (*sc != '\0')
+		sc++;
+	return sc - s;
+}
+
+int memcmp(const void *cs, const void *ct, size_t count)
+{
+	const unsigned char *su1 = cs, *su2 = ct, *end = su1 + count;
+	int res = 0;
+
+	while (su1 < end) {
+		res = *su1++ - *su2++;
+		if (res)
+			break;
+	}
+	return res;
+}
+
+int strcmp(const char *cs, const char *ct)
+{
+	unsigned char c1, c2;
+	int res = 0;
+
+	do {
+		c1 = *cs++;
+		c2 = *ct++;
+		res = c1 - c2;
+		if (res)
+			break;
+	} while (c1);
+	return res;
+}
+
+void *memchr(const void *s, int c, size_t count)
+{
+	const unsigned char *p = s;
+
+	while (count--)
+		if ((unsigned char)c == *p++)
+			return (void *)(p - 1);
+	return NULL;
+}
+
+char *strchr(const char *s, int c)
+{
+	while (*s != (char)c)
+		if (*s++ == '\0')
+			return NULL;
+	return (char *)s;
+}
+
+#undef memset
+
+void *memset(void *s, int c, size_t count)
+{
+	char *xs = s;
+	while (count--)
+		*xs++ = c;
+	return s;
+}
+
+void __memzero(void *s, size_t count)
+{
+	memset(s, 0, count);
+}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
