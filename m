Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TZhEX-0003uq-Od
 for barebox@lists.infradead.org; Sat, 17 Nov 2012 12:10:53 +0000
Received: by mail-la0-f49.google.com with SMTP id r15so2563924lag.36
 for <barebox@lists.infradead.org>; Sat, 17 Nov 2012 04:10:47 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 17 Nov 2012 16:10:37 +0400
Message-Id: <1353154239-31574-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1353154239-31574-1-git-send-email-antonynpavlov@gmail.com>
References: <1353154239-31574-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 1/3] MIPS: add pre-bootloader (pbl) image support
To: barebox@lists.infradead.org

This patch is based on ARM pbl support and allows
creating a pre-bootloader binary for compressed image.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Kconfig               |    2 +
 arch/mips/Makefile              |   18 +++++
 arch/mips/boot/Makefile         |    2 +
 arch/mips/boot/main_entry-pbl.c |   90 ++++++++++++++++++++++++
 arch/mips/boot/start-pbl.S      |  146 +++++++++++++++++++++++++++++++++++++++
 arch/mips/pbl/.gitignore        |    6 ++
 arch/mips/pbl/Makefile          |   40 +++++++++++
 arch/mips/pbl/piggy.gzip.S      |    6 ++
 arch/mips/pbl/piggy.lzo.S       |    6 ++
 arch/mips/pbl/zbarebox.lds.S    |   57 +++++++++++++++
 10 files changed, 373 insertions(+)
 create mode 100644 arch/mips/boot/main_entry-pbl.c
 create mode 100644 arch/mips/boot/start-pbl.S
 create mode 100644 arch/mips/pbl/.gitignore
 create mode 100644 arch/mips/pbl/Makefile
 create mode 100644 arch/mips/pbl/piggy.gzip.S
 create mode 100644 arch/mips/pbl/piggy.lzo.S
 create mode 100644 arch/mips/pbl/zbarebox.lds.S

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 7a1eeac..853d406 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -6,6 +6,8 @@ config MIPS
 	select HAS_KALLSYMS
 	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
 	select HAVE_CONFIGURABLE_TEXT_BASE
+	select HAVE_PBL_IMAGE
+	select HAVE_IMAGE_COMPRESSION
 	default y
 
 config SYS_SUPPORTS_BIG_ENDIAN
diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 5e40de7..819e7a3 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -58,6 +58,15 @@ CPPFLAGS += -fdata-sections -ffunction-sections
 LDFLAGS_barebox += -static --gc-sections
 endif
 
+ifdef CONFIG_IMAGE_COMPRESSION
+KBUILD_BINARY := arch/mips/pbl/zbarebox.bin
+KBUILD_TARGET := zbarebox.bin
+$(KBUILD_BINARY): $(KBUILD_TARGET)
+else
+KBUILD_BINARY := barebox.bin
+KBUILD_TARGET := barebox.bin
+endif
+
 LDFLAGS_barebox += -nostdlib
 
 machine-$(CONFIG_MACH_MIPS_MALTA)	:= malta
@@ -106,3 +115,12 @@ CFLAGS += $(cflags-y)
 lds-$(CONFIG_GENERIC_LINKER_SCRIPT)   := arch/mips/lib/barebox.lds
 
 CLEAN_FILES    += arch/mips/lib/barebox.lds barebox.map barebox.S
+
+pbl := arch/mips/pbl
+zbarebox.S zbarebox.bin zbarebox: barebox.bin
+	$(Q)$(MAKE) $(build)=$(pbl) $(pbl)/$@
+
+archclean:
+	$(MAKE) $(clean)=$(pbl)
+
+KBUILD_IMAGE ?= $(KBUILD_BINARY)
diff --git a/arch/mips/boot/Makefile b/arch/mips/boot/Makefile
index d6d28ce..6b093f1 100644
--- a/arch/mips/boot/Makefile
+++ b/arch/mips/boot/Makefile
@@ -1,2 +1,4 @@
 obj-y += start.o
 obj-y += main_entry.o
