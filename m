Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gvdig-0003mF-62
 for barebox@lists.infradead.org; Mon, 18 Feb 2019 07:52:10 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 18 Feb 2019 08:52:00 +0100
Message-Id: <20190218075202.10091-2-o.rempel@pengutronix.de>
In-Reply-To: <20190218075202.10091-1-o.rempel@pengutronix.de>
References: <20190218075202.10091-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1 2/4] MIPS: relocation: add relocation support
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

From: Oleksij Rempel <linux@rempel-privat.de>

this patch i a port of following patch from u-boot with some additional
integration changes and fixes of original code:
| Subject: [PATCH] MIPS: Stop building position independent code
|
| U-Boot has up until now built with -fpic for the MIPS architecture,
| producing position independent code which uses indirection through a
| global offset table, making relocation fairly straightforward as it
| simply involves patching up GOT entries.
|
| Using -fpic does however have some downsides. The biggest of these is
| that generated code is bloated in various ways. For example, function
| calls are indirected through the GOT & the t9 register:
|
|   8f998064   lw     t9,-32668(gp)
|   0320f809   jalr   t9
|
| Without -fpic the call is simply:
|
|   0f803f01   jal    be00fc04 <puts>
|
| This is more compact & faster (due to the lack of the load & the
| dependency the jump has on its result). It is also easier to read &
| debug because the disassembly shows what function is being called,
| rather than just an offset from gp which would then have to be looked up
| in the ELF to discover the target function.
|
| Another disadvantage of -fpic is that each function begins with a
| sequence to calculate the value of the gp register, for example:
|
|   3c1c0004   lui    gp,0x4
|   279c3384   addiu  gp,gp,13188
|   0399e021   addu   gp,gp,t9
|
| Without using -fpic this sequence no longer appears at the start of each
| function, reducing code size considerably.
|
| This patch switches U-Boot from building with -fpic to building with
| -fno-pic, in order to gain the benefits described above. The cost of
| this is an extra step during the build process to extract relocation
| data from the ELF & write it into a new .rel section in a compact
| format, plus the added complexity of dealing with multiple types of
| relocation rather than the single type that applied to the GOT. The
| benefit is smaller, cleaner, more debuggable code. The relocate_code()
| function is reimplemented in C to handle the new relocation scheme,
| which also makes it easier to read & debug.
|
| Taking maltael_defconfig as an example the size of u-boot.bin built
| using the Codescape MIPS 2016.05-06 toolchain (gcc 4.9.2, binutils
| 2.24.90) shrinks from 254KiB to 224KiB.
|
| Signed-off-by: Paul Burton <paul.burton@imgtec.com>

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 Makefile                         |   2 +-
 arch/mips/Kconfig                |  18 ++
 arch/mips/Makefile               |  11 +-
 arch/mips/boot/main_entry-pbl.c  |   4 +-
 arch/mips/boot/start.S           |   4 +-
 arch/mips/include/asm/relocs.h   |  23 ++
 arch/mips/include/asm/sections.h |  14 +
 arch/mips/lib/Makefile           |   2 +
 arch/mips/lib/barebox.lds.S      |  27 +-
 arch/mips/lib/reloc.c            | 182 +++++++++++++
 arch/mips/lib/sections.c         |   9 +
 scripts/Makefile                 |   1 +
 scripts/mips-relocs.c            | 426 +++++++++++++++++++++++++++++++
 13 files changed, 714 insertions(+), 9 deletions(-)
 create mode 100644 arch/mips/include/asm/relocs.h
 create mode 100644 arch/mips/lib/reloc.c
 create mode 100644 arch/mips/lib/sections.c
 create mode 100644 scripts/mips-relocs.c

diff --git a/Makefile b/Makefile
index f8c3d75575..ad4d0d319c 100644
--- a/Makefile
+++ b/Makefile
@@ -183,7 +183,7 @@ HOST_LFS_LIBS := $(shell getconf LFS_LIBS)
 
 HOSTCC       = gcc
 HOSTCXX      = g++
-HOSTCFLAGS   = -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer $(HOST_LFS_CFLAGS)
+HOSTCFLAGS   = -Wall -ggdb -Wstrict-prototypes -O2 -fomit-frame-pointer $(HOST_LFS_CFLAGS)
 HOSTCXXFLAGS = -O2 $(HOST_LFS_CFLAGS)
 HOSTLDFLAGS = $(HOST_LFS_LDFLAGS)
 HOST_LOADLIBES = $(HOST_LFS_LIBS)
diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index eab9452de9..49f238df58 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -32,6 +32,24 @@ config PHYS_ADDR_T_64BIT
 
 menu "Machine selection"
 
+config MIPS_RELOCATION_TABLE_SIZE
+	hex "Relocation table size"
+	range 0x100 0x10000
+	default "0x8000"
+	---help---
+	  A table of relocation data will be appended to the Barebox binary
+	  and parsed in relocate_code() to fix up all offsets in the relocated
+	  Barebox.
+
+	  This option allows the amount of space reserved for the table to be
+	  adjusted in a range from 256 up to 64k. The default is 32k and should
+	  be ok in most cases. Reduce this value to shrink the size of U-Boot
+	  binary.
+
+	  The build will fail and a valid size suggested if this is too small.
+
+	  If unsure, leave at the default value.
+
 config BUILTIN_DTB
 	bool "link a DTB into the barebox image"
 	depends on OFTREE
diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 5fbd51ceee..5eccf18fe4 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -11,7 +11,7 @@ endif
 
 CPPFLAGS += -D__MIPS__ -fno-strict-aliasing -fno-merge-constants
 
-cflags-y += -G 0 -mno-abicalls -fno-pic -pipe
+cflags-y += -G 0 -mno-abicalls -pipe
 cflags-y += -Wall -Wstrict-prototypes \
 	-Wno-uninitialized -Wno-format -Wno-main
 
@@ -59,7 +59,7 @@ CPPFLAGS += -DTEXT_BASE=$(CONFIG_TEXT_BASE)
 ifndef CONFIG_MODULES
 # Add cleanup flags
 CPPFLAGS += -fdata-sections -ffunction-sections
-LDFLAGS_barebox += -static --gc-sections
+LDFLAGS_barebox += -static --gc-sections --emit-relocs
 endif
 
 ifdef CONFIG_IMAGE_COMPRESSION
@@ -116,6 +116,13 @@ CFLAGS += $(cflags-y)
 
 lds-$(CONFIG_GENERIC_LINKER_SCRIPT)   := arch/mips/lib/barebox.lds
 
+cmd_barebox__ ?= $(LD) $(LDFLAGS) $(LDFLAGS_barebox) -o $@ \
+      -T $(barebox-lds)                         \
+      --start-group $(barebox-common) --end-group                  \
+      $(filter-out $(barebox-lds) $(barebox-common) FORCE ,$^);	\
+	$(srctree)/scripts/mips-relocs $@
+
+
 CLEAN_FILES    += arch/mips/lib/barebox.lds barebox.map barebox.S
 
 pbl := arch/mips/pbl
