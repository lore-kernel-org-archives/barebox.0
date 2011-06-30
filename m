Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f43.google.com ([209.85.161.43])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QcDcO-0006xe-4U
	for barebox@lists.infradead.org; Thu, 30 Jun 2011 09:33:13 +0000
Received: by fxg17 with SMTP id 17so1866533fxg.16
	for <barebox@lists.infradead.org>; Thu, 30 Jun 2011 02:32:54 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 30 Jun 2011 13:32:42 +0400
Message-Id: <1309426364-22124-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/3 v3] Add MIPS arch support to barebox
To: barebox@lists.infradead.org

Barebox can use only uncached memory.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Kconfig                   |  184 +++++++
 arch/mips/Makefile                  |   72 +++
 arch/mips/boot/Makefile             |    1 +
 arch/mips/boot/head.S               |  102 ++++
 arch/mips/include/asm/barebox.h     |   24 +
 arch/mips/include/asm/bitops.h      |   32 ++
 arch/mips/include/asm/byteorder.h   |   30 +
 arch/mips/include/asm/common.h      |   29 +
 arch/mips/include/asm/elf.h         |   30 +
 arch/mips/include/asm/io.h          |   73 +++
 arch/mips/include/asm/mipsregs.h    |  988 +++++++++++++++++++++++++++++++++++
 arch/mips/include/asm/module.h      |   36 ++
 arch/mips/include/asm/posix_types.h |   48 ++
 arch/mips/include/asm/regdef.h      |  100 ++++
 arch/mips/include/asm/sections.h    |    1 +
 arch/mips/include/asm/sgidefs.h     |   44 ++
 arch/mips/include/asm/string.h      |   31 ++
 arch/mips/include/asm/swab.h        |   59 ++
 arch/mips/include/asm/types.h       |   44 ++
 arch/mips/include/mach/debug_ll.h   |   35 ++
 arch/mips/lib/Makefile              |    6 +
 arch/mips/lib/ashldi3.c             |   27 +
 arch/mips/lib/ashrdi3.c             |   29 +
 arch/mips/lib/barebox.lds.S         |   76 +++
 arch/mips/lib/csrc-r4k.c            |   50 ++
 arch/mips/lib/libgcc.h              |   25 +
 arch/mips/lib/lshrdi3.c             |   27 +
 arch/mips/lib/memory.c              |   34 ++
 28 files changed, 2237 insertions(+), 0 deletions(-)
 create mode 100644 arch/mips/Kconfig
 create mode 100644 arch/mips/Makefile
 create mode 100644 arch/mips/boot/Makefile
 create mode 100644 arch/mips/boot/head.S
 create mode 100644 arch/mips/include/asm/barebox.h
 create mode 100644 arch/mips/include/asm/bitops.h
 create mode 100644 arch/mips/include/asm/byteorder.h
 create mode 100644 arch/mips/include/asm/common.h
 create mode 100644 arch/mips/include/asm/elf.h
 create mode 100644 arch/mips/include/asm/io.h
 create mode 100644 arch/mips/include/asm/mipsregs.h
 create mode 100644 arch/mips/include/asm/module.h
 create mode 100644 arch/mips/include/asm/posix_types.h
 create mode 100644 arch/mips/include/asm/regdef.h
 create mode 100644 arch/mips/include/asm/sections.h
 create mode 100644 arch/mips/include/asm/sgidefs.h
 create mode 100644 arch/mips/include/asm/string.h
 create mode 100644 arch/mips/include/asm/swab.h
 create mode 100644 arch/mips/include/asm/types.h
 create mode 100644 arch/mips/include/mach/debug_ll.h
 create mode 100644 arch/mips/lib/Makefile
 create mode 100644 arch/mips/lib/ashldi3.c
 create mode 100644 arch/mips/lib/ashrdi3.c
 create mode 100644 arch/mips/lib/barebox.lds.S
 create mode 100644 arch/mips/lib/csrc-r4k.c
 create mode 100644 arch/mips/lib/libgcc.h
 create mode 100644 arch/mips/lib/lshrdi3.c
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
index 0000000..3340058
--- /dev/null
+++ b/arch/mips/boot/Makefile
@@ -0,0 +1 @@
+obj-y += head.o
diff --git a/arch/mips/boot/head.S b/arch/mips/boot/head.S
new file mode 100644
index 0000000..1acacf9
--- /dev/null
+++ b/arch/mips/boot/head.S
@@ -0,0 +1,102 @@
+/*
+ * Startup Code for MIPS32 CPU-core
+ *
+ * Copyright (c) 2003	Wolfgang Denk <wd@denx.de>
+ * Further modifications by Antony Pavlov
+ * Used code written by Shinya Kuribayashi <skuribay@pobox.com>
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <asm/regdef.h>
+#include <asm/mipsregs.h>
+#include <asm-generic/memory_layout.h>
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
+	/* Compute _start load address */
+	bal	compute_load_address
+	 nop
+
+compute_load_address:
+	move	a0, ra
+	and	a0, 0xffff0000		/* Mask off lower bits: a0 <- load address (souce start) */
+
+	la	a1, _start		/* RAM start address */
+
+	la	t0, _start
+	la	t1, __bss_start
+	subu	t2, t1, t0			# t2 <- size of barebox
+	addu	a2, a0, t2			# a2 <- source end address
+
+copy_to_link_address:
+	b	2f
+	sltu	v0, a0, a2
+1:	addiu	a0, a0, 4
+	sw	v0, (a1)
+	addiu	a1, a1, 4
+	sltu	v0, a0, a2
+2:	bnezl	v0, 1b
+	lw	v0, (a0)
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
diff --git a/arch/mips/include/asm/barebox.h b/arch/mips/include/asm/barebox.h
new file mode 100644
index 0000000..b42c9ff
--- /dev/null
+++ b/arch/mips/include/asm/barebox.h
@@ -0,0 +1,24 @@
+/*
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+#ifndef _ASM_MIPS_BAREBOX_H_
+#define _ASM_MIPS_BAREBOX_H_
+
+/* nothing special yet */
+
+#endif /* _ASM_MIPS_BAREBOX_H_ */
diff --git a/arch/mips/include/asm/bitops.h b/arch/mips/include/asm/bitops.h
new file mode 100644
index 0000000..36d34b6
--- /dev/null
+++ b/arch/mips/include/asm/bitops.h
@@ -0,0 +1,32 @@
+/*
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+/**
+ * @file
+ * @brief mips bit operations
+ *
+ * This file is required only to make all sources happy including
+ * 'linux/bitops.h'
+ */
+
+#ifndef _ASM_MIPS_BITOPS_H_
+#define _ASM_MIPS_BITOPS_H_
+
+/* nothing special yet */
+
+#endif /* _ASM_MIPS_BITOPS_H_ */
diff --git a/arch/mips/include/asm/byteorder.h b/arch/mips/include/asm/byteorder.h
new file mode 100644
index 0000000..5fcdd9f
--- /dev/null
+++ b/arch/mips/include/asm/byteorder.h
@@ -0,0 +1,30 @@
+/*
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+/**
+ * @file
+ * @brief mips endianess declaration
+ */
+
+#ifndef __ASM_MIPS_BYTEORDER_H
+#define __ASM_MIPS_BYTEORDER_H
+
+#include <asm/types.h>
+#include <linux/byteorder/big_endian.h>
+
+#endif
diff --git a/arch/mips/include/asm/common.h b/arch/mips/include/asm/common.h
new file mode 100644
index 0000000..f0aef01
--- /dev/null
+++ b/arch/mips/include/asm/common.h
@@ -0,0 +1,29 @@
+/*
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+/**
+ * @file
+ * @brief mips common declarations
+ */
+
+#ifndef _ASM_MIPS_COMMON_H_
+#define _ASM_MIPS_COMMON_H_
+
+void mips_machine_restart(void);
+
+#endif /* _ASM_MIPS_COMMON_H_ */
diff --git a/arch/mips/include/asm/elf.h b/arch/mips/include/asm/elf.h
new file mode 100644
index 0000000..d88863d
--- /dev/null
+++ b/arch/mips/include/asm/elf.h
@@ -0,0 +1,30 @@
+/*
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+/**
+ * @file
+ * @brief mips specific elf information
+ *
+ */
+
+#ifndef _ASM_MIPS_ELF_H
+#define _ASM_MIPS_ELF_H
+
+#define ELF_CLASS ELFCLASS32
+
+#endif /* _ASM_MIPS_ELF_H */
diff --git a/arch/mips/include/asm/io.h b/arch/mips/include/asm/io.h
new file mode 100644
index 0000000..f4b0a2b
--- /dev/null
+++ b/arch/mips/include/asm/io.h
@@ -0,0 +1,73 @@
+/*
+ * Stolen from the linux-2.6/include/asm-generic/io.h
+ */
+
+/**
+ * @file
+ * @brief mips IO access functions
+ */
+
+#ifndef __ASM_MIPS_IO_H
+#define __ASM_MIPS_IO_H
+
+#include <linux/compiler.h>
+#include <asm/types.h>
+
+/*****************************************************************************/
+/*
+ * readX/writeX() are used to access memory mapped devices. On some
+ * architectures the memory mapped IO stuff needs to be accessed
+ * differently. On the simple architectures, we just read/write the
+ * memory location directly.
+ */
+#ifndef __raw_readb
+static inline u8 __raw_readb(const volatile void __iomem *addr)
+{
+	return *(const volatile u8 __force *) addr;
+}
+#endif
+
+#ifndef __raw_readw
+static inline u16 __raw_readw(const volatile void __iomem *addr)
+{
+	return *(const volatile u16 __force *) addr;
+}
+#endif
+
+#ifndef __raw_readl
+static inline u32 __raw_readl(const volatile void __iomem *addr)
+{
+	return *(const volatile u32 __force *) addr;
+}
+#endif
+
+#define readb __raw_readb
+#define readw(addr) __le16_to_cpu(__raw_readw(addr))
+#define readl(addr) __le32_to_cpu(__raw_readl(addr))
+
+#ifndef __raw_writeb
+static inline void __raw_writeb(u8 b, volatile void __iomem *addr)
+{
+	*(volatile u8 __force *) addr = b;
+}
+#endif
+
+#ifndef __raw_writew
+static inline void __raw_writew(u16 b, volatile void __iomem *addr)
+{
+	*(volatile u16 __force *) addr = b;
+}
+#endif
+
+#ifndef __raw_writel
+static inline void __raw_writel(u32 b, volatile void __iomem *addr)
+{
+	*(volatile u32 __force *) addr = b;
+}
+#endif
+
+#define writeb __raw_writeb
+#define writew(b,addr) __raw_writew(__cpu_to_le16(b),addr)
+#define writel(b,addr) __raw_writel(__cpu_to_le32(b),addr)
+
+#endif	/* __ASM_MIPS_IO_H */
diff --git a/arch/mips/include/asm/mipsregs.h b/arch/mips/include/asm/mipsregs.h
new file mode 100644
index 0000000..f3d1ae2
--- /dev/null
+++ b/arch/mips/include/asm/mipsregs.h
@@ -0,0 +1,988 @@
+/*
+ * This file is subject to the terms and conditions of the GNU General Public
+ * License.  See the file "COPYING" in the main directory of this archive
+ * for more details.
+ *
+ * Copyright (C) 1994, 1995, 1996, 1997, 2000, 2001 by Ralf Baechle
+ * Copyright (C) 2000 Silicon Graphics, Inc.
+ * Modified for further R[236]000 support by Paul M. Antoine, 1996.
+ * Kevin D. Kissell, kevink@mips.com and Carsten Langgaard, carstenl@mips.com
+ * Copyright (C) 2000, 07 MIPS Technologies, Inc.
+ * Copyright (C) 2003, 2004  Maciej W. Rozycki
+ */
+#ifndef _ASM_MIPSREGS_H
+#define _ASM_MIPSREGS_H
+
+/*
+ * The following macros are especially useful for __asm__
+ * inline assembler.
+ */
+#ifndef __STR
+#define __STR(x) #x
+#endif
+#ifndef STR
+#define STR(x) __STR(x)
+#endif
+
+/*
+ *  Configure language
+ */
+#ifdef __ASSEMBLY__
+#define _ULCAST_
+#else
+#define _ULCAST_ (unsigned long)
+#endif
+
+/*
+ * Coprocessor 0 register names
+ */
+#define CP0_INDEX $0
+#define CP0_RANDOM $1
+#define CP0_ENTRYLO0 $2
+#define CP0_ENTRYLO1 $3
+#define CP0_CONF $3
+#define CP0_CONTEXT $4
+#define CP0_PAGEMASK $5
+#define CP0_WIRED $6
+#define CP0_INFO $7
+#define CP0_BADVADDR $8
+#define CP0_COUNT $9
+#define CP0_ENTRYHI $10
+#define CP0_COMPARE $11
+#define CP0_STATUS $12
+#define CP0_CAUSE $13
+#define CP0_EPC $14
+#define CP0_PRID $15
+#define CP0_CONFIG $16
+#define CP0_LLADDR $17
+#define CP0_WATCHLO $18
+#define CP0_WATCHHI $19
+#define CP0_XCONTEXT $20
+#define CP0_FRAMEMASK $21
+#define CP0_DIAGNOSTIC $22
+#define CP0_DEBUG $23
+#define CP0_DEPC $24
+#define CP0_PERFORMANCE $25
+#define CP0_ECC $26
+#define CP0_CACHEERR $27
+#define CP0_TAGLO $28
+#define CP0_TAGHI $29
+#define CP0_ERROREPC $30
+#define CP0_DESAVE $31
+
+/*
+ * R4640/R4650 cp0 register names.  These registers are listed
+ * here only for completeness; without MMU these CPUs are not useable
+ * by Linux.  A future ELKS port might take make Linux run on them
+ * though ...
+ */
+#define CP0_IBASE $0
+#define CP0_IBOUND $1
+#define CP0_DBASE $2
+#define CP0_DBOUND $3
+#define CP0_CALG $17
+#define CP0_IWATCH $18
+#define CP0_DWATCH $19
+
+/*
+ * Coprocessor 0 Set 1 register names
+ */
+#define CP0_S1_DERRADDR0  $26
+#define CP0_S1_DERRADDR1  $27
+#define CP0_S1_INTCONTROL $20
+
+/*
+ * Coprocessor 0 Set 2 register names
+ */
+#define CP0_S2_SRSCTL	  $12	/* MIPSR2 */
+
+/*
+ * Coprocessor 0 Set 3 register names
+ */
+#define CP0_S3_SRSMAP	  $12	/* MIPSR2 */
+
+/*
+ *  TX39 Series
+ */
+#define CP0_TX39_CACHE	$7
+
+/*
+ * Coprocessor 1 (FPU) register names
+ */
+#define CP1_REVISION   $0
+#define CP1_STATUS     $31
+
+/*
+ * FPU Status Register Values
+ */
+/*
+ * Status Register Values
+ */
+
+#define FPU_CSR_FLUSH   0x01000000      /* flush denormalised results to 0 */
+#define FPU_CSR_COND    0x00800000      /* $fcc0 */
+#define FPU_CSR_COND0   0x00800000      /* $fcc0 */
+#define FPU_CSR_COND1   0x02000000      /* $fcc1 */
+#define FPU_CSR_COND2   0x04000000      /* $fcc2 */
+#define FPU_CSR_COND3   0x08000000      /* $fcc3 */
+#define FPU_CSR_COND4   0x10000000      /* $fcc4 */
+#define FPU_CSR_COND5   0x20000000      /* $fcc5 */
+#define FPU_CSR_COND6   0x40000000      /* $fcc6 */
+#define FPU_CSR_COND7   0x80000000      /* $fcc7 */
+
+/*
+ * Bits 18 - 20 of the FPU Status Register will be read as 0,
+ * and should be written as zero.
+ */
+#define FPU_CSR_RSVD	0x001c0000
+
+/*
+ * X the exception cause indicator
+ * E the exception enable
+ * S the sticky/flag bit
+*/
+#define FPU_CSR_ALL_X   0x0003f000
+#define FPU_CSR_UNI_X   0x00020000
+#define FPU_CSR_INV_X   0x00010000
+#define FPU_CSR_DIV_X   0x00008000
+#define FPU_CSR_OVF_X   0x00004000
+#define FPU_CSR_UDF_X   0x00002000
+#define FPU_CSR_INE_X   0x00001000
+
+#define FPU_CSR_ALL_E   0x00000f80
+#define FPU_CSR_INV_E   0x00000800
+#define FPU_CSR_DIV_E   0x00000400
+#define FPU_CSR_OVF_E   0x00000200
+#define FPU_CSR_UDF_E   0x00000100
+#define FPU_CSR_INE_E   0x00000080
+
+#define FPU_CSR_ALL_S   0x0000007c
+#define FPU_CSR_INV_S   0x00000040
+#define FPU_CSR_DIV_S   0x00000020
+#define FPU_CSR_OVF_S   0x00000010
+#define FPU_CSR_UDF_S   0x00000008
+#define FPU_CSR_INE_S   0x00000004
+
+/* Bits 0 and 1 of FPU Status Register specify the rounding mode */
+#define FPU_CSR_RM	0x00000003
+#define FPU_CSR_RN      0x0     /* nearest */
+#define FPU_CSR_RZ      0x1     /* towards zero */
+#define FPU_CSR_RU      0x2     /* towards +Infinity */
+#define FPU_CSR_RD      0x3     /* towards -Infinity */
+
+/*
+ * Values for PageMask register
+ */
+#ifdef CONFIG_CPU_VR41XX
+
+/* Why doesn't stupidity hurt ... */
+
+#define PM_1K		0x00000000
+#define PM_4K		0x00001800
+#define PM_16K		0x00007800
+#define PM_64K		0x0001f800
+#define PM_256K		0x0007f800
+
+#else
+
+#define PM_4K		0x00000000
+#define PM_8K		0x00002000
+#define PM_16K		0x00006000
+#define PM_32K		0x0000e000
+#define PM_64K		0x0001e000
+#define PM_128K		0x0003e000
+#define PM_256K		0x0007e000
+#define PM_512K		0x000fe000
+#define PM_1M		0x001fe000
+#define PM_2M		0x003fe000
+#define PM_4M		0x007fe000
+#define PM_8M		0x00ffe000
+#define PM_16M		0x01ffe000
+#define PM_32M		0x03ffe000
+#define PM_64M		0x07ffe000
+#define PM_256M		0x1fffe000
+#define PM_1G		0x7fffe000
+
+#endif
+
+/*
+ * Bitfields in the R4xx0 cp0 status register
+ */
+#define ST0_IE			0x00000001
+#define ST0_EXL			0x00000002
+#define ST0_ERL			0x00000004
+#define ST0_KSU			0x00000018
+#  define KSU_USER		0x00000010
+#  define KSU_SUPERVISOR	0x00000008
+#  define KSU_KERNEL		0x00000000
+#define ST0_UX			0x00000020
+#define ST0_SX			0x00000040
+#define ST0_KX 			0x00000080
+#define ST0_DE			0x00010000
+#define ST0_CE			0x00020000
+
+/*
+ * Setting c0_status.co enables Hit_Writeback and Hit_Writeback_Invalidate
+ * cacheops in userspace.  This bit exists only on RM7000 and RM9000
+ * processors.
+ */
+#define ST0_CO			0x08000000
+
+/*
+ * Bitfields in the R[23]000 cp0 status register.
+ */
+#define ST0_IEC                 0x00000001
+#define ST0_KUC			0x00000002
+#define ST0_IEP			0x00000004
+#define ST0_KUP			0x00000008
+#define ST0_IEO			0x00000010
+#define ST0_KUO			0x00000020
+/* bits 6 & 7 are reserved on R[23]000 */
+#define ST0_ISC			0x00010000
+#define ST0_SWC			0x00020000
+#define ST0_CM			0x00080000
+
+/*
+ * Bits specific to the R4640/R4650
+ */
+#define ST0_UM			(_ULCAST_(1) <<  4)
+#define ST0_IL			(_ULCAST_(1) << 23)
+#define ST0_DL			(_ULCAST_(1) << 24)
+
+/*
+ * Enable the MIPS MDMX and DSP ASEs
+ */
+#define ST0_MX			0x01000000
+
+/*
+ * Bitfields in the TX39 family CP0 Configuration Register 3
+ */
+#define TX39_CONF_ICS_SHIFT	19
+#define TX39_CONF_ICS_MASK	0x00380000
+#define TX39_CONF_ICS_1KB 	0x00000000
+#define TX39_CONF_ICS_2KB 	0x00080000
+#define TX39_CONF_ICS_4KB 	0x00100000
+#define TX39_CONF_ICS_8KB 	0x00180000
+#define TX39_CONF_ICS_16KB 	0x00200000
+
+#define TX39_CONF_DCS_SHIFT	16
+#define TX39_CONF_DCS_MASK	0x00070000
+#define TX39_CONF_DCS_1KB 	0x00000000
+#define TX39_CONF_DCS_2KB 	0x00010000
+#define TX39_CONF_DCS_4KB 	0x00020000
+#define TX39_CONF_DCS_8KB 	0x00030000
+#define TX39_CONF_DCS_16KB 	0x00040000
+
+#define TX39_CONF_CWFON 	0x00004000
+#define TX39_CONF_WBON  	0x00002000
+#define TX39_CONF_RF_SHIFT	10
+#define TX39_CONF_RF_MASK	0x00000c00
+#define TX39_CONF_DOZE		0x00000200
+#define TX39_CONF_HALT		0x00000100
+#define TX39_CONF_LOCK		0x00000080
+#define TX39_CONF_ICE		0x00000020
+#define TX39_CONF_DCE		0x00000010
+#define TX39_CONF_IRSIZE_SHIFT	2
+#define TX39_CONF_IRSIZE_MASK	0x0000000c
+#define TX39_CONF_DRSIZE_SHIFT	0
+#define TX39_CONF_DRSIZE_MASK	0x00000003
+
+/*
+ * Status register bits available in all MIPS CPUs.
+ */
+#define ST0_IM			0x0000ff00
+#define  STATUSB_IP0		8
+#define  STATUSF_IP0		(_ULCAST_(1) <<  8)
+#define  STATUSB_IP1		9
+#define  STATUSF_IP1		(_ULCAST_(1) <<  9)
+#define  STATUSB_IP2		10
+#define  STATUSF_IP2		(_ULCAST_(1) << 10)
+#define  STATUSB_IP3		11
+#define  STATUSF_IP3		(_ULCAST_(1) << 11)
+#define  STATUSB_IP4		12
+#define  STATUSF_IP4		(_ULCAST_(1) << 12)
+#define  STATUSB_IP5		13
+#define  STATUSF_IP5		(_ULCAST_(1) << 13)
+#define  STATUSB_IP6		14
+#define  STATUSF_IP6		(_ULCAST_(1) << 14)
+#define  STATUSB_IP7		15
+#define  STATUSF_IP7		(_ULCAST_(1) << 15)
+#define  STATUSB_IP8		0
+#define  STATUSF_IP8		(_ULCAST_(1) <<  0)
+#define  STATUSB_IP9		1
+#define  STATUSF_IP9		(_ULCAST_(1) <<  1)
+#define  STATUSB_IP10		2
+#define  STATUSF_IP10		(_ULCAST_(1) <<  2)
+#define  STATUSB_IP11		3
+#define  STATUSF_IP11		(_ULCAST_(1) <<  3)
+#define  STATUSB_IP12		4
+#define  STATUSF_IP12		(_ULCAST_(1) <<  4)
+#define  STATUSB_IP13		5
+#define  STATUSF_IP13		(_ULCAST_(1) <<  5)
+#define  STATUSB_IP14		6
+#define  STATUSF_IP14		(_ULCAST_(1) <<  6)
+#define  STATUSB_IP15		7
+#define  STATUSF_IP15		(_ULCAST_(1) <<  7)
+#define ST0_CH			0x00040000
+#define ST0_NMI			0x00080000
+#define ST0_SR			0x00100000
+#define ST0_TS			0x00200000
+#define ST0_BEV			0x00400000
+#define ST0_RE			0x02000000
+#define ST0_FR			0x04000000
+#define ST0_CU			0xf0000000
+#define ST0_CU0			0x10000000
+#define ST0_CU1			0x20000000
+#define ST0_CU2			0x40000000
+#define ST0_CU3			0x80000000
+#define ST0_XX			0x80000000	/* MIPS IV naming */
+
+/*
+ * Bitfields and bit numbers in the coprocessor 0 IntCtl register. (MIPSR2)
+ *
+ * Refer to your MIPS R4xx0 manual, chapter 5 for explanation.
+ */
+#define INTCTLB_IPPCI		26
+#define INTCTLF_IPPCI		(_ULCAST_(7) << INTCTLB_IPPCI)
+#define INTCTLB_IPTI		29
+#define INTCTLF_IPTI		(_ULCAST_(7) << INTCTLB_IPTI)
+
+/*
+ * Bitfields and bit numbers in the coprocessor 0 cause register.
+ *
+ * Refer to your MIPS R4xx0 manual, chapter 5 for explanation.
+ */
+#define  CAUSEB_EXCCODE		2
+#define  CAUSEF_EXCCODE		(_ULCAST_(31)  <<  2)
+#define  CAUSEB_IP		8
+#define  CAUSEF_IP		(_ULCAST_(255) <<  8)
+#define  CAUSEB_IP0		8
+#define  CAUSEF_IP0		(_ULCAST_(1)   <<  8)
+#define  CAUSEB_IP1		9
+#define  CAUSEF_IP1		(_ULCAST_(1)   <<  9)
+#define  CAUSEB_IP2		10
+#define  CAUSEF_IP2		(_ULCAST_(1)   << 10)
+#define  CAUSEB_IP3		11
+#define  CAUSEF_IP3		(_ULCAST_(1)   << 11)
+#define  CAUSEB_IP4		12
+#define  CAUSEF_IP4		(_ULCAST_(1)   << 12)
+#define  CAUSEB_IP5		13
+#define  CAUSEF_IP5		(_ULCAST_(1)   << 13)
+#define  CAUSEB_IP6		14
+#define  CAUSEF_IP6		(_ULCAST_(1)   << 14)
+#define  CAUSEB_IP7		15
+#define  CAUSEF_IP7		(_ULCAST_(1)   << 15)
+#define  CAUSEB_IV		23
+#define  CAUSEF_IV		(_ULCAST_(1)   << 23)
+#define  CAUSEB_CE		28
+#define  CAUSEF_CE		(_ULCAST_(3)   << 28)
+#define  CAUSEB_TI		30
+#define  CAUSEF_TI		(_ULCAST_(1)   << 30)
+#define  CAUSEB_BD		31
+#define  CAUSEF_BD		(_ULCAST_(1)   << 31)
+
+/*
+ * Bits in the coprocessor 0 config register.
+ */
+/* Generic bits.  */
+#define CONF_CM_CACHABLE_NO_WA		0
+#define CONF_CM_CACHABLE_WA		1
+#define CONF_CM_UNCACHED		2
+#define CONF_CM_CACHABLE_NONCOHERENT	3
+#define CONF_CM_CACHABLE_CE		4
+#define CONF_CM_CACHABLE_COW		5
+#define CONF_CM_CACHABLE_CUW		6
+#define CONF_CM_CACHABLE_ACCELERATED	7
+#define CONF_CM_CMASK			7
+#define CONF_BE			(_ULCAST_(1) << 15)
+
+/* Bits common to various processors.  */
+#define CONF_CU			(_ULCAST_(1) <<  3)
+#define CONF_DB			(_ULCAST_(1) <<  4)
+#define CONF_IB			(_ULCAST_(1) <<  5)
+#define CONF_DC			(_ULCAST_(7) <<  6)
+#define CONF_IC			(_ULCAST_(7) <<  9)
+#define CONF_EB			(_ULCAST_(1) << 13)
+#define CONF_EM			(_ULCAST_(1) << 14)
+#define CONF_SM			(_ULCAST_(1) << 16)
+#define CONF_SC			(_ULCAST_(1) << 17)
+#define CONF_EW			(_ULCAST_(3) << 18)
+#define CONF_EP			(_ULCAST_(15)<< 24)
+#define CONF_EC			(_ULCAST_(7) << 28)
+#define CONF_CM			(_ULCAST_(1) << 31)
+
+/* Bits specific to the R4xx0.  */
+#define R4K_CONF_SW		(_ULCAST_(1) << 20)
+#define R4K_CONF_SS		(_ULCAST_(1) << 21)
+#define R4K_CONF_SB		(_ULCAST_(3) << 22)
+
+/* Bits specific to the R5000.  */
+#define R5K_CONF_SE		(_ULCAST_(1) << 12)
+#define R5K_CONF_SS		(_ULCAST_(3) << 20)
+
+/* Bits specific to the RM7000.  */
+#define RM7K_CONF_SE		(_ULCAST_(1) <<  3)
+#define RM7K_CONF_TE		(_ULCAST_(1) << 12)
+#define RM7K_CONF_CLK		(_ULCAST_(1) << 16)
+#define RM7K_CONF_TC		(_ULCAST_(1) << 17)
+#define RM7K_CONF_SI		(_ULCAST_(3) << 20)
+#define RM7K_CONF_SC		(_ULCAST_(1) << 31)
+
+/* Bits specific to the R10000.  */
+#define R10K_CONF_DN		(_ULCAST_(3) <<  3)
+#define R10K_CONF_CT		(_ULCAST_(1) <<  5)
+#define R10K_CONF_PE		(_ULCAST_(1) <<  6)
+#define R10K_CONF_PM		(_ULCAST_(3) <<  7)
+#define R10K_CONF_EC		(_ULCAST_(15)<<  9)
+#define R10K_CONF_SB		(_ULCAST_(1) << 13)
+#define R10K_CONF_SK		(_ULCAST_(1) << 14)
+#define R10K_CONF_SS		(_ULCAST_(7) << 16)
+#define R10K_CONF_SC		(_ULCAST_(7) << 19)
+#define R10K_CONF_DC		(_ULCAST_(7) << 26)
+#define R10K_CONF_IC		(_ULCAST_(7) << 29)
+
+/* Bits specific to the VR41xx.  */
+#define VR41_CONF_CS		(_ULCAST_(1) << 12)
+#define VR41_CONF_P4K		(_ULCAST_(1) << 13)
+#define VR41_CONF_BP		(_ULCAST_(1) << 16)
+#define VR41_CONF_M16		(_ULCAST_(1) << 20)
+#define VR41_CONF_AD		(_ULCAST_(1) << 23)
+
+/* Bits specific to the R30xx.  */
+#define R30XX_CONF_FDM		(_ULCAST_(1) << 19)
+#define R30XX_CONF_REV		(_ULCAST_(1) << 22)
+#define R30XX_CONF_AC		(_ULCAST_(1) << 23)
+#define R30XX_CONF_RF		(_ULCAST_(1) << 24)
+#define R30XX_CONF_HALT		(_ULCAST_(1) << 25)
+#define R30XX_CONF_FPINT	(_ULCAST_(7) << 26)
+#define R30XX_CONF_DBR		(_ULCAST_(1) << 29)
+#define R30XX_CONF_SB		(_ULCAST_(1) << 30)
+#define R30XX_CONF_LOCK		(_ULCAST_(1) << 31)
+
+/* Bits specific to the TX49.  */
+#define TX49_CONF_DC		(_ULCAST_(1) << 16)
+#define TX49_CONF_IC		(_ULCAST_(1) << 17)  /* conflict with CONF_SC */
+#define TX49_CONF_HALT		(_ULCAST_(1) << 18)
+#define TX49_CONF_CWFON		(_ULCAST_(1) << 27)
+
+/* Bits specific to the MIPS32/64 PRA.  */
+#define MIPS_CONF_MT		(_ULCAST_(7) <<  7)
+#define MIPS_CONF_AR		(_ULCAST_(7) << 10)
+#define MIPS_CONF_AT		(_ULCAST_(3) << 13)
+#define MIPS_CONF_M		(_ULCAST_(1) << 31)
+
+/*
+ * Bits in the MIPS32/64 PRA coprocessor 0 config registers 1 and above.
+ */
+#define MIPS_CONF1_FP		(_ULCAST_(1) <<  0)
+#define MIPS_CONF1_EP		(_ULCAST_(1) <<  1)
+#define MIPS_CONF1_CA		(_ULCAST_(1) <<  2)
+#define MIPS_CONF1_WR		(_ULCAST_(1) <<  3)
+#define MIPS_CONF1_PC		(_ULCAST_(1) <<  4)
+#define MIPS_CONF1_MD		(_ULCAST_(1) <<  5)
+#define MIPS_CONF1_C2		(_ULCAST_(1) <<  6)
+#define MIPS_CONF1_DA		(_ULCAST_(7) <<  7)
+#define MIPS_CONF1_DL		(_ULCAST_(7) << 10)
+#define MIPS_CONF1_DS		(_ULCAST_(7) << 13)
+#define MIPS_CONF1_IA		(_ULCAST_(7) << 16)
+#define MIPS_CONF1_IL		(_ULCAST_(7) << 19)
+#define MIPS_CONF1_IS		(_ULCAST_(7) << 22)
+#define MIPS_CONF1_TLBS		(_ULCAST_(63)<< 25)
+
+#define MIPS_CONF2_SA		(_ULCAST_(15)<<  0)
+#define MIPS_CONF2_SL		(_ULCAST_(15)<<  4)
+#define MIPS_CONF2_SS		(_ULCAST_(15)<<  8)
+#define MIPS_CONF2_SU		(_ULCAST_(15)<< 12)
+#define MIPS_CONF2_TA		(_ULCAST_(15)<< 16)
+#define MIPS_CONF2_TL		(_ULCAST_(15)<< 20)
+#define MIPS_CONF2_TS		(_ULCAST_(15)<< 24)
+#define MIPS_CONF2_TU		(_ULCAST_(7) << 28)
+
+#define MIPS_CONF3_TL		(_ULCAST_(1) <<  0)
+#define MIPS_CONF3_SM		(_ULCAST_(1) <<  1)
+#define MIPS_CONF3_MT		(_ULCAST_(1) <<  2)
+#define MIPS_CONF3_SP		(_ULCAST_(1) <<  4)
+#define MIPS_CONF3_VINT		(_ULCAST_(1) <<  5)
+#define MIPS_CONF3_VEIC		(_ULCAST_(1) <<  6)
+#define MIPS_CONF3_LPA		(_ULCAST_(1) <<  7)
+#define MIPS_CONF3_DSP		(_ULCAST_(1) << 10)
+#define MIPS_CONF3_ULRI		(_ULCAST_(1) << 13)
+
+#define MIPS_CONF4_MMUSIZEEXT	(_ULCAST_(255) << 0)
+#define MIPS_CONF4_MMUEXTDEF	(_ULCAST_(3) << 14)
+#define MIPS_CONF4_MMUEXTDEF_MMUSIZEEXT (_ULCAST_(1) << 14)
+
+#define MIPS_CONF7_WII		(_ULCAST_(1) << 31)
+
+#define MIPS_CONF7_RPS		(_ULCAST_(1) << 2)
+
+
+/*
+ * Bits in the MIPS32/64 coprocessor 1 (FPU) revision register.
+ */
+#define MIPS_FPIR_S		(_ULCAST_(1) << 16)
+#define MIPS_FPIR_D		(_ULCAST_(1) << 17)
+#define MIPS_FPIR_PS		(_ULCAST_(1) << 18)
+#define MIPS_FPIR_3D		(_ULCAST_(1) << 19)
+#define MIPS_FPIR_W		(_ULCAST_(1) << 20)
+#define MIPS_FPIR_L		(_ULCAST_(1) << 21)
+#define MIPS_FPIR_F64		(_ULCAST_(1) << 22)
+
+#ifndef __ASSEMBLY__
+
+/*
+ * Macros to access the system control coprocessor
+ */
+
+#define __read_32bit_c0_register(source, sel)				\
+({ int __res;								\
+	if (sel == 0)							\
+		__asm__ __volatile__(					\
+			"mfc0\t%0, " #source "\n\t"			\
+			: "=r" (__res));				\
+	else								\
+		__asm__ __volatile__(					\
+			".set\tmips32\n\t"				\
+			"mfc0\t%0, " #source ", " #sel "\n\t"		\
+			".set\tmips0\n\t"				\
+			: "=r" (__res));				\
+	__res;								\
+})
+
+#define __read_64bit_c0_register(source, sel)				\
+({ unsigned long long __res;						\
+	if (sizeof(unsigned long) == 4)					\
+		__res = __read_64bit_c0_split(source, sel);		\
+	else if (sel == 0)						\
+		__asm__ __volatile__(					\
+			".set\tmips3\n\t"				\
+			"dmfc0\t%0, " #source "\n\t"			\
+			".set\tmips0"					\
+			: "=r" (__res));				\
+	else								\
+		__asm__ __volatile__(					\
+			".set\tmips64\n\t"				\
+			"dmfc0\t%0, " #source ", " #sel "\n\t"		\
+			".set\tmips0"					\
+			: "=r" (__res));				\
+	__res;								\
+})
+
+#define __write_32bit_c0_register(register, sel, value)			\
+do {									\
+	if (sel == 0)							\
+		__asm__ __volatile__(					\
+			"mtc0\t%z0, " #register "\n\t"			\
+			: : "Jr" ((unsigned int)(value)));		\
+	else								\
+		__asm__ __volatile__(					\
+			".set\tmips32\n\t"				\
+			"mtc0\t%z0, " #register ", " #sel "\n\t"	\
+			".set\tmips0"					\
+			: : "Jr" ((unsigned int)(value)));		\
+} while (0)
+
+#define __write_64bit_c0_register(register, sel, value)			\
+do {									\
+	if (sizeof(unsigned long) == 4)					\
+		__write_64bit_c0_split(register, sel, value);		\
+	else if (sel == 0)						\
+		__asm__ __volatile__(					\
+			".set\tmips3\n\t"				\
+			"dmtc0\t%z0, " #register "\n\t"			\
+			".set\tmips0"					\
+			: : "Jr" (value));				\
+	else								\
+		__asm__ __volatile__(					\
+			".set\tmips64\n\t"				\
+			"dmtc0\t%z0, " #register ", " #sel "\n\t"	\
+			".set\tmips0"					\
+			: : "Jr" (value));				\
+} while (0)
+
+#define __read_ulong_c0_register(reg, sel)				\
+	((sizeof(unsigned long) == 4) ?					\
+	(unsigned long) __read_32bit_c0_register(reg, sel) :		\
+	(unsigned long) __read_64bit_c0_register(reg, sel))
+
+#define __write_ulong_c0_register(reg, sel, val)			\
+do {									\
+	if (sizeof(unsigned long) == 4)					\
+		__write_32bit_c0_register(reg, sel, val);		\
+	else								\
+		__write_64bit_c0_register(reg, sel, val);		\
+} while (0)
+
+/*
+ * On RM7000/RM9000 these are uses to access cop0 set 1 registers
+ */
+#define __read_32bit_c0_ctrl_register(source)				\
+({ int __res;								\
+	__asm__ __volatile__(						\
+		"cfc0\t%0, " #source "\n\t"				\
+		: "=r" (__res));					\
+	__res;								\
+})
+
+#define __write_32bit_c0_ctrl_register(register, value)			\
+do {									\
+	__asm__ __volatile__(						\
+		"ctc0\t%z0, " #register "\n\t"				\
+		: : "Jr" ((unsigned int)(value)));			\
+} while (0)
+
+/*
+ * These versions are only needed for systems with more than 38 bits of
+ * physical address space running the 32-bit kernel.  That's none atm :-)
+ */
+#define __read_64bit_c0_split(source, sel)				\
+({									\
+	unsigned long long __val;					\
+	unsigned long __flags;						\
+									\
+	local_irq_save(__flags);					\
+	if (sel == 0)							\
+		__asm__ __volatile__(					\
+			".set\tmips64\n\t"				\
+			"dmfc0\t%M0, " #source "\n\t"			\
+			"dsll\t%L0, %M0, 32\n\t"			\
+			"dsra\t%M0, %M0, 32\n\t"			\
+			"dsra\t%L0, %L0, 32\n\t"			\
+			".set\tmips0"					\
+			: "=r" (__val));				\
+	else								\
+		__asm__ __volatile__(					\
+			".set\tmips64\n\t"				\
+			"dmfc0\t%M0, " #source ", " #sel "\n\t"		\
+			"dsll\t%L0, %M0, 32\n\t"			\
+			"dsra\t%M0, %M0, 32\n\t"			\
+			"dsra\t%L0, %L0, 32\n\t"			\
+			".set\tmips0"					\
+			: "=r" (__val));				\
+	local_irq_restore(__flags);					\
+									\
+	__val;								\
+})
+
+#define __write_64bit_c0_split(source, sel, val)			\
+do {									\
+	unsigned long __flags;						\
+									\
+	local_irq_save(__flags);					\
+	if (sel == 0)							\
+		__asm__ __volatile__(					\
+			".set\tmips64\n\t"				\
+			"dsll\t%L0, %L0, 32\n\t"			\
+			"dsrl\t%L0, %L0, 32\n\t"			\
+			"dsll\t%M0, %M0, 32\n\t"			\
+			"or\t%L0, %L0, %M0\n\t"				\
+			"dmtc0\t%L0, " #source "\n\t"			\
+			".set\tmips0"					\
+			: : "r" (val));					\
+	else								\
+		__asm__ __volatile__(					\
+			".set\tmips64\n\t"				\
+			"dsll\t%L0, %L0, 32\n\t"			\
+			"dsrl\t%L0, %L0, 32\n\t"			\
+			"dsll\t%M0, %M0, 32\n\t"			\
+			"or\t%L0, %L0, %M0\n\t"				\
+			"dmtc0\t%L0, " #source ", " #sel "\n\t"		\
+			".set\tmips0"					\
+			: : "r" (val));					\
+	local_irq_restore(__flags);					\
+} while (0)
+
+#define read_c0_index()		__read_32bit_c0_register($0, 0)
+#define write_c0_index(val)	__write_32bit_c0_register($0, 0, val)
+
+#define read_c0_random()	__read_32bit_c0_register($1, 0)
+#define write_c0_random(val)	__write_32bit_c0_register($1, 0, val)
+
+#define read_c0_entrylo0()	__read_ulong_c0_register($2, 0)
+#define write_c0_entrylo0(val)	__write_ulong_c0_register($2, 0, val)
+
+#define read_c0_entrylo1()	__read_ulong_c0_register($3, 0)
+#define write_c0_entrylo1(val)	__write_ulong_c0_register($3, 0, val)
+
+#define read_c0_conf()		__read_32bit_c0_register($3, 0)
+#define write_c0_conf(val)	__write_32bit_c0_register($3, 0, val)
+
+#define read_c0_context()	__read_ulong_c0_register($4, 0)
+#define write_c0_context(val)	__write_ulong_c0_register($4, 0, val)
+
+#define read_c0_userlocal()	__read_ulong_c0_register($4, 2)
+#define write_c0_userlocal(val)	__write_ulong_c0_register($4, 2, val)
+
+#define read_c0_pagemask()	__read_32bit_c0_register($5, 0)
+#define write_c0_pagemask(val)	__write_32bit_c0_register($5, 0, val)
+
+#define read_c0_pagegrain()	__read_32bit_c0_register($5, 1)
+#define write_c0_pagegrain(val)	__write_32bit_c0_register($5, 1, val)
+
+#define read_c0_wired()		__read_32bit_c0_register($6, 0)
+#define write_c0_wired(val)	__write_32bit_c0_register($6, 0, val)
+
+#define read_c0_info()		__read_32bit_c0_register($7, 0)
+
+#define read_c0_cache()		__read_32bit_c0_register($7, 0)	/* TX39xx */
+#define write_c0_cache(val)	__write_32bit_c0_register($7, 0, val)
+
+#define read_c0_badvaddr()	__read_ulong_c0_register($8, 0)
+#define write_c0_badvaddr(val)	__write_ulong_c0_register($8, 0, val)
+
+#define read_c0_count()		__read_32bit_c0_register($9, 0)
+#define write_c0_count(val)	__write_32bit_c0_register($9, 0, val)
+
+#define read_c0_count2()	__read_32bit_c0_register($9, 6) /* pnx8550 */
+#define write_c0_count2(val)	__write_32bit_c0_register($9, 6, val)
+
+#define read_c0_count3()	__read_32bit_c0_register($9, 7) /* pnx8550 */
+#define write_c0_count3(val)	__write_32bit_c0_register($9, 7, val)
+
+#define read_c0_entryhi()	__read_ulong_c0_register($10, 0)
+#define write_c0_entryhi(val)	__write_ulong_c0_register($10, 0, val)
+
+#define read_c0_compare()	__read_32bit_c0_register($11, 0)
+#define write_c0_compare(val)	__write_32bit_c0_register($11, 0, val)
+
+#define read_c0_compare2()	__read_32bit_c0_register($11, 6) /* pnx8550 */
+#define write_c0_compare2(val)	__write_32bit_c0_register($11, 6, val)
+
+#define read_c0_compare3()	__read_32bit_c0_register($11, 7) /* pnx8550 */
+#define write_c0_compare3(val)	__write_32bit_c0_register($11, 7, val)
+
+#define read_c0_status()	__read_32bit_c0_register($12, 0)
+#ifdef CONFIG_MIPS_MT_SMTC
+#define write_c0_status(val)						\
+do {									\
+	__write_32bit_c0_register($12, 0, val);				\
+	__ehb();							\
+} while (0)
+#else
+/*
+ * Legacy non-SMTC code, which may be hazardous
+ * but which might not support EHB
+ */
+#define write_c0_status(val)	__write_32bit_c0_register($12, 0, val)
+#endif /* CONFIG_MIPS_MT_SMTC */
+
+#define read_c0_cause()		__read_32bit_c0_register($13, 0)
+#define write_c0_cause(val)	__write_32bit_c0_register($13, 0, val)
+
+#define read_c0_epc()		__read_ulong_c0_register($14, 0)
+#define write_c0_epc(val)	__write_ulong_c0_register($14, 0, val)
+
+#define read_c0_prid()		__read_32bit_c0_register($15, 0)
+
+#define read_c0_config()	__read_32bit_c0_register($16, 0)
+#define read_c0_config1()	__read_32bit_c0_register($16, 1)
+#define read_c0_config2()	__read_32bit_c0_register($16, 2)
+#define read_c0_config3()	__read_32bit_c0_register($16, 3)
+#define read_c0_config4()	__read_32bit_c0_register($16, 4)
+#define read_c0_config5()	__read_32bit_c0_register($16, 5)
+#define read_c0_config6()	__read_32bit_c0_register($16, 6)
+#define read_c0_config7()	__read_32bit_c0_register($16, 7)
+#define write_c0_config(val)	__write_32bit_c0_register($16, 0, val)
+#define write_c0_config1(val)	__write_32bit_c0_register($16, 1, val)
+#define write_c0_config2(val)	__write_32bit_c0_register($16, 2, val)
+#define write_c0_config3(val)	__write_32bit_c0_register($16, 3, val)
+#define write_c0_config4(val)	__write_32bit_c0_register($16, 4, val)
+#define write_c0_config5(val)	__write_32bit_c0_register($16, 5, val)
+#define write_c0_config6(val)	__write_32bit_c0_register($16, 6, val)
+#define write_c0_config7(val)	__write_32bit_c0_register($16, 7, val)
+
+/*
+ * The WatchLo register.  There may be up to 8 of them.
+ */
+#define read_c0_watchlo0()	__read_ulong_c0_register($18, 0)
+#define read_c0_watchlo1()	__read_ulong_c0_register($18, 1)
+#define read_c0_watchlo2()	__read_ulong_c0_register($18, 2)
+#define read_c0_watchlo3()	__read_ulong_c0_register($18, 3)
+#define read_c0_watchlo4()	__read_ulong_c0_register($18, 4)
+#define read_c0_watchlo5()	__read_ulong_c0_register($18, 5)
+#define read_c0_watchlo6()	__read_ulong_c0_register($18, 6)
+#define read_c0_watchlo7()	__read_ulong_c0_register($18, 7)
+#define write_c0_watchlo0(val)	__write_ulong_c0_register($18, 0, val)
+#define write_c0_watchlo1(val)	__write_ulong_c0_register($18, 1, val)
+#define write_c0_watchlo2(val)	__write_ulong_c0_register($18, 2, val)
+#define write_c0_watchlo3(val)	__write_ulong_c0_register($18, 3, val)
+#define write_c0_watchlo4(val)	__write_ulong_c0_register($18, 4, val)
+#define write_c0_watchlo5(val)	__write_ulong_c0_register($18, 5, val)
+#define write_c0_watchlo6(val)	__write_ulong_c0_register($18, 6, val)
+#define write_c0_watchlo7(val)	__write_ulong_c0_register($18, 7, val)
+
+/*
+ * The WatchHi register.  There may be up to 8 of them.
+ */
+#define read_c0_watchhi0()	__read_32bit_c0_register($19, 0)
+#define read_c0_watchhi1()	__read_32bit_c0_register($19, 1)
+#define read_c0_watchhi2()	__read_32bit_c0_register($19, 2)
+#define read_c0_watchhi3()	__read_32bit_c0_register($19, 3)
+#define read_c0_watchhi4()	__read_32bit_c0_register($19, 4)
+#define read_c0_watchhi5()	__read_32bit_c0_register($19, 5)
+#define read_c0_watchhi6()	__read_32bit_c0_register($19, 6)
+#define read_c0_watchhi7()	__read_32bit_c0_register($19, 7)
+
+#define write_c0_watchhi0(val)	__write_32bit_c0_register($19, 0, val)
+#define write_c0_watchhi1(val)	__write_32bit_c0_register($19, 1, val)
+#define write_c0_watchhi2(val)	__write_32bit_c0_register($19, 2, val)
+#define write_c0_watchhi3(val)	__write_32bit_c0_register($19, 3, val)
+#define write_c0_watchhi4(val)	__write_32bit_c0_register($19, 4, val)
+#define write_c0_watchhi5(val)	__write_32bit_c0_register($19, 5, val)
+#define write_c0_watchhi6(val)	__write_32bit_c0_register($19, 6, val)
+#define write_c0_watchhi7(val)	__write_32bit_c0_register($19, 7, val)
+
+#define read_c0_xcontext()	__read_ulong_c0_register($20, 0)
+#define write_c0_xcontext(val)	__write_ulong_c0_register($20, 0, val)
+
+#define read_c0_intcontrol()	__read_32bit_c0_ctrl_register($20)
+#define write_c0_intcontrol(val) __write_32bit_c0_ctrl_register($20, val)
+
+#define read_c0_framemask()	__read_32bit_c0_register($21, 0)
+#define write_c0_framemask(val)	__write_32bit_c0_register($21, 0, val)
+
+/* RM9000 PerfControl performance counter control register */
+#define read_c0_perfcontrol()	__read_32bit_c0_register($22, 0)
+#define write_c0_perfcontrol(val) __write_32bit_c0_register($22, 0, val)
+
+#define read_c0_diag()		__read_32bit_c0_register($22, 0)
+#define write_c0_diag(val)	__write_32bit_c0_register($22, 0, val)
+
+#define read_c0_diag1()		__read_32bit_c0_register($22, 1)
+#define write_c0_diag1(val)	__write_32bit_c0_register($22, 1, val)
+
+#define read_c0_diag2()		__read_32bit_c0_register($22, 2)
+#define write_c0_diag2(val)	__write_32bit_c0_register($22, 2, val)
+
+#define read_c0_diag3()		__read_32bit_c0_register($22, 3)
+#define write_c0_diag3(val)	__write_32bit_c0_register($22, 3, val)
+
+#define read_c0_diag4()		__read_32bit_c0_register($22, 4)
+#define write_c0_diag4(val)	__write_32bit_c0_register($22, 4, val)
+
+#define read_c0_diag5()		__read_32bit_c0_register($22, 5)
+#define write_c0_diag5(val)	__write_32bit_c0_register($22, 5, val)
+
+#define read_c0_debug()		__read_32bit_c0_register($23, 0)
+#define write_c0_debug(val)	__write_32bit_c0_register($23, 0, val)
+
+#define read_c0_depc()		__read_ulong_c0_register($24, 0)
+#define write_c0_depc(val)	__write_ulong_c0_register($24, 0, val)
+
+/*
+ * MIPS32 / MIPS64 performance counters
+ */
+#define read_c0_perfctrl0()	__read_32bit_c0_register($25, 0)
+#define write_c0_perfctrl0(val)	__write_32bit_c0_register($25, 0, val)
+#define read_c0_perfcntr0()	__read_32bit_c0_register($25, 1)
+#define write_c0_perfcntr0(val)	__write_32bit_c0_register($25, 1, val)
+#define read_c0_perfctrl1()	__read_32bit_c0_register($25, 2)
+#define write_c0_perfctrl1(val)	__write_32bit_c0_register($25, 2, val)
+#define read_c0_perfcntr1()	__read_32bit_c0_register($25, 3)
+#define write_c0_perfcntr1(val)	__write_32bit_c0_register($25, 3, val)
+#define read_c0_perfctrl2()	__read_32bit_c0_register($25, 4)
+#define write_c0_perfctrl2(val)	__write_32bit_c0_register($25, 4, val)
+#define read_c0_perfcntr2()	__read_32bit_c0_register($25, 5)
+#define write_c0_perfcntr2(val)	__write_32bit_c0_register($25, 5, val)
+#define read_c0_perfctrl3()	__read_32bit_c0_register($25, 6)
+#define write_c0_perfctrl3(val)	__write_32bit_c0_register($25, 6, val)
+#define read_c0_perfcntr3()	__read_32bit_c0_register($25, 7)
+#define write_c0_perfcntr3(val)	__write_32bit_c0_register($25, 7, val)
+
+/* RM9000 PerfCount performance counter register */
+#define read_c0_perfcount()	__read_64bit_c0_register($25, 0)
+#define write_c0_perfcount(val)	__write_64bit_c0_register($25, 0, val)
+
+#define read_c0_ecc()		__read_32bit_c0_register($26, 0)
+#define write_c0_ecc(val)	__write_32bit_c0_register($26, 0, val)
+
+#define read_c0_derraddr0()	__read_ulong_c0_register($26, 1)
+#define write_c0_derraddr0(val)	__write_ulong_c0_register($26, 1, val)
+
+#define read_c0_cacheerr()	__read_32bit_c0_register($27, 0)
+
+#define read_c0_derraddr1()	__read_ulong_c0_register($27, 1)
+#define write_c0_derraddr1(val)	__write_ulong_c0_register($27, 1, val)
+
+#define read_c0_taglo()		__read_32bit_c0_register($28, 0)
+#define write_c0_taglo(val)	__write_32bit_c0_register($28, 0, val)
+
+#define read_c0_dtaglo()	__read_32bit_c0_register($28, 2)
+#define write_c0_dtaglo(val)	__write_32bit_c0_register($28, 2, val)
+
+#define read_c0_ddatalo()	__read_32bit_c0_register($28, 3)
+#define write_c0_ddatalo(val)	__write_32bit_c0_register($28, 3, val)
+
+#define read_c0_staglo()	__read_32bit_c0_register($28, 4)
+#define write_c0_staglo(val)	__write_32bit_c0_register($28, 4, val)
+
+#define read_c0_taghi()		__read_32bit_c0_register($29, 0)
+#define write_c0_taghi(val)	__write_32bit_c0_register($29, 0, val)
+
+#define read_c0_errorepc()	__read_ulong_c0_register($30, 0)
+#define write_c0_errorepc(val)	__write_ulong_c0_register($30, 0, val)
+
+/* MIPSR2 */
+#define read_c0_hwrena()	__read_32bit_c0_register($7, 0)
+#define write_c0_hwrena(val)	__write_32bit_c0_register($7, 0, val)
+
+#define read_c0_intctl()	__read_32bit_c0_register($12, 1)
+#define write_c0_intctl(val)	__write_32bit_c0_register($12, 1, val)
+
+#define read_c0_srsctl()	__read_32bit_c0_register($12, 2)
+#define write_c0_srsctl(val)	__write_32bit_c0_register($12, 2, val)
+
+#define read_c0_srsmap()	__read_32bit_c0_register($12, 3)
+#define write_c0_srsmap(val)	__write_32bit_c0_register($12, 3, val)
+
+#define read_c0_ebase()		__read_32bit_c0_register($15, 1)
+#define write_c0_ebase(val)	__write_32bit_c0_register($15, 1, val)
+
+/* BMIPS3300 */
+#define read_c0_brcm_config_0()		__read_32bit_c0_register($22, 0)
+#define write_c0_brcm_config_0(val)	__write_32bit_c0_register($22, 0, val)
+
+#define read_c0_brcm_bus_pll()		__read_32bit_c0_register($22, 4)
+#define write_c0_brcm_bus_pll(val)	__write_32bit_c0_register($22, 4, val)
+
+#define read_c0_brcm_reset()		__read_32bit_c0_register($22, 5)
+#define write_c0_brcm_reset(val)	__write_32bit_c0_register($22, 5, val)
+
+/* BMIPS4380 */
+#define read_c0_brcm_cmt_intr()		__read_32bit_c0_register($22, 1)
+#define write_c0_brcm_cmt_intr(val)	__write_32bit_c0_register($22, 1, val)
+
+#define read_c0_brcm_cmt_ctrl()		__read_32bit_c0_register($22, 2)
+#define write_c0_brcm_cmt_ctrl(val)	__write_32bit_c0_register($22, 2, val)
+
+#define read_c0_brcm_cmt_local()	__read_32bit_c0_register($22, 3)
+#define write_c0_brcm_cmt_local(val)	__write_32bit_c0_register($22, 3, val)
+
+#define read_c0_brcm_config_1()		__read_32bit_c0_register($22, 5)
+#define write_c0_brcm_config_1(val)	__write_32bit_c0_register($22, 5, val)
+
+#define read_c0_brcm_cbr()		__read_32bit_c0_register($22, 6)
+#define write_c0_brcm_cbr(val)		__write_32bit_c0_register($22, 6, val)
+
+/* BMIPS5000 */
+#define read_c0_brcm_config()		__read_32bit_c0_register($22, 0)
+#define write_c0_brcm_config(val)	__write_32bit_c0_register($22, 0, val)
+
+#define read_c0_brcm_mode()		__read_32bit_c0_register($22, 1)
+#define write_c0_brcm_mode(val)		__write_32bit_c0_register($22, 1, val)
+
+#define read_c0_brcm_action()		__read_32bit_c0_register($22, 2)
+#define write_c0_brcm_action(val)	__write_32bit_c0_register($22, 2, val)
+
+#define read_c0_brcm_edsp()		__read_32bit_c0_register($22, 3)
+#define write_c0_brcm_edsp(val)		__write_32bit_c0_register($22, 3, val)
+
+#define read_c0_brcm_bootvec()		__read_32bit_c0_register($22, 4)
+#define write_c0_brcm_bootvec(val)	__write_32bit_c0_register($22, 4, val)
+
+#define read_c0_brcm_sleepcount()	__read_32bit_c0_register($22, 7)
+#define write_c0_brcm_sleepcount(val)	__write_32bit_c0_register($22, 7, val)
+
+#endif /* !__ASSEMBLY__ */
+
+#endif /* _ASM_MIPSREGS_H */
diff --git a/arch/mips/include/asm/module.h b/arch/mips/include/asm/module.h
new file mode 100644
index 0000000..0463565
--- /dev/null
+++ b/arch/mips/include/asm/module.h
@@ -0,0 +1,36 @@
+/*
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+/**
+ * @file
+ * @brief mips module support
+ *
+ */
+
+#ifndef _ASM_MIPS_MODULE_H_
+#define _ASM_MIPS_MODULE_H_
+
+struct mod_arch_specific
+{
+        int foo;
+};
+
+#define Elf_Shdr        Elf32_Shdr
+#define Elf_Ehdr        Elf32_Ehdr
+
+#endif /* _ASM_MIPS_MODULE_H_ */
diff --git a/arch/mips/include/asm/posix_types.h b/arch/mips/include/asm/posix_types.h
new file mode 100644
index 0000000..60ea7a7
--- /dev/null
+++ b/arch/mips/include/asm/posix_types.h
@@ -0,0 +1,48 @@
+/*
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+/**
+ * @file
+ * @brief mips posix types
+ *
+ * Minimal set to make all the other header files copied from the Linux kernel happy
+ */
+
+#ifndef _ASM_MIPS_POSIX_TYPES_H
+#define _ASM_MIPS_POSIX_TYPES_H
+
+typedef unsigned long	__kernel_ino_t;
+typedef unsigned short	__kernel_mode_t;
+typedef unsigned short	__kernel_nlink_t;
+typedef long		__kernel_off_t;
+typedef int		__kernel_pid_t;
+typedef unsigned int	__kernel_size_t;
+typedef int		__kernel_ssize_t;
+typedef int		__kernel_ptrdiff_t;
+typedef long		__kernel_time_t;
+typedef long		__kernel_suseconds_t;
+typedef long		__kernel_clock_t;
+typedef int		__kernel_daddr_t;
+typedef char *		__kernel_caddr_t;
+typedef unsigned short	__kernel_uid16_t;
+typedef unsigned short	__kernel_gid16_t;
+typedef unsigned int	__kernel_uid32_t;
+typedef unsigned int	__kernel_gid32_t;
+typedef long long	__kernel_loff_t;
+
+#endif /* _ASM_MIPS_POSIX_TYPES_H */
diff --git a/arch/mips/include/asm/regdef.h b/arch/mips/include/asm/regdef.h
new file mode 100644
index 0000000..7c8ecb6
--- /dev/null
+++ b/arch/mips/include/asm/regdef.h
@@ -0,0 +1,100 @@
+/*
+ * This file is subject to the terms and conditions of the GNU General Public
+ * License.  See the file "COPYING" in the main directory of this archive
+ * for more details.
+ *
+ * Copyright (C) 1985 MIPS Computer Systems, Inc.
+ * Copyright (C) 1994, 95, 99, 2003 by Ralf Baechle
+ * Copyright (C) 1990 - 1992, 1999 Silicon Graphics, Inc.
+ */
+#ifndef _ASM_REGDEF_H
+#define _ASM_REGDEF_H
+
+#include <asm/sgidefs.h>
+
+#if _MIPS_SIM == _MIPS_SIM_ABI32
+
+/*
+ * Symbolic register names for 32 bit ABI
+ */
+#define zero    $0      /* wired zero */
+#define AT      $1      /* assembler temp  - uppercase because of ".set at" */
+#define v0      $2      /* return value */
+#define v1      $3
+#define a0      $4      /* argument registers */
+#define a1      $5
+#define a2      $6
+#define a3      $7
+#define t0      $8      /* caller saved */
+#define t1      $9
+#define t2      $10
+#define t3      $11
+#define t4      $12
+#define t5      $13
+#define t6      $14
+#define t7      $15
+#define s0      $16     /* callee saved */
+#define s1      $17
+#define s2      $18
+#define s3      $19
+#define s4      $20
+#define s5      $21
+#define s6      $22
+#define s7      $23
+#define t8      $24     /* caller saved */
+#define t9      $25
+#define jp      $25     /* PIC jump register */
+#define k0      $26     /* kernel scratch */
+#define k1      $27
+#define gp      $28     /* global pointer */
+#define sp      $29     /* stack pointer */
+#define fp      $30     /* frame pointer */
+#define s8	$30	/* same like fp! */
+#define ra      $31     /* return address */
+
+#endif /* _MIPS_SIM == _MIPS_SIM_ABI32 */
+
+#if _MIPS_SIM == _MIPS_SIM_ABI64 || _MIPS_SIM == _MIPS_SIM_NABI32
+
+#define zero	$0	/* wired zero */
+#define AT	$at	/* assembler temp - uppercase because of ".set at" */
+#define v0	$2	/* return value - caller saved */
+#define v1	$3
+#define a0	$4	/* argument registers */
+#define a1	$5
+#define a2	$6
+#define a3	$7
+#define a4	$8	/* arg reg 64 bit; caller saved in 32 bit */
+#define ta0	$8
+#define a5	$9
+#define ta1	$9
+#define a6	$10
+#define ta2	$10
+#define a7	$11
+#define ta3	$11
+#define t0	$12	/* caller saved */
+#define t1	$13
+#define t2	$14
+#define t3	$15
+#define s0	$16	/* callee saved */
+#define s1	$17
+#define s2	$18
+#define s3	$19
+#define s4	$20
+#define s5	$21
+#define s6	$22
+#define s7	$23
+#define t8	$24	/* caller saved */
+#define t9	$25	/* callee address for PIC/temp */
+#define jp	$25	/* PIC jump register */
+#define k0	$26	/* kernel temporary */
+#define k1	$27
+#define gp	$28	/* global pointer - caller saved for PIC */
+#define sp	$29	/* stack pointer */
+#define fp	$30	/* frame pointer */
+#define s8	$30	/* callee saved */
+#define ra	$31	/* return address */
+
+#endif /* _MIPS_SIM == _MIPS_SIM_ABI64 || _MIPS_SIM == _MIPS_SIM_NABI32 */
+
+#endif /* _ASM_REGDEF_H */
diff --git a/arch/mips/include/asm/sections.h b/arch/mips/include/asm/sections.h
new file mode 100644
index 0000000..2b8c516
--- /dev/null
+++ b/arch/mips/include/asm/sections.h
@@ -0,0 +1 @@
+#include <asm-generic/sections.h>
diff --git a/arch/mips/include/asm/sgidefs.h b/arch/mips/include/asm/sgidefs.h
new file mode 100644
index 0000000..876442f
--- /dev/null
+++ b/arch/mips/include/asm/sgidefs.h
@@ -0,0 +1,44 @@
+/*
+ * This file is subject to the terms and conditions of the GNU General Public
+ * License.  See the file "COPYING" in the main directory of this archive
+ * for more details.
+ *
+ * Copyright (C) 1996, 1999, 2001 Ralf Baechle
+ * Copyright (C) 1999 Silicon Graphics, Inc.
+ * Copyright (C) 2001 MIPS Technologies, Inc.
+ */
+#ifndef __ASM_SGIDEFS_H
+#define __ASM_SGIDEFS_H
+
+/*
+ * Using a Linux compiler for building Linux seems logic but not to
+ * everybody.
+ */
+#ifndef __linux__
+#error Use a Linux compiler or give up.
+#endif
+
+/*
+ * Definitions for the ISA levels
+ *
+ * With the introduction of MIPS32 / MIPS64 instruction sets definitions
+ * MIPS ISAs are no longer subsets of each other.  Therefore comparisons
+ * on these symbols except with == may result in unexpected results and
+ * are forbidden!
+ */
+#define _MIPS_ISA_MIPS1		1
+#define _MIPS_ISA_MIPS2		2
+#define _MIPS_ISA_MIPS3		3
+#define _MIPS_ISA_MIPS4		4
+#define _MIPS_ISA_MIPS5		5
+#define _MIPS_ISA_MIPS32	6
+#define _MIPS_ISA_MIPS64	7
+
+/*
+ * Subprogram calling convention
+ */
+#define _MIPS_SIM_ABI32		1
+#define _MIPS_SIM_NABI32	2
+#define _MIPS_SIM_ABI64		3
+
+#endif /* __ASM_SGIDEFS_H */
diff --git a/arch/mips/include/asm/string.h b/arch/mips/include/asm/string.h
new file mode 100644
index 0000000..9e334a2
--- /dev/null
+++ b/arch/mips/include/asm/string.h
@@ -0,0 +1,31 @@
+/*
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+/**
+ * @file
+ * @brief mips specific string optimizations
+ *
+ * Thanks to the Linux kernel here we can add many micro optimized string
+ * functions. But currently it makes no sense, to do so.
+ */
+#ifndef __ASM_MIPS_STRING_H
+#define __ASM_MIPS_STRING_H
+
+/* nothing special yet */
+
+#endif
diff --git a/arch/mips/include/asm/swab.h b/arch/mips/include/asm/swab.h
new file mode 100644
index 0000000..97c2f81
--- /dev/null
+++ b/arch/mips/include/asm/swab.h
@@ -0,0 +1,59 @@
+/*
+ * This file is subject to the terms and conditions of the GNU General Public
+ * License.  See the file "COPYING" in the main directory of this archive
+ * for more details.
+ *
+ * Copyright (C) 1996, 99, 2003 by Ralf Baechle
+ */
+#ifndef _ASM_SWAB_H
+#define _ASM_SWAB_H
+
+#include <linux/compiler.h>
+#include <linux/types.h>
+
+#define __SWAB_64_THRU_32__
+
+#ifdef CONFIG_CPU_MIPSR2
+
+static inline __attribute_const__ __u16 __arch_swab16(__u16 x)
+{
+	__asm__(
+	"	wsbh	%0, %1			\n"
+	: "=r" (x)
+	: "r" (x));
+
+	return x;
+}
+#define __arch_swab16 __arch_swab16
+
+static inline __attribute_const__ __u32 __arch_swab32(__u32 x)
+{
+	__asm__(
+	"	wsbh	%0, %1			\n"
+	"	rotr	%0, %0, 16		\n"
+	: "=r" (x)
+	: "r" (x));
+
+	return x;
+}
+#define __arch_swab32 __arch_swab32
+
+/*
+ * Having already checked for CONFIG_CPU_MIPSR2, enable the
+ * optimized version for 64-bit kernel on r2 CPUs.
+ */
+#ifdef CONFIG_64BIT
+static inline __attribute_const__ __u64 __arch_swab64(__u64 x)
+{
+	__asm__(
+	"	dsbh	%0, %1\n"
+	"	dshd	%0, %0"
+	: "=r" (x)
+	: "r" (x));
+
+	return x;
+}
+#define __arch_swab64 __arch_swab64
+#endif /* CONFIG_64BIT */
+#endif /* CONFIG_CPU_MIPSR2 */
+#endif /* _ASM_SWAB_H */
diff --git a/arch/mips/include/asm/types.h b/arch/mips/include/asm/types.h
new file mode 100644
index 0000000..5c1e2de
--- /dev/null
+++ b/arch/mips/include/asm/types.h
@@ -0,0 +1,44 @@
+/*
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+#ifndef __ASM_MIPS_TYPES_H
+#define __ASM_MIPS_TYPES_H
+
+#ifndef __ASSEMBLY__
+
+typedef __signed__ char __s8;
+typedef unsigned char __u8;
+
+typedef __signed__ short __s16;
+typedef unsigned short __u16;
+
+typedef __signed__ int __s32;
+typedef unsigned int __u32;
+
+typedef __signed__ long long __s64;
+typedef unsigned long long __u64;
+
+typedef unsigned char u8;
+
+typedef unsigned short u16;
+
+typedef unsigned int u32;
+
+#endif /* __ASSEMBLY__ */
+
+#endif /* __ASM_MIPS_TYPES_H */
diff --git a/arch/mips/include/mach/debug_ll.h b/arch/mips/include/mach/debug_ll.h
new file mode 100644
index 0000000..9fff7be
--- /dev/null
+++ b/arch/mips/include/mach/debug_ll.h
@@ -0,0 +1,35 @@
+/*
+ * Copyright (c) 2008 Carsten Schlote <c.schlote@konzeptpark.de>
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This file is part of barebox.
+ *
+ * barebox is free software: you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation, either version 3 of the License, or
+ * (at your option) any later version.
+ *
+ * barebox is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with barebox.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+/** @file
+ *  This File contains declaration for early output support
+ */
+#ifndef __INCLUDE_ARCH_DEBUG_LL_H__
+#define   __INCLUDE_ARCH_DEBUG_LL_H__
+
+#include <asm/io.h>
+#include <mach/hardware.h>
+
+extern __inline__ void putc( char ch )
+{
+	writeb(ch, DEBUG_LL_UART_ADDR);
+}
+
+#endif  /* __INCLUDE_ARCH_DEBUG_LL_H__ */
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
diff --git a/arch/mips/lib/ashldi3.c b/arch/mips/lib/ashldi3.c
new file mode 100644
index 0000000..461450a
--- /dev/null
+++ b/arch/mips/lib/ashldi3.c
@@ -0,0 +1,27 @@
+#include "libgcc.h"
+
+long long __ashldi3(long long u, word_type b)
+{
+	DWunion uu, w;
+	word_type bm;
+
+	if (b == 0)
+		return u;
+
+	uu.ll = u;
+	bm = 32 - b;
+
+	if (bm <= 0) {
+		w.s.low = 0;
+		w.s.high = (unsigned int) uu.s.low << -bm;
+	} else {
+		const unsigned int carries = (unsigned int) uu.s.low >> bm;
+
+		w.s.low = (unsigned int) uu.s.low << b;
+		w.s.high = ((unsigned int) uu.s.high << b) | carries;
+	}
+
+	return w.ll;
+}
+
+EXPORT_SYMBOL(__ashldi3);
diff --git a/arch/mips/lib/ashrdi3.c b/arch/mips/lib/ashrdi3.c
new file mode 100644
index 0000000..a0d005b
--- /dev/null
+++ b/arch/mips/lib/ashrdi3.c
@@ -0,0 +1,29 @@
+#include "libgcc.h"
+
+long long __ashrdi3(long long u, word_type b)
+{
+	DWunion uu, w;
+	word_type bm;
+
+	if (b == 0)
+		return u;
+
+	uu.ll = u;
+	bm = 32 - b;
+
+	if (bm <= 0) {
+		/* w.s.high = 1..1 or 0..0 */
+		w.s.high =
+		    uu.s.high >> 31;
+		w.s.low = uu.s.high >> -bm;
+	} else {
+		const unsigned int carries = (unsigned int) uu.s.high << bm;
+
+		w.s.high = uu.s.high >> b;
+		w.s.low = ((unsigned int) uu.s.low >> b) | carries;
+	}
+
+	return w.ll;
+}
+
+EXPORT_SYMBOL(__ashrdi3);
diff --git a/arch/mips/lib/barebox.lds.S b/arch/mips/lib/barebox.lds.S
new file mode 100644
index 0000000..85a04d7
--- /dev/null
+++ b/arch/mips/lib/barebox.lds.S
@@ -0,0 +1,76 @@
+/*
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
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
index 0000000..bb54700
--- /dev/null
+++ b/arch/mips/lib/csrc-r4k.c
@@ -0,0 +1,50 @@
+/*
+ * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * used code from linux-2.6/arch/mips/include/asm/mipsregs.h
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
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
diff --git a/arch/mips/lib/libgcc.h b/arch/mips/lib/libgcc.h
new file mode 100644
index 0000000..05909d5
--- /dev/null
+++ b/arch/mips/lib/libgcc.h
@@ -0,0 +1,25 @@
+#ifndef __ASM_LIBGCC_H
+#define __ASM_LIBGCC_H
+
+#include <asm/byteorder.h>
+
+typedef int word_type __attribute__ ((mode (__word__)));
+
+#ifdef __BIG_ENDIAN
+struct DWstruct {
+	int high, low;
+};
+#elif defined(__LITTLE_ENDIAN)
+struct DWstruct {
+	int low, high;
+};
+#else
+#error I feel sick.
+#endif
+
+typedef union {
+	struct DWstruct s;
+	long long ll;
+} DWunion;
+
+#endif /* __ASM_LIBGCC_H */
diff --git a/arch/mips/lib/lshrdi3.c b/arch/mips/lib/lshrdi3.c
new file mode 100644
index 0000000..154757c
--- /dev/null
+++ b/arch/mips/lib/lshrdi3.c
@@ -0,0 +1,27 @@
+#include "libgcc.h"
+
+long long __lshrdi3(long long u, word_type b)
+{
+	DWunion uu, w;
+	word_type bm;
+
+	if (b == 0)
+		return u;
+
+	uu.ll = u;
+	bm = 32 - b;
+
+	if (bm <= 0) {
+		w.s.high = 0;
+		w.s.low = (unsigned int) uu.s.high >> -bm;
+	} else {
+		const unsigned int carries = (unsigned int) uu.s.high << bm;
+
+		w.s.high = (unsigned int) uu.s.high >> b;
+		w.s.low = ((unsigned int) uu.s.low >> b) | carries;
+	}
+
+	return w.ll;
+}
+
+EXPORT_SYMBOL(__lshrdi3);
diff --git a/arch/mips/lib/memory.c b/arch/mips/lib/memory.c
new file mode 100644
index 0000000..0adb24b
--- /dev/null
+++ b/arch/mips/lib/memory.c
@@ -0,0 +1,34 @@
+/*
+ * Copyright (c) 2011 Antony Pavlov <antonynpavlov@gmail.com>
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This file is part of barebox.
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
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
