Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SSPkt-0001T2-8W
 for barebox@lists.infradead.org; Thu, 10 May 2012 09:34:20 +0000
Received: by laap9 with SMTP id p9so1127271laa.36
 for <barebox@lists.infradead.org>; Thu, 10 May 2012 02:33:49 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 10 May 2012 13:33:42 +0400
Message-Id: <1336642422-23800-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC] MIPS: initial modules support
To: barebox@lists.infradead.org

This code does not work correctly.

insmod got unaligned access exception during apply_r_mips_32_rel

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Kconfig              |    1 +
 arch/mips/include/asm/elf.h    |  153 +++++++++++++++++++
 arch/mips/include/asm/module.h |   17 ++-
 arch/mips/lib/Makefile         |    1 +
 arch/mips/lib/module.c         |  328 ++++++++++++++++++++++++++++++++++++++++
 5 files changed, 499 insertions(+), 1 deletion(-)
 create mode 100644 arch/mips/lib/module.c

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 50d5c67..55c5d3b 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -6,6 +6,7 @@ config MIPS
 	select HAS_KALLSYMS
 	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
 	select HAVE_CONFIGURABLE_TEXT_BASE
+	select HAS_MODULES
 	default y
 
 config SYS_SUPPORTS_BIG_ENDIAN
diff --git a/arch/mips/include/asm/elf.h b/arch/mips/include/asm/elf.h
index b8b8219..9375508 100644
--- a/arch/mips/include/asm/elf.h
+++ b/arch/mips/include/asm/elf.h
@@ -15,6 +15,159 @@
 #ifndef _ASM_MIPS_ELF_H
 #define _ASM_MIPS_ELF_H
 