+
+pbl-y += start-pbl.o main_entry-pbl.o
diff --git a/arch/mips/boot/main_entry-pbl.c b/arch/mips/boot/main_entry-pbl.c
new file mode 100644
index 0000000..51b9176
--- /dev/null
+++ b/arch/mips/boot/main_entry-pbl.c
@@ -0,0 +1,90 @@
+/*
+ * Copyright (C) 2012 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
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
+#include <init.h>
+#include <sizes.h>
+#include <string.h>
+#include <asm/sections.h>
+#include <asm-generic/memory_layout.h>
+#include <debug_ll.h>
+
+extern void *input_data;
+extern void *input_data_end;
+
+unsigned long free_mem_ptr;
+unsigned long free_mem_end_ptr;
+
+#define STATIC static
+
+#ifdef CONFIG_IMAGE_COMPRESSION_LZO
+#include "../../../lib/decompress_unlzo.c"
+#endif
+
+#ifdef CONFIG_IMAGE_COMPRESSION_GZIP
+#include "../../../lib/decompress_inflate.c"
+#endif
+
+void pbl_main_entry(void);
+
+static unsigned long *ttb;
+
+static noinline void errorfn(char *error)
+{
+	PUTS_LL(error);
+	PUTC_LL('\n');
+
+	unreachable();
+}
+
+static void barebox_uncompress(void *compressed_start, unsigned int len)
+{
+	/* set 128 KiB at the end of the MALLOC_BASE for early malloc */
+	free_mem_ptr = MALLOC_BASE + MALLOC_SIZE - SZ_128K;
+	free_mem_end_ptr = free_mem_ptr + SZ_128K;
+
+	ttb = (void *)((free_mem_ptr - 0x4000) & ~0x3fff);
+
+	decompress((void *)compressed_start,
+			len,
+			NULL, NULL,
+			(void *)TEXT_BASE, NULL, errorfn);
+
+	/* FIXME: just now we have no MIPS cache support */
+	/* flush_icache(); */
+}
+
+void __section(.text_entry) pbl_main_entry(void)
+{
+	u32 pg_start, pg_end, pg_len;
+	void (*barebox)(void);
+
+	PUTS_LL("pbl_main_entry()\n");
+
+	/* clear bss */
+	memset(__bss_start, 0, __bss_stop - __bss_start);
+
+	pg_start = (u32)&input_data;
+	pg_end = (u32)&input_data_end;
+	pg_len = pg_end - pg_start;
+
+	barebox_uncompress(&input_data, pg_len);
+
+	barebox = (void *)TEXT_BASE;
+	barebox();
+}
diff --git a/arch/mips/boot/start-pbl.S b/arch/mips/boot/start-pbl.S
new file mode 100644
index 0000000..ad39f42
--- /dev/null
+++ b/arch/mips/boot/start-pbl.S
@@ -0,0 +1,146 @@
+/*
+ * Startup Code for MIPS CPU
+ *
+ * Copyright (C) 2011, 2012 Antony Pavlov <antonynpavlov@gmail.com>
+ * ADR macro copyrighted (C) 2009 by Shinya Kuribayashi <skuribay@pobox.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <asm/regdef.h>
+#include <asm/mipsregs.h>
+#include <asm/asm.h>
+#include <asm-generic/memory_layout.h>
+#include <generated/compile.h>
+#include <generated/utsrelease.h>
+
+//#include <mach/kernel-entry-init.h>
+
+	/*
+	 * ADR macro instruction (inspired by ARM)
+	 *
+	 * ARM architecture doesn't have PC-relative jump instruction
+	 * like MIPS' B/BAL insns. When ARM makes PC-relative jumps,
+	 * it uses ADR insn. ADR is used to get a destination address
+	 * of 'label' against current PC. With this, ARM can safely
+	 * make PC-relative jumps.
+	 */
+	.macro	ADR rd label temp
+	.set	push
+	.set	noreorder
+	move	\temp, ra			# preserve ra beforehand
+	bal	_pc
+	 nop
+_pc:	addiu	\rd, ra, \label - _pc		# label is assumed to be
+	move	ra, \temp			# within pc +/- 32KB
+	.set	pop
+	.endm
+
+	.set noreorder
+	.text
+	.section ".text_head_entry"
+	.align 4
+
+EXPORT(pbl_start)
+
+	b	__start
+	 nop
+
+	.org	0x10
+	.ascii	"barebox " UTS_RELEASE " " UTS_VERSION
+	.byte	0
+
+	.align 4
+__start:
+	/* disable watchpoints */
+	mtc0	zero, CP0_WATCHLO
+	mtc0	zero, CP0_WATCHHI
+
+	/* disable interrupts */
+	mfc0	k0, CP0_STATUS
+	li	k1, ~ST0_IE
+	and	k0, k1
+	mtc0	k0, CP0_STATUS
+
+	/* cpu specific setup */
+	//kernel_entry_setup
+
+	/* copy barebox to link location */
+	ADR	a0, pbl_start, t1	/* a0 <- pc-relative
+					position of pbl_start */
+
+	la	a1, pbl_start	/* a1 <- link (RAM) pbl_start address */
+
+	beq	a0, a1, stack_setup
+	 nop
+
+	la	t0, pbl_start
+	la	t1, __bss_start
+	subu	t2, t1, t0	/* t2 <- size of pbl */
+	addu	a2, a0, t2	/* a2 <- source end address */
+
+#define LONGSIZE	4
+
+copy_loop:
+	/* copy from source address [a0] */
+	lw	t4, LONGSIZE * 0(a0)
+	lw	t5, LONGSIZE * 1(a0)
+	lw	t6, LONGSIZE * 2(a0)
+	lw	t7, LONGSIZE * 3(a0)
+	/* copy fo target address [a1] */
+	sw	t4, LONGSIZE * 0(a1)
+	sw	t5, LONGSIZE * 1(a1)
+	sw	t6, LONGSIZE * 2(a1)
+	sw	t7, LONGSIZE * 3(a1)
+	addi	a0, LONGSIZE * 4
+	subu	t3, a0, a2
+	blez	t3, copy_loop
+	 addi	a1, LONGSIZE * 4
+
+	/*
+	 * Dominic Sweetman, See MIPS Run, Morgan Kaufmann, 2nd edition, 2006
+	 *
+	 * 11.2.2 Stack Argument Structure in o32
+	 * ...
+	 * At the point where a function is called, sp must be
+	 * eight-byte-aligned, matching the alignment of the largest
+	 * basic types -- a long long integer or a floating-point double.
+	 * The eight-byte alignment is not required by 32-bit MIPS integer
+	 * hardware, but it's essential for compatibility with CPUs with
+	 * 64-bit registers, and thus part of the rules. Subroutines fit
+	 * in with this by always adjusting the stack pointer by a multiple
+	 * of eight.
+	 * ...
+	 * SGI's n32 and n64 standards call for the stack to be maintained
+	 * with 16-byte alignment.
+	 *
+	 */
+
+#if (STACK_BASE + STACK_SIZE) % 16 != 0
+#error stack pointer must be 16-byte-aligned
+#endif
+
+stack_setup:
+
+	/* set stack pointer; reserve four 32-bit argument slots */
+	la	sp, STACK_BASE + STACK_SIZE - 16
+
+	la	v0, pbl_main_entry
+	jal	v0
+	 nop
+
+	/* No return */
+__error:
+	b	__error
+	 nop
diff --git a/arch/mips/pbl/.gitignore b/arch/mips/pbl/.gitignore
new file mode 100644
index 0000000..d71bb7c
--- /dev/null
+++ b/arch/mips/pbl/.gitignore
@@ -0,0 +1,6 @@
+piggy.gzip
+piggy.lzo
+zbarebox
+zbarebox.bin
+zbarebox.lds
+zbarebox.map
diff --git a/arch/mips/pbl/Makefile b/arch/mips/pbl/Makefile
new file mode 100644
index 0000000..7faa51a
--- /dev/null
+++ b/arch/mips/pbl/Makefile
@@ -0,0 +1,40 @@
+
+suffix_$(CONFIG_IMAGE_COMPRESSION_GZIP) = gzip
+suffix_$(CONFIG_IMAGE_COMPRESSION_LZO)	= lzo
+
+OBJCOPYFLAGS_zbarebox.bin = -O binary
+piggy_o := piggy.$(suffix_y).o
+
+targets := zbarebox.lds zbarebox zbarebox.bin zbarebox.S \
+	   $(piggy_o) piggy.$(suffix_y)
+
+# Make sure files are removed during clean
+extra-y       += piggy.gzip piggy.lzo piggy.lzma piggy.xzkern zbarebox.map
+
+$(obj)/zbarebox.bin:	$(obj)/zbarebox FORCE
+	$(call if_changed,objcopy)
+	$(call cmd,check_file_size,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
+	$(Q)$(kecho) '  Barebox: $@ is ready'
+
+$(obj)/zbarebox.S: $(obj)/zbarebox FORCE
+	$(call if_changed,disasm)
+
+PBL_CPPFLAGS		+= -fdata-sections -ffunction-sections
+LDFLAGS_zbarebox	:= -Map $(obj)/zbarebox.map
+LDFLAGS_zbarebox	+= -static --gc-sections
+zbarebox-common := $(barebox-pbl-common) $(obj)/$(piggy_o)
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
+
+$(obj)/piggy.$(suffix_y): $(obj)/../../../barebox.bin FORCE
+	$(call if_changed,$(suffix_y))
+
+$(obj)/$(piggy_o): $(obj)/piggy.$(suffix_y) FORCE
diff --git a/arch/mips/pbl/piggy.gzip.S b/arch/mips/pbl/piggy.gzip.S
new file mode 100644
index 0000000..1e6bbef
--- /dev/null
+++ b/arch/mips/pbl/piggy.gzip.S
@@ -0,0 +1,6 @@
+#include <asm/asm.h>
+
+	.section .data
+EXPORT(input_data)
+	.incbin "arch/mips/pbl/piggy.gzip"
+EXPORT(input_data_end)
diff --git a/arch/mips/pbl/piggy.lzo.S b/arch/mips/pbl/piggy.lzo.S
new file mode 100644
index 0000000..6f1af1f
--- /dev/null
+++ b/arch/mips/pbl/piggy.lzo.S
@@ -0,0 +1,6 @@
+#include <asm/asm.h>
+
+	.section .data
+EXPORT(input_data)
+	.incbin	"arch/mips/pbl/piggy.lzo"
+EXPORT(input_data_end)
diff --git a/arch/mips/pbl/zbarebox.lds.S b/arch/mips/pbl/zbarebox.lds.S
new file mode 100644
index 0000000..3a26942
--- /dev/null
+++ b/arch/mips/pbl/zbarebox.lds.S
@@ -0,0 +1,57 @@
+/*
+ * (C) Copyright 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
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
+#include <asm-generic/barebox.lds.h>
+#include <asm-generic/memory_layout.h>
+
+OUTPUT_ARCH("mips")
+ENTRY(pbl_start)
+SECTIONS
+{
+	. = HEAD_TEXT_BASE;
+
+	PRE_IMAGE
+
+	. = ALIGN(4);
+	.text      :
+	{
+		_stext = .;
+		_text = .;
+		*(.text_head_entry*)
+		__bare_init_start = .;
+		*(.text_bare_init*)
+		__bare_init_end = .;
+		*(.text*)
+	}
+
+	BAREBOX_BARE_INIT_SIZE
+
+	. = ALIGN(4);
+	.rodata : { *(.rodata*) }
+
+	_etext = .;			/* End of text and rodata section */
+
+	. = ALIGN(4);
+	.data : { *(.data*) }
+
+	. = ALIGN(4);
+	__bss_start = .;
+	.bss : { *(.bss*) }
+	__bss_stop = .;
+	_end = .;
+}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
