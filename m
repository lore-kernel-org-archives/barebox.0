Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x241.google.com ([2a00:1450:400c:c0c::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxhzc-0004Su-Fq
 for barebox@lists.infradead.org; Thu, 28 Sep 2017 23:13:33 +0000
Received: by mail-wr0-x241.google.com with SMTP id o42so5342820wrb.3
 for <barebox@lists.infradead.org>; Thu, 28 Sep 2017 16:12:58 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 29 Sep 2017 02:12:40 +0300
Message-Id: <20170928231249.4158-2-antonynpavlov@gmail.com>
In-Reply-To: <20170928231249.4158-1-antonynpavlov@gmail.com>
References: <20170928231249.4158-1-antonynpavlov@gmail.com>
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
Subject: [RFC v4 01/10] Add initial RISC-V architecture support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
--
TODOs:

  * split patch;
---
 arch/riscv/Kconfig                   | 73 +++++++++++++++++++++++++++++
 arch/riscv/Makefile                  | 68 +++++++++++++++++++++++++++
 arch/riscv/boot/Makefile             |  2 +
 arch/riscv/boot/main_entry.c         | 40 ++++++++++++++++
 arch/riscv/boot/start.S              | 74 ++++++++++++++++++++++++++++++
 arch/riscv/dts/.gitignore            |  1 +
 arch/riscv/dts/Makefile              |  9 ++++
 arch/riscv/dts/skeleton.dtsi         | 13 ++++++
 arch/riscv/include/asm/barebox.h     |  1 +
 arch/riscv/include/asm/bitops.h      | 35 ++++++++++++++
 arch/riscv/include/asm/bitsperlong.h | 10 ++++
 arch/riscv/include/asm/byteorder.h   | 10 ++++
 arch/riscv/include/asm/common.h      |  6 +++
 arch/riscv/include/asm/elf.h         | 11 +++++
 arch/riscv/include/asm/io.h          |  8 ++++
 arch/riscv/include/asm/mmu.h         |  6 +++
 arch/riscv/include/asm/posix_types.h |  1 +
 arch/riscv/include/asm/sections.h    |  1 +
 arch/riscv/include/asm/string.h      |  1 +
 arch/riscv/include/asm/swab.h        |  6 +++
 arch/riscv/include/asm/types.h       | 60 ++++++++++++++++++++++++
 arch/riscv/include/asm/unaligned.h   | 19 ++++++++
 arch/riscv/lib/.gitignore            |  1 +
 arch/riscv/lib/Makefile              |  9 ++++
 arch/riscv/lib/ashldi3.c             | 28 ++++++++++++
 arch/riscv/lib/ashrdi3.c             | 30 ++++++++++++
 arch/riscv/lib/asm-offsets.c         | 12 +++++
 arch/riscv/lib/barebox.lds.S         | 89 ++++++++++++++++++++++++++++++++++++
 arch/riscv/lib/dtb.c                 | 41 +++++++++++++++++
 arch/riscv/lib/libgcc.h              | 29 ++++++++++++
 arch/riscv/lib/lshrdi3.c             | 28 ++++++++++++
 arch/riscv/lib/riscv_timer.c         | 68 +++++++++++++++++++++++++++
 drivers/of/Kconfig                   |  2 +-
 33 files changed, 791 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
new file mode 100644
index 000000000..b2f0817ef
--- /dev/null
+++ b/arch/riscv/Kconfig
@@ -0,0 +1,73 @@
+config RISCV
+	bool
+	select GENERIC_FIND_NEXT_BIT
+	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
+	select HAVE_CONFIGURABLE_TEXT_BASE
+	select GPIOLIB
+	select OFTREE
+	select COMMON_CLK
+	select COMMON_CLK_OF_PROVIDER
+	select CLKDEV_LOOKUP
+	default y
+
+config ARCH_TEXT_BASE
+	hex
+	default 0x0
+
+config GENERIC_LINKER_SCRIPT
+	bool
+	default y
+
+menu "Machine selection"
+
+choice
+	prompt "CPU selection"
+	default CPU_RV_GENERIC
+
+config CPU_RV_GENERIC
+	bool "Generic RISC-V"
+	select CPU_SUPPORTS_32BIT_KERNEL
+	select CPU_SUPPORTS_64BIT_KERNEL
+
+endchoice
+
+config CPU_SUPPORTS_32BIT_KERNEL
+	bool
+config CPU_SUPPORTS_64BIT_KERNEL
+	bool
+
+choice
+	prompt "barebox code model"
+	default 64BIT
+
+config 32BIT
+	bool "32-bit barebox"
+	depends on CPU_SUPPORTS_32BIT_KERNEL
+	help
+	  Select this option to build a 32-bit barebox.
+
+config 64BIT
+	bool "64-bit barebox"
+	depends on CPU_SUPPORTS_64BIT_KERNEL
+	help
+	  Select this option to build a 64-bit barebox.
+
+endchoice
+
+config BUILTIN_DTB
+	bool "link a DTB into the barebox image"
+	depends on OFTREE
+
+config BUILTIN_DTB_NAME
+	string "DTB to build into the barebox image"
+	depends on BUILTIN_DTB
+
+endmenu
+
+source common/Kconfig
+source commands/Kconfig
+source net/Kconfig
+source drivers/Kconfig
+source fs/Kconfig
+source lib/Kconfig
+source crypto/Kconfig
diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
new file mode 100644
index 000000000..4e3318cf1
--- /dev/null
+++ b/arch/riscv/Makefile
@@ -0,0 +1,68 @@
+CPPFLAGS += -fno-strict-aliasing
+
+cflags-y += -fno-pic -pipe
+cflags-y += -Wall -Wmissing-prototypes -Wstrict-prototypes \
+	-Wno-uninitialized -Wno-format -Wno-main -mcmodel=medany
+
+LDFLAGS += $(ldflags-y)
+LDFLAGS_barebox += -nostdlib
+
+TEXT_BASE = $(CONFIG_TEXT_BASE)
+CPPFLAGS += -DTEXT_BASE=$(CONFIG_TEXT_BASE)
+
+ifndef CONFIG_MODULES
+# Add cleanup flags
+CPPFLAGS += -fdata-sections -ffunction-sections
+LDFLAGS_barebox += -static --gc-sections
+endif
+
+KBUILD_BINARY := barebox.bin
+
+machdirs := $(patsubst %,arch/riscv/mach-%/,$(machine-y))
+
+ifneq ($(board-y),)
+BOARD := arch/riscv/boards/$(board-y)/
+else
+BOARD :=
+endif
+
+ifeq ($(KBUILD_SRC),)
+CPPFLAGS += -I$(BOARD)/include
+else
+CPPFLAGS += -I$(srctree)/$(BOARD)/include
+endif
+
+ifeq ($(KBUILD_SRC),)
+CPPFLAGS += $(patsubst %,-I%include,$(machdirs))
+else
+CPPFLAGS += $(patsubst %,-I$(srctree)/%include,$(machdirs))
+endif
+
+archprepare: maketools
+
+PHONY += maketools
+
+ifneq ($(machine-y),)
+MACH  := arch/riscv/mach-$(machine-y)/
+else
+MACH  :=
+endif
+
+ifneq ($(board-y),)
+BOARD := arch/riscv/boards/$(board-y)/
+else
+BOARD :=
+endif
+
+common-y += $(BOARD) $(MACH)
+common-y += arch/riscv/lib/
+common-y += arch/riscv/boot/
+
+common-$(CONFIG_OFTREE) += arch/riscv/dts/
+
+CPPFLAGS += $(cflags-y)
+CFLAGS += $(cflags-y)
+
+lds-y	:= arch/riscv/lib/barebox.lds
+
+CLEAN_FILES += arch/riscv/lib/barebox.lds
diff --git a/arch/riscv/boot/Makefile b/arch/riscv/boot/Makefile
new file mode 100644
index 000000000..d6d28ce65
--- /dev/null
+++ b/arch/riscv/boot/Makefile
@@ -0,0 +1,2 @@
+obj-y += start.o
+obj-y += main_entry.o
diff --git a/arch/riscv/boot/main_entry.c b/arch/riscv/boot/main_entry.c
new file mode 100644
index 000000000..18db86da5
--- /dev/null
+++ b/arch/riscv/boot/main_entry.c
@@ -0,0 +1,40 @@
+/*
+ * Copyright (C) 2016 Antony Pavlov <antonynpavlov@gmail.com>
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
+#include <memory.h>
+#include <asm-generic/memory_layout.h>
+#include <asm/sections.h>
+
+void main_entry(void);
+
+/**
+ * Called plainly from assembler code
+ *
+ * @note The C environment isn't initialized yet
+ */
+void main_entry(void)
+{
+	/* clear the BSS first */
+	memset(__bss_start, 0x00, __bss_stop - __bss_start);
+
+	mem_malloc_init((void *)MALLOC_BASE,
+			(void *)(MALLOC_BASE + MALLOC_SIZE - 1));
+
+	start_barebox();
+}
diff --git a/arch/riscv/boot/start.S b/arch/riscv/boot/start.S
new file mode 100644
index 000000000..2fd00f63d
--- /dev/null
+++ b/arch/riscv/boot/start.S
@@ -0,0 +1,74 @@
+/*
+ * Startup Code for MIPS CPU
+ *
+ * based on coreboot/src/arch/riscv/bootblock.S
+ *
+ * Copyright (C) 2016 Antony Pavlov <antonynpavlov@gmail.com>
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
+ */
+
+#include <asm-generic/memory_layout.h>
+
+	.text
+	.section ".text_entry"
+	.align 2
+
+.globl _start
+_start:
+	li sp, STACK_BASE + STACK_SIZE
+
+	# make room for HLS and initialize it
+	addi sp, sp, -64 /* MENTRY_FRAME_SIZE */
+
+	# poison the stack
+	li t1, STACK_BASE
+	li t0, 0xdeadbeef
+	sw t0, 0(t1)
+
+	# clear any pending interrupts
+	//csrwi mip, 0
+
+	/* copy barebox to link location */
+
+	la	a0, _start	/* a0 <- _start actual address */
+	li	a1, CONFIG_TEXT_BASE	/* a1 <- _start link address */
+
+	beq	a0, a1, main_entry
+
+	la	a2, __bss_start
+
+#define LONGSIZE 4
+
+copy_loop:
+	/* copy from source address [a0] */
+	lw	t0, LONGSIZE * 0(a0)
+	lw	t1, LONGSIZE * 1(a0)
+	lw	t2, LONGSIZE * 2(a0)
+	lw	t3, LONGSIZE * 3(a0)
+	/* copy to target address [a1] */
+	sw	t0, LONGSIZE * 0(a1)
+	sw	t1, LONGSIZE * 1(a1)
+	sw	t2, LONGSIZE * 2(a1)
+	sw	t3, LONGSIZE * 3(a1)
+	addi	a0, a0, LONGSIZE * 2
+	addi	a1, a1, LONGSIZE * 2
+	bgeu	a2, a0, copy_loop
+
+	/* Alas! At the moment I can't load main_entry __link__ address
+	   into a0 with la. Use CONFIG_TEXT_BASE instead. This solution
+	   leads to extra cycles for repeat sp initialization. */
+
+	li	a0, CONFIG_TEXT_BASE
+	jalr	a0
diff --git a/arch/riscv/dts/.gitignore b/arch/riscv/dts/.gitignore
new file mode 100644
index 000000000..077903c50
--- /dev/null
+++ b/arch/riscv/dts/.gitignore
@@ -0,0 +1 @@
+*dtb*
diff --git a/arch/riscv/dts/Makefile b/arch/riscv/dts/Makefile
new file mode 100644
index 000000000..f8380b11c
--- /dev/null
+++ b/arch/riscv/dts/Makefile
@@ -0,0 +1,9 @@
+BUILTIN_DTB := $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_NAME))
+obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
+
+# just to build a built-in.o. Otherwise compilation fails when no devicetree is
+# created.
+obj- += dummy.o
+
+always := $(dtb-y)
+clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts
diff --git a/arch/riscv/dts/skeleton.dtsi b/arch/riscv/dts/skeleton.dtsi
new file mode 100644
index 000000000..38ead821b
--- /dev/null
+++ b/arch/riscv/dts/skeleton.dtsi
@@ -0,0 +1,13 @@
+/*
+ * Skeleton device tree; the bare minimum needed to boot; just include and
+ * add a compatible value.  The bootloader will typically populate the memory
+ * node.
+ */
+
+/ {
+	#address-cells = <2>;
+	#size-cells = <1>;
+	chosen { };
+	aliases { };
+	memory { device_type = "memory"; reg = <0 0 0>; };
+};
diff --git a/arch/riscv/include/asm/barebox.h b/arch/riscv/include/asm/barebox.h
new file mode 100644
index 000000000..2997587d8
--- /dev/null
+++ b/arch/riscv/include/asm/barebox.h
@@ -0,0 +1 @@
+/* dummy */
diff --git a/arch/riscv/include/asm/bitops.h b/arch/riscv/include/asm/bitops.h
new file mode 100644
index 000000000..e77ab8320
--- /dev/null
+++ b/arch/riscv/include/asm/bitops.h
@@ -0,0 +1,35 @@
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
+ *
+ */
+
+#ifndef _ASM_BITOPS_H_
+#define _ASM_BITOPS_H_
+
+#include <asm-generic/bitops/__ffs.h>
+#include <asm-generic/bitops/__fls.h>
+#include <asm-generic/bitops/ffs.h>
+#include <asm-generic/bitops/fls.h>
+#include <asm-generic/bitops/ffz.h>
+#include <asm-generic/bitops/hweight.h>
+#include <asm-generic/bitops/fls64.h>
+#include <asm-generic/bitops/find.h>
+#include <asm-generic/bitops/ops.h>
+
+#define set_bit(x, y)			__set_bit(x, y)
+#define clear_bit(x, y)			__clear_bit(x, y)
+#define change_bit(x, y)		__change_bit(x, y)
+#define test_and_set_bit(x, y)		__test_and_set_bit(x, y)
+#define test_and_clear_bit(x, y)	__test_and_clear_bit(x, y)
+#define test_and_change_bit(x, y)	__test_and_change_bit(x, y)
+
+#endif /* _ASM_BITOPS_H_ */
diff --git a/arch/riscv/include/asm/bitsperlong.h b/arch/riscv/include/asm/bitsperlong.h
new file mode 100644
index 000000000..4641e7e48
--- /dev/null
+++ b/arch/riscv/include/asm/bitsperlong.h
@@ -0,0 +1,10 @@
+#ifndef __ASM_BITSPERLONG_H
+#define __ASM_BITSPERLONG_H
+
+#ifdef __riscv64
+#define BITS_PER_LONG 64
+#else
+#define BITS_PER_LONG 32
+#endif
+
+#endif /* __ASM_BITSPERLONG_H */
diff --git a/arch/riscv/include/asm/byteorder.h b/arch/riscv/include/asm/byteorder.h
new file mode 100644
index 000000000..778bb7224
--- /dev/null
+++ b/arch/riscv/include/asm/byteorder.h
@@ -0,0 +1,10 @@
+#ifndef _ASM_RISCV_BYTEORDER_H
+#define _ASM_RISCV_BYTEORDER_H
+
+#if defined(__RISCVEB__)
+#include <linux/byteorder/big_endian.h>
+#else
+#include <linux/byteorder/little_endian.h>
+#endif
+
+#endif /* _ASM_RISCV_BYTEORDER_H */
diff --git a/arch/riscv/include/asm/common.h b/arch/riscv/include/asm/common.h
new file mode 100644
index 000000000..bc8a17e30
--- /dev/null
+++ b/arch/riscv/include/asm/common.h
@@ -0,0 +1,6 @@
+#ifndef ASM_RISCV_COMMON_H
+#define ASM_RISCV_COMMON_H
+
+/* nothing special yet */
+
+#endif /* ASM_RISCV_COMMON_H */
diff --git a/arch/riscv/include/asm/elf.h b/arch/riscv/include/asm/elf.h
new file mode 100644
index 000000000..7134fa058
--- /dev/null
+++ b/arch/riscv/include/asm/elf.h
@@ -0,0 +1,11 @@
+#ifndef __ASM_RISCV_ELF_H__
+#define __ASM_RISCV_ELF_H__
+
+#if __SIZEOF_POINTER__ == 8
+#define ELF_CLASS	ELFCLASS64
+#define CONFIG_PHYS_ADDR_T_64BIT
+#else
+#define ELF_CLASS	ELFCLASS32
+#endif
+
+#endif /* __ASM_RISCV_ELF_H__ */
diff --git a/arch/riscv/include/asm/io.h b/arch/riscv/include/asm/io.h
new file mode 100644
index 000000000..3cdea7fca
--- /dev/null
+++ b/arch/riscv/include/asm/io.h
@@ -0,0 +1,8 @@
+#ifndef __ASM_RISCV_IO_H
+#define __ASM_RISCV_IO_H
+
+#define IO_SPACE_LIMIT 0
+
+#include <asm-generic/io.h>
+
+#endif /* __ASM_RISCV_IO_H */
diff --git a/arch/riscv/include/asm/mmu.h b/arch/riscv/include/asm/mmu.h
new file mode 100644
index 000000000..95af87142
--- /dev/null
+++ b/arch/riscv/include/asm/mmu.h
@@ -0,0 +1,6 @@
+#ifndef __ASM_MMU_H
+#define __ASM_MMU_H
+
+#define MAP_ARCH_DEFAULT MAP_UNCACHED
+
+#endif /* __ASM_MMU_H */
diff --git a/arch/riscv/include/asm/posix_types.h b/arch/riscv/include/asm/posix_types.h
new file mode 100644
index 000000000..22cae6230
--- /dev/null
+++ b/arch/riscv/include/asm/posix_types.h
@@ -0,0 +1 @@
+#include <asm-generic/posix_types.h>
diff --git a/arch/riscv/include/asm/sections.h b/arch/riscv/include/asm/sections.h
new file mode 100644
index 000000000..2b8c51603
--- /dev/null
+++ b/arch/riscv/include/asm/sections.h
@@ -0,0 +1 @@
+#include <asm-generic/sections.h>
diff --git a/arch/riscv/include/asm/string.h b/arch/riscv/include/asm/string.h
new file mode 100644
index 000000000..2997587d8
--- /dev/null
+++ b/arch/riscv/include/asm/string.h
@@ -0,0 +1 @@
+/* dummy */
diff --git a/arch/riscv/include/asm/swab.h b/arch/riscv/include/asm/swab.h
new file mode 100644
index 000000000..60a90120b
--- /dev/null
+++ b/arch/riscv/include/asm/swab.h
@@ -0,0 +1,6 @@
+#ifndef _ASM_SWAB_H
+#define _ASM_SWAB_H
+
+/* nothing. use generic functions */
+
+#endif /* _ASM_SWAB_H */
diff --git a/arch/riscv/include/asm/types.h b/arch/riscv/include/asm/types.h
new file mode 100644
index 000000000..ba386ab4c
--- /dev/null
+++ b/arch/riscv/include/asm/types.h
@@ -0,0 +1,60 @@
+#ifndef __ASM_RISCV_TYPES_H
+#define __ASM_RISCV_TYPES_H
+
+#ifdef __riscv64
+/*
+ * This is used in dlmalloc. On RISCV64 we need it to be 64 bit
+ */
+#define INTERNAL_SIZE_T unsigned long
+
+/*
+ * This is a Kconfig variable in the Kernel, but we want to detect
+ * this during compile time, so we set it here.
+ */
+#define CONFIG_PHYS_ADDR_T_64BIT
+
+#endif
+
+typedef unsigned short umode_t;
+
+/*
+ * __xx is ok: it doesn't pollute the POSIX namespace. Use these in the
+ * header files exported to user space
+ */
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
+#if defined(__GNUC__) && !defined(__STRICT_ANSI__)
+typedef __signed__ long long __s64;
+typedef unsigned long long __u64;
+#endif
+
+/*
+ * These aren't exported outside the kernel to avoid name space clashes
+ */
+#ifdef __KERNEL__
+
+typedef signed char s8;
+typedef unsigned char u8;
+
+typedef signed short s16;
+typedef unsigned short u16;
+
+typedef signed int s32;
+typedef unsigned int u32;
+
+typedef signed long long s64;
+typedef unsigned long long u64;
+
+#include <asm/bitsperlong.h>
+
+#endif /* __KERNEL__ */
+
+#endif /* __ASM_RISCV_TYPES_H */
diff --git a/arch/riscv/include/asm/unaligned.h b/arch/riscv/include/asm/unaligned.h
new file mode 100644
index 000000000..aaebc0641
--- /dev/null
+++ b/arch/riscv/include/asm/unaligned.h
@@ -0,0 +1,19 @@
+#ifndef _ASM_RISCV_UNALIGNED_H
+#define _ASM_RISCV_UNALIGNED_H
+
+/*
+ * FIXME: this file is copy-n-pasted from sandbox's unaligned.h
+ */
+
+#include <linux/unaligned/access_ok.h>
+#include <linux/unaligned/generic.h>
+
+#if __BYTE_ORDER == __LITTLE_ENDIAN
+#define get_unaligned __get_unaligned_le
+#define put_unaligned __put_unaligned_le
+#else
+#define get_unaligned __get_unaligned_be
+#define put_unaligned __put_unaligned_be
+#endif
+
+#endif /* _ASM_RISCV_UNALIGNED_H */
diff --git a/arch/riscv/lib/.gitignore b/arch/riscv/lib/.gitignore
new file mode 100644
index 000000000..d1165788c
--- /dev/null
+++ b/arch/riscv/lib/.gitignore
@@ -0,0 +1 @@
+barebox.lds
diff --git a/arch/riscv/lib/Makefile b/arch/riscv/lib/Makefile
new file mode 100644
index 000000000..313363c1a
--- /dev/null
+++ b/arch/riscv/lib/Makefile
@@ -0,0 +1,9 @@
+extra-$(CONFIG_GENERIC_LINKER_SCRIPT) += barebox.lds
+
+obj-y += riscv_timer.o
+
+obj-$(CONFIG_32BIT) += lshrdi3.o
+obj-$(CONFIG_32BIT) += ashldi3.o
+obj-$(CONFIG_32BIT) += ashrdi3.o
+
+obj-$(CONFIG_BUILTIN_DTB) += dtb.o
diff --git a/arch/riscv/lib/ashldi3.c b/arch/riscv/lib/ashldi3.c
new file mode 100644
index 000000000..cbdbcbb6a
--- /dev/null
+++ b/arch/riscv/lib/ashldi3.c
@@ -0,0 +1,28 @@
+#include <module.h>
+
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
+EXPORT_SYMBOL(__ashldi3);
diff --git a/arch/riscv/lib/ashrdi3.c b/arch/riscv/lib/ashrdi3.c
new file mode 100644
index 000000000..928d6d97c
--- /dev/null
+++ b/arch/riscv/lib/ashrdi3.c
@@ -0,0 +1,30 @@
+#include <module.h>
+
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
+EXPORT_SYMBOL(__ashrdi3);
diff --git a/arch/riscv/lib/asm-offsets.c b/arch/riscv/lib/asm-offsets.c
new file mode 100644
index 000000000..22f382b71
--- /dev/null
+++ b/arch/riscv/lib/asm-offsets.c
@@ -0,0 +1,12 @@
+/*
+ * Generate definitions needed by assembly language modules.
+ * This code generates raw asm output which is post-processed to extract
+ * and format the required data.
+ */
+
+#include <linux/kbuild.h>
+
+int main(void)
+{
+	return 0;
+}
diff --git a/arch/riscv/lib/barebox.lds.S b/arch/riscv/lib/barebox.lds.S
new file mode 100644
index 000000000..9468fb8b5
--- /dev/null
+++ b/arch/riscv/lib/barebox.lds.S
@@ -0,0 +1,89 @@
+/*
+ * Copyright (C) 2016 Antony Pavlov <antonynpavlov@gmail.com>
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
+ */
+
+#include <asm-generic/barebox.lds.h>
+
+OUTPUT_ARCH(riscv)
+ENTRY(_start)
+SECTIONS
+{
+	. = TEXT_BASE;
+
+	. = ALIGN(8);
+	.text      :
+	{
+		_stext = .;
+		_start = .;
+		KEEP(*(.text_entry*))
+		_text = .;
+		__bare_init_start = .;
+		*(.text_bare_init*)
+		__bare_init_end = .;
+		*(.text*)
+	}
+	BAREBOX_BARE_INIT_SIZE
+
+	PRE_IMAGE
+
+	. = ALIGN(8);
+	.rodata : { *(.rodata*) }
+
+	_etext = .;			/* End of text and rodata section */
+	_sdata = .;
+
+	. = ALIGN(8);
+	.data : { *(.data*) }
+
+	.barebox_imd : { BAREBOX_IMD }
+
+	. = ALIGN(8);
+	.got : { *(.got*) }
+
+	. = .;
+	__barebox_cmd_start = .;
+	.barebox_cmd : { BAREBOX_CMDS }
+	__barebox_cmd_end = .;
+
+	__barebox_magicvar_start = .;
+	.barebox_magicvar : { BAREBOX_MAGICVARS }
+	__barebox_magicvar_end = .;
+
+	__barebox_initcalls_start = .;
+	.barebox_initcalls : { INITCALLS }
+	__barebox_initcalls_end = .;
+
+	__barebox_exitcalls_start = .;
+	.barebox_exitcalls : { EXITCALLS }
+	__barebox_exitcalls_end = .;
+
+	__usymtab_start = .;
+	__usymtab : { BAREBOX_SYMS }
+	__usymtab_end = .;
+
+	.rela.dyn : { *(.rela*) }
+
+	.oftables : { BAREBOX_CLK_TABLE() }
+
+	.dtb : { BAREBOX_DTB() }
+
+	_edata = .;
+	. = ALIGN(8);
+	__bss_start = .;
+	.bss : { *(.bss*) *(.sbss*) }
+	__bss_stop = .;
+	_end = .;
+}
diff --git a/arch/riscv/lib/dtb.c b/arch/riscv/lib/dtb.c
new file mode 100644
index 000000000..09f519dcc
--- /dev/null
+++ b/arch/riscv/lib/dtb.c
@@ -0,0 +1,41 @@
+/*
+ * Copyright (C) 2016 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
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
+ */
+#include <common.h>
+#include <init.h>
+#include <of.h>
+
+extern char __dtb_start[];
+
+static int of_riscv_init(void)
+{
+	struct device_node *root;
+
+	root = of_get_root_node();
+	if (root)
+		return 0;
+
+	root = of_unflatten_dtb(__dtb_start);
+	if (!IS_ERR(root)) {
+		pr_debug("using internal DTB\n");
+		of_set_root_node(root);
+		if (IS_ENABLED(CONFIG_OFDEVICE))
+			of_probe();
+	}
+
+	return 0;
+}
+core_initcall(of_riscv_init);
diff --git a/arch/riscv/lib/libgcc.h b/arch/riscv/lib/libgcc.h
new file mode 100644
index 000000000..593e59802
--- /dev/null
+++ b/arch/riscv/lib/libgcc.h
@@ -0,0 +1,29 @@
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
+long long __lshrdi3(long long u, word_type b);
+long long __ashldi3(long long u, word_type b);
+long long __ashrdi3(long long u, word_type b);
+
+#endif /* __ASM_LIBGCC_H */
diff --git a/arch/riscv/lib/lshrdi3.c b/arch/riscv/lib/lshrdi3.c
new file mode 100644
index 000000000..74a4846e9
--- /dev/null
+++ b/arch/riscv/lib/lshrdi3.c
@@ -0,0 +1,28 @@
+#include <module.h>
+
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
+EXPORT_SYMBOL(__lshrdi3);
diff --git a/arch/riscv/lib/riscv_timer.c b/arch/riscv/lib/riscv_timer.c
new file mode 100644
index 000000000..46181f877
--- /dev/null
+++ b/arch/riscv/lib/riscv_timer.c
@@ -0,0 +1,68 @@
+/*
+ * Copyright (C) 2017 Antony Pavlov <antonynpavlov@gmail.com>
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
+ */
+
+/**
+ * @file
+ * @brief Clocksource based on RISCV cycle CSR timer
+ */
+
+#include <init.h>
+#include <of.h>
+#include <linux/clk.h>
+#include <clock.h>
+#include <io.h>
+
+static uint64_t rdcycle_read(void)
+{
+	register unsigned long __v;
+
+	__asm__ __volatile__ ("rdcycle %0" : "=r" (__v));
+
+	return __v;
+}
+
+static struct clocksource rdcycle_cs = {
+	.read	= rdcycle_read,
+	.mask	= CLOCKSOURCE_MASK(32),
+};
+
+static int rdcycle_cs_init(void)
+{
+	unsigned int cycle_frequency;
+
+	/* default rate: 100 MHz */
+	cycle_frequency = 100000000;
+
+	if (IS_ENABLED(CONFIG_OFTREE)) {
+		struct device_node *np;
+		struct clk *clk;
+
+		np = of_get_cpu_node(0, NULL);
+		if (np) {
+			clk = of_clk_get(np, 0);
+			if (!IS_ERR(clk)) {
+				cycle_frequency = clk_get_rate(clk);
+			}
+		}
+	}
+
+	clocks_calc_mult_shift(&rdcycle_cs.mult, &rdcycle_cs.shift,
+		cycle_frequency, NSEC_PER_SEC, 10);
+
+	return init_clock(&rdcycle_cs);
+}
+postcore_initcall(rdcycle_cs_init);
diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
index a1fac0e61..24cf4465a 100644
--- a/drivers/of/Kconfig
+++ b/drivers/of/Kconfig
@@ -4,7 +4,7 @@ config OFTREE
 
 config OFTREE_MEM_GENERIC
 	depends on OFTREE
-	depends on PPC || ARM || EFI_BOOTUP || OPENRISC || SANDBOX
+	depends on PPC || ARM || EFI_BOOTUP || OPENRISC || SANDBOX || RISCV
 	def_bool y
 
 config DTC
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
