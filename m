Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jq4Ne-0007kf-Br
 for barebox@lists.infradead.org; Tue, 30 Jun 2020 00:44:12 +0000
Received: by mail-qk1-x742.google.com with SMTP id l6so17106929qkc.6
 for <barebox@lists.infradead.org>; Mon, 29 Jun 2020 17:44:10 -0700 (PDT)
From: David Dgien <dgienda125@gmail.com>
Date: Mon, 29 Jun 2020 20:38:38 -0400
Message-Id: <20200630003838.7745-9-dgienda125@gmail.com>
In-Reply-To: <20200630003838.7745-1-dgienda125@gmail.com>
References: <20200630003838.7745-1-dgienda125@gmail.com>
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
Subject: [PATCH v2 8/8] arm: module: Allow modules outside of bl range
To: barebox@lists.infradead.org
Cc: David Dgien <dgienda125@gmail.com>

Unlike the Linux kernel, barebox does not have a dedicated heap for
storing modules. Therefore, if the system memory configuration places
the general heap further away than can be reached by a 'bl' instruction
(24 bits of address, or 16 MiB), then the module relocations will fail
due to being out of range.

Allocate PLTs when loading modules so that jumps and calls whose
targets are too far away for their relative offsets to be encoded
in the instructions themselves can be bounced via veneers in the
module's PLT. The modules will use slightly more memory, but after
rounding up to page size, the actual memory footprint is usually
the same.

Adoption of Linux commits:

66e94ba3c8ea ARM: kernel: avoid brute force search on PLT generation
1031a7e674d1 ARM: kernel: sort relocation sections before allocating PLTs
05123fef0982 ARM: kernel: allocate PLT entries only for external symbols
35fa91eed817 ARM: kernel: merge core and init PLTs
7d485f647c1f ARM: 8220/1: allow modules outside of bl range

Signed-off-by: David Dgien <dgienda125@gmail.com>
---
 arch/arm/Kconfig              |  15 +++
 arch/arm/Makefile             |   4 +
 arch/arm/cpu/Kconfig          |   1 +
 arch/arm/include/asm/module.h |  33 ++++-
 arch/arm/lib32/Makefile       |   1 +
 arch/arm/lib32/module-plts.c  | 229 ++++++++++++++++++++++++++++++++++
 arch/arm/lib32/module.c       |  14 +++
 arch/arm/lib32/module.lds     |   4 +
 8 files changed, 295 insertions(+), 6 deletions(-)
 create mode 100644 arch/arm/lib32/module-plts.c
 create mode 100644 arch/arm/lib32/module.lds

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index dfb18777b..95fd8ecfe 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -477,4 +477,19 @@ config ARM_PSCI_DEBUG
 	  putc function.
 	  Only use for debugging.
 
+config ARM_MODULE_PLTS
+	bool "Use PLTs to allow loading modules placed far from barebox image"
+	depends on MODULES
+	select QSORT
+	help
+	  Allocate PLTs when loading modules so that jumps and calls whose
+	  targets are too far away for their relative offsets to be encoded
+	  in the instructions themselves can be bounced via veneers in the
+	  module's PLT. The modules will use slightly more memory, but after
+	  rounding up to page size, the actual memory footprint is usually
+	  the same.
+
+	  Say y if your memory configuration puts the heap to far away from the
+	  barebox image, causing relocation out of range errors
+
 endmenu
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 42e409871..96613cc5b 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -16,6 +16,10 @@ KBUILD_CPPFLAGS	+= -mlittle-endian
 LD		+= -EL
 endif
 
+ifeq ($(CONFIG_ARM_MODULE_PLTS),y)
+LDFLAGS_MODULE   += -T $(srctree)/arch/arm/lib32/module.lds
+endif
+
 # Unaligned access is not supported when MMU is disabled, so given how
 # at least some of the code would be executed with MMU off, lets be
 # conservative and instruct the compiler not to generate any unaligned
diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index 6b4fed526..f9f52a625 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -6,6 +6,7 @@ config PHYS_ADDR_T_64BIT
 config CPU_32
 	bool
 	select HAS_MODULES
+	select HAVE_MOD_ARCH_SPECIFIC
 	select HAS_DMA
 	select HAVE_PBL_IMAGE
 
