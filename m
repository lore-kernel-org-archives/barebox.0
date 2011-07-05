Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qe2Je-0003Z2-E1
	for barebox@lists.infradead.org; Tue, 05 Jul 2011 09:53:24 +0000
Received: by mail-bw0-f49.google.com with SMTP id 12so5981784bwf.36
	for <barebox@lists.infradead.org>; Tue, 05 Jul 2011 02:53:14 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  5 Jul 2011 13:52:46 +0400
Message-Id: <1309859569-11119-9-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1309859569-11119-1-git-send-email-antonynpavlov@gmail.com>
References: <1309859569-11119-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 09/12 v4-draft] MIPS: add start.S, CP0 clocksource,
	linker script and memory layout function
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Kconfig           |  184 +++++++++++++++++++++++++++++++++++++++++++
 arch/mips/Makefile          |   72 +++++++++++++++++
 arch/mips/boot/Makefile     |    1 +
 arch/mips/boot/start.S      |  120 ++++++++++++++++++++++++++++
 arch/mips/lib/Makefile      |    6 ++
 arch/mips/lib/barebox.lds.S |   76 ++++++++++++++++++
 arch/mips/lib/csrc-r4k.c    |   48 +++++++++++
 arch/mips/lib/memory.c      |   32 ++++++++
 8 files changed, 539 insertions(+), 0 deletions(-)
 create mode 100644 arch/mips/Kconfig
 create mode 100644 arch/mips/Makefile
 create mode 100644 arch/mips/boot/Makefile
 create mode 100644 arch/mips/boot/start.S
 create mode 100644 arch/mips/lib/Makefile
 create mode 100644 arch/mips/lib/barebox.lds.S
 create mode 100644 arch/mips/lib/csrc-r4k.c
 create mode 100644 arch/mips/lib/memory.c

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
new file mode 100644
index 0000000..f35aa8c
--- /dev/null
+++ b/arch/mips/Kconfig
@@ -0,0 +1,184 @@
+#
+#
+#
+config MIPS
+	bool
+	select HAS_KALLSYMS
+	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
+	select HAVE_CONFIGURABLE_TEXT_BASE
+	default y
+
+config SYS_SUPPORTS_BIG_ENDIAN
+	bool
+
+config SYS_SUPPORTS_LITTLE_ENDIAN
+	bool
+
+config CSRC_R4K_LIB
+	bool
+
+config GENERIC_LINKER_SCRIPT
+	bool
+	default y
+
+#
+# Endianess selection.  Sufficiently obscure so many users don't know what to
+# answer,so we try hard to limit the available choices.  Also the use of a
+# choice statement should be more obvious to the user.
+#
+choice
+	prompt "Endianess selection"
+	help
+	  Some MIPS machines can be configured for either little or big endian
+	  byte order. These modes require different kernels and a different
+	  Linux distribution.  In general there is one preferred byteorder for a
+	  particular system but some systems are just as commonly used in the
+	  one or the other endianness.
+
+config CPU_BIG_ENDIAN
+	bool "Big endian"
+	depends on SYS_SUPPORTS_BIG_ENDIAN
+
+config CPU_LITTLE_ENDIAN
+	bool "Little endian"
+	depends on SYS_SUPPORTS_LITTLE_ENDIAN
+	help
+
+endchoice
+
+menu "CPU selection"
+
+choice
+	prompt "CPU selection"
+	default CPU_MIPS32_R2
+
+config CPU_MIPS32_R1
+	bool "MIPS32 Release 1"
+	depends on SYS_HAS_CPU_MIPS32_R1
+	select CPU_SUPPORTS_32BIT_KERNEL
+	help
+	  Choose this option to build a kernel for release 1 or later of the
+	  MIPS32 architecture.  Most modern embedded systems with a 32-bit
+	  MIPS processor are based on a MIPS32 processor.  If you know the
+	  specific type of processor in your system, choose those that one
+	  otherwise CPU_MIPS32_R1 is a safe bet for any MIPS32 system.
+	  Release 2 of the MIPS32 architecture is available since several
+	  years so chances are you even have a MIPS32 Release 2 processor
+	  in which case you should choose CPU_MIPS32_R2 instead for better
+	  performance.
+
+config CPU_MIPS32_R2
+	bool "MIPS32 Release 2"
+	depends on SYS_HAS_CPU_MIPS32_R2
+	select CPU_SUPPORTS_32BIT_KERNEL
+	help
+	  Choose this option to build a kernel for release 2 or later of the
+	  MIPS32 architecture.  Most modern embedded systems with a 32-bit
+	  MIPS processor are based on a MIPS32 processor.  If you know the
+	  specific type of processor in your system, choose those that one
+	  otherwise CPU_MIPS32_R1 is a safe bet for any MIPS32 system.
+
+config CPU_MIPS64_R1
+	bool "MIPS64 Release 1"
+	depends on SYS_HAS_CPU_MIPS64_R1
+	select CPU_SUPPORTS_32BIT_KERNEL
+	select CPU_SUPPORTS_64BIT_KERNEL
+	help
+	  Choose this option to build a kernel for release 1 or later of the
+	  MIPS64 architecture.  Many modern embedded systems with a 64-bit
+	  MIPS processor are based on a MIPS64 processor.  If you know the
+	  specific type of processor in your system, choose those that one
+	  otherwise CPU_MIPS64_R1 is a safe bet for any MIPS64 system.
+	  Release 2 of the MIPS64 architecture is available since several
+	  years so chances are you even have a MIPS64 Release 2 processor
+	  in which case you should choose CPU_MIPS64_R2 instead for better
+	  performance.
+
+config CPU_MIPS64_R2
+	bool "MIPS64 Release 2"
+	depends on SYS_HAS_CPU_MIPS64_R2
+	select CPU_SUPPORTS_32BIT_KERNEL
+	select CPU_SUPPORTS_64BIT_KERNEL
+	help
+	  Choose this option to build a kernel for release 2 or later of the
+	  MIPS64 architecture.  Many modern embedded systems with a 64-bit
+	  MIPS processor are based on a MIPS64 processor.  If you know the
+	  specific type of processor in your system, choose those that one
+	  otherwise CPU_MIPS64_R1 is a safe bet for any MIPS64 system.
+
+endchoice
+
+
+config SYS_HAS_CPU_MIPS32_R1
+	bool
+
+config SYS_HAS_CPU_MIPS32_R2
+	bool
+
+config SYS_HAS_CPU_MIPS64_R1
+	bool
+
+config SYS_HAS_CPU_MIPS64_R2
+	bool
+
+#
+# These two indicate any level of the MIPS32 and MIPS64 architecture
+#
+config CPU_MIPS32
+	bool
+	default y if CPU_MIPS32_R1 || CPU_MIPS32_R2
+
+config CPU_MIPS64
+	bool
+	default y if CPU_MIPS64_R1 || CPU_MIPS64_R2
+
+#
+# These two indicate the revision of the architecture, either Release 1 or Release 2
+#
+config CPU_MIPSR1
+	bool
+	default y if CPU_MIPS32_R1 || CPU_MIPS64_R1
+
+config CPU_MIPSR2
+	bool
+	default y if CPU_MIPS32_R2 || CPU_MIPS64_R2
+
+config SYS_SUPPORTS_32BIT_KERNEL
+	bool
+config SYS_SUPPORTS_64BIT_KERNEL
+	bool
+config CPU_SUPPORTS_32BIT_KERNEL
+	bool
+config CPU_SUPPORTS_64BIT_KERNEL
+	bool
+
+endmenu
+
+choice
+	prompt "Kernel code model"
+	help
+	  You should only select this option if you have a workload that
+	  actually benefits from 64-bit processing or if your machine has
+	  large memory.  You will only be presented a single option in this
+	  menu if your system does not support both 32-bit and 64-bit kernels.
+
+config 32BIT
+	bool "32-bit kernel"
+	depends on CPU_SUPPORTS_32BIT_KERNEL && SYS_SUPPORTS_32BIT_KERNEL
+	help
+	  Select this option if you want to build a 32-bit kernel.
+
+config 64BIT
+	bool "64-bit kernel"
+	depends on CPU_SUPPORTS_64BIT_KERNEL && SYS_SUPPORTS_64BIT_KERNEL
+	help
+	  Select this option if you want to build a 64-bit kernel.
+
+endchoice
+
+source common/Kconfig
+source commands/Kconfig
+source net/Kconfig
+source drivers/Kconfig
+source fs/Kconfig
+source lib/Kconfig
diff --git a/arch/mips/Makefile b/arch/mips/Makefile
new file mode 100644
index 0000000..34ac8ad
--- /dev/null
+++ b/arch/mips/Makefile
@@ -0,0 +1,72 @@
+CPPFLAGS += -D__MIPS__ -fno-strict-aliasing -fno-merge-constants
+
+CPPFLAGS += -mno-abicalls -fno-pic
+CPPFLAGS += -Wall -Wmissing-prototypes -Wstrict-prototypes \
+	    -Wno-uninitialized -Wno-format -Wno-main
+
+cflags-$(CONFIG_32BIT) += -mabi=32
+cflags-$(CONFIG_64BIT) += -mabi=64
+
+undef-all += -UMIPSEB -U_MIPSEB -U__MIPSEB -U__MIPSEB__
+undef-all += -UMIPSEL -U_MIPSEL -U__MIPSEL -U__MIPSEL__
+predef-be += -DMIPSEB -D_MIPSEB -D__MIPSEB -D__MIPSEB__
+predef-le += -DMIPSEL -D_MIPSEL -D__MIPSEL -D__MIPSEL__
+
+cflags-$(CONFIG_CPU_BIG_ENDIAN) += $(shell $(CC) -dumpmachine |grep -q 'mips.*el-.*' && echo -EB $(undef-all) $(predef-be))
+
+cflags-$(CONFIG_CPU_LITTLE_ENDIAN) += $(shell $(CC) -dumpmachine |grep -q 'mips.*el-.*' || echo -EL $(undef-all) $(predef-le))
+
+#
+# CPU-dependent compiler/assembler options for optimization.
+#
+cflags-$(CONFIG_CPU_MIPS32_R1) += $(call cc-option,-march=mips32,-mips32 -U_MIPS_ISA -D_MIPS_ISA=_MIPS_ISA_MIPS32) -Wa,-mips32 -Wa,--trap
+cflags-$(CONFIG_CPU_MIPS32_R2) += $(call cc-option,-march=mips32r2,-mips32r2 -U_MIPS_ISA -D_MIPS_ISA=_MIPS_ISA_MIPS32) -Wa,-mips32r2 -Wa,--trap
+cflags-$(CONFIG_CPU_MIPS64_R1) += $(call cc-option,-march=mips64,-mips64 -U_MIPS_ISA -D_MIPS_ISA=_MIPS_ISA_MIPS64) -Wa,-mips64 -Wa,--trap
+cflags-$(CONFIG_CPU_MIPS64_R2) += $(call cc-option,-march=mips64r2,-mips64r2 -U_MIPS_ISA -D_MIPS_ISA=_MIPS_ISA_MIPS64) -Wa,-mips64r2 -Wa,--trap
+
+CPPFLAGS += -DTEXT_BASE=$(CONFIG_TEXT_BASE)
+
+ifndef CONFIG_MODULES
+# Add cleanup flags
+CPPFLAGS += -fdata-sections -ffunction-sections
+LDFLAGS_barebox += -static --gc-sections
+endif
+
+LDFLAGS_barebox += -nostdlib
+
+machdirs := $(patsubst %,arch/mips/mach-%/,$(machine-y))
+
+ifeq ($(KBUILD_SRC),)
+CPPFLAGS += $(patsubst %,-I%include,$(machdirs))
+else
+CPPFLAGS += $(patsubst %,-I$(srctree)/%include,$(machdirs))
+endif
+
+ifeq ($(incdir-y),)
+incdir-y := $(machine-y)
+endif
+INCDIR   := arch-$(incdir-y)
+
+all: $(KBUILD_IMAGE)
+
+ifneq ($(board-y),)
+BOARD := arch/mips/boards/$(board-y)/
+else
+BOARD :=
+endif
+
+ifneq ($(machine-y),)
+MACH  := arch/mips/mach-$(machine-y)/
+else
+MACH  :=
+endif
+
+common-y += $(BOARD) $(MACH)
+common-y += arch/mips/lib/
+common-y += arch/mips/boot/
+
+CPPFLAGS += $(cflags-y)
+
+lds-$(CONFIG_GENERIC_LINKER_SCRIPT)   := arch/mips/lib/barebox.lds
+
+CLEAN_FILES    += arch/mips/lib/barebox.lds barebox.map barebox.S
diff --git a/arch/mips/boot/Makefile b/arch/mips/boot/Makefile
new file mode 100644
index 0000000..f9151d2
--- /dev/null
+++ b/arch/mips/boot/Makefile
@@ -0,0 +1 @@
+obj-y += start.o
diff --git a/arch/mips/boot/start.S b/arch/mips/boot/start.S
new file mode 100644
index 0000000..53077e9
--- /dev/null
+++ b/arch/mips/boot/start.S
@@ -0,0 +1,120 @@
+/*
+ * Startup Code for MIPS32 CPU-core
+ *
+ * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
+ * Used code copyrighted (C) 2009 by Shinya Kuribayashi <skuribay@pobox.com>
+ * Used code copyrighted (C) 2003 by Wolfgang Denk <wd@denx.de>
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
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+
+#include <asm/regdef.h>
+#include <asm/mipsregs.h>
+#include <asm-generic/memory_layout.h>
+
+	/*
+	 * ADR macro instruction (inspired by ARM)
+	 *
+	 * ARM architecture doens't have PC-relative jump instruction
+	 * like MIPS' B/BAL insns.  When ARM makes PC-lerative jumps,
+	 * it uses ADR insn.  ADR is used to get a destination address
+	 * of 'label' against current PC.  With this, ARM can safely
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
+        .text
+	.section ".text_bare_init"
+        .globl _start
+	.align 4
+
+_start:
+	/* Clear watch registers */
+	mtc0	zero, CP0_WATCHLO
+	mtc0	zero, CP0_WATCHHI
+
+	/* STATUS register: disable interrupts */
+	mfc0	k0, CP0_STATUS
+	li	k1, ~ST0_IE
+	and	k0, k1
+	mtc0	k0, CP0_STATUS
+
+	/* CAUSE register */
+	mtc0	zero, CP0_CAUSE
+
+	/* Init Timer */
+	mtc0	zero, CP0_COUNT
+	mtc0	zero, CP0_COMPARE
+
+	ADR	a0, _start, t1	/* a0 <- current position of _start */
+
+	la	a1, _start	/* link (RAM) _start address */
+
+	la	t0, _start
+	la	t1, __bss_start
+	subu	t2, t1, t0	/* t2 <- size of barebox */
+	addu	a2, a0, t2	/* a2 <- source end address */
+
+#define LONGSIZE	4
+
+copy_loop:
+	lw		t4, LONGSIZE * 0(a0)	# copy from source address [t0]
+	lw		t5, LONGSIZE * 1(a0)
+	lw		t6, LONGSIZE * 2(a0)
+	lw		t7, LONGSIZE * 3(a0)
+	sw		t4, LONGSIZE * 0(a1)	# copy fo target address [t1]
+	sw		t5, LONGSIZE * 1(a1)
+	sw		t6, LONGSIZE * 2(a1)
+	sw		t7, LONGSIZE * 3(a1)
+	addi		a0, LONGSIZE * 4
+	subu		t3, a0, a2
+	blez		t3, copy_loop
+	addi		a1, LONGSIZE * 4
+
+clear_bss:
+	la	t0, __bss_start
+	sw	zero, (t0)
+	la	t1, _end - 4
+1:
+	addiu	t0, 4
+	sw	zero, (t0)
+	bne	t0, t1, 1b
+	 nop
+
+stack_setup:
+	la	sp, STACK_BASE + STACK_SIZE
+	addiu	sp, -32			# init stack pointer
+
+	la	v0, start_barebox
+        jal     v0
+	 nop
+
+	/* No return */
+
+__error:
+	b __error
+	 nop
diff --git a/arch/mips/lib/Makefile b/arch/mips/lib/Makefile
new file mode 100644
index 0000000..67e4e8a
--- /dev/null
+++ b/arch/mips/lib/Makefile
@@ -0,0 +1,6 @@
+extra-$(CONFIG_GENERIC_LINKER_SCRIPT) += barebox.lds
+obj-$(CONFIG_CSRC_R4K_LIB) += csrc-r4k.o
+obj-y += lshrdi3.o
+obj-y += ashldi3.o
+obj-y += ashrdi3.o
+obj-y += memory.o
diff --git a/arch/mips/lib/barebox.lds.S b/arch/mips/lib/barebox.lds.S
new file mode 100644
index 0000000..dd9eab7
--- /dev/null
+++ b/arch/mips/lib/barebox.lds.S
@@ -0,0 +1,76 @@
+/*
+ * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
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
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+
+
+#include <asm-generic/barebox.lds.h>
+
+OUTPUT_ARCH(mips)
+ENTRY(_start)
+SECTIONS
+{
+	. = TEXT_BASE;
+
+	. = ALIGN(4);
+	.text      :
+	{
+		_start = .;
+		*(.text_entry*)
+		_stext = .;
+		_text = .;
+		*(.text_bare_init*)
+		*(.text*)
+	}
+
+	PRE_IMAGE
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
+	.got : { *(.got*) }
+
+	. = .;
+	__barebox_cmd_start = .;
+	.barebox_cmd : { BAREBOX_CMDS }
+	__barebox_cmd_end = .;
+
+	__barebox_initcalls_start = .;
+	.barebox_initcalls : { INITCALLS }
+	__barebox_initcalls_end = .;
+
+	__usymtab_start = .;
+	__usymtab : { BAREBOX_SYMS }
+	__usymtab_end = .;
+
+	__early_init_data_begin = .;
+	.early_init_data : { *(.early_init_data) }
+	__early_init_data_end = .;
+
+	. = ALIGN(4);
+	__bss_start = .;
+	.bss : { *(.bss*) }
+	__bss_end = .;
+	_end = .;
+}
diff --git a/arch/mips/lib/csrc-r4k.c b/arch/mips/lib/csrc-r4k.c
new file mode 100644
index 0000000..174a0ea
--- /dev/null
+++ b/arch/mips/lib/csrc-r4k.c
@@ -0,0 +1,48 @@
+/*
+ * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
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
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+
+/**
+ * @file
+ * @brief Clocksource based on MIPS CP0 timer
+ */
+
+#include <init.h>
+#include <clock.h>
+#include <asm/io.h>
+#include <asm/mipsregs.h>
+
+static uint64_t c0_hpt_read(void)
+{
+	return read_c0_count();
+}
+
+static struct clocksource cs = {
+	.read	= c0_hpt_read,
+	.mask	= 0xffffffff,
+};
+
+static int clocksource_init(void)
+{
+	cs.mult = clocksource_hz2mult(50000000, cs.shift);
+	init_clock(&cs);
+
+	return 0;
+}
+core_initcall(clocksource_init);
diff --git a/arch/mips/lib/memory.c b/arch/mips/lib/memory.c
new file mode 100644
index 0000000..23a995c
--- /dev/null
+++ b/arch/mips/lib/memory.c
@@ -0,0 +1,32 @@
+/*
+ * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
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
+#include <mem_malloc.h>
+#include <asm-generic/memory_layout.h>
+
+static int mips_mem_malloc_init(void)
+{
+	mem_malloc_init((void *)MALLOC_BASE,
+			(void *)(MALLOC_BASE + MALLOC_SIZE));
+	return 0;
+}
+core_initcall(mips_mem_malloc_init);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
