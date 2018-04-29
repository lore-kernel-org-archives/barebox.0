Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fCm53-0008W7-Sv
 for barebox@lists.infradead.org; Sun, 29 Apr 2018 13:09:33 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Sun, 29 Apr 2018 15:09:04 +0200
Message-Id: <20180429130907.20506-5-linux@rempel-privat.de>
In-Reply-To: <20180429130907.20506-1-linux@rempel-privat.de>
References: <20180429130907.20506-1-linux@rempel-privat.de>
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
Subject: [RFC PATCH 4/7] MIPS: add kexec ELF loading support
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

From: Antony Pavlov <antonynpavlov@gmail.com>

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 arch/mips/include/asm/elf.h     |   8 +-
 arch/mips/lib/Makefile          |   3 +
 arch/mips/lib/kexec-mips.c      | 272 ++++++++++++++++++++++++++++++++++++++++
 arch/mips/lib/machine_kexec.h   |  21 ++++
 arch/mips/lib/relocate_kernel.S | 108 ++++++++++++++++
 5 files changed, 411 insertions(+), 1 deletion(-)
 create mode 100644 arch/mips/lib/kexec-mips.c
 create mode 100644 arch/mips/lib/machine_kexec.h
 create mode 100644 arch/mips/lib/relocate_kernel.S

diff --git a/arch/mips/include/asm/elf.h b/arch/mips/include/asm/elf.h
index b8b82191c..bf974f521 100644
--- a/arch/mips/include/asm/elf.h
+++ b/arch/mips/include/asm/elf.h
@@ -17,12 +17,18 @@
 
 #ifndef ELF_ARCH
 
+/* Legal values for e_machine (architecture).  */
+
+#define EM_MIPS		 8		/* MIPS R3000 big-endian */
+#define EM_MIPS_RS4_BE	10		/* MIPS R4000 big-endian */
+
 #ifdef CONFIG_32BIT
 
 /*
  * This is used to ensure we don't load something for the wrong architecture.
  */
-#define elf_check_arch(hdr)						\
+#define elf_check_arch(x) ((x)->e_machine == EM_MIPS)
+
 /*
  * These are used to set parameters in the core dumps.
  */
diff --git a/arch/mips/lib/Makefile b/arch/mips/lib/Makefile
index d25d0969f..8dc498986 100644
--- a/arch/mips/lib/Makefile
+++ b/arch/mips/lib/Makefile
@@ -18,4 +18,7 @@ obj-$(CONFIG_CPU_MIPS64) += c-r4k.o
 obj-$(CONFIG_CMD_MIPS_CPUINFO) += cpuinfo.o
 obj-$(CONFIG_CMD_BOOTM)	+= bootm.o
 
+obj-$(CONFIG_KEXEC) += kexec-mips.o
+obj-$(CONFIG_KEXEC) += relocate_kernel.o
+
 pbl-y	+= ashldi3.o
