Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TirvT-0000nU-54
 for barebox@lists.infradead.org; Wed, 12 Dec 2012 19:25:05 +0000
Received: by mail-lb0-f177.google.com with SMTP id n10so999140lbo.36
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2012 11:24:58 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 12 Dec 2012 23:24:46 +0400
Message-Id: <1355340288-10724-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1355340288-10724-1-git-send-email-antonynpavlov@gmail.com>
References: <1355340288-10724-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/3] MIPS: add pre-bootloader (pbl) image support
To: barebox@lists.infradead.org

This patch is based on ARM pbl support and allows
creating a pre-bootloader binary for compressed image.

For different MIPS SoCs (or even for different boards based
 on the same SoC) the operations carried on in start-pbl.S
can be very different. The additional constraints can be imposed
on the size of the boot code or the special magic labels in
the beginning of the boot code; In some cases it could be
necessary to show CPU is alive as early as possible
(transmit a char via UART or blink a LED).
So the demands for pbl start operation can be very different.

E.g. malta board store boot code at the NOR flash mapped
to the MIPS power-on address (0xbfc00000); it is the most
simple case: we need just copy pbl image from direct-mapped
flash to RAM and jump there.

The XBurst-powered boards store boot code in the beginning
of a NAND flash or in the beginning of SD/MMC card.
In this case we must use simple and short NAND or SD/MMC access
routines to copy pbl image to RAM.

To meet so different demands a simple technique is selected:

* MIPS pbl entry point located in file arch/mips/boot/start-pbl.S.

* MIPS pbl code (see start-pbl.S) assumes that every pbl-enabled
board has a arch/mips/boards/<BOARD>/include/board/board_pbl_start.h
header file. This file must contain definition of
the board_pbl_start macro. This macro is used as start of pbl image;

* the most popular asm routines (stack setup, relocation to link
address, NS16550 initialization (WIP) and so on) are containt
in the arch/mips/include/asm/pbl_macros.h header file.
So board pbl macro can use it if necessary.
It is possible to create similar headers with macros for each
specific SoC; so even if we have many different boards based
on the same SoC the board_pbl_start macro for every board
can be short and clear.

* after board-specific initialization the stack pointer
is initialized and pbl C code is started.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Makefile                 |   18 +++++
 arch/mips/boot/Makefile            |    2 +
 arch/mips/boot/main_entry-pbl.c    |   87 +++++++++++++++++++++++
 arch/mips/boot/start-pbl.S         |   46 ++++++++++++
 arch/mips/include/asm/pbl_macros.h |  135 ++++++++++++++++++++++++++++++++++++
 arch/mips/pbl/.gitignore           |    6 ++
 arch/mips/pbl/Makefile             |   40 +++++++++++
 arch/mips/pbl/piggy.gzip.S         |    6 ++
 arch/mips/pbl/piggy.lzo.S          |    6 ++
 arch/mips/pbl/zbarebox.lds.S       |   57 +++++++++++++++
 10 files changed, 403 insertions(+)
 create mode 100644 arch/mips/boot/main_entry-pbl.c
 create mode 100644 arch/mips/boot/start-pbl.S
 create mode 100644 arch/mips/include/asm/pbl_macros.h
 create mode 100644 arch/mips/pbl/.gitignore
 create mode 100644 arch/mips/pbl/Makefile
 create mode 100644 arch/mips/pbl/piggy.gzip.S
 create mode 100644 arch/mips/pbl/piggy.lzo.S
 create mode 100644 arch/mips/pbl/zbarebox.lds.S

diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index f32089d..3c565a4 100644
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
@@ -110,3 +119,12 @@ CFLAGS += $(cflags-y)
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
index 0000000..f39e936
--- /dev/null
+++ b/arch/mips/boot/main_entry-pbl.c
@@ -0,0 +1,87 @@
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
index 0000000..702e291
--- /dev/null
+++ b/arch/mips/boot/start-pbl.S
@@ -0,0 +1,46 @@
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
+
+#include <asm/pbl_macros.h>
+#include <board/board_pbl_start.h>
+
+	.set noreorder
+	.text
+	.section ".text_head_entry"
+	.align 4
+
+EXPORT(pbl_start)
+
+	board_pbl_start
+
+	stack_setup
+
+	la	v0, pbl_main_entry
+	jal	v0
+	 nop
+
+	/* No return */
+__error:
+	b	__error
+	 nop
diff --git a/arch/mips/include/asm/pbl_macros.h b/arch/mips/include/asm/pbl_macros.h
new file mode 100644
index 0000000..c32a229
--- /dev/null
+++ b/arch/mips/include/asm/pbl_macros.h
@@ -0,0 +1,135 @@
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
+#ifndef __ASM_PBL_MACROS_H
+#define __ASM_PBL_MACROS_H
+
+#include <asm/regdef.h>
+#include <asm/mipsregs.h>
+#include <asm/asm.h>
+#include <asm-generic/memory_layout.h>
+#include <generated/compile.h>
+#include <generated/utsrelease.h>
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
+#define LONGSIZE	4
+
+	.macro	copy_to_link_location start_addr
+	.set	push
+	.set	noreorder
+
+	/* copy barebox to link location */
+	ADR	a0, \start_addr, t1	/* a0 <- pc-relative
+					position of start_addr */
+
+	la	a1, \start_addr	/* a1 <- link (RAM) start_addr address */
+
+	beq	a0, a1, copy_loop_exit
+	 nop
+
+	la	t0, \start_addr
+	la	t1, __bss_start
+	subu	t2, t1, t0	/* t2 <- size of pbl */
+	addu	a2, a0, t2	/* a2 <- source end address */
+
+copy_loop:
+	/* copy from source address [a0] */
+	lw	t4, LONGSIZE * 0(a0)
+	lw	t5, LONGSIZE * 1(a0)
+	lw	t6, LONGSIZE * 2(a0)
+	lw	t7, LONGSIZE * 3(a0)
+	/* copy to target address [a1] */
+	sw	t4, LONGSIZE * 0(a1)
+	sw	t5, LONGSIZE * 1(a1)
+	sw	t6, LONGSIZE * 2(a1)
+	sw	t7, LONGSIZE * 3(a1)
+	addi	a0, LONGSIZE * 4
+	subu	t3, a0, a2
+	blez	t3, copy_loop
+	 addi	a1, LONGSIZE * 4
+
+copy_loop_exit:
+
+	.set	pop
+	.endm
+
+	.macro	mips_disable_interrupts
+	.set	push
+	.set	noreorder
+	mfc0	k0, CP0_STATUS
+	li	k1, ~ST0_IE
+	and	k0, k1
+	mtc0	k0, CP0_STATUS
+	.set	pop
+	.endm
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
+	.macro	stack_setup
+	.set	push
+	.set	noreorder
+
+	/* set stack pointer; reserve four 32-bit argument slots */
+	la	sp, STACK_BASE + STACK_SIZE - 16
+
+	.set	pop
+	.endm
+
+#endif /* __ASM_PBL_MACROS_H */
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