+/* ELF header e_flags defines. */
+/* MIPS architecture level. */
+#define EF_MIPS_ARCH_1		0x00000000	/* -mips1 code.  */
+#define EF_MIPS_ARCH_2		0x10000000	/* -mips2 code.  */
+#define EF_MIPS_ARCH_3		0x20000000	/* -mips3 code.  */
+#define EF_MIPS_ARCH_4		0x30000000	/* -mips4 code.  */
+#define EF_MIPS_ARCH_5		0x40000000	/* -mips5 code.  */
+#define EF_MIPS_ARCH_32		0x50000000	/* MIPS32 code.  */
+#define EF_MIPS_ARCH_64		0x60000000	/* MIPS64 code.  */
+#define EF_MIPS_ARCH_32R2	0x70000000	/* MIPS32 R2 code.  */
+#define EF_MIPS_ARCH_64R2	0x80000000	/* MIPS64 R2 code.  */
+
+/* The ABI of a file. */
+#define EF_MIPS_ABI_O32		0x00001000	/* O32 ABI.  */
+#define EF_MIPS_ABI_O64		0x00002000	/* O32 extended for 64 bit.  */
+
+#define PT_MIPS_REGINFO		0x70000000
+#define PT_MIPS_RTPROC		0x70000001
+#define PT_MIPS_OPTIONS		0x70000002
+
+/* Flags in the e_flags field of the header */
+#define EF_MIPS_NOREORDER	0x00000001
+#define EF_MIPS_PIC		0x00000002
+#define EF_MIPS_CPIC		0x00000004
+#define EF_MIPS_ABI2		0x00000020
+#define EF_MIPS_OPTIONS_FIRST	0x00000080
+#define EF_MIPS_32BITMODE	0x00000100
+#define EF_MIPS_ABI		0x0000f000
+#define EF_MIPS_ARCH		0xf0000000
+
+#define DT_MIPS_RLD_VERSION	0x70000001
+#define DT_MIPS_TIME_STAMP	0x70000002
+#define DT_MIPS_ICHECKSUM	0x70000003
+#define DT_MIPS_IVERSION	0x70000004
+#define DT_MIPS_FLAGS		0x70000005
+	#define RHF_NONE	0x00000000
+	#define RHF_HARDWAY	0x00000001
+	#define RHF_NOTPOT	0x00000002
+	#define RHF_SGI_ONLY	0x00000010
+#define DT_MIPS_BASE_ADDRESS	0x70000006
+#define DT_MIPS_CONFLICT	0x70000008
+#define DT_MIPS_LIBLIST		0x70000009
+#define DT_MIPS_LOCAL_GOTNO	0x7000000a
+#define DT_MIPS_CONFLICTNO	0x7000000b
+#define DT_MIPS_LIBLISTNO	0x70000010
+#define DT_MIPS_SYMTABNO	0x70000011
+#define DT_MIPS_UNREFEXTNO	0x70000012
+#define DT_MIPS_GOTSYM		0x70000013
+#define DT_MIPS_HIPAGENO	0x70000014
+#define DT_MIPS_RLD_MAP		0x70000016
+
+#define R_MIPS_NONE		0
+#define R_MIPS_16		1
+#define R_MIPS_32		2
+#define R_MIPS_REL32		3
+#define R_MIPS_26		4
+#define R_MIPS_HI16		5
+#define R_MIPS_LO16		6
+#define R_MIPS_GPREL16		7
+#define R_MIPS_LITERAL		8
+#define R_MIPS_GOT16		9
+#define R_MIPS_PC16		10
+#define R_MIPS_CALL16		11
+#define R_MIPS_GPREL32		12
+/* The remaining relocs are defined on Irix, although they are not
+   in the MIPS ELF ABI.  */
+#define R_MIPS_UNUSED1		13
+#define R_MIPS_UNUSED2		14
+#define R_MIPS_UNUSED3		15
+#define R_MIPS_SHIFT5		16
+#define R_MIPS_SHIFT6		17
+#define R_MIPS_64		18
+#define R_MIPS_GOT_DISP		19
+#define R_MIPS_GOT_PAGE		20
+#define R_MIPS_GOT_OFST		21
+/*
+ * The following two relocation types are specified in the MIPS ABI
+ * conformance guide version 1.2 but not yet in the psABI.
+ */
+#define R_MIPS_GOTHI16		22
+#define R_MIPS_GOTLO16		23
+#define R_MIPS_SUB		24
+#define R_MIPS_INSERT_A		25
+#define R_MIPS_INSERT_B		26
+#define R_MIPS_DELETE		27
+#define R_MIPS_HIGHER		28
+#define R_MIPS_HIGHEST		29
+/*
+ * The following two relocation types are specified in the MIPS ABI
+ * conformance guide version 1.2 but not yet in the psABI.
+ */
+#define R_MIPS_CALLHI16		30
+#define R_MIPS_CALLLO16		31
+/*
+ * This range is reserved for vendor specific relocations.
+ */
+#define R_MIPS_LOVENDOR		100
+#define R_MIPS_HIVENDOR		127
+
+#define SHN_MIPS_ACCOMON	0xff00		/* Allocated common symbols */
+#define SHN_MIPS_TEXT		0xff01		/* Allocated test symbols.  */
+#define SHN_MIPS_DATA		0xff02		/* Allocated data symbols.  */
+#define SHN_MIPS_SCOMMON	0xff03		/* Small common symbols */
+#define SHN_MIPS_SUNDEFINED	0xff04		/* Small undefined symbols */
+
+#define SHT_MIPS_LIST		0x70000000
+#define SHT_MIPS_CONFLICT	0x70000002
+#define SHT_MIPS_GPTAB		0x70000003
+#define SHT_MIPS_UCODE		0x70000004
+#define SHT_MIPS_DEBUG		0x70000005
+#define SHT_MIPS_REGINFO	0x70000006
+#define SHT_MIPS_PACKAGE	0x70000007
+#define SHT_MIPS_PACKSYM	0x70000008
+#define SHT_MIPS_RELD		0x70000009
+#define SHT_MIPS_IFACE		0x7000000b
+#define SHT_MIPS_CONTENT	0x7000000c
+#define SHT_MIPS_OPTIONS	0x7000000d
+#define SHT_MIPS_SHDR		0x70000010
+#define SHT_MIPS_FDESC		0x70000011
+#define SHT_MIPS_EXTSYM		0x70000012
+#define SHT_MIPS_DENSE		0x70000013
+#define SHT_MIPS_PDESC		0x70000014
+#define SHT_MIPS_LOCSYM		0x70000015
+#define SHT_MIPS_AUXSYM		0x70000016
+#define SHT_MIPS_OPTSYM		0x70000017
+#define SHT_MIPS_LOCSTR		0x70000018
+#define SHT_MIPS_LINE		0x70000019
+#define SHT_MIPS_RFDESC		0x7000001a
+#define SHT_MIPS_DELTASYM	0x7000001b
+#define SHT_MIPS_DELTAINST	0x7000001c
+#define SHT_MIPS_DELTACLASS	0x7000001d
+#define SHT_MIPS_DWARF		0x7000001e
+#define SHT_MIPS_DELTADECL	0x7000001f
+#define SHT_MIPS_SYMBOL_LIB	0x70000020
+#define SHT_MIPS_EVENTS		0x70000021
+#define SHT_MIPS_TRANSLATE	0x70000022
+#define SHT_MIPS_PIXIE		0x70000023
+#define SHT_MIPS_XLATE		0x70000024
+#define SHT_MIPS_XLATE_DEBUG	0x70000025
+#define SHT_MIPS_WHIRL		0x70000026
+#define SHT_MIPS_EH_REGION	0x70000027
+#define SHT_MIPS_XLATE_OLD	0x70000028
+#define SHT_MIPS_PDR_EXCEPTION	0x70000029
+
+#define SHF_MIPS_GPREL		0x10000000
+#define SHF_MIPS_MERGE		0x20000000
+#define SHF_MIPS_ADDR		0x40000000
+#define SHF_MIPS_STRING		0x80000000
+#define SHF_MIPS_NOSTRIP	0x08000000
+#define SHF_MIPS_LOCAL		0x04000000
+#define SHF_MIPS_NAMES		0x02000000
+#define SHF_MIPS_NODUPES	0x01000000
+
 #ifndef ELF_ARCH
 
 #ifdef CONFIG_32BIT
