Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ss8sv-0001cA-QB
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 08:48:52 +0000
Received: by lbbgg6 with SMTP id gg6so4936832lbb.36
 for <barebox@lists.infradead.org>; Fri, 20 Jul 2012 01:48:24 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 20 Jul 2012 12:47:39 +0400
Message-Id: <1342774059-2169-8-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1342774059-2169-1-git-send-email-antonynpavlov@gmail.com>
References: <1342774059-2169-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 7/7] bootm: add very basic ELF support on MIPS (stealed from
 kexec)
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/elf.h    |    8 +-
 arch/mips/lib/Makefile         |    2 +
 arch/mips/lib/kexec-elf-mips.c |   85 +++++
 arch/mips/lib/kexec-mips.c     |   66 ++++
 arch/mips/lib/kexec-mips.h     |   26 ++
 common/filetype.c              |    4 +
 include/filetype.h             |    1 +
 lib/Makefile                   |    1 +
 lib/kexec/Makefile             |    1 +
 lib/kexec/kexec-elf-core.c     |   30 ++
 lib/kexec/kexec-elf-exec.c     |  182 +++++++++
 lib/kexec/kexec-elf.c          |  796 ++++++++++++++++++++++++++++++++++++++++
 lib/kexec/kexec-elf.h          |  132 +++++++
 lib/kexec/kexec.c              |  299 +++++++++++++++
 lib/kexec/kexec.h              |  188 ++++++++++
 lib/kexec/unused.h             |   15 +
 16 files changed, 1835 insertions(+), 1 deletion(-)
 create mode 100644 arch/mips/lib/kexec-elf-mips.c
 create mode 100644 arch/mips/lib/kexec-mips.c
 create mode 100644 arch/mips/lib/kexec-mips.h
 create mode 100644 lib/kexec/Makefile
 create mode 100644 lib/kexec/kexec-elf-core.c
 create mode 100644 lib/kexec/kexec-elf-exec.c
 create mode 100644 lib/kexec/kexec-elf.c
 create mode 100644 lib/kexec/kexec-elf.h
 create mode 100644 lib/kexec/kexec.c
 create mode 100644 lib/kexec/kexec.h
 create mode 100644 lib/kexec/unused.h

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
index b99bb71..e520209 100644
--- a/arch/mips/lib/Makefile
+++ b/arch/mips/lib/Makefile
@@ -11,3 +11,5 @@ obj-$(CONFIG_CPU_MIPS64) += c-r4k.o
 
 obj-$(CONFIG_CMD_MIPS_CPUINFO) += cpuinfo.o
 obj-$(CONFIG_CMD_BOOTM)	+= bootm.o
+
+obj-y += kexec-mips.o kexec-elf-mips.o
diff --git a/arch/mips/lib/kexec-elf-mips.c b/arch/mips/lib/kexec-elf-mips.c
new file mode 100644
index 0000000..68c0043
--- /dev/null
+++ b/arch/mips/lib/kexec-elf-mips.c
@@ -0,0 +1,85 @@
+/*
+ * kexec-elf-mips.c - kexec Elf loader for mips
+ * Copyright (C) 2007 Francesco Chiechi, Alessandro Rubini
+ * Copyright (C) 2007 Tvblob s.r.l.
+ *
+ * derived from ../ppc/kexec-elf-ppc.c
+ * Copyright (C) 2004 Albert Herranz
+ *
+ * This source code is licensed under the GNU General Public License,
+ * Version 2.  See the file COPYING for more details.
+*/
+
+#define _GNU_SOURCE
+#include <stdio.h>
+#include <string.h>
+#include <stdlib.h>
+#include <errno.h>
+#include <linux/types.h>
+#include <fcntl.h>
+#include <elf.h>
+#include "../../../lib/kexec/kexec.h"
+#include "../../../lib/kexec/kexec-elf.h"
+#include "kexec-mips.h"
+
+static const int probe_debug = 0;
+
+int elf_mips_probe(const char *buf, off_t len)
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
+		if (probe_debug) {
+			fprintf(stderr, "Not for this architecture.\n");
+		}
+		result = -1;
+		goto out;
+	}
+	result = 0;
+ out:
+	free_elf_info(&ehdr);
+
+	return result;
+}
+
+int elf_mips_load(const char *buf, off_t len, struct kexec_info *info)
+{
+	struct mem_ehdr ehdr;
+	int result;
+	unsigned long cmdline_addr;
+	size_t i;
+
+	result = build_elf_exec_info(buf, len, &ehdr, 0);
+	if (result < 0)
+		die("ELF exec parse failed\n");
+
+	/* Read in the PT_LOAD segments and remove CKSEG0 mask from address*/
+	for (i = 0; i < ehdr.e_phnum; i++) {
+		struct mem_phdr *phdr;
+		phdr = &ehdr.e_phdr[i];
+		if (phdr->p_type == PT_LOAD) {
+			/* FIXME: skipped */
+//			phdr->p_paddr = virt_to_phys(phdr->p_paddr);
+		}
+	}
+
+	/* Load the Elf data */
+	result = elf_exec_load(&ehdr, info);
+	if (result < 0)
+		die("ELF exec load failed\n");
+
+	/* FIXME */
+	info->entry = ehdr.e_entry;
+#if 0
+	info->entry = (void *)virt_to_phys(ehdr.e_entry);
+#endif
+	return 0;
+}
diff --git a/arch/mips/lib/kexec-mips.c b/arch/mips/lib/kexec-mips.c
new file mode 100644
index 0000000..0fdb988
--- /dev/null
+++ b/arch/mips/lib/kexec-mips.c
@@ -0,0 +1,66 @@
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
+#include "../../../lib/kexec/kexec.h"
+#include "kexec-mips.h"
+
+static struct memory_range memory_range[MAX_MEMORY_RANGES];
+
+/* Return a sorted list of memory ranges. */
+int get_memory_ranges(struct memory_range **range, int *ranges,
+		      unsigned long UNUSED(kexec_flags))
+{
+	int memory_ranges = 0;
+
+	memory_range[memory_ranges].start = 0;
+	memory_range[memory_ranges].end = 256 * 1024 * 1024;
+	memory_range[memory_ranges].type = RANGE_RAM;
+	memory_ranges++;
+
+	*range = memory_range;
+	*ranges = memory_ranges;
+	return 0;
+}
+
+struct kexec_file_type kexec_file_type[] = {
+	{"elf-mips", elf_mips_probe, elf_mips_load, /*elf_mips_usage*/ NULL},
+};
+int kexec_file_types = sizeof(kexec_file_type) / sizeof(kexec_file_type[0]);
+
+#ifdef __mips64
+struct arch_options_t arch_options = {
+	.core_header_type = CORE_TYPE_ELF64
+};
+#endif
+
+const struct arch_map_entry arches[] = {
+	/* For compatibility with older patches
+	 * use KEXEC_ARCH_DEFAULT instead of KEXEC_ARCH_MIPS here.
+	 */
+	{ "mips", KEXEC_ARCH_MIPS },
+	{ "mips64", KEXEC_ARCH_MIPS },
+	{ NULL, 0 },
+};
+
+int arch_compat_trampoline(struct kexec_info *UNUSED(info))
+{
+
+	return 0;
+}
+
+void arch_update_purgatory(struct kexec_info *UNUSED(info))
+{
+}
diff --git a/arch/mips/lib/kexec-mips.h b/arch/mips/lib/kexec-mips.h
new file mode 100644
index 0000000..474ba0a
--- /dev/null
+++ b/arch/mips/lib/kexec-mips.h
@@ -0,0 +1,26 @@
+#ifndef KEXEC_MIPS_H
+#define KEXEC_MIPS_H
+
+#define MAX_MEMORY_RANGES  64
+#define MAX_LINE          160
+
+#define CORE_TYPE_ELF32 1
+#define CORE_TYPE_ELF64 2
+extern unsigned char setup_simple_start[];
+extern uint32_t setup_simple_size;
+
+extern struct {
+	uint32_t spr8;
+	uint32_t spr9;
+} setup_simple_regs;
+
+int elf_mips_probe(const char *buf, off_t len);
+int elf_mips_load(/*int argc, char **argv,*/ const char *buf, off_t len,
+	struct kexec_info *info);
+void elf_mips_usage(void);
+
+struct arch_options_t {
+	int      core_header_type;
+};
+
+#endif /* KEXEC_MIPS_H */
diff --git a/common/filetype.c b/common/filetype.c
index 1a5b82d..cdedb4d 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -25,6 +25,7 @@
 #include <fcntl.h>
 #include <fs.h>
 #include <malloc.h>
+#include <elf.h>
 
 static const char *filetype_str[] = {
 	[filetype_unknown] = "unknown",
@@ -40,6 +41,7 @@ static const char *filetype_str[] = {
 	[filetype_aimage] = "Android boot image",
 	[filetype_sh] = "Bourne Shell",
 	[filetype_mips_barebox] = "MIPS barebox image",
+	[filetype_elf] = "ELF",
 };
 
 const char *file_type_to_string(enum filetype f)
@@ -81,6 +83,8 @@ enum filetype file_detect_type(void *_buf)
 		return filetype_aimage;
 	if (strncmp(buf8 + 0x10, "barebox", 7) == 0)
 		return filetype_mips_barebox;
+	if (strncmp(buf8, ELFMAG, 4) == 0)
+		return filetype_elf;
 
 	return filetype_unknown;
 }
