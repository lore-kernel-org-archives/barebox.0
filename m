Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f170.google.com ([209.85.217.170])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TlRDO-0006PK-8V
 for barebox@lists.infradead.org; Wed, 19 Dec 2012 21:30:18 +0000
Received: by mail-lb0-f170.google.com with SMTP id j14so2383275lbo.29
 for <barebox@lists.infradead.org>; Wed, 19 Dec 2012 13:30:08 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 20 Dec 2012 01:29:52 +0400
Message-Id: <1355952595-1432-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1355952595-1432-1-git-send-email-antonynpavlov@gmail.com>
References: <1355952595-1432-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 2/5] bootm: add very basic ELF support (stolen from kexec)
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/Kconfig           |    7 +
 common/Kconfig             |    3 +
 common/filetype.c          |    5 +
 include/filetype.h         |    1 +
 lib/Makefile               |    1 +
 lib/kexec/Makefile         |    1 +
 lib/kexec/kexec-elf-exec.c |   85 ++++
 lib/kexec/kexec-elf.c      |  927 ++++++++++++++++++++++++++++++++++++++++++++
 lib/kexec/kexec-elf.h      |  110 ++++++
 lib/kexec/kexec.c          |  251 ++++++++++++
 lib/kexec/kexec.h          |  117 ++++++
 11 files changed, 1508 insertions(+)
 create mode 100644 lib/kexec/Makefile
 create mode 100644 lib/kexec/kexec-elf-exec.c
 create mode 100644 lib/kexec/kexec-elf.c
 create mode 100644 lib/kexec/kexec-elf.h
 create mode 100644 lib/kexec/kexec.c
 create mode 100644 lib/kexec/kexec.h

diff --git a/commands/Kconfig b/commands/Kconfig
index 75ebfb8..aef4ecb 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -403,6 +403,13 @@ config CMD_BOOTM_AIMAGE
 	help
 	  Support using Android Images.
 
+config KEXEC
+	bool
+	prompt "bootm ELF image support"
+	depends on CMD_BOOTM && HAS_KEXEC
+	help
+	  Support using ELF Images.
+
 config CMD_UIMAGE
 	select UIMAGE
 	tristate
diff --git a/common/Kconfig b/common/Kconfig
index b60b78b..84cfc70 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -674,3 +674,6 @@ endmenu
 
 config HAS_DEBUG_LL
 	bool
+
+config HAS_KEXEC
+	bool
diff --git a/common/filetype.c b/common/filetype.c
index 748e364..1bb9cac 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -23,6 +23,7 @@
 #include <fs.h>
 #include <malloc.h>
 #include <errno.h>
+#include <elf.h>
 
 struct filetype_str {
 	const char *name;	/* human readable filetype */
@@ -48,6 +49,7 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_bmp] = { "BMP image", "bmp" },
 	[filetype_png] = { "PNG image", "png" },
 	[filetype_ext] = { "ext filesystem", "ext" },
+	[filetype_elf] = { "ELF", "elf" },
 };
 
 const char *file_type_to_string(enum filetype f)
@@ -169,6 +171,9 @@ enum filetype file_detect_type(void *_buf, size_t bufsize)
 	if (buf16[512 + 28] == le16_to_cpu(0xef53))
 		return filetype_ext;
 
+	if (strncmp(buf8, ELFMAG, 4) == 0)
+		return filetype_elf;
+
 	return filetype_unknown;
 }
 
diff --git a/include/filetype.h b/include/filetype.h
index 91139db..d7c9c03 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -23,6 +23,7 @@ enum filetype {
 	filetype_bmp,
 	filetype_png,
 	filetype_ext,
+	filetype_elf,
 	filetype_max,
 };
 
diff --git a/lib/Makefile b/lib/Makefile
index 635d52e..10465ee 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -37,3 +37,4 @@ obj-$(CONFIG_QSORT)	+= qsort.o
 obj-y			+= gui/
 obj-$(CONFIG_XYMODEM)	+= xymodem.o
 obj-y			+= unlink-recursive.o