diff --git a/arch/mips/include/asm/module.h b/arch/mips/include/asm/module.h
index 3046220..d423ced 100644
--- a/arch/mips/include/asm/module.h
+++ b/arch/mips/include/asm/module.h
@@ -19,6 +19,21 @@
 #ifndef _ASM_MIPS_MODULE_H_
 #define _ASM_MIPS_MODULE_H_
 
-/* nothing special yet */
+struct mod_arch_specific
+{
+};
+
+#ifdef CONFIG_32BIT
+#define Elf_Shdr	Elf32_Shdr
+#define Elf_Sym		Elf32_Sym
+#define Elf_Ehdr	Elf32_Ehdr
+#define Elf_Addr	Elf32_Addr
+
+#define Elf_Mips_Rel	Elf32_Rel
+#define Elf_Mips_Rela	Elf32_Rela
+
+#define ELF_MIPS_R_SYM(rel) ELF32_R_SYM(rel.r_info)
+#define ELF_MIPS_R_TYPE(rel) ELF32_R_TYPE(rel.r_info)
+#endif
 
 #endif /* _ASM_MIPS_MODULE_H_ */
diff --git a/arch/mips/lib/Makefile b/arch/mips/lib/Makefile
index 45fe920..8a043a6 100644
--- a/arch/mips/lib/Makefile
+++ b/arch/mips/lib/Makefile
@@ -6,3 +6,4 @@ obj-y += ashrdi3.o
 obj-y += memory.o
 
 obj-$(CONFIG_CMD_MIPS_CPUINFO) += cpuinfo.o
