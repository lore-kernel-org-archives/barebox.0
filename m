Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x236.google.com ([2a00:1450:4010:c03::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WZxxw-0002vt-Bn
 for barebox@lists.infradead.org; Tue, 15 Apr 2014 07:39:37 +0000
Received: by mail-la0-f54.google.com with SMTP id mc6so6499046lab.41
 for <barebox@lists.infradead.org>; Tue, 15 Apr 2014 00:39:13 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 15 Apr 2014 11:38:33 +0400
Message-Id: <1397547514-19925-10-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1397547514-19925-1-git-send-email-antonynpavlov@gmail.com>
References: <1397547514-19925-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 09/10] MIPS: add ELF support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/elf.h     |   8 +-
 arch/mips/lib/Makefile          |   3 +
 arch/mips/lib/kexec-mips.c      | 170 ++++++++++++++++++++++++++++++++++++++++
 arch/mips/lib/relocate_kernel.S |  80 +++++++++++++++++++
 4 files changed, 260 insertions(+), 1 deletion(-)
 create mode 100644 arch/mips/lib/kexec-mips.c
 create mode 100644 arch/mips/lib/relocate_kernel.S

diff --git a/arch/mips/include/asm/elf.h b/arch/mips/include/asm/elf.h
index b8b8219..bf974f5 100644
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
index c4e2214..ba43fa2 100644
--- a/arch/mips/lib/Makefile
+++ b/arch/mips/lib/Makefile
@@ -14,3 +14,6 @@ obj-$(CONFIG_CPU_MIPS64) += c-r4k.o
 
 obj-$(CONFIG_CMD_MIPS_CPUINFO) += cpuinfo.o
 obj-$(CONFIG_CMD_BOOTM)	+= bootm.o
+
+obj-$(CONFIG_KEXEC) += kexec-mips.o
+obj-$(CONFIG_KEXEC) += relocate_kernel.o
diff --git a/arch/mips/lib/kexec-mips.c b/arch/mips/lib/kexec-mips.c
new file mode 100644
index 0000000..61b1020
--- /dev/null
+++ b/arch/mips/lib/kexec-mips.c
@@ -0,0 +1,170 @@
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
+#include <stddef.h>
+#include <stdio.h>
+#include <errno.h>
+#include <string.h>
+#include <asm/io.h>
+#include <asm/addrspace.h>
+#include <memory.h>
+#include <elf.h>
+#include "../../../lib/kexec/kexec.h"
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
+	return 1;
+}
diff --git a/arch/mips/lib/relocate_kernel.S b/arch/mips/lib/relocate_kernel.S
new file mode 100644
index 0000000..5b38113
--- /dev/null
+++ b/arch/mips/lib/relocate_kernel.S
@@ -0,0 +1,80 @@
+/*
+ * Copyright (C) 2012 Antony Pavlov <antonynpavlov@gmail.com>
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
+
+LEAF(relocate_new_kernel)
+	.set	push
+	.set	reorder
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
+kexec_start_address:
+	EXPORT(kexec_start_address)
+	PTR		0x0
+	.size		kexec_start_address, PTRSIZE
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
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