diff --git a/arch/mips/boot/main_entry-pbl.c b/arch/mips/boot/main_entry-pbl.c
index 28eaa8791f..60be645148 100644
--- a/arch/mips/boot/main_entry-pbl.c
+++ b/arch/mips/boot/main_entry-pbl.c
@@ -38,7 +38,7 @@ void __section(.text_entry) pbl_main_entry(void *fdt, void *fdt_end,
 {
 	u32 pg_start, pg_end, pg_len, fdt_len;
 	void *fdt_new;
-	void (*barebox)(void *fdt, u32 fdt_len);
+	void (*barebox)(void *fdt, u32 fdt_len, u32 ram_size);
 
 	puts_ll("pbl_main_entry()\n");
 
@@ -56,5 +56,5 @@ void __section(.text_entry) pbl_main_entry(void *fdt, void *fdt_end,
 	memcpy(fdt_new, fdt, fdt_len);
 
 	barebox = (void *)TEXT_BASE;
-	barebox(fdt_new, fdt_len);
+	barebox(fdt_new, fdt_len, ram_size);
 }
diff --git a/arch/mips/boot/start.S b/arch/mips/boot/start.S
index 6efe03e98d..c1cd2d9dd5 100644
--- a/arch/mips/boot/start.S
+++ b/arch/mips/boot/start.S
@@ -18,6 +18,7 @@ EXPORT(_start)
 	/* save dtb pointer */
 	move	s0, a0
 	move	s1, a1
+	move	s2, a2
 
 	/* disable watchpoints */
 	mtc0	zero, CP0_WATCHLO
@@ -32,7 +33,8 @@ EXPORT(_start)
 	/* restore dtb pointer */
 	move	a0, s0
 	move	a1, s1
-	la	v0, main_entry
+	move	a2, s2
+	la	v0, relocate_code
 	jal	v0
 	 nop
 
diff --git a/arch/mips/include/asm/relocs.h b/arch/mips/include/asm/relocs.h
new file mode 100644
index 0000000000..0987c4bb13
--- /dev/null
+++ b/arch/mips/include/asm/relocs.h
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * MIPS Relocations
+ *
+ * Copyright (c) 2017 Imagination Technologies Ltd.
+ */
+
+#ifndef __ASM_MIPS_RELOCS_H__
+#define __ASM_MIPS_RELOCS_H__
+
+#define R_MIPS_NONE		0
+#define R_MIPS_32		2
+#define R_MIPS_26		4
+#define R_MIPS_HI16		5
+#define R_MIPS_LO16		6
+#define R_MIPS_PC16		10
+#define R_MIPS_64		18
+#define R_MIPS_HIGHER		28
+#define R_MIPS_HIGHEST		29
+#define R_MIPS_PC21_S2		60
+#define R_MIPS_PC26_S2		61
+
+#endif /* __ASM_MIPS_RELOCS_H__ */
diff --git a/arch/mips/include/asm/sections.h b/arch/mips/include/asm/sections.h
index 2b8c516038..8e004eaf34 100644
--- a/arch/mips/include/asm/sections.h
+++ b/arch/mips/include/asm/sections.h
@@ -1 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+
+#ifndef __ASM_MIPS_SECTIONS_H
+#define __ASM_MIPS_SECTIONS_H
+
 #include <asm-generic/sections.h>
+
+/**
+ * __rel_start: Relocation data generated by the mips-relocs tool
+ *
+ * See arch/mips/lib/reloc.c for details on the format & use of this data.
+ */
+extern uint8_t __rel_start[];
+
+#endif
diff --git a/arch/mips/lib/Makefile b/arch/mips/lib/Makefile
index 7372e8dc27..4ba42e526e 100644
--- a/arch/mips/lib/Makefile
+++ b/arch/mips/lib/Makefile
@@ -4,6 +4,8 @@ obj-y += cpu-probe.o
 lwl-y += end.o
 obj-y += traps.o
 obj-y += genex.o
+obj-y  += reloc.o
+obj-y += sections.o 
 obj-y += shutdown.o
 obj-y += dma-default.o
 
diff --git a/arch/mips/lib/barebox.lds.S b/arch/mips/lib/barebox.lds.S
index 8ddf954517..58b0c5919d 100644
--- a/arch/mips/lib/barebox.lds.S
+++ b/arch/mips/lib/barebox.lds.S
@@ -13,6 +13,8 @@ SECTIONS
 	. = TEXT_BASE;
 
 	. = ALIGN(4);
+
+	.image_start : { *(.__image_start) }
 	.text      :
 	{
 		_stext = .;
@@ -79,9 +81,28 @@ SECTIONS
 	.dtb : { BAREBOX_DTB() }
 
 	_edata = .;
+	.image_end : { *(.__image_end) }
+
 	. = ALIGN(4);
-	__bss_start = .;
-	.bss : { *(.bss*) }
-	__bss_stop = .;
+	/*
+	 * .rel must come last so that the mips-relocs tool can shrink
+	 * the section size & the PT_LOAD program header filesz.
+	 */
+	.data.reloc : {
+		__rel_start = .;
+		BYTE(0x0)
+		. += (32 * 1024) - 1;
+	}
+
 	_end = .;
+
+	.bss __rel_start (OVERLAY) : {
+		__bss_start = .;
+		*(.sbss.*)
+		*(.bss.*)
+		*(COMMON)
+		. = ALIGN(4);
+		__bss_stop = .;
+	}
+
 }
diff --git a/arch/mips/lib/reloc.c b/arch/mips/lib/reloc.c
new file mode 100644
index 0000000000..9756d61666
--- /dev/null
+++ b/arch/mips/lib/reloc.c
@@ -0,0 +1,182 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * MIPS Relocation
+ *
+ * Copyright (c) 2017 Imagination Technologies Ltd.
+ *
+ * Relocation data, found in the .rel section, is generated by the mips-relocs
+ * tool & contains a record of all locations in the Barebox binary that need to
+ * be fixed up during relocation.
+ *
+ * The data is a sequence of unsigned integers, which are of somewhat arbitrary
+ * size. This is achieved by encoding integers as a sequence of bytes, each of
+ * which contains 7 bits of data with the most significant bit indicating
+ * whether any further bytes need to be read. The least significant bits of the
+ * integer are found in the first byte - ie. it somewhat resembles little
+ * endian.
+ *
+ * Each pair of two integers represents a relocation that must be applied. The
+ * first integer represents the type of relocation as a standard ELF relocation
+ * type (ie. R_MIPS_*). The second integer represents the offset at which to
+ * apply the relocation, relative to the previous relocation or for the first
+ * relocation the start of the relocated .text section.
+ *
+ * The end of the relocation data is indicated when type R_MIPS_NONE (0) is
+ * read, at which point no further integers should be read. That is, the
+ * terminating R_MIPS_NONE reloc includes no offset.
+ */
+
+#include <common.h>
+
+#include <asm/bitops.h>
+#include <asm/cache.h>
+#include <asm/cacheops.h>
+#include <asm/cpu.h>
+#include <asm/cpu-info.h>
+#include <asm/io.h>
+#include <asm/mipsregs.h>
+#include <asm/relocs.h>
+#include <asm/sections.h>
+#include <linux/sizes.h>
+#include <asm-generic/memory_layout.h>
+
+#define MAX_BSS_SIZE SZ_1M
+
+void main_entry(void *fdt, u32 fdt_size);
+void relocate_code(void *fdt, u32 fdt_size, u32 relocaddr);
+
+/**
+ * read_uint() - Read an unsigned integer from the buffer
+ * @buf: pointer to a pointer to the reloc buffer
+ *
+ * Read one whole unsigned integer from the relocation data pointed to by @buf,
+ * advancing @buf past the bytes encoding the integer.
+ *
+ * Returns: the integer read from @buf
+ */
+static unsigned long read_uint(uint8_t **buf)
+{
+	unsigned long val = 0;
+	unsigned int shift = 0;
+	uint8_t new;
+
+	do {
+		new = *(*buf)++;
+		val |= (new & 0x7f) << shift;
+		shift += 7;
+	} while (new & 0x80);
+
+	return val;
+}
+
+/**
+ * apply_reloc() - Apply a single relocation
+ * @type: the type of reloc (R_MIPS_*)
+ * @addr: the address that the reloc should be applied to
+ * @off: the relocation offset, ie. number of bytes we're moving Barebox by
+ *
+ * Apply a single relocation of type @type at @addr. This function is
+ * intentionally simple, and does the bare minimum needed to fixup the
+ * relocated Barebox - in particular, it does not check for overflows.
+ */
+static void apply_reloc(unsigned int type, void *addr, long off)
+{
+	uint32_t u32;
+
+	switch (type) {
+	case R_MIPS_26:
+		u32 = *(uint32_t *)addr;
+		u32 = (u32 & GENMASK(31, 26)) |
+		      ((u32 + (off >> 2)) & GENMASK(25, 0));
+		*(uint32_t *)addr = u32;
+		break;
+
+	case R_MIPS_32:
+		*(uint32_t *)addr += off;
+		break;
+
+	case R_MIPS_64:
+		*(uint64_t *)addr += off;
+		break;
+
+	case R_MIPS_HI16:
+		*(uint32_t *)addr += off >> 16;
+		break;
+
+	default:
+		panic("Unhandled reloc type %u\n", type);
+	}
+}
+
+/**
+ * relocate_code() - Relocate Barebox, generally from flash to DDR
+ * @start_addr_sp: new stack pointer
+ * @new_gd: pointer to relocated global data
+ * @relocaddr: the address to relocate to
+ *
+ * Relocate Barebox from its current location (generally in flash) to a new one
+ * (generally in DDR). This function will copy the Barebox binary & apply
+ * relocations as necessary, then jump to board_init_r in the new build of
+ * Barebox. As such, this function does not return.
+ */
+void relocate_code(void *fdt, u32 fdt_size, u32 ram_size)
+{
+	unsigned long addr, length, bss_len;
+	u32 relocaddr, new_stack;
+	uint8_t *buf, *bss_start;
+	unsigned int type;
+	long off;
+
+	length = barebox_image_size + MAX_BSS_SIZE;
+	relocaddr = ALIGN_DOWN(ram_size - barebox_image_size, SZ_64K);
+	relocaddr = KSEG0ADDR(relocaddr);
+	new_stack = relocaddr - MALLOC_SIZE - 16;
+
+	/*
+	 * Ensure that we're relocating by an offset which is a multiple of
+	 * 64KiB, ie. doesn't change the least significant 16 bits of any
+	 * addresses. This allows us to discard R_MIPS_LO16 relocs, saving
+	 * space in the Barebox binary & complexity in handling them.
+	 */
+	off = relocaddr - (unsigned long)__image_start;
+	if (off & 0xffff)
+		panic("Mis-aligned relocation\n");
+
+	/* Copy Barebox to RAM */
+	memcpy((void *)relocaddr, __image_start, length);
+
+	/* Now apply relocations to the copy in RAM */
+	buf = __rel_start;
+	addr = relocaddr;
+	while (true) {
+		type = read_uint(&buf);
+		if (type == R_MIPS_NONE)
+			break;
+
+		addr += read_uint(&buf) << 2;
+		apply_reloc(type, (void *)addr, off);
+	}
+
+	/* Ensure the icache is coherent */
+	flush_cache_all();
+
+	/* Clear the .bss section */
+	bss_start = (uint8_t *)((unsigned long)__bss_start + off);
+	bss_len = (unsigned long)&__bss_stop - (unsigned long)__bss_start;
+	memset(bss_start, 0, bss_len);
+
+	 __asm__ __volatile__ (
+			"move	$a0, %0\n"
+		"	move	$a1, %1\n"
+		"	move	$31, $0\n"
+		"	move	$sp, %2\n"
+		"	jr	%3\n"
+		: /* no outputs */
+		: "r"(fdt),
+		  "r"(fdt_size),
+		  "r"(new_stack),
+		  "r"((unsigned long)main_entry + off));
+
+	/* Since we jumped to the new Barebox above, we won't get here */
+	unreachable();
+}
diff --git a/arch/mips/lib/sections.c b/arch/mips/lib/sections.c
new file mode 100644
index 0000000000..66d559f94a
--- /dev/null
+++ b/arch/mips/lib/sections.c
@@ -0,0 +1,9 @@
+#include <common.h>
+#include <asm/sections.h>
+#include <linux/types.h>
+
+char _text[0] __attribute__((section("._text")));
+char __bss_start[0] __attribute__((section(".__bss_start")));
+char __bss_stop[0] __attribute__((section(".__bss_stop")));
+char __image_start[0] __attribute__((section(".__image_start")));
+char __image_end[0] __attribute__((section(".__image_end")));
diff --git a/scripts/Makefile b/scripts/Makefile
index ff0a3c2a07..62d4ab20aa 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -12,6 +12,7 @@ hostprogs-y                      += bareboxcrc32
 hostprogs-y                      += kernel-install
 hostprogs-$(CONFIG_IMD)          += bareboximd
 hostprogs-$(CONFIG_KALLSYMS)     += kallsyms
+hostprogs-$(CONFIG_MIPS)         += mips-relocs
 hostprogs-$(CONFIG_MVEBU_HOSTTOOLS) += kwbimage kwboot
 hostprogs-$(CONFIG_ARCH_NETX)    += gen_netx_image
 hostprogs-$(CONFIG_ARCH_OMAP)    += omap_signGP mk-omap-image
diff --git a/scripts/mips-relocs.c b/scripts/mips-relocs.c
new file mode 100644
index 0000000000..7916159581
--- /dev/null
+++ b/scripts/mips-relocs.c
@@ -0,0 +1,426 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * MIPS Relocation Data Generator
+ *
+ * Copyright (c) 2017 Imagination Technologies Ltd.
+ */
+
+#include <assert.h>
+#include <elf.h>
+#include <errno.h>
+#include <fcntl.h>
+#include <limits.h>
+#include <stdbool.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <string.h>
+#include <sys/mman.h>
+#include <sys/stat.h>
+#include <unistd.h>
+
+#include <../../arch/mips/include/asm/relocs.h>
+
+#define hdr_field(pfx, idx, field) ({				\
+	uint64_t _val;						\
+	unsigned int _size;					\
+								\
+	if (is_64) {						\
+		_val = pfx##hdr64[idx].field;			\
+		_size = sizeof(pfx##hdr64[0].field);		\
+	} else {						\
+		_val = pfx##hdr32[idx].field;			\
+		_size = sizeof(pfx##hdr32[0].field);		\
+	}							\
+								\
+	switch (_size) {					\
+	case 1:							\
+		break;						\
+	case 2:							\
+		_val = is_be ? be16toh(_val) : le16toh(_val);	\
+		break;						\
+	case 4:							\
+		_val = is_be ? be32toh(_val) : le32toh(_val);	\
+		break;						\
+	case 8:							\
+		_val = is_be ? be64toh(_val) : le64toh(_val);	\
+		break;						\
+	}							\
+								\
+	_val;							\
+})
+
+#define set_hdr_field(pfx, idx, field, val) ({			\
+	uint64_t _val;						\
+	unsigned int _size;					\
+								\
+	if (is_64)						\
+		_size = sizeof(pfx##hdr64[0].field);		\
+	else							\
+		_size = sizeof(pfx##hdr32[0].field);		\
+								\
+	switch (_size) {					\
+	case 1:							\
+		_val = val;					\
+		break;						\
+	case 2:							\
+		_val = is_be ? htobe16(val) : htole16(val);	\
+		break;						\
+	case 4:							\
+		_val = is_be ? htobe32(val) : htole32(val);	\
+		break;						\
+	case 8:							\
+		_val = is_be ? htobe64(val) : htole64(val);	\
+		break;						\
+	default:						\
+		/* We should never reach here */		\
+		_val = 0;					\
+		assert(0);					\
+		break;						\
+	}							\
+								\
+	if (is_64)						\
+		pfx##hdr64[idx].field = _val;			\
+	else							\
+		pfx##hdr32[idx].field = _val;			\
+})
+
+#define ehdr_field(field) \
+	hdr_field(e, 0, field)
+#define phdr_field(idx, field) \
+	hdr_field(p, idx, field)
+#define shdr_field(idx, field) \
+	hdr_field(s, idx, field)
+
+#define set_phdr_field(idx, field, val) \
+	set_hdr_field(p, idx, field, val)
+#define set_shdr_field(idx, field, val) \
+	set_hdr_field(s, idx, field, val)
+
+#define shstr(idx) (&shstrtab[idx])
+
+bool is_64, is_be;
+uint64_t text_base;
+
+struct mips_reloc {
+	uint8_t type;
+	uint64_t offset;
+} *relocs;
+size_t relocs_sz, relocs_idx;
+
+static int add_reloc(unsigned int type, uint64_t off)
+{
+	struct mips_reloc *new;
+	size_t new_sz;
+
+	switch (type) {
+	case R_MIPS_NONE:
+	case R_MIPS_LO16:
+	case R_MIPS_PC16:
+	case R_MIPS_HIGHER:
+	case R_MIPS_HIGHEST:
+	case R_MIPS_PC21_S2:
+	case R_MIPS_PC26_S2:
+		/* Skip these relocs */
+		return 0;
+
+	default:
+		break;
+	}
+
+	if (relocs_idx == relocs_sz) {
+		new_sz = relocs_sz ? relocs_sz * 2 : 128;
+		new = realloc(relocs, new_sz * sizeof(*relocs));
+		if (!new) {
+			fprintf(stderr, "Out of memory\n");
+			return -ENOMEM;
+		}
+
+		relocs = new;
+		relocs_sz = new_sz;
+	}
+
+	relocs[relocs_idx++] = (struct mips_reloc){
+		.type = type,
+		.offset = off,
+	};
+
+	return 0;
+}
+
+static int parse_mips32_rel(const void *_rel)
+{
+	const Elf32_Rel *rel = _rel;
+	uint32_t off, type;
+
+	off = is_be ? be32toh(rel->r_offset) : le32toh(rel->r_offset);
+	off -= text_base;
+
+	type = is_be ? be32toh(rel->r_info) : le32toh(rel->r_info);
+	type = ELF32_R_TYPE(type);
+
+	return add_reloc(type, off);
+}
+
+static int parse_mips64_rela(const void *_rel)
+{
+	const Elf64_Rela *rel = _rel;
+	uint64_t off, type;
+
+	off = is_be ? be64toh(rel->r_offset) : le64toh(rel->r_offset);
+	off -= text_base;
+
+	type = rel->r_info >> (64 - 8);
+
+	return add_reloc(type, off);
+}
+
+static void output_uint(uint8_t **buf, uint64_t val)
+{
+	uint64_t tmp;
+
+	do {
+		tmp = val & 0x7f;
+		val >>= 7;
+		tmp |= !!val << 7;
+		*(*buf)++ = tmp;
+	} while (val);
+}
+
+static int compare_relocs(const void *a, const void *b)
+{
+	const struct mips_reloc *ra = a, *rb = b;
+
+	return ra->offset - rb->offset;
+}
+
+int main(int argc, char *argv[])
+{
+	unsigned int i, j, i_rel_shdr, sh_type, sh_entsize, sh_entries;
+	size_t rel_size, rel_actual_size;
+	const char *shstrtab, *sh_name, *rel_pfx;
+	int (*parse_fn)(const void *rel);
+	uint8_t *buf_start, *buf;
+	const Elf32_Ehdr *ehdr32;
+	const Elf64_Ehdr *ehdr64;
+	uintptr_t sh_offset;
+	Elf32_Shdr *shdr32;
+	Elf64_Shdr *shdr64;
+	struct stat st;
+	int err, fd;
+	void *elf;
+	bool skip;
+
+	fd = open(argv[1], O_RDWR);
+	if (fd == -1) {
+		fprintf(stderr, "Unable to open input file %s\n", argv[1]);
+		err = errno;
+		goto out_ret;
+	}
+
+	err = fstat(fd, &st);
+	if (err) {
+		fprintf(stderr, "Unable to fstat() input file\n");
+		goto out_close_fd;
+	}
+
+	elf = mmap(NULL, st.st_size, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
+	if (elf == MAP_FAILED) {
+		fprintf(stderr, "Unable to mmap() input file\n");
+		err = errno;
+		goto out_close_fd;
+	}
+
+	ehdr32 = elf;
+	ehdr64 = elf;
+
+	if (memcmp(&ehdr32->e_ident[EI_MAG0], ELFMAG, SELFMAG)) {
+		fprintf(stderr, "Input file is not an ELF\n");
+		err = -EINVAL;
+		goto out_free_relocs;
+	}
+
+	if (ehdr32->e_ident[EI_VERSION] != EV_CURRENT) {
+		fprintf(stderr, "Unrecognised ELF version\n");
+		err = -EINVAL;
+		goto out_free_relocs;
+	}
+
+	switch (ehdr32->e_ident[EI_CLASS]) {
+	case ELFCLASS32:
+		is_64 = false;
+		break;
+	case ELFCLASS64:
+		is_64 = true;
+		break;
+	default:
+		fprintf(stderr, "Unrecognised ELF class\n");
+		err = -EINVAL;
+		goto out_free_relocs;
+	}
+
+	switch (ehdr32->e_ident[EI_DATA]) {
+	case ELFDATA2LSB:
+		is_be = false;
+		break;
+	case ELFDATA2MSB:
+		is_be = true;
+		break;
+	default:
+		fprintf(stderr, "Unrecognised ELF data encoding\n");
+		err = -EINVAL;
+		goto out_free_relocs;
+	}
+
+	if (ehdr_field(e_type) != ET_EXEC) {
+		fprintf(stderr, "Input ELF is not an executable\n");
+		printf("type 0x%lx\n", ehdr_field(e_type));
+		err = -EINVAL;
+		goto out_free_relocs;
+	}
+
+	if (ehdr_field(e_machine) != EM_MIPS) {
+		fprintf(stderr, "Input ELF does not target MIPS\n");
+		err = -EINVAL;
+		goto out_free_relocs;
+	}
+
+	shdr32 = elf + ehdr_field(e_shoff);
+	shdr64 = elf + ehdr_field(e_shoff);
+	shstrtab = elf + shdr_field(ehdr_field(e_shstrndx), sh_offset);
+
+	i_rel_shdr = UINT_MAX;
+	for (i = 0; i < ehdr_field(e_shnum); i++) {
+		sh_name = shstr(shdr_field(i, sh_name));
+
+		if (!strcmp(sh_name, ".data.reloc")) {
+			i_rel_shdr = i;
+			continue;
+		}
+
+		if (!strcmp(sh_name, ".text")) {
+			text_base = shdr_field(i, sh_addr);
+			continue;
+		}
+	}
+	if (i_rel_shdr == UINT_MAX) {
+		fprintf(stderr, "Unable to find .rel section\n");
+		err = -EINVAL;
+		goto out_free_relocs;
+	}
+	if (!text_base) {
+		fprintf(stderr, "Unable to find .text base address\n");
+		err = -EINVAL;
+		goto out_free_relocs;
+	}
+
+	rel_pfx = is_64 ? ".rela." : ".rel.";
+
+	for (i = 0; i < ehdr_field(e_shnum); i++) {
+		sh_type = shdr_field(i, sh_type);
+		if ((sh_type != SHT_REL) && (sh_type != SHT_RELA))
+			continue;
+
+		sh_name = shstr(shdr_field(i, sh_name));
+		if (strncmp(sh_name, rel_pfx, strlen(rel_pfx))) {
+			if (strcmp(sh_name, ".rel") && strcmp(sh_name, ".rel.dyn"))
+				fprintf(stderr, "WARNING: Unexpected reloc section name '%s'\n", sh_name);
+			continue;
+		}
+
+		/*
+		 * Skip reloc sections which either don't correspond to another
+		 * section in the ELF, or whose corresponding section isn't
+		 * loaded as part of the U-Boot binary (ie. doesn't have the
+		 * alloc flags set).
+		 */
+		skip = true;
+		for (j = 0; j < ehdr_field(e_shnum); j++) {
+			if (strcmp(&sh_name[strlen(rel_pfx) - 1], shstr(shdr_field(j, sh_name))))
+				continue;
+
+			skip = !(shdr_field(j, sh_flags) & SHF_ALLOC);
+			break;
+		}
+		if (skip)
+			continue;
+
+		sh_offset = shdr_field(i, sh_offset);
+		sh_entsize = shdr_field(i, sh_entsize);
+		sh_entries = shdr_field(i, sh_size) / sh_entsize;
+
+		if (sh_type == SHT_REL) {
+			if (is_64) {
+				fprintf(stderr, "REL-style reloc in MIPS64 ELF?\n");
+				err = -EINVAL;
+				goto out_free_relocs;
+			} else {
+				parse_fn = parse_mips32_rel;
+			}
+		} else {
+			if (is_64) {
+				parse_fn = parse_mips64_rela;
+			} else {
+				fprintf(stderr, "RELA-style reloc in MIPS32 ELF?\n");
+				err = -EINVAL;
+				goto out_free_relocs;
+			}
+		}
+
+		for (j = 0; j < sh_entries; j++) {
+			err = parse_fn(elf + sh_offset + (j * sh_entsize));
+			if (err)
+				goto out_free_relocs;
+		}
+	}
+
+	if (!relocs) {
+		fprintf(stderr, "No relocs was found. Try to configure linker with --emit-relocs\n");
+		err = -EINVAL;
+		goto out_free_relocs;
+	}
+
+	/* Sort relocs in ascending order of offset */
+	qsort(relocs, relocs_idx, sizeof(*relocs), compare_relocs);
+
+	/* Make reloc offsets relative to their predecessor */
+	for (i = relocs_idx - 1; i > 0; i--) {
+		relocs[i].offset -= relocs[i - 1].offset;
+	}
+
+	/* Write the relocations to the .rel section */
+	buf = buf_start = elf + shdr_field(i_rel_shdr, sh_offset);
+	for (i = 0; i < relocs_idx; i++) {
+		output_uint(&buf, relocs[i].type);
+		output_uint(&buf, relocs[i].offset >> 2);
+	}
+
+	/* Write a terminating R_MIPS_NONE (0) */
+	output_uint(&buf, R_MIPS_NONE);
+
+	/* Ensure the relocs didn't overflow the .rel section */
+	rel_size = shdr_field(i_rel_shdr, sh_size);
+	rel_actual_size = buf - buf_start;
+	if (rel_actual_size > rel_size) {
+		fprintf(stderr, "Relocations overflow available space of 0x%lx (required 0x%lx)!\n",
+			rel_size, rel_actual_size);
+		fprintf(stderr, "Please adjust CONFIG_MIPS_RELOCATION_TABLE_SIZE to at least 0x%lx\n",
+			(rel_actual_size + 0x100) & ~0xFF);
+		err = -ENOMEM;
+		goto out_free_relocs;
+	}
+
+	/* Make sure data is written back to the file */
+	err = msync(elf, st.st_size, MS_SYNC);
+	if (err) {
+		fprintf(stderr, "Failed to msync: %d\n", errno);
+		goto out_free_relocs;
+	}
+
+out_free_relocs:
+	free(relocs);
+	munmap(elf, st.st_size);
+out_close_fd:
+	close(fd);
+out_ret:
+	return err;
+}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