+obj-$(CONFIG_KEXEC)	+= kexec/
diff --git a/lib/kexec/Makefile b/lib/kexec/Makefile
new file mode 100644
index 0000000..6d84858
--- /dev/null
+++ b/lib/kexec/Makefile
@@ -0,0 +1 @@
+obj-y	+= kexec-elf-exec.o kexec-elf.o kexec.o
diff --git a/lib/kexec/kexec-elf-exec.c b/lib/kexec/kexec-elf-exec.c
new file mode 100644
index 0000000..39c55be
--- /dev/null
+++ b/lib/kexec/kexec-elf-exec.c
@@ -0,0 +1,85 @@
+#include <linux/types.h>
+#include <common.h>
+
+#include <string.h>
+#include <stdio.h>
+#include <errno.h>
+#include <stdlib.h>
+#include <memory.h>
+#include <elf.h>
+#include "kexec.h"
+#include "kexec-elf.h"
+
+int build_elf_exec_info(const char *buf, off_t len, struct mem_ehdr *ehdr,
+				uint32_t flags)
+{
+	struct mem_phdr *phdr, *end_phdr;
+	int result;
+
+	result = build_elf_info(buf, len, ehdr, flags);
+	if (result < 0) {
+		return result;
+	}
+
+	if (ehdr->e_type != ET_EXEC) {
+		printf("Not ELF type ET_EXEC\n");
+		return -1;
+	}
+
+	if (!ehdr->e_phdr) {
+		printf("No ELF program header\n");
+		return -1;
+	}
+
+	end_phdr = &ehdr->e_phdr[ehdr->e_phnum];
+	for (phdr = ehdr->e_phdr; phdr != end_phdr; phdr++) {
+		/* Kexec does not support loading interpreters.
+		 * In addition this check keeps us from attempting
+		 * to kexec ordinay executables.
+		 */
+		if (phdr->p_type == PT_INTERP) {
+			printf("Requires an ELF interpreter\n");
+			return -1;
+		}
+	}
+
+	return 0;
+}
+
+int elf_exec_load(struct mem_ehdr *ehdr, struct kexec_info *info)
+{
+	int result;
+	size_t i;
+
+	if (!ehdr->e_phdr) {
+		printf("No program header?\n");
+		result = -1;
+		goto out;
+	}
+
+	/* Read in the PT_LOAD segments */
+	for (i = 0; i < ehdr->e_phnum; i++) {
+		struct mem_phdr *phdr;
+		size_t size;
+
+		phdr = &ehdr->e_phdr[i];
+
+		if (phdr->p_type != PT_LOAD) {
+			continue;
+		}
+
+		size = phdr->p_filesz;
+
+		if (size > phdr->p_memsz) {
+			size = phdr->p_memsz;
+		}
+
+		add_segment(info,
+			phdr->p_data, size,
+			phdr->p_paddr, phdr->p_memsz);
+	}
+
+	result = 0;
+ out:
+	return result;
+}
diff --git a/lib/kexec/kexec-elf.c b/lib/kexec/kexec-elf.c
new file mode 100644
index 0000000..975d85f
--- /dev/null
+++ b/lib/kexec/kexec-elf.c
@@ -0,0 +1,927 @@
+#include <linux/types.h>
+#include <common.h>
+
+/* FIXME: virt_to_phys() */
+#include <asm/io.h>
+/* FIXME: need UINT64_MAX */
+//#include <stdint.h>
+#include <string.h>
+#include <stdio.h>
+#include <errno.h>
+#include <stdlib.h>
+#include <malloc.h>
+#include <memory.h>
+#include "elf.h"
+#include "kexec.h"
+#include "kexec-elf.h"
+
+uint16_t elf16_to_cpu(const struct mem_ehdr *ehdr, uint16_t value)
+{
+	if (ehdr->ei_data == ELFDATA2LSB) {
+		value = le16_to_cpu(value);
+	} else if (ehdr->ei_data == ELFDATA2MSB) {
+		value = be16_to_cpu(value);
+	}
+
+	return value;
+}
+
+uint32_t elf32_to_cpu(const struct mem_ehdr *ehdr, uint32_t value)
+{
+	if (ehdr->ei_data == ELFDATA2LSB) {
+		value = le32_to_cpu(value);
+	} else if (ehdr->ei_data == ELFDATA2MSB) {
+		value = be32_to_cpu(value);
+	}
+
+	return value;
+}
+
+uint64_t elf64_to_cpu(const struct mem_ehdr *ehdr, uint64_t value)
+{
+	if (ehdr->ei_data == ELFDATA2LSB) {
+		value = le64_to_cpu(value);
+	} else if (ehdr->ei_data == ELFDATA2MSB) {
+		value = be64_to_cpu(value);
+	}
+
+	return value;
+}
+
+uint16_t cpu_to_elf16(const struct mem_ehdr *ehdr, uint16_t value)
+{
+	if (ehdr->ei_data == ELFDATA2LSB) {
+		value = cpu_to_le16(value);
+	} else if (ehdr->ei_data == ELFDATA2MSB) {
+		value = cpu_to_be16(value);
+	}
+
+	return value;
+}
+
+uint32_t cpu_to_elf32(const struct mem_ehdr *ehdr, uint32_t value)
+{
+	if (ehdr->ei_data == ELFDATA2LSB) {
+		value = cpu_to_le32(value);
+	} else if (ehdr->ei_data == ELFDATA2MSB) {
+		value = cpu_to_be32(value);
+	}
+
+	return value;
+}
+
+uint64_t cpu_to_elf64(const struct mem_ehdr *ehdr, uint64_t value)
+{
+	if (ehdr->ei_data == ELFDATA2LSB) {
+		value = cpu_to_le64(value);
+	} else if (ehdr->ei_data == ELFDATA2MSB) {
+		value = cpu_to_be64(value);
+	}
+
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
+
+	if (ehdr->ei_class == ELFCLASS32) {
+		max_addr = ELF32_MAX;
+	} else if (ehdr->ei_class == ELFCLASS64) {
+		max_addr = ELF64_MAX;
+	}
+
+	return max_addr;
+}
+
+static int build_mem_elf32_ehdr(const char *buf, off_t len, struct mem_ehdr *ehdr)
+{
+	Elf32_Ehdr lehdr;
+
+	if ((size_t)len < sizeof(lehdr)) {
+		printf("Buffer is too small to hold ELF header\n");
+		return -1;
+	}
+
+	memcpy(&lehdr, buf, sizeof(lehdr));
+	if (elf16_to_cpu(ehdr, lehdr.e_ehsize) != sizeof(Elf32_Ehdr)) {
+		printf("Bad ELF header size\n");
+		return -1;
+	}
+
+	if (elf32_to_cpu(ehdr, lehdr.e_entry) > UINT32_MAX) {
+		printf("ELF e_entry is too large\n");
+		return -1;
+	}
+
+	if (elf32_to_cpu(ehdr, lehdr.e_phoff) > UINT32_MAX) {
+		printf("ELF e_phoff is too large\n");
+		return -1;
+	}
+
+	if (elf32_to_cpu(ehdr, lehdr.e_shoff) > UINT32_MAX) {
+		printf("ELF e_shoff is too large\n");
+		return -1;
+	}
+
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
+		printf("ELF bad program header size\n");
+		return -1;
+	}
+
+	if ((ehdr->e_shnum > 0) &&
+		(elf16_to_cpu(ehdr, lehdr.e_shentsize) != sizeof(Elf32_Shdr)))
+	{
+		printf("ELF bad section header size\n");
+		return -1;
+	}
+
+	return 0;
+}
+
+static int build_mem_elf64_ehdr(const char *buf, off_t len, struct mem_ehdr *ehdr)
+{
+	Elf64_Ehdr lehdr;
+
+	if ((size_t)len < sizeof(lehdr)) {
+		printf("Buffer is too small to hold ELF header\n");
+
+		return -1;
+	}
+
+	memcpy(&lehdr, buf, sizeof(lehdr));
+	if (elf16_to_cpu(ehdr, lehdr.e_ehsize) != sizeof(Elf64_Ehdr)) {
+		printf("Bad ELF header size\n");
+		return -1;
+	}
+
+	if (elf32_to_cpu(ehdr, lehdr.e_entry) > UINT32_MAX) {
+		printf("ELF e_entry is too large\n");
+		return -1;
+	}
+
+	if (elf32_to_cpu(ehdr, lehdr.e_phoff) > UINT32_MAX) {
+		printf("ELF e_phoff is too large\n");
+		return -1;
+	}
+
+	if (elf32_to_cpu(ehdr, lehdr.e_shoff) > UINT32_MAX) {
+		printf("ELF e_shoff is too large\n");
+		return -1;
+	}
+
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
+		printf("ELF bad program header size\n");
+		return -1;
+	}
+
+	if ((ehdr->e_shnum > 0) &&
+		(elf16_to_cpu(ehdr, lehdr.e_shentsize) != sizeof(Elf64_Shdr)))
+	{
+		printf("Bad ELF section header size\n");
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
+
+	memset(ehdr, 0, sizeof(*ehdr));
+
+	if ((size_t)len < sizeof(e_ident)) {
+		printf("Buffer is too small to hold ELF e_ident\n");
+
+		return -1;
+	}
+
+	memcpy(e_ident, buf, sizeof(e_ident));
+
+	ehdr->ei_class   = e_ident[EI_CLASS];
+	ehdr->ei_data    = e_ident[EI_DATA];
+	if (	(ehdr->ei_class != ELFCLASS32) &&
+		(ehdr->ei_class != ELFCLASS64))
+	{
+		printf("Not a supported ELF class\n");
+		return -1;
+	}
+
+	if (	(ehdr->ei_data != ELFDATA2LSB) &&
+		(ehdr->ei_data != ELFDATA2MSB))
+	{
+		printf("Not a supported ELF data format\n");
+		return -1;
+	}
+
+	result = -1;
+	if (ehdr->ei_class == ELFCLASS32) {
+		result = build_mem_elf32_ehdr(buf, len, ehdr);
+	} else if (ehdr->ei_class == ELFCLASS64) {
+		result = build_mem_elf64_ehdr(buf, len, ehdr);
+	}
+
+	if (result < 0) {
+		return result;
+	}
+
+	if ((e_ident[EI_VERSION] != EV_CURRENT) ||
+		(ehdr->e_version != EV_CURRENT))
+	{
+		printf("Unknown ELF version\n");
+		return -1;
+	}
+
+	return 0;
+}
+
+static int build_mem_elf32_phdr(const char *buf, struct mem_ehdr *ehdr, int idx)
+{
+	struct mem_phdr *phdr;
+	const char *pbuf;
+	Elf32_Phdr lphdr;
+
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
+		printf("Program segment size out of range\n");
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
+
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
+		printf("Program segment size out of range\n");
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
+	} else if (ehdr->ei_class == ELFCLASS64) {
+		phdr_size = sizeof(Elf64_Phdr);
+	} else {
+		printf("Invalid ei_class?\n");
+		return -1;
+	}
+	phdr_size *= ehdr->e_phnum;
+
+#if 0
+	if ((uintmax_t)(ehdr->e_phoff + phdr_size) > (uintmax_t)len) {
+		/* The program header did not fit in the file buffer */
+		printf("ELF program headers truncated"
+			" have %ju bytes need %ju bytes\n",
+			(uintmax_t)len,
+			(uintmax_t)(ehdr->e_phoff + phdr_size));
+		return -1;
+	}
+#endif
+
+	/* Allocate the e_phdr array */
+	mem_phdr_size = sizeof(ehdr->e_phdr[0]) * ehdr->e_phnum;
+	ehdr->e_phdr = xmalloc(mem_phdr_size);
+
+	for (i = 0; i < ehdr->e_phnum; i++) {
+		struct mem_phdr *phdr;
+		int result;
+
+		result = -1;
+		if (ehdr->ei_class == ELFCLASS32) {
+			result = build_mem_elf32_phdr(buf, ehdr, i);
+
+		} else if (ehdr->ei_class == ELFCLASS64) {
+			result = build_mem_elf64_phdr(buf, ehdr, i);
+		}
+
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
+			printf("ELF segment not in file\n");
+			return -1;
+		}
+#endif
+		if ((phdr->p_paddr + phdr->p_memsz) < phdr->p_paddr) {
+			/* The memory address wraps */
+			printf("ELF address wrap around\n");
+			return -1;
+		}
+
+		/* Remember where the segment lives in the buffer */
+		phdr->p_data = buf + phdr->p_offset;
+	}
+
+	return 0;
+}
+
+static int build_mem_elf32_shdr(const char *buf, struct mem_ehdr *ehdr, int idx)
+{
+	struct mem_shdr *shdr;
+	const char *sbuf;
+	int size_ok;
+	Elf32_Shdr lshdr;
+
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
+		printf("Program section size out of range\n");
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
+
+	if (!size_ok) {
+		printf("Bad section header(%x) entsize: %lld\n",
+			shdr->sh_type, shdr->sh_entsize);
+		return -1;
+	}
+
+	return 0;
+}
+
+static int build_mem_elf64_shdr(const char *buf, struct mem_ehdr *ehdr, int idx)
+{
+	struct mem_shdr *shdr;
+	const char *sbuf;
+	int size_ok;
+	Elf64_Shdr lshdr;
+
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
+		printf("Program section size out of range\n");
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
+
+	if (!size_ok) {
+		printf("Bad section header(%x) entsize: %lld\n",
+			shdr->sh_type, shdr->sh_entsize);
+		return -1;
+	}
+
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
+	} else if (ehdr->ei_class == ELFCLASS64) {
+		shdr_size = sizeof(Elf64_Shdr);
+	} else {
+		printf("Invalid ei_class?\n");
+		return -1;
+	}
+	shdr_size *= ehdr->e_shnum;
+#if 0
+	if ((uintmax_t)(ehdr->e_shoff + shdr_size) > (uintmax_t)len) {
+		/* The section header did not fit in the file buffer */
+		printf("ELF section header does not fit in file\n");
+		return -1;
+	}
+#endif
+
+	/* Allocate the e_shdr array */
+	mem_shdr_size = sizeof(ehdr->e_shdr[0]) * ehdr->e_shnum;
+	ehdr->e_shdr = xmalloc(mem_shdr_size);
+
+	for (i = 0; i < ehdr->e_shnum; i++) {
+		struct mem_shdr *shdr;
+		int result;
+
+		result = -1;
+		if (ehdr->ei_class == ELFCLASS32) {
+			result = build_mem_elf32_shdr(buf, ehdr, i);
+		} else if (ehdr->ei_class == ELFCLASS64) {
+			result = build_mem_elf64_shdr(buf, ehdr, i);
+		}
+
+		if (result < 0) {
+			return result;
+		}
+
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
+			printf("ELF section %zd not in file\n", i);
+			return -1;
+		}
+#endif
+
+		if ((shdr->sh_addr + shdr->sh_size) < shdr->sh_addr) {
+			printf("ELF address wrap around\n");
+			return -1;
+		}
+
+		/* Remember where the section lives in the buffer */
+		shdr->sh_data = (unsigned char *)(buf + shdr->sh_offset);
+	}
+
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
+}
+
+static int build_mem_notes(struct mem_ehdr *ehdr)
+{
+	const unsigned char *note_start, *note_end, *note;
+	size_t note_size, i;
+
+	/* First find the note segment or section */
+	note_start = note_end = NULL;
+
+	for (i = 0; !note_start && (i < ehdr->e_phnum); i++) {
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
+
+	for (i = 0; !note_start && (i < ehdr->e_shnum); i++) {
+		struct mem_shdr *shdr = &ehdr->e_shdr[i];
+		if (shdr->sh_type == SHT_NOTE) {
+			note_start = shdr->sh_data;
+			note_end = note_start + shdr->sh_size;
+		}
+	}
+
+	if (!note_start) {
+		return 0;
+	}
+
+	/* Walk through and count the notes */
+	ehdr->e_notenum = 0;
+	for (note = note_start; note < note_end; note+= note_size) {
+		ElfNN_Nhdr hdr;
+		read_nhdr(ehdr, &hdr, note);
+		note_size  = sizeof(hdr);
+		note_size += (hdr.n_namesz + 3) & ~3;
+		note_size += (hdr.n_descsz + 3) & ~3;
+		ehdr->e_notenum += 1;
+	}
+
+	/* Now walk and normalize the notes */
+	ehdr->e_note = xmalloc(sizeof(*ehdr->e_note) * ehdr->e_notenum);
+	for (i = 0, note = note_start; note < note_end; note+= note_size, i++) {
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
+			printf("Warning: Elf Note name is not null "
+					"terminated\n");
+		}
+		ehdr->e_note[i].n_type = hdr.n_type;
+		ehdr->e_note[i].n_name = (char *)name;
+		ehdr->e_note[i].n_desc = desc;
+		ehdr->e_note[i].n_descsz = hdr.n_descsz;
+
+	}
+
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
+
+	result = build_mem_ehdr(buf, len, ehdr);
+	if (result < 0) {
+		return result;
+	}
+
+	if ((ehdr->e_phoff > 0) && (ehdr->e_phnum > 0)) {
+		result = build_mem_phdrs(buf, len, ehdr, flags);
+		if (result < 0) {
+			free_elf_info(ehdr);
+			return result;
+		}
+	}
+
+	if ((ehdr->e_shoff > 0) && (ehdr->e_shnum > 0)) {
+		result = build_mem_shdrs(buf, len, ehdr, flags);
+		if (result < 0) {
+			free_elf_info(ehdr);
+			return result;
+		}
+	}
+
+	result = build_mem_notes(ehdr);
+	if (result < 0) {
+		free_elf_info(ehdr);
+		return result;
+	}
+
+	return 0;
+}
+
+int check_room_for_elf(struct list_head *elf_segments)
+{
+	struct memory_bank *bank;
+	struct resource *res, *r;
+
+	list_for_each_entry(r, elf_segments, sibling) {
+		int got_bank;
+
+		got_bank = 0;
+		for_each_memory_bank(bank) {
+			resource_size_t start, end;
+
+			res = bank->res;
+
+			/* FIXME: no need in the future? */
+			start = virt_to_phys(res->start);
+			end = virt_to_phys(res->end);
+
+			if ((start <= r->start) && (end >= r->end)) {
+				got_bank = 1;
+				break;
+			}
+		}
+
+		if (!got_bank)
+			return -1;
+	}
+
+	return 0;
+}
+
+/* sort by size */
+static int compare(struct list_head *a, struct list_head *b)
+{
+	struct resource *ra = (struct resource *)list_entry(a, struct resource, sibling);
+	struct resource *rb = (struct resource *)list_entry(b, struct resource, sibling);
+	resource_size_t sa, sb;
+
+	sa = ra->end - ra->start;
+	sb = rb->end - rb->start;
+
+	if (sa > sb)
+		return -1;
+	if (sa < sb)
+		return 1;
+	return 0;
+}
+
+void list_add_used_region(struct list_head *new, struct list_head *head)
+{
+	struct list_head *pos, *insert = head;
+	struct resource *rb =
+		(struct resource *)list_entry(new, struct resource, sibling);
+	struct list_head *n;
+
+	/* rb --- new region */
+	list_for_each_safe(pos, n, head) {
+		struct resource *ra = (struct resource *)list_entry(pos, struct resource, sibling);
+
+		if (((rb->end >= ra->start) && (rb->end <= ra->end))
+			|| ((rb->start >= ra->start) && (rb->start <= ra->end))
+			|| ((rb->start >= ra->start) && (rb->end <= ra->end))
+			|| ((ra->start >= rb->start) && (ra->end <= rb->end))
+			|| (ra->start == rb->end + 1)
+			|| (rb->start == ra->end + 1)) {
+			rb->start = min(ra->start, rb->start);
+			rb->end = max(ra->end, rb->end);
+			rb->name = "join";
+			list_del(pos);
+		}
+	}
+
+	list_for_each(pos, head) {
+		struct resource *ra = (struct resource *)list_entry(pos, struct resource, sibling);
+
+		if (ra->start < rb->start)
+			continue;
+
+		insert = pos;
+		break;
+	}
+
+	list_add_tail(new, insert);
+}
+
+resource_size_t dcheck_res(struct list_head *elf_segments)
+{
+	struct memory_bank *bank;
+	struct resource *res, *r, *t;
+
+	LIST_HEAD(elf_relocate_banks);
+	LIST_HEAD(elf_relocate_banks_size_sorted);
+	LIST_HEAD(used_regions);
+
+	for_each_memory_bank(bank) {
+		res = bank->res;
+
+		list_for_each_entry(r, &res->children, sibling) {
+			resource_size_t start, end;
+
+			/* FIXME: no need in the future */
+			start = virt_to_phys(r->start);
+			end = virt_to_phys(r->end);
+
+			t = create_resource(r->name, start, end);
+			list_add_used_region(&t->sibling, &used_regions);
+		}
+	}
+
+	list_for_each_entry(r, elf_segments, sibling) {
+		t = create_resource(r->name, r->start, r->end);
+		list_add_used_region(&t->sibling, &used_regions);
+	}
+
+	for_each_memory_bank(bank) {
+		resource_size_t start;
+
+		res = bank->res;
+		res = create_resource("tmp", virt_to_phys(res->start),
+				virt_to_phys(res->end));
+		start = res->start;
+
+		list_for_each_entry(r, &used_regions, sibling) {
+			if (res->start > r->end)
+				continue;
+
+			if (res->end < r->start)
+				continue;
+
+			if (r->start - start) {
+				struct resource *t;
+
+				t = create_resource("ELF buffer", start, r->start - 1);
+				list_add_used_region(&t->sibling, &elf_relocate_banks);
+			}
+			start = r->end + 1;
+		}
+
+		if (res->end - start) {
+			struct resource *t;
+
+			t = create_resource("ELF buffer", start, res->end);
+			list_add_used_region(&t->sibling, &elf_relocate_banks);
+		}
+	}
+
+	list_for_each_entry(r, &elf_relocate_banks, sibling) {
+		struct resource *t;
+
+		t = create_resource("ELF buffer", r->start, r->end);
+		list_add_sort(&t->sibling,
+			&elf_relocate_banks_size_sorted, compare);
+	}
+
+	r = list_first_entry(&elf_relocate_banks_size_sorted, struct resource, sibling);
+
+	/* FIXME */
+	return r->start;
+}
diff --git a/lib/kexec/kexec-elf.h b/lib/kexec/kexec-elf.h
new file mode 100644
index 0000000..1e1c9e2
--- /dev/null
+++ b/lib/kexec/kexec-elf.h
@@ -0,0 +1,110 @@
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
+
+extern int elf_exec_load(struct mem_ehdr *ehdr, struct kexec_info *info);
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
+int check_room_for_elf(struct list_head *elf_segments);
+resource_size_t dcheck_res(struct list_head *elf_segments);
+void list_add_used_region(struct list_head *new, struct list_head *head);
+
+#endif /* KEXEC_ELF_H */
diff --git a/lib/kexec/kexec.c b/lib/kexec/kexec.c
new file mode 100644
index 0000000..f9e94b2
--- /dev/null
+++ b/lib/kexec/kexec.c
@@ -0,0 +1,251 @@
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
+#include <asm/io.h>
+
+#include <stdio.h>
+#include <stdarg.h>
+#include <string.h>
+#include <stdlib.h>
+#include <errno.h>
+#include <linux/stat.h>
+#include <fcntl.h>
+
+#include "config.h"
+
+#include "kexec.h"
+#include "kexec-elf.h"
+#include <fs.h>
+
+void die(char *fmt, ...)
+{
+}
+
+static void print_segments(struct kexec_info *info)
+{
+	int i;
+
+	printf("nr_segments = %d\n", info->nr_segments);
+	for (i = 0; i < info->nr_segments; i++) {
+		printf("segment[%d].buf   = %p\n", i,
+			info->segment[i].buf);
+		printf("segment[%d].bufsz = %zx\n", i,
+			info->segment[i].bufsz);
+		printf("segment[%d].mem   = %p\n", i,
+			info->segment[i].mem);
+		printf("segment[%d].memsz = %zx\n", i,
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
+			printf("Overlapping memory segments at %p\n",
+				end);
+			return -1;
+		}
+		end = ((char *)info->segment[i].mem) + info->segment[i].memsz;
+	}
+	return 0;
+}
+
+void add_segment_phys_virt(struct kexec_info *info,
+	const void *buf, size_t bufsz,
+	unsigned long base, size_t memsz, int phys)
+{
+	size_t size;
+	int pagesize;
+
+	if (bufsz > memsz) {
+		bufsz = memsz;
+	}
+
+	/* Forget empty segments */
+	if (memsz == 0) {
+		return;
+	}
+
+	/* Round memsz up to a multiple of pagesize */
+	//pagesize = getpagesize();
+	pagesize = 4096;
+	memsz = (memsz + (pagesize - 1)) & ~(pagesize - 1);
+
+	/* Verify base is pagesize aligned.
+	 * Finding a way to cope with this problem
+	 * is important but for now error so at least
+	 * we are not surprised by the code doing the wrong
+	 * thing.
+	 */
+	if (base & (pagesize -1)) {
+		die("Base address: %lx is not page aligned\n", base);
+	}
+
+	if (phys)
+		base = virt_to_phys((void *)base);
+
+	size = (info->nr_segments + 1) * sizeof(info->segment[0]);
+	info->segment = xrealloc(info->segment, size);
+	info->segment[info->nr_segments].buf   = buf;
+	info->segment[info->nr_segments].bufsz = bufsz;
+	info->segment[info->nr_segments].mem   = (void *)base;
+	info->segment[info->nr_segments].memsz = memsz;
+	info->nr_segments++;
+	if (info->nr_segments > KEXEC_MAX_SEGMENTS) {
+		printf("Warning: kernel segment limit reached. "
+			"This will likely fail\n");
+	}
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
+	memset(&info, 0, sizeof(info));
+	info.segment = NULL;
+	info.nr_segments = 0;
+	info.entry = NULL;
+	info.kexec_flags = kexec_flags;
+
+	result = 0;
+	/* slurp in the input kernel */
+	/* FIXME: add a decompresion routines insted of read_file() */
+	kernel_buf = read_file(kernel, &kernel_size);
+
+	for (i = 0; i < kexec_file_types; i++) {
+		if (kexec_file_type[i].probe(kernel_buf, kernel_size) >= 0)
+			break;
+	}
+
+	if (i == kexec_file_types) {
+		printf("Cannot determine the file type "
+				"of %s\n", kernel);
+		return -1;
+	}
+
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
+	result = kexec_file_type[i].load(kernel_buf, kernel_size, &info);
+	if (result < 0) {
+		switch (result) {
+		case EFAILED:
+		default:
+			printf("Cannot load %s\n", kernel);
+			break;
+		}
+		return result;
+	}
+
+	/* Verify all of the segments load to a valid location in memory */
+
+	/* Sort the segments and verify we don't have overlaps */
+	if (sort_segments(&info) < 0) {
+		return -1;
+	}
+
+	result = kexec_load(info.entry,
+		info.nr_segments, info.segment, info.kexec_flags);
+
+	if (result != 0) {
+		/* The load failed, print some debugging information */
+		printf("kexec_load failed: %s\n",
+			strerror(errno));
+		printf("entry       = %p flags = %lx\n",
+			info.entry, info.kexec_flags);
+		print_segments(&info);
+	}
+
+	return result;
+}
+
+#include <boot.h>
+#include <init.h>
+#include <binfmt.h>
+
+static int do_bootm_elf(struct image_data *data)
+{
+	my_load(data->os_file, 0);
+
+	/* unreachable(); */
+	return 0;
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
index 0000000..74e7ca9
--- /dev/null
+++ b/lib/kexec/kexec.h
@@ -0,0 +1,117 @@
+#ifndef KEXEC_H
+#define KEXEC_H
+
+#include <common.h>
+
+#include <stdio.h>
+#include <string.h>
+#include <asm/byteorder.h>
+
+#include "kexec-elf.h"
+
+/*
+ * Document some of the reasons why crashdump may fail, so we can give
+ * better error messages
+ */
+#define EFAILED		-1	/* default error code */
+
+struct kexec_segment {
+	const void *buf;
+	size_t bufsz;
+	const void *mem;
+	size_t memsz;
+};
+
+struct kexec_info {
+	struct kexec_segment *segment;
+	int nr_segments;
+	void *entry;
+	struct mem_ehdr rhdr;
+	unsigned long kexec_flags;
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
+int sort_segments(struct kexec_info *info);
+typedef int (probe_t)(const char *kernel_buf, off_t kernel_size);
+typedef int (load_t )(//int argc, char **argv,
+	const char *kernel_buf, off_t kernel_size,
+	struct kexec_info *info);
+struct kexec_file_type {
+	const char *name;
+	probe_t *probe;
+	load_t  *load;
+};
+
+extern struct kexec_file_type kexec_file_type[];
+extern int kexec_file_types;
+
+extern void die(char *fmt, ...);
+extern void add_segment(struct kexec_info *info,
+	const void *buf, size_t bufsz, unsigned long base, size_t memsz);
+extern void add_segment_phys_virt(struct kexec_info *info,
+	const void *buf, size_t bufsz, unsigned long base, size_t memsz,
+	int phys);
+extern unsigned long add_buffer(struct kexec_info *info,
+	const void *buf, unsigned long bufsz, unsigned long memsz,
+	unsigned long buf_align, unsigned long buf_min, unsigned long buf_max,
+	int buf_end);
+extern unsigned long add_buffer_phys_virt(struct kexec_info *info,
+	const void *buf, unsigned long bufsz, unsigned long memsz,
+	unsigned long buf_align, unsigned long buf_min, unsigned long buf_max,
+	int buf_end, int phys);
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
+#define KEXEC_MAX_SEGMENTS 16
+
+#endif /* KEXEC_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