diff --git a/arch/mips/lib/kexec-mips.c b/arch/mips/lib/kexec-mips.c
new file mode 100644
index 000000000..656249db4
--- /dev/null
+++ b/arch/mips/lib/kexec-mips.c
@@ -0,0 +1,272 @@
+/*
+ * kexec-mips.c - kexec for mips
+ * Copyright (C) 2007 Francesco Chiechi, Alessandro Rubini
+ * Copyright (C) 2007 Tvblob s.r.l.
+ *
+ * derived from ../ppc/kexec-mips.c
+ * Copyright (C) 2004, 2005 Albert Herranz
+ *
+ * This source code is licensed under the GNU General Public License,
+ * Version 2.  See the file COPYING for more details.
+ */
+
+#include <linux/stddef.h>
+#include <stdio.h>
+#include <errno.h>
+#include <string.h>
+#include <asm/io.h>
+#include <asm/addrspace.h>
+#include <memory.h>
+#include <elf.h>
+#include "../../../lib/kexec/kexec.h"
+#include "machine_kexec.h"
+
+
+static int elf_mips_probe(const char *buf, off_t len)
+{
+	struct mem_ehdr ehdr;
+	int result;
+
+	result = build_elf_exec_info(buf, len, &ehdr, 0);
+	if (result < 0) {
+		goto out;
+	}
+
+	/* Verify the architecuture specific bits */
+	if (ehdr.e_machine != EM_MIPS) {
+		/* for a different architecture */
+		printf("Not for this architecture.\n");
+		result = -1;
+		goto out;
+	}
+	result = 0;
+
+ out:
+	free_elf_info(&ehdr);
+
+	return result;
+}
+
+static int elf_mips_load(const char *buf, off_t len, struct kexec_info *info)
+{
+	struct mem_ehdr ehdr;
+	int result;
+	size_t i;
+
+	result = build_elf_exec_info(buf, len, &ehdr, 0);
+	if (result < 0) {
+		printf("ELF exec parse failed\n");
+		goto out;
+	}
+
+	/* Read in the PT_LOAD segments and remove CKSEG0 mask from address */
+	for (i = 0; i < ehdr.e_phnum; i++) {
+		struct mem_phdr *phdr;
+		phdr = &ehdr.e_phdr[i];
+		if (phdr->p_type == PT_LOAD) {
+			phdr->p_paddr = virt_to_phys((void *)phdr->p_paddr);
+		}
+	}
+
+	/* Load the ELF data */
+	result = elf_exec_load(&ehdr, info);
+	if (result < 0) {
+		printf("ELF exec load failed\n");
+		goto out;
+	}
+
+	info->entry = (void *)virt_to_phys((void *)ehdr.e_entry);
+
+out:
+	return result;
+}
+
+struct kexec_file_type kexec_file_type[] = {
+	{"elf-mips", elf_mips_probe, elf_mips_load },
+};
+int kexec_file_types = sizeof(kexec_file_type) / sizeof(kexec_file_type[0]);
+
+/*
+ * add_segment() should convert base to a physical address on mips,
+ * while the default is just to work with base as is */
+void add_segment(struct kexec_info *info, const void *buf, size_t bufsz,
+		 unsigned long base, size_t memsz)
+{
+	add_segment_phys_virt(info, buf, bufsz,
+		virt_to_phys((void *)base), memsz, 1);
+}
+
+/* relocator parameters */
+extern unsigned long relocate_new_kernel;
+extern unsigned long relocate_new_kernel_size;
+extern unsigned long kexec_start_address;
+extern unsigned long kexec_segments;
+extern unsigned long kexec_nr_segments;
+
+unsigned long reboot_code_buffer;
+
+static void machine_kexec_print_args(void)
+{
+	unsigned long argc = (int)kexec_args[0];
+	int i;
+
+	printf("kexec_args[0] (argc): %lu\n", argc);
+	printf("kexec_args[1] (argv): %p\n", (void *)kexec_args[1]);
+	printf("kexec_args[2] (env ): %p\n", (void *)kexec_args[2]);
+	printf("kexec_args[3] (desc): %p\n", (void *)kexec_args[3]);
+
+	for (i = 0; i < argc; i++) {
+		printf("kexec_argv[%d] = %p, %s\n",
+				i, kexec_argv[i], kexec_argv[i]);
+	}
+}
+
+static void machine_kexec_init_argv(struct kexec_segment *segments, unsigned long nr_segments)
+{
+	const void __user *buf = NULL;
+	size_t bufsz;
+	size_t size;
+	int i;
+
+	bufsz = 0;
+	for (i = 0; i < nr_segments; i++) {
+		struct kexec_segment *seg;
+
+		seg = &segments[i];
+		if (seg->bufsz < 6)
+			continue;
+
+		if (strncmp((char *) seg->buf, "kexec ", 6)) {
+			continue;
+		}
+
+		buf = seg->buf + 6;
+		bufsz = seg->bufsz - 6;
+		break;
+	}
+
+	if (!buf)
+		return;
+
+	size = KEXEC_COMMAND_LINE_SIZE;
+	size = min(size, bufsz);
+	if (size < bufsz)
+		printf("kexec command line truncated to %zu bytes\n", size);
+
+	/* Copy to kernel space */
+	memcpy(kexec_argv_buf, buf, size);
+	kexec_argv_buf[size - 1] = 0;
+}
+
+static void machine_kexec_parse_argv(void)
+{
+	char *ptr;
+	int argc;
+
+	ptr = kexec_argv_buf;
+	argc = 1;
+
+	/*
+	 * convert command line string to array of parameters
+	 * (as bootloader does).
+	 */
+	while (ptr && *ptr && (KEXEC_MAX_ARGC > argc)) {
+		if (*ptr == ' ') {
+			*ptr++ = '\0';
+			continue;
+		}
+
+		kexec_argv[argc++] = ptr;
+		ptr = strchr(ptr, ' ');
+	}
+
+	if (!argc)
+		return;
+
+	kexec_args[0] = argc;
+	kexec_args[1] = (unsigned long)kexec_argv;
+	kexec_args[2] = 0;
+	kexec_args[3] = 0;
+}
+
+static int machine_kexec_prepare(struct kexec_segment *segments, unsigned long nr_segments)
+{
+	/*
+	 * Whenever arguments passed from kexec-tools, Init the arguments as
+	 * the original ones to try avoiding booting failure.
+	 */
+
+	machine_kexec_init_argv(segments, nr_segments);
+	machine_kexec_parse_argv();
+	machine_kexec_print_args();
+
+	return 0;
+}
+long kexec_load(void *entry, unsigned long nr_segments,
+		struct kexec_segment *segments, unsigned long flags)
+{
+	int i;
+	struct resource *elf;
+	resource_size_t start;
+	LIST_HEAD(elf_segments);
+
+	for (i = 0; i < nr_segments; i++) {
+		resource_size_t mem = (resource_size_t)segments[i].mem;
+
+		elf = create_resource("elf segment",
+			mem, mem + segments[i].memsz - 1);
+
+		list_add_used_region(&elf->sibling, &elf_segments);
+	}
+
+	if (check_room_for_elf(&elf_segments)) {
+		printf("ELF can't be loaded!\n");
+		return 0;
+	}
+
+	start = dcheck_res(&elf_segments);
+
+	/* relocate_new_kernel() copy by register (4 or 8 bytes)
+	   so start address must be aligned to 4/8 */
+	start = (start + 15) & 0xfffffff0;
+
+	for (i = 0; i < nr_segments; i++) {
+		segments[i].mem = (void *)(phys_to_virt((unsigned long)segments[i].mem));
+		memcpy(phys_to_virt(start), segments[i].buf, segments[i].bufsz);
+		request_sdram_region("kexec relocatable segment",
+			(unsigned long)phys_to_virt(start),
+			(unsigned long)segments[i].bufsz);
+
+		/* relocate_new_kernel() copy by register (4 or 8 bytes)
+		   so bufsz must be aligned to 4/8 */
+		segments[i].bufsz = (segments[i].bufsz + 15) & 0xfffffff0;
+		segments[i].buf = phys_to_virt(start);
+		start = start + segments[i].bufsz;
+	}
+
+	start = (start + 15) & 0xfffffff0;
+
+	reboot_code_buffer = start;
+
+	memcpy(phys_to_virt(start), &relocate_new_kernel,
+		relocate_new_kernel_size);
+	request_sdram_region("kexec relocator",
+		(unsigned long)phys_to_virt(start),
+		(unsigned long)relocate_new_kernel_size);
+
+	start = start + relocate_new_kernel_size;
+	start = (start + 15) & 0xfffffff0;
+
+	kexec_start_address = (unsigned long)phys_to_virt((unsigned long)entry);
+	kexec_segments = (unsigned long)phys_to_virt((unsigned long)start);
+	kexec_nr_segments = nr_segments;
+
+	memcpy(phys_to_virt(start), segments, nr_segments * sizeof(*segments));
+	request_sdram_region("kexec control segments",
+		(unsigned long)phys_to_virt(start),
+		(unsigned long)nr_segments * sizeof(*segments));
+
+	machine_kexec_prepare(segments, nr_segments);
+
+	return 1;
+}
diff --git a/arch/mips/lib/machine_kexec.h b/arch/mips/lib/machine_kexec.h
new file mode 100644
index 000000000..b495d15c2
--- /dev/null
+++ b/arch/mips/lib/machine_kexec.h
@@ -0,0 +1,21 @@
+#ifndef _MACHINE_KEXEC_H
+#define _MACHINE_KEXEC_H
+
+#ifndef __ASSEMBLY__
+extern const unsigned char kexec_relocate_new_kernel[];
+extern unsigned long kexec_relocate_new_kernel_end;
+extern unsigned long kexec_start_address;
+extern unsigned long kexec_indirection_page;
+
+extern unsigned long kexec_args[4];
+extern char kexec_argv_buf[];
+extern char *kexec_argv[];
+
+#define KEXEC_RELOCATE_NEW_KERNEL_SIZE	((unsigned long)&kexec_relocate_new_kernel_end - (unsigned long)kexec_relocate_new_kernel)
+#endif /* !__ASSEMBLY__ */
+
+#define KEXEC_COMMAND_LINE_SIZE		256
+#define KEXEC_ARGV_SIZE			(KEXEC_COMMAND_LINE_SIZE / 16)
+#define KEXEC_MAX_ARGC			(KEXEC_ARGV_SIZE / sizeof(long))
+
+#endif
diff --git a/arch/mips/lib/relocate_kernel.S b/arch/mips/lib/relocate_kernel.S
new file mode 100644
index 000000000..8c79277a2
--- /dev/null
+++ b/arch/mips/lib/relocate_kernel.S
@@ -0,0 +1,108 @@
+/*
+ * Copyright (C) 2012, 2016 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * based on relocate_kernel.S for kexec
+ * Created by <nschichan@corp.free.fr> on Thu Oct 12 17:49:57 2006
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
+#include <asm/asm.h>
+#include <asm/regdef.h>
+#include <asm/mipsregs.h>
+#include <asm/addrspace.h>
+#include "machine_kexec.h"
+
+LEAF(relocate_new_kernel)
+	.set	push
+	.set	reorder
+	PTR_L		a0, arg0
+	PTR_L		a1, arg1
+	PTR_L		a2, arg2
+	PTR_L		a3, arg3
+
+	PTR_L		s0, kexec_segments
+	PTR_L		s1, kexec_nr_segments
+	PTR_L		s2, kexec_start_address
+
+process_segment:
+	PTR_L		s4, (s0) /* buf */
+	PTR_L		s5, SZREG (s0) /* bufsz */
+	PTR_L		s6, 2*SZREG (s0) /* mem */
+
+copy_segment:
+	/* copy segment word by word */
+	REG_L		s7, (s4)
+	REG_S		s7, (s6)
+	PTR_ADD		s4, s4, SZREG
+	PTR_ADD		s6, s6, SZREG
+	LONG_SUB	s5, s5, 1
+	bne		s5, zero, copy_segment
+
+	LONG_SUB	s1, s1, 1
+	beq		s1, zero, done
+
+	PTR_ADD		s0, s0, 4*SZREG
+
+	b		process_segment
+
+done:
+	/* jump to kexec_start_address */
+	j		s2
+	END(relocate_new_kernel)
+
+/* All parameters to new kernel are passed in registers a0-a3.
+ * kexec_args[0..3] are uses to prepare register values.
+ */
+
+kexec_args:
+	EXPORT(kexec_args)
+arg0:	PTR		0x0
+arg1:	PTR		0x0
+arg2:	PTR		0x0
+arg3:	PTR		0x0
+	.size	kexec_args,PTRSIZE*4
+
+kexec_start_address:
+	EXPORT(kexec_start_address)
+	PTR		0x0
+	.size		kexec_start_address, PTRSIZE
+
+kexec_argv_buf:
+	EXPORT(kexec_argv_buf)
+	.skip		KEXEC_COMMAND_LINE_SIZE
+	.size		kexec_argv_buf, KEXEC_COMMAND_LINE_SIZE
+
+kexec_argv:
+	EXPORT(kexec_argv)
+	.skip		KEXEC_ARGV_SIZE
+	.size		kexec_argv, KEXEC_ARGV_SIZE
+
+kexec_segments:
+	EXPORT(kexec_segments)
+	PTR		0x0
+	.size		kexec_segments, PTRSIZE
+
+kexec_nr_segments:
+	EXPORT(kexec_nr_segments)
+	PTR		0x0
+	.size		kexec_nr_segments, PTRSIZE
+
+relocate_new_kernel_end:
+
+relocate_new_kernel_size:
+	EXPORT(relocate_new_kernel_size)
+	PTR		relocate_new_kernel_end - relocate_new_kernel
+	.size		relocate_new_kernel_size, PTRSIZE
+	.set	pop
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