+obj-$(CONFIG_MODULES) += module.o
diff --git a/arch/mips/lib/module.c b/arch/mips/lib/module.c
new file mode 100644
index 0000000..924d138
--- /dev/null
+++ b/arch/mips/lib/module.c
@@ -0,0 +1,328 @@
+/*
+ *  This program is free software; you can redistribute it and/or modify
+ *  it under the terms of the GNU General Public License as published by
+ *  the Free Software Foundation; either version 2 of the License, or
+ *  (at your option) any later version.
+ *
+ *  This program is distributed in the hope that it will be useful,
+ *  but WITHOUT ANY WARRANTY; without even the implied warranty of
+ *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ *  GNU General Public License for more details.
+ *
+ *  You should have received a copy of the GNU General Public License
+ *  along with this program; if not, write to the Free Software
+ *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ *
+ *  Copyright (C) 2001 Rusty Russell.
+ *  Copyright (C) 2003, 2004 Ralf Baechle (ralf@linux-mips.org)
+ *  Copyright (C) 2005 Thiemo Seufer
+ */
+
+#undef DEBUG
+#define DEBUG
+
+#include <common.h>
+#include <elf.h>
+#include <module.h>
+#include <errno.h>
+#include <malloc.h>
+#include <linux/barebox-wrapper.h>
+#include <linux/err.h>
+
+struct mips_hi16 {
+	struct mips_hi16 *next;
+	Elf_Addr *addr;
+	Elf_Addr value;
+};
+
+static struct mips_hi16 *mips_hi16_list;
+
+static int apply_r_mips_none(struct module *me, u32 *location, Elf_Addr v)
+{
+	return 0;
+}
+
+static int apply_r_mips_32_rel(struct module *me, u32 *location, Elf_Addr v)
+{
+	pr_debug("apply_r_mips_32_rel: locatio = %p, v = %08x\n", location, v);
+
+	*location += v;
+
+	return 0;
+}
+
+static int apply_r_mips_32_rela(struct module *me, u32 *location, Elf_Addr v)
+{
+	*location = v;
+
+	return 0;
+}
+
+static int apply_r_mips_26_rel(struct module *me, u32 *location, Elf_Addr v)
+{
+	if (v % 4) {
+		pr_err("module %s: dangerous R_MIPS_26 REL relocation\n",
+		       me->name);
+		return -ENOEXEC;
+	}
+
+	if ((v & 0xf0000000) != (((unsigned long)location + 4) & 0xf0000000)) {
+		printk(KERN_ERR
+		       "module %s: relocation overflow\n",
+		       me->name);
+		return -ENOEXEC;
+	}
+
+	*location = (*location & ~0x03ffffff) |
+	            ((*location + (v >> 2)) & 0x03ffffff);
+
+	return 0;
+}
+
+static int apply_r_mips_26_rela(struct module *me, u32 *location, Elf_Addr v)
+{
+	if (v % 4) {
+		pr_err("module %s: dangerous R_MIPS_26 RELArelocation\n",
+		       me->name);
+		return -ENOEXEC;
+	}
+
+	if ((v & 0xf0000000) != (((unsigned long)location + 4) & 0xf0000000)) {
+		printk(KERN_ERR
+		       "module %s: relocation overflow\n",
+		       me->name);
+		return -ENOEXEC;
+	}
+
+	*location = (*location & ~0x03ffffff) | ((v >> 2) & 0x03ffffff);
+
+	return 0;
+}
+
+static int apply_r_mips_hi16_rel(struct module *me, u32 *location, Elf_Addr v)
+{
+	struct mips_hi16 *n;
+
+	/*
+	 * We cannot relocate this one now because we don't know the value of
+	 * the carry we need to add.  Save the information, and let LO16 do the
+	 * actual relocation.
+	 */
+	n = kmalloc(sizeof *n, GFP_KERNEL);
+	if (!n)
+		return -ENOMEM;
+
+	n->addr = (Elf_Addr *)location;
+	n->value = v;
+	n->next = mips_hi16_list;
+	mips_hi16_list = n;
+
+	return 0;
+}
+
+static int apply_r_mips_hi16_rela(struct module *me, u32 *location, Elf_Addr v)
+{
+	*location = (*location & 0xffff0000) |
+	            ((((long long) v + 0x8000LL) >> 16) & 0xffff);
+
+	return 0;
+}
+
+static int apply_r_mips_lo16_rel(struct module *me, u32 *location, Elf_Addr v)
+{
+	unsigned long insnlo = *location;
+	Elf_Addr val, vallo;
+
+	/* Sign extend the addend we extract from the lo insn.  */
+	vallo = ((insnlo & 0xffff) ^ 0x8000) - 0x8000;
+
+	if (mips_hi16_list != NULL) {
+		struct mips_hi16 *l;
+
+		l = mips_hi16_list;
+		while (l != NULL) {
+			struct mips_hi16 *next;
+			unsigned long insn;
+
+			/*
+			 * The value for the HI16 had best be the same.
+			 */
+			if (v != l->value)
+				goto out_danger;
+
+			/*
+			 * Do the HI16 relocation.  Note that we actually don't
+			 * need to know anything about the LO16 itself, except
+			 * where to find the low 16 bits of the addend needed
+			 * by the LO16.
+			 */
+			insn = *l->addr;
+			val = ((insn & 0xffff) << 16) + vallo;
+			val += v;
+
+			/*
+			 * Account for the sign extension that will happen in
+			 * the low bits.
+			 */
+			val = ((val >> 16) + ((val & 0x8000) != 0)) & 0xffff;
+
+			insn = (insn & ~0xffff) | val;
+			*l->addr = insn;
+
+			next = l->next;
+			kfree(l);
+			l = next;
+		}
+
+		mips_hi16_list = NULL;
+	}
+
+	/*
+	 * Ok, we're done with the HI16 relocs.  Now deal with the LO16.
+	 */
+	val = v + vallo;
+	insnlo = (insnlo & ~0xffff) | (val & 0xffff);
+	*location = insnlo;
+
+	return 0;
+
+out_danger:
+	pr_err("module %s: dangerous R_MIPS_LO16 REL relocation\n", me->name);
+
+	return -ENOEXEC;
+}
+
+static int apply_r_mips_lo16_rela(struct module *me, u32 *location, Elf_Addr v)
+{
+	*location = (*location & 0xffff0000) | (v & 0xffff);
+
+	return 0;
+}
+
+static int apply_r_mips_64_rela(struct module *me, u32 *location, Elf_Addr v)
+{
+	*(Elf_Addr *)location = v;
+
+	return 0;
+}
+
+static int apply_r_mips_higher_rela(struct module *me, u32 *location,
+				    Elf_Addr v)
+{
+	*location = (*location & 0xffff0000) |
+	            ((((long long) v + 0x80008000LL) >> 32) & 0xffff);
+
+	return 0;
+}
+
+static int apply_r_mips_highest_rela(struct module *me, u32 *location,
+				     Elf_Addr v)
+{
+	*location = (*location & 0xffff0000) |
+	            ((((long long) v + 0x800080008000LL) >> 48) & 0xffff);
+
+	return 0;
+}
+
+static int (*reloc_handlers_rel[]) (struct module *me, u32 *location,
+				Elf_Addr v) = {
+	[R_MIPS_NONE]		= apply_r_mips_none,
+	[R_MIPS_32]		= apply_r_mips_32_rel,
+	[R_MIPS_26]		= apply_r_mips_26_rel,
+	[R_MIPS_HI16]		= apply_r_mips_hi16_rel,
+	[R_MIPS_LO16]		= apply_r_mips_lo16_rel
+};
+
+static int (*reloc_handlers_rela[]) (struct module *me, u32 *location,
+				Elf_Addr v) = {
+	[R_MIPS_NONE]		= apply_r_mips_none,
+	[R_MIPS_32]		= apply_r_mips_32_rela,
+	[R_MIPS_26]		= apply_r_mips_26_rela,
+	[R_MIPS_HI16]		= apply_r_mips_hi16_rela,
+	[R_MIPS_LO16]		= apply_r_mips_lo16_rela,
+	[R_MIPS_64]		= apply_r_mips_64_rela,
+	[R_MIPS_HIGHER]		= apply_r_mips_higher_rela,
+	[R_MIPS_HIGHEST]	= apply_r_mips_highest_rela
+};
+
+int apply_relocate(Elf_Shdr *sechdrs, const char *strtab,
+		   unsigned int symindex, unsigned int relsec,
+		   struct module *me)
+{
+	Elf_Mips_Rel *rel = (void *) sechdrs[relsec].sh_addr;
+	Elf_Sym *sym;
+	u32 *location;
+	unsigned int i;
+	Elf_Addr v;
+	int res;
+
+	pr_debug("Applying relocate section %u to %u\n", relsec,
+	       sechdrs[relsec].sh_info);
+
+	for (i = 0; i < sechdrs[relsec].sh_size / sizeof(*rel); i++) {
+		/* This is where to make the change */
+		location = (void *)sechdrs[sechdrs[relsec].sh_info].sh_addr
+			+ rel[i].r_offset;
+		/* This is the symbol it is referring to */
+		sym = (Elf_Sym *)sechdrs[symindex].sh_addr
+			+ ELF_MIPS_R_SYM(rel[i]);
+		if (IS_ERR_VALUE(sym->st_value)) {
+			/* Ignore unresolved weak symbol */
+			if (ELF_ST_BIND(sym->st_info) == STB_WEAK)
+				continue;
+			printk(KERN_WARNING "%s: Unknown symbol %s\n",
+			       me->name, strtab + sym->st_name);
+			return -ENOENT;
+		}
+
+		v = sym->st_value;
+
+		printk(KERN_ERR "%s: location=%p, v=%08x\n",
+			       me->name, location, v);
+		res = reloc_handlers_rel[ELF_MIPS_R_TYPE(rel[i])](me, location, v);
+		if (res)
+			return res;
+	}
+
+	return 0;
+}
+
+int apply_relocate_add(Elf_Shdr *sechdrs, const char *strtab,
+		       unsigned int symindex, unsigned int relsec,
+		       struct module *me)
+{
+	Elf_Mips_Rela *rel = (void *) sechdrs[relsec].sh_addr;
+	Elf_Sym *sym;
+	u32 *location;
+	unsigned int i;
+	Elf_Addr v;
+	int res;
+
+	pr_debug("Applying relocate section %u to %u\n", relsec,
+	       sechdrs[relsec].sh_info);
+
+	for (i = 0; i < sechdrs[relsec].sh_size / sizeof(*rel); i++) {
+		/* This is where to make the change */
+		location = (void *)sechdrs[sechdrs[relsec].sh_info].sh_addr
+			+ rel[i].r_offset;
+		/* This is the symbol it is referring to */
+		sym = (Elf_Sym *)sechdrs[symindex].sh_addr
+			+ ELF_MIPS_R_SYM(rel[i]);
+		if (IS_ERR_VALUE(sym->st_value)) {
+			/* Ignore unresolved weak symbol */
+			if (ELF_ST_BIND(sym->st_info) == STB_WEAK)
+				continue;
+			printk(KERN_WARNING "%s: Unknown symbol %s\n",
+			       me->name, strtab + sym->st_name);
+			return -ENOENT;
+		}
+
+		v = sym->st_value + rel[i].r_addend;
+
+		res = reloc_handlers_rela[ELF_MIPS_R_TYPE(rel[i])](me, location, v);
+		if (res)
+			return res;
+	}
+
+	return 0;
+}
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