diff --git a/arch/arm/include/asm/module.h b/arch/arm/include/asm/module.h
index 5b4d1a3f3..3ce39bf82 100644
--- a/arch/arm/include/asm/module.h
+++ b/arch/arm/include/asm/module.h
@@ -1,13 +1,34 @@
 #ifndef _ASM_ARM_MODULE_H
 #define _ASM_ARM_MODULE_H
 
-struct mod_arch_specific
-{
-	int foo;
+#include <asm-generic/module.h>
+
+struct unwind_table;
+
+#ifdef CONFIG_ARM_UNWIND
+enum {
+	ARM_SEC_INIT,
+	ARM_SEC_DEVINIT,
+	ARM_SEC_CORE,
+	ARM_SEC_EXIT,
+	ARM_SEC_DEVEXIT,
+	ARM_SEC_HOT,
+	ARM_SEC_UNLIKELY,
+	ARM_SEC_MAX,
+};
+#endif
+
+struct mod_arch_specific {
+#ifdef CONFIG_ARM_UNWIND
+	struct unwind_table *unwind[ARM_SEC_MAX];
+#endif
+#ifdef CONFIG_ARM_MODULE_PLTS
+	struct elf32_shdr	*plt;
+	int			plt_count;
+#endif
 };
 
-#define Elf_Shdr	Elf32_Shdr
-#define Elf_Sym		Elf32_Sym
-#define Elf_Ehdr	Elf32_Ehdr
+struct module;
+u32 get_module_plt(struct module *mod, unsigned long loc, Elf32_Addr val);
 
 #endif /* _ASM_ARM_MODULE_H */
diff --git a/arch/arm/lib32/Makefile b/arch/arm/lib32/Makefile
index 597bc0790..ec6a3aea6 100644
--- a/arch/arm/lib32/Makefile
+++ b/arch/arm/lib32/Makefile
@@ -23,6 +23,7 @@ obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memset.o
 obj-$(CONFIG_ARM_UNWIND) += unwind.o
 obj-$(CONFIG_ARM_SEMIHOSTING) += semihosting-trap.o semihosting.o
 obj-$(CONFIG_MODULES) += module.o
+obj-$(CONFIG_ARM_MODULE_PLTS) += module-plts.o
 extra-y += barebox.lds
 
 pbl-y	+= lib1funcs.o
diff --git a/arch/arm/lib32/module-plts.c b/arch/arm/lib32/module-plts.c
new file mode 100644
index 000000000..53cf6b11c
--- /dev/null
+++ b/arch/arm/lib32/module-plts.c
@@ -0,0 +1,229 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2014-2017 Linaro Ltd. <ard.biesheuvel@linaro.org>
+ */
+
+#include <common.h>
+#include <elf.h>
+#include <module.h>
+#include <qsort.h>
+
+#include <asm/opcodes.h>
+
+#define PLT_ENT_STRIDE		32
+#define PLT_ENT_COUNT		(PLT_ENT_STRIDE / sizeof(u32))
+#define PLT_ENT_SIZE		(sizeof(struct plt_entries) / PLT_ENT_COUNT)
+
+#ifdef CONFIG_THUMB2_BAREBOX
+#define PLT_ENT_LDR		__opcode_to_mem_thumb32(0xf8dff000 | \
+							(PLT_ENT_STRIDE - 4))
+#else
+#define PLT_ENT_LDR		__opcode_to_mem_arm(0xe59ff000 | \
+						    (PLT_ENT_STRIDE - 8))
+#endif
+
+struct plt_entries {
+	u32	ldr[PLT_ENT_COUNT];
+	u32	lit[PLT_ENT_COUNT];
+};
+
+u32 get_module_plt(struct module *mod, unsigned long loc, Elf32_Addr val)
+{
+	struct plt_entries *plt = (struct plt_entries *)mod->arch.plt->sh_addr;
+	int idx = 0;
+
+	/*
+	 * Look for an existing entry pointing to 'val'. Given that the
+	 * relocations are sorted, this will be the last entry we allocated.
+	 * (if one exists).
+	 */
+	if (mod->arch.plt_count > 0) {
+		plt += (mod->arch.plt_count - 1) / PLT_ENT_COUNT;
+		idx = (mod->arch.plt_count - 1) % PLT_ENT_COUNT;
+
+		if (plt->lit[idx] == val)
+			return (u32)&plt->ldr[idx];
+
+		idx = (idx + 1) % PLT_ENT_COUNT;
+		if (!idx)
+			plt++;
+	}
+
+	mod->arch.plt_count++;
+	BUG_ON(mod->arch.plt_count * PLT_ENT_SIZE > mod->arch.plt->sh_size);
+
+	if (!idx)
+		/* Populate a new set of entries */
+		*plt = (struct plt_entries){
+			{ [0 ... PLT_ENT_COUNT - 1] = PLT_ENT_LDR, },
+			{ val, }
+		};
+	else
+		plt->lit[idx] = val;
+
+	return (u32)&plt->ldr[idx];
+}
+
+#define cmp_3way(a,b)	((a) < (b) ? -1 : (a) > (b))
+
+static int cmp_rel(const void *a, const void *b)
+{
+	const Elf32_Rel *x = a, *y = b;
+	int i;
+
+	/* sort by type and symbol index */
+	i = cmp_3way(ELF32_R_TYPE(x->r_info), ELF32_R_TYPE(y->r_info));
+	if (i == 0)
+		i = cmp_3way(ELF32_R_SYM(x->r_info), ELF32_R_SYM(y->r_info));
+	return i;
+}
+
+static bool is_zero_addend_relocation(Elf32_Addr base, const Elf32_Rel *rel)
+{
+	u32 *tval = (u32 *)(base + rel->r_offset);
+
+	/*
+	 * Do a bitwise compare on the raw addend rather than fully decoding
+	 * the offset and doing an arithmetic comparison.
+	 * Note that a zero-addend jump/call relocation is encoded taking the
+	 * PC bias into account, i.e., -8 for ARM and -4 for Thumb2.
+	 */
+	switch (ELF32_R_TYPE(rel->r_info)) {
+		u16 upper, lower;
+
+	case R_ARM_THM_CALL:
+	case R_ARM_THM_JUMP24:
+		upper = __mem_to_opcode_thumb16(((u16 *)tval)[0]);
+		lower = __mem_to_opcode_thumb16(((u16 *)tval)[1]);
+
+		return (upper & 0x7ff) == 0x7ff && (lower & 0x2fff) == 0x2ffe;
+
+	case R_ARM_CALL:
+	case R_ARM_PC24:
+	case R_ARM_JUMP24:
+		return (__mem_to_opcode_arm(*tval) & 0xffffff) == 0xfffffe;
+	}
+	BUG();
+}
+
+static bool duplicate_rel(Elf32_Addr base, const Elf32_Rel *rel, int num)
+{
+	const Elf32_Rel *prev;
+
+	/*
+	 * Entries are sorted by type and symbol index. That means that,
+	 * if a duplicate entry exists, it must be in the preceding
+	 * slot.
+	 */
+	if (!num)
+		return false;
+
+	prev = rel + num - 1;
+	return cmp_rel(rel + num, prev) == 0 &&
+	       is_zero_addend_relocation(base, prev);
+}
+
+/* Count how many PLT entries we may need */
+static unsigned int count_plts(const Elf32_Sym *syms, Elf32_Addr base,
+			       const Elf32_Rel *rel, int num, Elf32_Word dstidx)
+{
+	unsigned int ret = 0;
+	const Elf32_Sym *s;
+	int i;
+
+	for (i = 0; i < num; i++) {
+		switch (ELF32_R_TYPE(rel[i].r_info)) {
+		case R_ARM_CALL:
+		case R_ARM_PC24:
+		case R_ARM_JUMP24:
+		case R_ARM_THM_CALL:
+		case R_ARM_THM_JUMP24:
+			/*
+			 * We only have to consider branch targets that resolve
+			 * to symbols that are defined in a different section.
+			 * This is not simply a heuristic, it is a fundamental
+			 * limitation, since there is no guaranteed way to emit
+			 * PLT entries sufficiently close to the branch if the
+			 * section size exceeds the range of a branch
+			 * instruction. So ignore relocations against defined
+			 * symbols if they live in the same section as the
+			 * relocation target.
+			 */
+			s = syms + ELF32_R_SYM(rel[i].r_info);
+			if (s->st_shndx == dstidx)
+				break;
+
+			/*
+			 * Jump relocations with non-zero addends against
+			 * undefined symbols are supported by the ELF spec, but
+			 * do not occur in practice (e.g., 'jump n bytes past
+			 * the entry point of undefined function symbol f').
+			 * So we need to support them, but there is no need to
+			 * take them into consideration when trying to optimize
+			 * this code. So let's only check for duplicates when
+			 * the addend is zero.
+			 */
+			if (!is_zero_addend_relocation(base, rel + i) ||
+			    !duplicate_rel(base, rel, i))
+				ret++;
+		}
+	}
+	return ret;
+}
+
+int module_frob_arch_sections(Elf_Ehdr *ehdr, Elf_Shdr *sechdrs,
+			      char *secstrings, struct module *mod)
+{
+	unsigned long plts = 0;
+	Elf32_Shdr *s, *sechdrs_end = sechdrs + ehdr->e_shnum;
+	Elf32_Sym *syms = NULL;
+
+	/*
+	 * To store the PLTs, we expand the .text section for core module code
+	 * and for initialization code.
+	 */
+	for (s = sechdrs; s < sechdrs_end; ++s) {
+		if (strcmp(".plt", secstrings + s->sh_name) == 0)
+			mod->arch.plt = s;
+		else if (s->sh_type == SHT_SYMTAB)
+			syms = (Elf32_Sym *)s->sh_addr;
+	}
+
+	if (!mod->arch.plt) {
+		pr_err("%s: module PLT section missing\n", mod->name);
+		return -ENOEXEC;
+	}
+	if (!syms) {
+		pr_err("%s: module symtab section missing\n", mod->name);
+		return -ENOEXEC;
+	}
+
+	for (s = sechdrs + 1; s < sechdrs_end; ++s) {
+		Elf32_Rel *rels = (void *)ehdr + s->sh_offset;
+		int numrels = s->sh_size / sizeof(Elf32_Rel);
+		Elf32_Shdr *dstsec = sechdrs + s->sh_info;
+
+		if (s->sh_type != SHT_REL)
+			continue;
+
+		/* ignore relocations that operate on non-exec sections */
+		if (!(dstsec->sh_flags & SHF_EXECINSTR))
+			continue;
+
+		/* sort by type and symbol index */
+		/* n.b. Barebox qsort instead of Linux sort */
+		qsort(rels, numrels, sizeof(Elf32_Rel), cmp_rel);
+
+		plts += count_plts(syms, dstsec->sh_addr, rels,	numrels, s->sh_info);
+	}
+
+	mod->arch.plt->sh_type = SHT_NOBITS;
+	mod->arch.plt->sh_flags = SHF_EXECINSTR | SHF_ALLOC;
+	mod->arch.plt->sh_addralign = PLT_ENT_STRIDE;
+	mod->arch.plt->sh_size = round_up(plts * PLT_ENT_SIZE,
+					  sizeof(struct plt_entries));
+	mod->arch.plt_count = 0;
+
+	pr_debug("%s: plt=%x\n", __func__, mod->arch.plt->sh_size);
+	return 0;
+}
diff --git a/arch/arm/lib32/module.c b/arch/arm/lib32/module.c
index be7965d59..3ded9896b 100644
--- a/arch/arm/lib32/module.c
+++ b/arch/arm/lib32/module.c
@@ -64,6 +64,20 @@ apply_relocate(Elf32_Shdr *sechdrs, const char *strtab, unsigned int symindex,
 				offset -= 0x04000000;
 
 			offset += sym->st_value - loc;
+
+			/*
+			 * Route through a PLT entry if 'offset' exceeds the
+			 * supported range. Note that 'offset + loc + 8'
+			 * contains the absolute jump target, i.e.,
+			 * @sym + addend, corrected for the +8 PC bias.
+			 */
+			if (IS_ENABLED(CONFIG_ARM_MODULE_PLTS) &&
+			    (offset <= (s32)0xfe000000 ||
+			     offset >= (s32)0x02000000))
+				offset = get_module_plt(module, loc,
+							offset + loc + 8)
+					 - loc - 8;
+
 			if (offset & 3 ||
 			    offset <= (s32)0xfe000000 ||
 			    offset >= (s32)0x02000000) {
diff --git a/arch/arm/lib32/module.lds b/arch/arm/lib32/module.lds
new file mode 100644
index 000000000..0dd204608
--- /dev/null
+++ b/arch/arm/lib32/module.lds
@@ -0,0 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+SECTIONS {
+	.plt : { BYTE(0) }
+}
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