diff --git a/include/filetype.h b/include/filetype.h
index f5de8ed..0e84937 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -18,6 +18,7 @@ enum filetype {
 	filetype_aimage,
 	filetype_sh,
 	filetype_mips_barebox,
+	filetype_elf,
 };
 
 const char *file_type_to_string(enum filetype f);
diff --git a/lib/Makefile b/lib/Makefile
index 4e6b1ee..4e2c0b4 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -34,3 +34,4 @@ obj-$(CONFIG_UNCOMPRESS)	+= uncompress.o
 obj-$(CONFIG_BCH)	+= bch.o
 obj-$(CONFIG_BITREV)	+= bitrev.o
 obj-$(CONFIG_QSORT)	+= qsort.o
+obj-y			+= kexec/
diff --git a/lib/kexec/Makefile b/lib/kexec/Makefile
new file mode 100644
index 0000000..f60a22d
--- /dev/null
+++ b/lib/kexec/Makefile
@@ -0,0 +1 @@
+obj-y	+= kexec-elf-exec.o kexec-elf.o kexec-elf-core.o kexec.o
diff --git a/lib/kexec/kexec-elf-core.c b/lib/kexec/kexec-elf-core.c
new file mode 100644
index 0000000..6be8713
--- /dev/null
+++ b/lib/kexec/kexec-elf-core.c
@@ -0,0 +1,30 @@
+#include <common.h>
+#include <linux/types.h>
+
+#include <stdio.h>
+#include <errno.h>
+#include <stdlib.h>
+#include "elf.h"
+#include "kexec-elf.h"
+
+int build_elf_core_info(const char *buf, off_t len, struct mem_ehdr *ehdr,
+				uint32_t flags)
+{
+	int result;
+	result = build_elf_info(buf, len, ehdr, flags);
+	if (result < 0) {
+		return result;
+	}
+	if ((ehdr->e_type != ET_CORE)) {
+		/* not an ELF Core */
+		fprintf(stderr, "Not ELF type ET_CORE\n");
+		return -1;
+	}
+	if (!ehdr->e_phdr) {
+		/* No program header */
+		fprintf(stderr, "No ELF program header\n");
+		return -1;
+	}
+
+	return 0;
+}
diff --git a/lib/kexec/kexec-elf-exec.c b/lib/kexec/kexec-elf-exec.c
new file mode 100644
index 0000000..0d5d5e0
--- /dev/null
+++ b/lib/kexec/kexec-elf-exec.c
@@ -0,0 +1,182 @@
+#include <linux/types.h>
+#include <common.h>
+
+//#include <limits.h>
+//#include <stdint.h>
+#include <string.h>
+#include <stdio.h>
+#include <errno.h>
+#include <stdlib.h>
+#include <elf.h>
+//#include <boot/elf_boot.h>
+#include "kexec.h"
+#include "kexec-elf.h"
+
+static const int probe_debug = 0;
+
+int build_elf_exec_info(const char *buf, off_t len, struct mem_ehdr *ehdr,
+				uint32_t flags)
+{
+	struct mem_phdr *phdr, *end_phdr;
+	int result;
+	result = build_elf_info(buf, len, ehdr, flags);
+	if (result < 0) {
+		return result;
+	}
+	if ((ehdr->e_type != ET_EXEC) && (ehdr->e_type != ET_DYN) &&
+	    (ehdr->e_type != ET_CORE)) {
+		/* not an ELF executable */
+		if (probe_debug) {
+			fprintf(stderr, "Not ELF type ET_EXEC or ET_DYN\n");
+		}
+		return -1;
+	}
+	if (!ehdr->e_phdr) {
+		/* No program header */
+		fprintf(stderr, "No ELF program header\n");
+		return -1; 
+	}
+	end_phdr = &ehdr->e_phdr[ehdr->e_phnum];
+	for(phdr = ehdr->e_phdr; phdr != end_phdr; phdr++) {
+		/* Kexec does not support loading interpreters.
+		 * In addition this check keeps us from attempting
+		 * to kexec ordinay executables.
+		 */
+		if (phdr->p_type == PT_INTERP) {
+			fprintf(stderr, "Requires an ELF interpreter\n");
+			return -1;
+		}
+	}
+
+	return 0;
+}
+
+int elf_exec_load(struct mem_ehdr *ehdr, struct kexec_info *info)
+{
+	unsigned long base;
+	int result;
+	size_t i;
+
+	if (!ehdr->e_phdr) {
+		fprintf(stderr, "No program header?\n");
+		result = -1;
+		goto out;
+	}
+
+	/* If I have a dynamic executable find it's size
+	 * and then find a location for it in memory.
+	 */
+	base = 0;
+	if (ehdr->e_type == ET_DYN) {
+		unsigned long first, last, align;
+		first = ULONG_MAX;
+		last  = 0;
+		align = 0;
+		for(i = 0; i < ehdr->e_phnum; i++) {
+			unsigned long start, stop;
+			struct mem_phdr *phdr;
+			phdr = &ehdr->e_phdr[i];
+			if ((phdr->p_type != PT_LOAD) ||
+				(phdr->p_memsz == 0))
+			{
+				continue;
+			}
+			start = phdr->p_paddr;
+			stop  = start + phdr->p_memsz;
+			if (first > start) {
+				first = start;
+			}
+			if (last < stop) {
+				last = stop;
+			}
+			if (align < phdr->p_align) {
+				align = phdr->p_align;
+			}
+		}
+		/* If I can't use the default paddr find a new
+		 * hole for the dynamic executable.
+		 */
+#if 0
+		if (!valid_memory_range(info, first, last)) {
+			unsigned long hole;
+			hole = locate_hole(info,
+				last - first + 1, align, 
+				0, elf_max_addr(ehdr), 1);
+			if (hole == ULONG_MAX) {
+				result = -1;
+				goto out;
+			}
+			/* Base is the value that when added
+			 * to any virtual address in the file
+			 * yields it's load virtual address.
+			 */
+			base = hole - first;
+		}
+#endif
+	}
+
+	printf("reading in the PT_LOAD segments\n");
+	/* Read in the PT_LOAD segments */
+	for(i = 0; i < ehdr->e_phnum; i++) {
+		struct mem_phdr *phdr;
+		size_t size;
+		phdr = &ehdr->e_phdr[i];
+		printf("    found segment %d p_type = %08x\n", i, phdr->p_type);
+		if (phdr->p_type != PT_LOAD) {
+			continue;
+		}
+		size = phdr->p_filesz;
+		if (size > phdr->p_memsz) {
+			size = phdr->p_memsz;
+		}
+
+		printf("    add_segment(phdr->p_data = %08x, size = %08x, phdr->p_paddr =%08x, base = %08x, phdr->p_memsz = %08x)\n",
+		phdr->p_data, size, phdr->p_paddr, base, phdr->p_memsz);
+#if 0
+		add_segment(info,
+			phdr->p_data, size,
+			phdr->p_paddr + base, phdr->p_memsz);
+#endif
+
+		{
+			struct resource *elf_resource;
+			resource_size_t start;
+
+			/* FIXME */
+			start = phdr->p_vaddr;
+			elf_resource = request_sdram_region("elf",
+				start, size);
+			if (!elf_resource) {
+				printf("unable to request SDRAM 0x%08x-0x%08x\n",
+					start, start + size - 1);
+				result = -1;
+				goto out;
+			}
+			memcpy(start, phdr->p_data, size);
+		}
+	}
+
+	/* Update entry point to reflect new load address*/
+	ehdr->e_entry += base;
+
+	result = 0;
+ out:
+	return result;
+}
+
+void elf_exec_build_load(struct kexec_info *info, struct mem_ehdr *ehdr,
+	const char *buf, off_t len, uint32_t flags)
+{
+	int result;
+	/* Parse the Elf file */
+	result = build_elf_exec_info(buf, len, ehdr, flags);
+	if (result < 0) {
+		die("ELF exec parse failed\n");
+	}
+
+	/* Load the Elf data */
+	result = elf_exec_load(ehdr, info);
+	if (result < 0) {
+		die("ELF exec load failed\n");
+	}
+}
diff --git a/lib/kexec/kexec-elf.c b/lib/kexec/kexec-elf.c
new file mode 100644
index 0000000..4459afa
--- /dev/null
+++ b/lib/kexec/kexec-elf.c
@@ -0,0 +1,796 @@
+#include <linux/types.h>
+#include <common.h>
+
+// FIXME: need UINT64_MAX
+//#include <stdint.h>
+#include <string.h>
+#include <stdio.h>
+#include <errno.h>
+#include <stdlib.h>
+#include "elf.h"
+#include "kexec.h"
+#include "kexec-elf.h"
+
+static const int probe_debug = 0;
+
+uint16_t elf16_to_cpu(const struct mem_ehdr *ehdr, uint16_t value)
+{
+	if (ehdr->ei_data == ELFDATA2LSB) {
+		value = le16_to_cpu(value);
+	}
+	else if (ehdr->ei_data == ELFDATA2MSB) {
+		value = be16_to_cpu(value);
+	}
+	return value;
+}
+
+uint32_t elf32_to_cpu(const struct mem_ehdr *ehdr, uint32_t value)
+{
+	if (ehdr->ei_data == ELFDATA2LSB) {
+		value = le32_to_cpu(value);
+	}
+	else if (ehdr->ei_data == ELFDATA2MSB) {
+		value = be32_to_cpu(value);
+	}
+	return value;
+}
+
+uint64_t elf64_to_cpu(const struct mem_ehdr *ehdr, uint64_t value)
+{
+	if (ehdr->ei_data == ELFDATA2LSB) {
+		value = le64_to_cpu(value);
+	}
+	else if (ehdr->ei_data == ELFDATA2MSB) {
+		value = be64_to_cpu(value);
+	}
+	return value;
+}
+
+uint16_t cpu_to_elf16(const struct mem_ehdr *ehdr, uint16_t value)
+{
+	if (ehdr->ei_data == ELFDATA2LSB) {
+		value = cpu_to_le16(value);
+	}
+	else if (ehdr->ei_data == ELFDATA2MSB) {
+		value = cpu_to_be16(value);
+	}
+	return value;
+}
+
+uint32_t cpu_to_elf32(const struct mem_ehdr *ehdr, uint32_t value)
+{
+	if (ehdr->ei_data == ELFDATA2LSB) {
+		value = cpu_to_le32(value);
+	}
+	else if (ehdr->ei_data == ELFDATA2MSB) {
+		value = cpu_to_be32(value);
+	}
+	return value;
+}
+
+uint64_t cpu_to_elf64(const struct mem_ehdr *ehdr, uint64_t value)
+{
+	if (ehdr->ei_data == ELFDATA2LSB) {
+		value = cpu_to_le64(value);
+	}
+	else if (ehdr->ei_data == ELFDATA2MSB) {
+		value = cpu_to_be64(value);
+	}
+	return value;
+}
+
+#define ELF32_MAX 0xffffffff
+#define ELF64_MAX 0xffffffffffffffff
+#if ELF64_MAX > ULONG_MAX
+#undef ELF64_MAX
+#define ELF64_MAX ULONG_MAX
+#endif
+
+unsigned long elf_max_addr(const struct mem_ehdr *ehdr)
+{
+	unsigned long max_addr = 0;
+	if (ehdr->ei_class == ELFCLASS32) {
+		max_addr = ELF32_MAX;
+	}
+	else if (ehdr->ei_class == ELFCLASS64) {
+		max_addr = ELF64_MAX;
+	}
+	return max_addr;
+}
+static int build_mem_elf32_ehdr(const char *buf, off_t len, struct mem_ehdr *ehdr)
+{
+	Elf32_Ehdr lehdr;
+#if 0
+	if ((uintmax_t)len < (uintmax_t)sizeof(lehdr)) {
+		/* Buffer is to small to be an elf executable */
+		if (probe_debug) {
+			fprintf(stderr, "Buffer is to small to hold ELF header\n");
+		}
+		return -1;
+	}
+#endif
+	memcpy(&lehdr, buf, sizeof(lehdr));
+	if (elf16_to_cpu(ehdr, lehdr.e_ehsize) != sizeof(Elf32_Ehdr)) {
+		/* Invalid Elf header size */
+		if (probe_debug) {
+			fprintf(stderr, "Bad ELF header size\n");
+		}
+		return -1;
+	}
+	if (elf32_to_cpu(ehdr, lehdr.e_entry) > UINT32_MAX) {
+		/* entry is to large */
+		if (probe_debug) {
+			fprintf(stderr, "ELF e_entry to large\n");
+		}
+		return -1;
+	}
+	if (elf32_to_cpu(ehdr, lehdr.e_phoff) > UINT32_MAX) {
+		/* phoff is to large */
+		if (probe_debug) {
+			fprintf(stderr, "ELF e_phoff to large\n");
+		}
+		return -1;
+	}
+	if (elf32_to_cpu(ehdr, lehdr.e_shoff) > UINT32_MAX) {
+		/* shoff is to large */
+		if (probe_debug) {
+			fprintf(stderr, "ELF e_shoff to large\n");
+		}
+		return -1;
+	}
+	ehdr->e_type      = elf16_to_cpu(ehdr, lehdr.e_type);
+	ehdr->e_machine   = elf16_to_cpu(ehdr, lehdr.e_machine);
+	ehdr->e_version   = elf32_to_cpu(ehdr, lehdr.e_version);
+	ehdr->e_entry     = elf32_to_cpu(ehdr, lehdr.e_entry);
+	ehdr->e_phoff     = elf32_to_cpu(ehdr, lehdr.e_phoff);
+	ehdr->e_shoff     = elf32_to_cpu(ehdr, lehdr.e_shoff);
+	ehdr->e_flags     = elf32_to_cpu(ehdr, lehdr.e_flags);
+	ehdr->e_phnum     = elf16_to_cpu(ehdr, lehdr.e_phnum);
+	ehdr->e_shnum     = elf16_to_cpu(ehdr, lehdr.e_shnum);
+	ehdr->e_shstrndx  = elf16_to_cpu(ehdr, lehdr.e_shstrndx);
+
+	if ((ehdr->e_phnum > 0) &&
+		(elf16_to_cpu(ehdr, lehdr.e_phentsize) != sizeof(Elf32_Phdr)))
+	{
+		/* Invalid program header size */
+		if (probe_debug) {
+			fprintf(stderr, "ELF bad program header size\n");
+		}
+		return -1;
+	}
+	if ((ehdr->e_shnum > 0) &&
+		(elf16_to_cpu(ehdr, lehdr.e_shentsize) != sizeof(Elf32_Shdr)))
+	{
+		/* Invalid section header size */
+		if (probe_debug) {
+			fprintf(stderr, "ELF bad section header size\n");
+		}
+		return -1;
+	}
+
+	return 0;
+}
+
+static int build_mem_elf64_ehdr(const char *buf, off_t len, struct mem_ehdr *ehdr)
+{
+	Elf64_Ehdr lehdr;
+#if 0
+	if ((uintmax_t)len < (uintmax_t)sizeof(lehdr)) {
+		/* Buffer is to small to be an elf executable */
+		if (probe_debug) {
+			fprintf(stderr, "Buffer is to small to hold ELF header\n");
+		}
+		return -1;
+	}
+#endif
+	memcpy(&lehdr, buf, sizeof(lehdr));
+	if (elf16_to_cpu(ehdr, lehdr.e_ehsize) != sizeof(Elf64_Ehdr)) {
+		/* Invalid Elf header size */
+		if (probe_debug) {
+			fprintf(stderr, "Bad ELF header size\n");
+		}
+		return -1;
+	}
+	if (elf32_to_cpu(ehdr, lehdr.e_entry) > UINT32_MAX) {
+		/* entry is to large */
+		if (probe_debug) {
+			fprintf(stderr, "ELF e_entry to large\n");
+		}
+		return -1;
+	}
+	if (elf32_to_cpu(ehdr, lehdr.e_phoff) > UINT32_MAX) {
+		/* phoff is to large */
+		if (probe_debug) {
+			fprintf(stderr, "ELF e_phoff to large\n");
+		}
+		return -1;
+	}
+	if (elf32_to_cpu(ehdr, lehdr.e_shoff) > UINT32_MAX) {
+		/* shoff is to large */
+		if (probe_debug) {
+			fprintf(stderr, "ELF e_shoff to large\n");
+		}
+		return -1;
+	}
+	ehdr->e_type      = elf16_to_cpu(ehdr, lehdr.e_type);
+	ehdr->e_machine   = elf16_to_cpu(ehdr, lehdr.e_machine);
+	ehdr->e_version   = elf32_to_cpu(ehdr, lehdr.e_version);
+	ehdr->e_entry     = elf64_to_cpu(ehdr, lehdr.e_entry);
+	ehdr->e_phoff     = elf64_to_cpu(ehdr, lehdr.e_phoff);
+	ehdr->e_shoff     = elf64_to_cpu(ehdr, lehdr.e_shoff);
+	ehdr->e_flags     = elf32_to_cpu(ehdr, lehdr.e_flags);
+	ehdr->e_phnum     = elf16_to_cpu(ehdr, lehdr.e_phnum);
+	ehdr->e_shnum     = elf16_to_cpu(ehdr, lehdr.e_shnum);
+	ehdr->e_shstrndx  = elf16_to_cpu(ehdr, lehdr.e_shstrndx);
+
+	if ((ehdr->e_phnum > 0) &&
+		(elf16_to_cpu(ehdr, lehdr.e_phentsize) != sizeof(Elf64_Phdr)))
+	{
+		/* Invalid program header size */
+		if (probe_debug) {
+			fprintf(stderr, "ELF bad program header size\n");
+		}
+		return -1;
+	}
+	if ((ehdr->e_shnum > 0) &&
+		(elf16_to_cpu(ehdr, lehdr.e_shentsize) != sizeof(Elf64_Shdr)))
+	{
+		/* Invalid section header size */
+		if (probe_debug) {
+			fprintf(stderr, "ELF bad section header size\n");
+		}
+		return -1;
+	}
+
+	return 0;
+}
+
+static int build_mem_ehdr(const char *buf, off_t len, struct mem_ehdr *ehdr)
+{
+	unsigned char e_ident[EI_NIDENT];
+	int result;
+	memset(ehdr, 0, sizeof(*ehdr));
+#if 0
+	if ((uintmax_t)len < (uintmax_t)sizeof(e_ident)) {
+		/* Buffer is to small to be an elf executable */
+		if (probe_debug) {
+			fprintf(stderr, "Buffer is to small to hold ELF e_ident\n");
+		}
+		return -1;
+	}
+#endif
+	memcpy(e_ident, buf, sizeof(e_ident));
+	if (memcmp(e_ident, ELFMAG, SELFMAG) != 0) {
+		/* No ELF header magic */
+		if (probe_debug) {
+			fprintf(stderr, "NO ELF header magic\n");
+		}
+		return -1;
+	}
+	ehdr->ei_class   = e_ident[EI_CLASS];
+	ehdr->ei_data    = e_ident[EI_DATA];
+	if (	(ehdr->ei_class != ELFCLASS32) &&
+		(ehdr->ei_class != ELFCLASS64))
+	{
+		/* Not a supported elf class */
+		if (probe_debug) {
+			fprintf(stderr, "Not a supported ELF class\n");
+		}
+		return -1;
+	}
+	if (	(ehdr->ei_data != ELFDATA2LSB) &&
+		(ehdr->ei_data != ELFDATA2MSB))
+	{
+		/* Not a supported elf data type */
+		if (probe_debug) {
+			fprintf(stderr, "Not a supported ELF data format\n");
+		}
+		return -1;
+	}
+
+	result = -1;
+	if (ehdr->ei_class == ELFCLASS32) {
+		result = build_mem_elf32_ehdr(buf, len, ehdr);
+	}
+	else if (ehdr->ei_class == ELFCLASS64) {
+		result = build_mem_elf64_ehdr(buf, len, ehdr);
+	}
+	if (result < 0) {
+		return result;
+	}
+	if ((e_ident[EI_VERSION] != EV_CURRENT) ||
+		(ehdr->e_version != EV_CURRENT))
+	{
+		if (probe_debug) {
+			fprintf(stderr, "Unknown ELF version\n");
+		}
+		/* Unknwon elf version */
+		return -1;
+	}
+	return 0;
+}
+
+static int build_mem_elf32_phdr(const char *buf, struct mem_ehdr *ehdr, int idx)
+{
+	struct mem_phdr *phdr;
+	const char *pbuf;
+	Elf32_Phdr lphdr;
+	pbuf = buf + ehdr->e_phoff + (idx * sizeof(lphdr));
+	phdr = &ehdr->e_phdr[idx];
+	memcpy(&lphdr, pbuf, sizeof(lphdr));
+
+	if (	(elf32_to_cpu(ehdr, lphdr.p_filesz) > UINT32_MAX) ||
+		(elf32_to_cpu(ehdr, lphdr.p_memsz)  > UINT32_MAX) ||
+		(elf32_to_cpu(ehdr, lphdr.p_offset) > UINT32_MAX) ||
+		(elf32_to_cpu(ehdr, lphdr.p_paddr)  > UINT32_MAX) ||
+		(elf32_to_cpu(ehdr, lphdr.p_vaddr)  > UINT32_MAX) ||
+		(elf32_to_cpu(ehdr, lphdr.p_align)  > UINT32_MAX))
+	{
+		fprintf(stderr, "Program segment size out of range\n");
+		return -1;
+	}
+
+	phdr->p_type   = elf32_to_cpu(ehdr, lphdr.p_type);
+	phdr->p_paddr  = elf32_to_cpu(ehdr, lphdr.p_paddr);
+	phdr->p_vaddr  = elf32_to_cpu(ehdr, lphdr.p_vaddr);
+	phdr->p_filesz = elf32_to_cpu(ehdr, lphdr.p_filesz);
+	phdr->p_memsz  = elf32_to_cpu(ehdr, lphdr.p_memsz);
+	phdr->p_offset = elf32_to_cpu(ehdr, lphdr.p_offset);
+	phdr->p_flags  = elf32_to_cpu(ehdr, lphdr.p_flags);
+	phdr->p_align  = elf32_to_cpu(ehdr, lphdr.p_align);
+
+	return 0;
+}
+
+static int build_mem_elf64_phdr(const char *buf, struct mem_ehdr *ehdr, int idx)
+{
+	struct mem_phdr *phdr;
+	const char *pbuf;
+	Elf64_Phdr lphdr;
+	pbuf = buf + ehdr->e_phoff + (idx * sizeof(lphdr));
+	phdr = &ehdr->e_phdr[idx];
+	memcpy(&lphdr, pbuf, sizeof(lphdr));
+
+#if 0
+	if (	(elf64_to_cpu(ehdr, lphdr.p_filesz) > UINT64_MAX) ||
+		(elf64_to_cpu(ehdr, lphdr.p_memsz)  > UINT64_MAX) ||
+		(elf64_to_cpu(ehdr, lphdr.p_offset) > UINT64_MAX) ||
+		(elf64_to_cpu(ehdr, lphdr.p_paddr)  > UINT64_MAX) ||
+		(elf64_to_cpu(ehdr, lphdr.p_vaddr)  > UINT64_MAX) ||
+		(elf64_to_cpu(ehdr, lphdr.p_align)  > UINT64_MAX))
+	{
+		fprintf(stderr, "Program segment size out of range\n");
+		return -1;
+	}
+#endif
+
+	phdr->p_type   = elf32_to_cpu(ehdr, lphdr.p_type);
+	phdr->p_paddr  = elf64_to_cpu(ehdr, lphdr.p_paddr);
+	phdr->p_vaddr  = elf64_to_cpu(ehdr, lphdr.p_vaddr);
+	phdr->p_filesz = elf64_to_cpu(ehdr, lphdr.p_filesz);
+	phdr->p_memsz  = elf64_to_cpu(ehdr, lphdr.p_memsz);
+	phdr->p_offset = elf64_to_cpu(ehdr, lphdr.p_offset);
+	phdr->p_flags  = elf32_to_cpu(ehdr, lphdr.p_flags);
+	phdr->p_align  = elf64_to_cpu(ehdr, lphdr.p_align);
+
+	return 0;
+}
+
+static int build_mem_phdrs(const char *buf, off_t len, struct mem_ehdr *ehdr,
+				uint32_t flags)
+{
+	size_t phdr_size, mem_phdr_size, i;
+
+	/* e_phnum is at most 65535 so calculating
+	 * the size of the program header cannot overflow.
+	 */
+	/* Is the program header in the file buffer? */
+	phdr_size = 0;
+	if (ehdr->ei_class == ELFCLASS32) {
+		phdr_size = sizeof(Elf32_Phdr);
+	}
+	else if (ehdr->ei_class == ELFCLASS64) {
+		phdr_size = sizeof(Elf64_Phdr);
+	}
+	else {
+		fprintf(stderr, "Invalid ei_class?\n");
+		return -1;
+	}
+	phdr_size *= ehdr->e_phnum;
+#if 0
+	if ((uintmax_t)(ehdr->e_phoff + phdr_size) > (uintmax_t)len) {
+		/* The program header did not fit in the file buffer */
+		if (probe_debug || (flags & ELF_SKIP_FILESZ_CHECK)) {
+			fprintf(stderr, "ELF program headers truncated"
+				" have %ju bytes need %ju bytes\n",
+				(uintmax_t)len,
+				(uintmax_t)(ehdr->e_phoff + phdr_size));
+		}
+		return -1;
+	}
+#endif
+
+	/* Allocate the e_phdr array */
+	mem_phdr_size = sizeof(ehdr->e_phdr[0]) * ehdr->e_phnum;
+	ehdr->e_phdr = xmalloc(mem_phdr_size);
+
+	for(i = 0; i < ehdr->e_phnum; i++) {
+		struct mem_phdr *phdr;
+		int result;
+		result = -1;
+		if (ehdr->ei_class == ELFCLASS32) {
+			result = build_mem_elf32_phdr(buf, ehdr, i);
+
+		}
+		else if (ehdr->ei_class == ELFCLASS64) {
+			result = build_mem_elf64_phdr(buf, ehdr, i);
+		}
+		if (result < 0) {
+			return result;
+		}
+
+		/* Check the program headers to be certain
+		 * they are safe to use.
+		 * Skip the check if ELF_SKIP_FILESZ_CHECK is set.
+		 */
+		phdr = &ehdr->e_phdr[i];
+#if 0
+		if (!(flags & ELF_SKIP_FILESZ_CHECK)
+			&& (uintmax_t)(phdr->p_offset + phdr->p_filesz) >
+			   (uintmax_t)len) {
+			/* The segment does not fit in the buffer */
+			if (probe_debug) {
+				fprintf(stderr, "ELF segment not in file\n");
+			}
+			return -1;
+		}
+#endif
+		if ((phdr->p_paddr + phdr->p_memsz) < phdr->p_paddr) {
+			/* The memory address wraps */
+			if (probe_debug) {
+				fprintf(stderr, "ELF address wrap around\n");
+			}
+			return -1;
+		}
+		/* Remember where the segment lives in the buffer */
+		phdr->p_data = buf + phdr->p_offset;
+	}
+	return 0;
+}
+
+static int build_mem_elf32_shdr(const char *buf, struct mem_ehdr *ehdr, int idx)
+{
+	struct mem_shdr *shdr;
+	const char *sbuf;
+	int size_ok;
+	Elf32_Shdr lshdr;
+	sbuf = buf + ehdr->e_shoff + (idx * sizeof(lshdr));
+	shdr = &ehdr->e_shdr[idx];
+	memcpy(&lshdr, sbuf, sizeof(lshdr));
+
+	if (	(elf32_to_cpu(ehdr, lshdr.sh_flags)     > UINT32_MAX) ||
+		(elf32_to_cpu(ehdr, lshdr.sh_addr)      > UINT32_MAX) ||
+		(elf32_to_cpu(ehdr, lshdr.sh_offset)    > UINT32_MAX) ||
+		(elf32_to_cpu(ehdr, lshdr.sh_size)      > UINT32_MAX) ||
+		(elf32_to_cpu(ehdr, lshdr.sh_addralign) > UINT32_MAX) ||
+		(elf32_to_cpu(ehdr, lshdr.sh_entsize)   > UINT32_MAX))
+	{
+		fprintf(stderr, "Program section size out of range\n");
+		return -1;
+	}
+
+	shdr->sh_name      = elf32_to_cpu(ehdr, lshdr.sh_name);
+	shdr->sh_type      = elf32_to_cpu(ehdr, lshdr.sh_type);
+	shdr->sh_flags     = elf32_to_cpu(ehdr, lshdr.sh_flags);
+	shdr->sh_addr      = elf32_to_cpu(ehdr, lshdr.sh_addr);
+	shdr->sh_offset    = elf32_to_cpu(ehdr, lshdr.sh_offset);
+	shdr->sh_size      = elf32_to_cpu(ehdr, lshdr.sh_size);
+	shdr->sh_link      = elf32_to_cpu(ehdr, lshdr.sh_link);
+	shdr->sh_info      = elf32_to_cpu(ehdr, lshdr.sh_info);
+	shdr->sh_addralign = elf32_to_cpu(ehdr, lshdr.sh_addralign);
+	shdr->sh_entsize   = elf32_to_cpu(ehdr, lshdr.sh_entsize);
+
+	/* Now verify sh_entsize */
+	size_ok = 0;
+	switch(shdr->sh_type) {
+	case SHT_SYMTAB:
+		size_ok = shdr->sh_entsize == sizeof(Elf32_Sym);
+		break;
+	case SHT_RELA:
+		size_ok = shdr->sh_entsize == sizeof(Elf32_Rela);
+		break;
+	case SHT_DYNAMIC:
+		size_ok = shdr->sh_entsize == sizeof(Elf32_Dyn);
+		break;
+	case SHT_REL:
+		size_ok = shdr->sh_entsize == sizeof(Elf32_Rel);
+		break;
+	case SHT_NOTE:
+	case SHT_NULL:
+	case SHT_PROGBITS:
+	case SHT_HASH:
+	case SHT_NOBITS:
+	default:
+		/* This is a section whose entsize requirements
+		 * I don't care about.  If I don't know about
+		 * the section I can't care about it's entsize
+		 * requirements.
+		 */
+		size_ok = 1;
+		break;
+	}
+	if (!size_ok) {
+		fprintf(stderr, "Bad section header(%x) entsize: %lld\n",
+			shdr->sh_type, shdr->sh_entsize);
+		return -1;
+	}
+	return 0;
+}
+
+static int build_mem_elf64_shdr(const char *buf, struct mem_ehdr *ehdr, int idx)
+{
+	struct mem_shdr *shdr;
+	const char *sbuf;
+	int size_ok;
+	Elf64_Shdr lshdr;
+	sbuf = buf + ehdr->e_shoff + (idx * sizeof(lshdr));
+	shdr = &ehdr->e_shdr[idx];
+	memcpy(&lshdr, sbuf, sizeof(lshdr));
+
+#if 0
+	if (	(elf64_to_cpu(ehdr, lshdr.sh_flags)     > UINT64_MAX) ||
+		(elf64_to_cpu(ehdr, lshdr.sh_addr)      > UINT64_MAX) ||
+		(elf64_to_cpu(ehdr, lshdr.sh_offset)    > UINT64_MAX) ||
+		(elf64_to_cpu(ehdr, lshdr.sh_size)      > UINT64_MAX) ||
+		(elf64_to_cpu(ehdr, lshdr.sh_addralign) > UINT64_MAX) ||
+		(elf64_to_cpu(ehdr, lshdr.sh_entsize)   > UINT64_MAX))
+	{
+		fprintf(stderr, "Program section size out of range\n");
+		return -1;
+	}
+#endif
+
+	shdr->sh_name      = elf32_to_cpu(ehdr, lshdr.sh_name);
+	shdr->sh_type      = elf32_to_cpu(ehdr, lshdr.sh_type);
+	shdr->sh_flags     = elf64_to_cpu(ehdr, lshdr.sh_flags);
+	shdr->sh_addr      = elf64_to_cpu(ehdr, lshdr.sh_addr);
+	shdr->sh_offset    = elf64_to_cpu(ehdr, lshdr.sh_offset);
+	shdr->sh_size      = elf64_to_cpu(ehdr, lshdr.sh_size);
+	shdr->sh_link      = elf32_to_cpu(ehdr, lshdr.sh_link);
+	shdr->sh_info      = elf32_to_cpu(ehdr, lshdr.sh_info);
+	shdr->sh_addralign = elf64_to_cpu(ehdr, lshdr.sh_addralign);
+	shdr->sh_entsize   = elf64_to_cpu(ehdr, lshdr.sh_entsize);
+
+	/* Now verify sh_entsize */
+	size_ok = 0;
+	switch(shdr->sh_type) {
+	case SHT_SYMTAB:
+		size_ok = shdr->sh_entsize == sizeof(Elf64_Sym);
+		break;
+	case SHT_RELA:
+		size_ok = shdr->sh_entsize == sizeof(Elf64_Rela);
+		break;
+	case SHT_DYNAMIC:
+		size_ok = shdr->sh_entsize == sizeof(Elf64_Dyn);
+		break;
+	case SHT_REL:
+		size_ok = shdr->sh_entsize == sizeof(Elf64_Rel);
+		break;
+	case SHT_NOTE:
+	case SHT_NULL:
+	case SHT_PROGBITS:
+	case SHT_HASH:
+	case SHT_NOBITS:
+	default:
+		/* This is a section whose entsize requirements
+		 * I don't care about.  If I don't know about
+		 * the section I can't care about it's entsize
+		 * requirements.
+		 */
+		size_ok = 1;
+		break;
+	}
+	if (!size_ok) {
+		fprintf(stderr, "Bad section header(%x) entsize: %lld\n",
+			shdr->sh_type, shdr->sh_entsize);
+		return -1;
+	}
+	return 0;
+}
+
+static int build_mem_shdrs(const char *buf, off_t len, struct mem_ehdr *ehdr,
+				uint32_t flags)
+{
+	size_t shdr_size, mem_shdr_size, i;
+
+	/* e_shnum is at most 65536 so calculating
+	 * the size of the section header cannot overflow.
+	 */
+	/* Is the program header in the file buffer? */
+	shdr_size = 0;
+	if (ehdr->ei_class == ELFCLASS32) {
+		shdr_size = sizeof(Elf32_Shdr);
+	}
+	else if (ehdr->ei_class == ELFCLASS64) {
+		shdr_size = sizeof(Elf64_Shdr);
+	}
+	else {
+		fprintf(stderr, "Invalid ei_class?\n");
+		return -1;
+	}
+	shdr_size *= ehdr->e_shnum;
+#if 0
+	if ((uintmax_t)(ehdr->e_shoff + shdr_size) > (uintmax_t)len) {
+		/* The section header did not fit in the file buffer */
+		if (probe_debug) {
+			fprintf(stderr, "ELF section header does not fit in file\n");
+		}
+		return -1;
+	}
+#endif
+
+	/* Allocate the e_shdr array */
+	mem_shdr_size = sizeof(ehdr->e_shdr[0]) * ehdr->e_shnum;
+	ehdr->e_shdr = xmalloc(mem_shdr_size);
+
+	for(i = 0; i < ehdr->e_shnum; i++) {
+		struct mem_shdr *shdr;
+		int result;
+		result = -1;
+		if (ehdr->ei_class == ELFCLASS32) {
+			result = build_mem_elf32_shdr(buf, ehdr, i);
+		}
+		else if (ehdr->ei_class == ELFCLASS64) {
+			result = build_mem_elf64_shdr(buf, ehdr, i);
+		}
+		if (result < 0) {
+			return result;
+		}
+		/* Check the section headers to be certain
+		 * they are safe to use.
+		 * Skip the check if ELF_SKIP_FILESZ_CHECK is set.
+		 */
+		shdr = &ehdr->e_shdr[i];
+#if 0
+		if (!(flags & ELF_SKIP_FILESZ_CHECK)
+			&& (shdr->sh_type != SHT_NOBITS)
+			&& (uintmax_t)(shdr->sh_offset + shdr->sh_size) >
+			   (uintmax_t)len) {
+			/* The section does not fit in the buffer */
+			if (probe_debug) {
+				fprintf(stderr, "ELF section %zd not in file\n",
+					i);
+			}
+			return -1;
+		}
+#endif
+		if ((shdr->sh_addr + shdr->sh_size) < shdr->sh_addr) {
+			/* The memory address wraps */
+			if (probe_debug) {
+				fprintf(stderr, "ELF address wrap around\n");
+			}
+			return -1;
+		}
+		/* Remember where the section lives in the buffer */
+		shdr->sh_data = (unsigned char *)(buf + shdr->sh_offset);
+	}
+	return 0;
+}
+
+static void read_nhdr(const struct mem_ehdr *ehdr,
+	ElfNN_Nhdr *hdr, const unsigned char *note)
+{
+	memcpy(hdr, note, sizeof(*hdr));
+	hdr->n_namesz = elf32_to_cpu(ehdr, hdr->n_namesz);
+	hdr->n_descsz = elf32_to_cpu(ehdr, hdr->n_descsz);
+	hdr->n_type   = elf32_to_cpu(ehdr, hdr->n_type);
+
+}
+static int build_mem_notes(struct mem_ehdr *ehdr)
+{
+	const unsigned char *note_start, *note_end, *note;
+	size_t note_size, i;
+	/* First find the note segment or section */
+	note_start = note_end = NULL;
+	for(i = 0; !note_start && (i < ehdr->e_phnum); i++) {
+		struct mem_phdr *phdr = &ehdr->e_phdr[i];
+		/*
+		 * binutils <= 2.17 has a bug where it can create the
+		 * PT_NOTE segment with an offset of 0. Therefore
+		 * check p_offset > 0.
+		 *
+		 * See: http://sourceware.org/bugzilla/show_bug.cgi?id=594
+		 */
+		if (phdr->p_type == PT_NOTE && phdr->p_offset) {
+			note_start = (unsigned char *)phdr->p_data;
+			note_end = note_start + phdr->p_filesz;
+		}
+	}
+	for(i = 0; !note_start && (i < ehdr->e_shnum); i++) {
+		struct mem_shdr *shdr = &ehdr->e_shdr[i];
+		if (shdr->sh_type == SHT_NOTE) {
+			note_start = shdr->sh_data;
+			note_end = note_start + shdr->sh_size;
+		}
+	}
+	if (!note_start) {
+		return 0;
+	}
+
+	/* Walk through and count the notes */
+	ehdr->e_notenum = 0;
+	for(note = note_start; note < note_end; note+= note_size) {
+		ElfNN_Nhdr hdr;
+		read_nhdr(ehdr, &hdr, note);
+		note_size  = sizeof(hdr);
+		note_size += (hdr.n_namesz + 3) & ~3;
+		note_size += (hdr.n_descsz + 3) & ~3;
+		ehdr->e_notenum += 1;
+	}
+	/* Now walk and normalize the notes */
+	ehdr->e_note = xmalloc(sizeof(*ehdr->e_note) * ehdr->e_notenum);
+	for(i = 0, note = note_start; note < note_end; note+= note_size, i++) {
+		const unsigned char *name, *desc;
+		ElfNN_Nhdr hdr;
+		read_nhdr(ehdr, &hdr, note);
+		note_size  = sizeof(hdr);
+		name       = note + note_size;
+		note_size += (hdr.n_namesz + 3) & ~3;
+		desc       = note + note_size;
+		note_size += (hdr.n_descsz + 3) & ~3;
+
+		if ((hdr.n_namesz != 0) && (name[hdr.n_namesz -1] != '\0')) {
+			/* If note name string is not null terminated, just
+			 * warn user about it and continue processing. This
+			 * allows us to parse /proc/kcore on older kernels
+			 * where /proc/kcore elf notes were not null
+			 * terminated. It has been fixed in 2.6.19.
+			 */
+			fprintf(stderr, "Warning: Elf Note name is not null "
+					"terminated\n");
+		}
+		ehdr->e_note[i].n_type = hdr.n_type;
+		ehdr->e_note[i].n_name = (char *)name;
+		ehdr->e_note[i].n_desc = desc;
+		ehdr->e_note[i].n_descsz = hdr.n_descsz;
+
+	}
+	return 0;
+}
+
+void free_elf_info(struct mem_ehdr *ehdr)
+{
+	free(ehdr->e_phdr);
+	free(ehdr->e_shdr);
+	memset(ehdr, 0, sizeof(*ehdr));
+}
+
+int build_elf_info(const char *buf, off_t len, struct mem_ehdr *ehdr,
+			uint32_t flags)
+{
+	int result;
+	result = build_mem_ehdr(buf, len, ehdr);
+	if (result < 0) {
+		return result;
+	}
+	if ((ehdr->e_phoff > 0) && (ehdr->e_phnum > 0)) {
+		result = build_mem_phdrs(buf, len, ehdr, flags);
+		if (result < 0) {
+			free_elf_info(ehdr);
+			return result;
+		}
+	}
+	if ((ehdr->e_shoff > 0) && (ehdr->e_shnum > 0)) {
+		result = build_mem_shdrs(buf, len, ehdr, flags);
+		if (result < 0) {
+			free_elf_info(ehdr);
+			return result;
+		}
+	}
+	result = build_mem_notes(ehdr);
+	if (result < 0) {
+		free_elf_info(ehdr);
+		return result;
+	}
+	return 0;
+}
diff --git a/lib/kexec/kexec-elf.h b/lib/kexec/kexec-elf.h
new file mode 100644
index 0000000..99cb80b
--- /dev/null
+++ b/lib/kexec/kexec-elf.h
@@ -0,0 +1,132 @@
+#ifndef KEXEC_ELF_H
+#define KEXEC_ELF_H
+
+struct kexec_info;
+
+struct mem_ehdr {
+	unsigned ei_class;
+	unsigned ei_data;
+	unsigned e_type;
+	unsigned e_machine;
+	unsigned e_version;
+	unsigned e_flags;
+	unsigned e_phnum;
+	unsigned e_shnum;
+	unsigned e_shstrndx;
+	unsigned long long e_entry;
+	unsigned long long e_phoff;
+	unsigned long long e_shoff;
+	unsigned e_notenum;
+	struct mem_phdr *e_phdr;
+	struct mem_shdr *e_shdr;
+	struct mem_note *e_note;
+	unsigned long rel_addr, rel_size;
+};
+
+struct mem_phdr {
+	unsigned long long p_paddr;
+	unsigned long long p_vaddr;
+	unsigned long long p_filesz;
+	unsigned long long p_memsz;
+	unsigned long long p_offset;
+	const char *p_data;
+	unsigned p_type;
+	unsigned p_flags;
+	unsigned long long p_align;
+};
+
+struct mem_shdr {
+	unsigned sh_name;
+	unsigned sh_type;
+	unsigned long long sh_flags;
+	unsigned long long sh_addr;
+	unsigned long long sh_offset;
+	unsigned long long sh_size;
+	unsigned sh_link;
+	unsigned sh_info;
+	unsigned long long sh_addralign;
+	unsigned long long sh_entsize;
+	const unsigned char *sh_data;
+};
+
+struct mem_sym {
+	unsigned long st_name;   /* Symbol name (string tbl index) */
+	unsigned char st_info;   /* No defined meaning, 0 */
+	unsigned char st_other;  /* Symbol type and binding */
+	unsigned st_shndx;  /* Section index */
+	unsigned long long st_value;  /* Symbol value */
+	unsigned long long st_size;   /* Symbol size */
+};
+
+struct  mem_rela {
+	unsigned long long r_offset;
+	unsigned r_sym;
+	unsigned r_type;
+	unsigned long long r_addend;
+};
+
+struct mem_note {
+	unsigned n_type;
+	unsigned n_descsz;
+	const char *n_name;
+	const void *n_desc;
+};
+
+/* The definition of an ELF note does not vary depending
+ * on ELFCLASS.
+ */
+typedef struct
+{
+	uint32_t n_namesz;		/* Length of the note's name.  */
+	uint32_t n_descsz;		/* Length of the note's descriptor.  */
+	uint32_t n_type;		/* Type of the note.  */
+} ElfNN_Nhdr;
+
+/* Misc flags */
+
+#define ELF_SKIP_FILESZ_CHECK		0x00000001
+
+extern void free_elf_info(struct mem_ehdr *ehdr);
+extern int build_elf_info(const char *buf, off_t len, struct mem_ehdr *ehdr,
+				uint32_t flags);
+extern int build_elf_exec_info(const char *buf, off_t len,
+				struct mem_ehdr *ehdr, uint32_t flags);
+extern int build_elf_rel_info(const char *buf, off_t len, struct mem_ehdr *ehdr,
+				uint32_t flags);
+
+extern int build_elf_core_info(const char *buf, off_t len,
+					struct mem_ehdr *ehdr, uint32_t flags);
+extern int elf_exec_load(struct mem_ehdr *ehdr, struct kexec_info *info);
+extern int elf_rel_load(struct mem_ehdr *ehdr, struct kexec_info *info,
+	unsigned long min, unsigned long max, int end);
+
+extern void elf_exec_build_load(struct kexec_info *info, struct mem_ehdr *ehdr, 
+				const char *buf, off_t len, uint32_t flags);
+extern void elf_rel_build_load(struct kexec_info *info, struct mem_ehdr *ehdr, 
+	const char *buf, off_t len, unsigned long min, unsigned long max, 
+	int end, uint32_t flags);
+
+extern int elf_rel_find_symbol(struct mem_ehdr *ehdr,
+	const char *name, struct mem_sym *ret_sym);
+extern unsigned long elf_rel_get_addr(struct mem_ehdr *ehdr, const char *name);
+extern void elf_rel_set_symbol(struct mem_ehdr *ehdr,
+	const char *name, const void *buf, size_t size);
+extern void elf_rel_get_symbol(struct mem_ehdr *ehdr,
+	const char *name, void *buf, size_t size);
+
+uint16_t elf16_to_cpu(const struct mem_ehdr *ehdr, uint16_t value);
+uint32_t elf32_to_cpu(const struct mem_ehdr *ehdr, uint32_t value);
+uint64_t elf64_to_cpu(const struct mem_ehdr *ehdr, uint64_t value);
+
+uint16_t cpu_to_elf16(const struct mem_ehdr *ehdr, uint16_t value);
+uint32_t cpu_to_elf32(const struct mem_ehdr *ehdr, uint32_t value);
+uint64_t cpu_to_elf64(const struct mem_ehdr *ehdr, uint64_t value);
+
+unsigned long elf_max_addr(const struct mem_ehdr *ehdr);
+
+/* Architecture specific helper functions */
+extern int machine_verify_elf_rel(struct mem_ehdr *ehdr);
+extern void machine_apply_elf_rel(struct mem_ehdr *ehdr, unsigned long r_type, 
+	void *location, unsigned long address, unsigned long value);
+#endif /* KEXEC_ELF_H */
+
diff --git a/lib/kexec/kexec.c b/lib/kexec/kexec.c
new file mode 100644
index 0000000..3e9a916
--- /dev/null
+++ b/lib/kexec/kexec.c
@@ -0,0 +1,299 @@
+/*
+ * kexec: Linux boots Linux
+ *
+ * Copyright (C) 2003-2005  Eric Biederman (ebiederm@xmission.com)
+ *
+ * Modified (2007-05-15) by Francesco Chiechi to rudely handle mips platform
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation (version 2 of the License).
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
+ */
+
+#define _GNU_SOURCE
+#include <linux/types.h>
+#include <common.h>
+
+#include <stdio.h>
+#include <stdarg.h>
+#include <string.h>
+#include <stdlib.h>
+#include <errno.h>
+//#include <limits.h>
+//#include <sys/types.h>
+#include <linux/stat.h>
+//#include <unistd.h>
+#include <fcntl.h>
+#include <getopt.h>
+//#include <ctype.h>
+
+#include "config.h"
+
+#include "kexec.h"
+//#include "kexec-syscall.h"
+#include "kexec-elf.h"
+#include <fs.h>
+
+unsigned long long mem_min = 0;
+unsigned long long mem_max = ULONG_MAX;
+int kexec_debug = 0;
+
+void die(char *fmt, ...)
+{
+}
+
+int valid_memory_range(struct kexec_info *info,
+		       unsigned long sstart, unsigned long send)
+{
+	int i;
+	if (sstart > send) {
+		return 0;
+	}
+	if ((send > mem_max) || (sstart < mem_min)) {
+		return 0;
+	}
+	for (i = 0; i < info->memory_ranges; i++) {
+		unsigned long mstart, mend;
+		/* Only consider memory ranges */
+		if (info->memory_range[i].type != RANGE_RAM)
+			continue;
+		mstart = info->memory_range[i].start;
+		mend = info->memory_range[i].end;
+		if (i < info->memory_ranges - 1
+		    && mend == info->memory_range[i+1].start
+		    && info->memory_range[i+1].type == RANGE_RAM)
+			mend = info->memory_range[i+1].end;
+
+		/* Check to see if we are fully contained */
+		if ((mstart <= sstart) && (mend >= send)) {
+			return 1;
+		}
+	}
+	return 0;
+}
+
+static int valid_memory_segment(struct kexec_info *info,
+				struct kexec_segment *segment)
+{
+	unsigned long sstart, send;
+	sstart = (unsigned long)segment->mem;
+	send   = sstart + segment->memsz - 1;
+
+	return valid_memory_range(info, sstart, send);
+}
+
+static void print_segments(int f, struct kexec_info *info)
+{
+	int i;
+
+	fprintf(f, "nr_segments = %d\n", info->nr_segments);
+	for (i = 0; i < info->nr_segments; i++) {
+		fprintf(f, "segment[%d].buf   = %p\n",	i,
+			info->segment[i].buf);
+		fprintf(f, "segment[%d].bufsz = %zx\n", i,
+			info->segment[i].bufsz);
+		fprintf(f, "segment[%d].mem   = %p\n",	i,
+			info->segment[i].mem);
+		fprintf(f, "segment[%d].memsz = %zx\n", i,
+			info->segment[i].memsz);
+	}
+}
+
+int sort_segments(struct kexec_info *info)
+{
+	int i, j;
+	void *end;
+
+	/* Do a stupid insertion sort... */
+	for (i = 0; i < info->nr_segments; i++) {
+		int tidx;
+		struct kexec_segment temp;
+		tidx = i;
+		for (j = i +1; j < info->nr_segments; j++) {
+			if (info->segment[j].mem < info->segment[tidx].mem) {
+				tidx = j;
+			}
+		}
+		if (tidx != i) {
+			temp = info->segment[tidx];
+			info->segment[tidx] = info->segment[i];
+			info->segment[i] = temp;
+		}
+	}
+	/* Now see if any of the segments overlap */
+	end = 0;
+	for (i = 0; i < info->nr_segments; i++) {
+		if (end > info->segment[i].mem) {
+			fprintf(stderr, "Overlapping memory segments at %p\n",
+				end);
+			return -1;
+		}
+		end = ((char *)info->segment[i].mem) + info->segment[i].memsz;
+	}
+	return 0;
+}
+
+/*
+ *	Load the new kernel
+ */
+static int my_load(char *kernel, unsigned long kexec_flags)
+{
+	char *kernel_buf;
+	off_t kernel_size;
+	int i = 0;
+	int result;
+	struct kexec_info info;
+	long native_arch;
+
+//printf("%s:%d\n", __func__, __LINE__);
+	memset(&info, 0, sizeof(info));
+	info.segment = NULL;
+	info.nr_segments = 0;
+	info.entry = NULL;
+	info.backup_start = 0;
+	info.kexec_flags = kexec_flags;
+
+	result = 0;
+	/* slurp in the input kernel */
+	/* FIXME: add a decompresion routines insted of read_file() */
+	kernel_buf = read_file(kernel, &kernel_size);
+	printf("kernel: %p kernel_size: %lx\n", kernel_buf, kernel_size);
+
+//printf("%s:%d\n", __func__, __LINE__);
+	/* FIXME: check memory banks */
+	if (get_memory_ranges(&info.memory_range, &info.memory_ranges,
+		info.kexec_flags) < 0) {
+		fprintf(stderr, "Could not get memory layout\n");
+		return -1;
+	}
+
+//printf("%s:%d\n", __func__, __LINE__);
+	for (i = 0; i < kexec_file_types; i++) {
+		if (kexec_file_type[i].probe(kernel_buf, kernel_size) >= 0)
+			break;
+	}
+//printf("%s:%d\n", __func__, __LINE__);
+	if (i == kexec_file_types) {
+		fprintf(stderr, "Cannot determine the file type "
+				"of %s\n", kernel);
+		return -1;
+	}
+//printf("%s:%d\n", __func__, __LINE__);
+	/* Figure out our native architecture before load */
+#if 0
+	native_arch = physical_arch();
+	if (native_arch < 0) {
+		return -1;
+	}
+#endif
+	native_arch = 0;
+	info.kexec_flags |= native_arch;
+
+//printf("%s:%d\n", __func__, __LINE__);
+	result = kexec_file_type[i].load(kernel_buf, kernel_size, &info);
+//printf("%s:%d\n", __func__, __LINE__);
+	if (result < 0) {
+		switch (result) {
+		case EFAILED:
+		default:
+			fprintf(stderr, "Cannot load %s\n", kernel);
+			break;
+		}
+		return result;
+	}
+#if 0
+	/* If we are not in native mode setup an appropriate trampoline */
+	if (arch_compat_trampoline(&info) < 0) {
+		return -1;
+	}
+#endif
+//printf("%s:%d\n", __func__, __LINE__);
+	/* Verify all of the segments load to a valid location in memory */
+	for (i = 0; i < info.nr_segments; i++) {
+		if (!valid_memory_segment(&info, info.segment +i)) {
+			fprintf(stderr, "Invalid memory segment %p - %p\n",
+				info.segment[i].mem,
+				((char *)info.segment[i].mem) + 
+				info.segment[i].memsz);
+			return -1;
+		}
+	}
+	/* Sort the segments and verify we don't have overlaps */
+	if (sort_segments(&info) < 0) {
+		return -1;
+	}
+#if 1
+	fprintf(stderr, "kexec_load: entry = %p flags = %lx\n", 
+		info.entry, info.kexec_flags);
+	print_segments(stderr, &info);
+#endif
+#if 0
+	result = kexec_load(
+		info.entry, info.nr_segments, info.segment, info.kexec_flags);
+#else
+	{
+		void (*barebox)(int a0, int a1, int a2, int a3);
+
+		barebox = info.entry;
+
+		printf("\njumping to %p\n\n", barebox);
+		barebox(2,              /* number of arguments? */
+			0x80002000,
+			0x80002008,
+			0x10000000      /* no matter */
+                );
+	}
+#endif
+	if (result != 0) {
+		/* The load failed, print some debugging information */
+		fprintf(stderr, "kexec_load failed: %s\n", 
+			strerror(errno));
+		fprintf(stderr, "entry       = %p flags = %lx\n", 
+			info.entry, info.kexec_flags);
+		print_segments(stderr, &info);
+	}
+	return result;
+}
+
+#include <boot.h>
+#include <init.h>
+#include <binfmt.h>
+
+static int do_bootm_elf(struct image_data *data)
+{
+	printf("\ndo_bootm_elf()\n\n");
+
+	my_load(data->os_file, 0);
+
+	/* unreachable(); */
+	return -1;
+}
+
+static struct image_handler elf_handler = {
+	.name = "ELF",
+	.bootm = do_bootm_elf,
+	.filetype = filetype_elf,
+};
+
+static struct binfmt_hook binfmt_elf_hook = {
+	.type = filetype_elf,
+	.exec = "bootm",
+};
+
+static int elf_register_image_handler(void)
+{
+	register_image_handler(&elf_handler);
+	binfmt_register(&binfmt_elf_hook);
+
+	return 0;
+}
+late_initcall(elf_register_image_handler);
diff --git a/lib/kexec/kexec.h b/lib/kexec/kexec.h
new file mode 100644
index 0000000..4233c1f
--- /dev/null
+++ b/lib/kexec/kexec.h
@@ -0,0 +1,188 @@
+#ifndef KEXEC_H
+#define KEXEC_H
+
+#include <common.h>
+
+#include <stdio.h>
+#include <string.h>
+#define USE_BSD
+#include <asm/byteorder.h>
+#define _GNU_SOURCE
+
+#include "kexec-elf.h"
+#include "unused.h"
+
+/*
+ * Document some of the reasons why crashdump may fail, so we can give
+ * better error messages
+ */
+#define EFAILED		-1	/* default error code */
+
+extern unsigned long long mem_min, mem_max;
+extern int kexec_debug;
+
+#define dbgprintf(...) \
+do { \
+	if (kexec_debug) \
+		fprintf(stderr, __VA_ARGS__); \
+} while(0)
+
+struct kexec_segment {
+	const void *buf;
+	size_t bufsz;
+	const void *mem;
+	size_t memsz;
+};
+
+struct memory_range {
+	unsigned long long start, end;
+	unsigned type;
+#define RANGE_RAM	0
+#define RANGE_RESERVED	1
+#define RANGE_ACPI	2
+#define RANGE_ACPI_NVS	3
+#define RANGE_UNCACHED	4
+};
+
+struct kexec_info {
+	struct kexec_segment *segment;
+	int nr_segments;
+	struct memory_range *memory_range;
+	int memory_ranges;
+	void *entry;
+	struct mem_ehdr rhdr;
+	unsigned long backup_start;
+	unsigned long kexec_flags;
+	unsigned long backup_src_start;
+	unsigned long backup_src_size;
+};
+
+struct arch_map_entry {
+	const char *machine;
+	unsigned long arch;
+};
+
+extern const struct arch_map_entry arches[];
+long physical_arch(void);
+
+#define KERNEL_VERSION(major, minor, patch) \
+	(((major) << 16) | ((minor) << 8) | patch)
+long kernel_version(void);
+
+void usage(void);
+int get_memory_ranges(struct memory_range **range, int *ranges,
+						unsigned long kexec_flags);
+int valid_memory_range(struct kexec_info *info,
+		       unsigned long sstart, unsigned long send);
+int sort_segments(struct kexec_info *info);
+unsigned long locate_hole(struct kexec_info *info,
+	unsigned long hole_size, unsigned long hole_align, 
+	unsigned long hole_min, unsigned long hole_max,
+	int hole_end);
+
+typedef int (probe_t)(const char *kernel_buf, off_t kernel_size);
+typedef int (load_t )(//int argc, char **argv,
+	const char *kernel_buf, off_t kernel_size, 
+	struct kexec_info *info);
+typedef void (usage_t)(void);
+struct kexec_file_type {
+	const char *name;
+	probe_t *probe;
+	load_t  *load;
+	usage_t *usage;
+};
+
+extern struct kexec_file_type kexec_file_type[];
+extern int kexec_file_types;
+
+extern void die(char *fmt, ...);
+extern void *xrealloc(void *ptr, size_t size);
+extern unsigned long virt_to_phys(unsigned long addr);
+extern void add_segment(struct kexec_info *info,
+	const void *buf, size_t bufsz, unsigned long base, size_t memsz);
+extern void add_segment_phys_virt(struct kexec_info *info,
+	const void *buf, size_t bufsz, unsigned long base, size_t memsz,
+	int phys);
+extern unsigned long add_buffer(struct kexec_info *info,
+	const void *buf, unsigned long bufsz, unsigned long memsz,
+	unsigned long buf_align, unsigned long buf_min, unsigned long buf_max,
+	int buf_end);
+extern unsigned long add_buffer_virt(struct kexec_info *info,
+	const void *buf, unsigned long bufsz, unsigned long memsz,
+	unsigned long buf_align, unsigned long buf_min, unsigned long buf_max,
+	int buf_end);
+extern unsigned long add_buffer_phys_virt(struct kexec_info *info,
+	const void *buf, unsigned long bufsz, unsigned long memsz,
+	unsigned long buf_align, unsigned long buf_min, unsigned long buf_max,
+	int buf_end, int phys);
+
+extern char purgatory[];
+extern size_t purgatory_size;
+
+int arch_compat_trampoline(struct kexec_info *info);
+char *get_command_line(void);
+
+int kexec_iomem_for_each_line(char *match,
+			      int (*callback)(void *data,
+					      int nr,
+					      char *str,
+					      unsigned long base,
+					      unsigned long length),
+			      void *data);
+int parse_iomem_single(char *str, uint64_t *start, uint64_t *end);
+const char * proc_iomem(void);
+
+extern int add_backup_segments(struct kexec_info *info,
+			       unsigned long backup_base,
+			       unsigned long backup_size);
+
+#define MAX_LINE	160
+
+char *concat_cmdline(const char *base, const char *append);
+
+/* Limits of integral types. */
+#ifndef INT8_MIN
+#define INT8_MIN               (-128)
+#endif
+#ifndef INT16_MIN
+#define INT16_MIN              (-32767-1)
+#endif
+#ifndef INT32_MIN
+#define INT32_MIN              (-2147483647-1)
+#endif
+#ifndef INT8_MAX
+#define INT8_MAX               (127)
+#endif
+#ifndef INT16_MAX
+#define INT16_MAX              (32767)
+#endif
+#ifndef INT32_MAX
+#define INT32_MAX              (2147483647)
+#endif
+#ifndef UINT8_MAX
+#define UINT8_MAX              (255U)
+#endif
+#ifndef UINT16_MAX
+#define UINT16_MAX             (65535U)
+#endif
+#ifndef UINT32_MAX
+#define UINT32_MAX             (4294967295U)
+#endif
+
+/* These values match the ELF architecture values. 
+ * Unless there is a good reason that should continue to be the case.
+ */
+#define KEXEC_ARCH_DEFAULT ( 0 << 16)
+#define KEXEC_ARCH_386     ( 3 << 16)
+#define KEXEC_ARCH_X86_64  (62 << 16)
+#define KEXEC_ARCH_PPC     (20 << 16)
+#define KEXEC_ARCH_PPC64   (21 << 16)
+#define KEXEC_ARCH_IA_64   (50 << 16)
+#define KEXEC_ARCH_ARM     (40 << 16)
+#define KEXEC_ARCH_S390    (22 << 16)
+#define KEXEC_ARCH_SH      (42 << 16)
+#define KEXEC_ARCH_MIPS_LE (10 << 16)
+#define KEXEC_ARCH_MIPS    ( 8 << 16)
+#define KEXEC_ARCH_CRIS    (76 << 16)
+
+#endif /* KEXEC_H */
diff --git a/lib/kexec/unused.h b/lib/kexec/unused.h
new file mode 100644
index 0000000..7b40190
--- /dev/null
+++ b/lib/kexec/unused.h
@@ -0,0 +1,15 @@
+#ifndef UNUSED_H
+#define UNUSED_H
+
+/* http://sourcefrog.net/weblog/software/languages/C/unused.html */
+
+#ifdef UNUSED
+#elif defined(__GNUC__)
+# define UNUSED(x) UNUSED_ ## x __attribute__((unused))
+#elif defined(__LCLINT__)
+# define UNUSED(x) /*@unused@*/ x
+#else
+# define UNUSED(x) x
+#endif
+
+#endif
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
