Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fIzVy-0002wc-8H
 for barebox@lists.infradead.org; Wed, 16 May 2018 16:43:29 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed, 16 May 2018 18:42:27 +0200
Message-Id: <20180516164233.27581-5-linux@rempel-privat.de>
In-Reply-To: <20180516164233.27581-1-linux@rempel-privat.de>
References: <20180516164233.27581-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 04/10] bootm: add kexec ELF support
To: barebox@lists.infradead.org

From: Antony Pavlov <antonynpavlov@gmail.com>

Also introduce reboot() for starting already loaded
via kexec ELF segments.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/Kconfig            |   7 +
 common/Kconfig              |   3 +
 include/bootm.h             |   3 +
 include/kexec.h             | 118 +++++++++
 lib/Makefile                |   1 +
 lib/kexec/Makefile          |   4 +
 lib/kexec/kexec-bootm-elf.c |  42 ++++
 lib/kexec/kexec-elf-exec.c  |  70 ++++++
 lib/kexec/kexec-elf.c       | 565 ++++++++++++++++++++++++++++++++++++++++++++
 lib/kexec/kexec.c           | 255 ++++++++++++++++++++
 10 files changed, 1068 insertions(+)
 create mode 100644 include/kexec.h
 create mode 100644 lib/kexec/Makefile
 create mode 100644 lib/kexec/kexec-bootm-elf.c
 create mode 100644 lib/kexec/kexec-elf-exec.c
 create mode 100644 lib/kexec/kexec-elf.c
 create mode 100644 lib/kexec/kexec.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 951a86963..a49928ad1 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -476,6 +476,13 @@ config CMD_SAVES
 
 	  Save S-Record file to serial line with offset OFFS and length LEN.
 
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
index b7000c4d7..d40c79dbc 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1218,3 +1218,6 @@ config HAS_DEBUG_LL
 config DDR_SPD
 	bool
 	select CRC16
+
+config HAS_KEXEC
+	bool
diff --git a/include/bootm.h b/include/bootm.h
index 62951d605..3a642fe70 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -72,6 +72,9 @@ struct image_data {
 
 	char *oftree_file;
 	char *oftree_part;
+	unsigned long oftree_address;
+
+	unsigned long cmdline_address;
 
 	const void *fit_kernel;
 	unsigned long fit_kernel_size;
diff --git a/include/kexec.h b/include/kexec.h
new file mode 100644
index 000000000..675658b38
--- /dev/null
+++ b/include/kexec.h
@@ -0,0 +1,118 @@
+#ifndef _LINUX_REBOOT_H
+#define _LINUX_REBOOT_H
+
+#include <bootm.h>
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
+	unsigned long kexec_flags;
+};
+
+typedef int (probe_t)(const char *kernel_buf, off_t kernel_size);
+typedef int (load_t)(const char *kernel_buf, off_t kernel_size,
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
+extern void add_segment(struct kexec_info *info,
+	const void *buf, size_t bufsz, unsigned long base, size_t memsz);
+extern void add_segment_phys_virt(struct kexec_info *info,
+	const void *buf, size_t bufsz, unsigned long base, size_t memsz,
+	int phys);
+
+extern int kexec_load(struct image_data *data, void *entry,
+		      unsigned long nr_segments,
+		      struct kexec_segment *segments);
+
+extern void kexec_arch(void *opaque);
+
+extern int kexec_load_bootm_data(struct image_data *data);
+
+/* These values match the ELF architecture values.
+ * Unless there is a good reason that should continue to be the case.
+ */
+#define KEXEC_ARCH_DEFAULT	(0 << 16)
+#define KEXEC_ARCH_386		(3 << 16)
+#define KEXEC_ARCH_X86_64	(62 << 16)
+#define KEXEC_ARCH_PPC		(20 << 16)
+#define KEXEC_ARCH_PPC64	(21 << 16)
+#define KEXEC_ARCH_IA_64	(50 << 16)
+#define KEXEC_ARCH_ARM		(40 << 16)
+#define KEXEC_ARCH_S390		(22 << 16)
+#define KEXEC_ARCH_SH		(42 << 16)
+#define KEXEC_ARCH_MIPS_LE	(10 << 16)
+#define KEXEC_ARCH_MIPS		(8 << 16)
+#define KEXEC_ARCH_CRIS		(76 << 16)
+
+#define KEXEC_MAX_SEGMENTS 16
+
+struct mem_phdr {
+	u64 p_paddr;
+	u64 p_vaddr;
+	u64 p_filesz;
+	u64 p_memsz;
+	u64 p_offset;
+	const char *p_data;
+	u32 p_type;
+	u32 p_flags;
+	u64 p_align;
+};
+
+struct mem_shdr {
+	u32 sh_name;
+	u32 sh_type;
+	u64 sh_flags;
+	u64 sh_addr;
+	u64 sh_offset;
+	u64 sh_size;
+	u32 sh_link;
+	u32 sh_info;
+	u64 sh_addralign;
+	u64 sh_entsize;
+	const unsigned char *sh_data;
+};
+
+struct mem_ehdr {
+	u32 ei_class;
+	u32 ei_data;
+	u32 e_type;
+	u32 e_machine;
+	u32 e_version;
+	u32 e_flags;
+	u32 e_phnum;
+	u32 e_shnum;
+	u32 e_shstrndx;
+	u64 e_entry;
+	u64 e_phoff;
+	u64 e_shoff;
+	struct mem_phdr *e_phdr;
+	struct mem_shdr *e_shdr;
+};
+
+void free_elf_info(struct mem_ehdr *ehdr);
+int build_elf_info(const char *buf, size_t len, struct mem_ehdr *ehdr);
+int build_elf_exec_info(const char *buf, off_t len, struct mem_ehdr *ehdr);
+
+int elf_exec_load(struct mem_ehdr *ehdr, struct kexec_info *info);
+
+unsigned long elf_max_addr(const struct mem_ehdr *ehdr);
+int check_room_for_elf(struct list_head *elf_segments);
+resource_size_t dcheck_res(struct list_head *elf_segments);
+void list_add_used_region(struct list_head *new, struct list_head *head);
+
+#endif /* _LINUX_REBOOT_H */
diff --git a/lib/Makefile b/lib/Makefile
index a7498288a..eebaf3488 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -65,3 +65,4 @@ obj-y			+= int_sqrt.o
 obj-y			+= parseopt.o
 obj-y			+= clz_ctz.o
 obj-$(CONFIG_CRC_CCITT) += crc-ccitt.o
+obj-$(CONFIG_KEXEC)	+= kexec/
diff --git a/lib/kexec/Makefile b/lib/kexec/Makefile
new file mode 100644
index 000000000..2f3dc1dd3
--- /dev/null
+++ b/lib/kexec/Makefile
@@ -0,0 +1,4 @@
+obj-y	+= kexec.o
+obj-y	+= kexec-elf.o
+obj-y	+= kexec-elf-exec.o
+obj-y	+= kexec-bootm-elf.o
diff --git a/lib/kexec/kexec-bootm-elf.c b/lib/kexec/kexec-bootm-elf.c
new file mode 100644
index 000000000..2530466a5
--- /dev/null
+++ b/lib/kexec/kexec-bootm-elf.c
@@ -0,0 +1,42 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+#include <binfmt.h>
+#include <bootm.h>
+#include <init.h>
+#include <kexec.h>
+
+static int do_bootm_elf(struct image_data *data)
+{
+	int ret;
+
+	ret = kexec_load_bootm_data(data);
+	if (IS_ERR_VALUE(ret))
+		return ret;
+	
+	kexec_arch(data);
+
+	return -ERESTARTSYS;
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
+	int ret;
+
+	ret = register_image_handler(&elf_handler);
+	if (IS_ERR_VALUE(ret))
+		return ret;
+	
+	return binfmt_register(&binfmt_elf_hook);
+}
+late_initcall(elf_register_image_handler);
diff --git a/lib/kexec/kexec-elf-exec.c b/lib/kexec/kexec-elf-exec.c
new file mode 100644
index 000000000..e910c4ea0
--- /dev/null
+++ b/lib/kexec/kexec-elf-exec.c
@@ -0,0 +1,70 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+#include <common.h>
+#include <kexec.h>
+
+int build_elf_exec_info(const char *buf, off_t len, struct mem_ehdr *ehdr)
+{
+	struct mem_phdr *phdr, *end_phdr;
+	int ret;
+
+	ret = build_elf_info(buf, len, ehdr);
+	if (IS_ERR_VALUE(ret))
+		return ret;
+
+	if (ehdr->e_type != ET_EXEC) {
+		pr_err("Not ELF type ET_EXEC\n");
+		return -ENOEXEC;
+	}
+
+	if (!ehdr->e_phdr) {
+		pr_err("No ELF program header\n");
+		return -ENOEXEC;
+	}
+
+	end_phdr = &ehdr->e_phdr[ehdr->e_phnum];
+	for (phdr = ehdr->e_phdr; phdr != end_phdr; phdr++) {
+		/* Kexec does not support loading interpreters.
+		 * In addition this check keeps us from attempting
+		 * to kexec ordinay executables.
+		 */
+		if (phdr->p_type == PT_INTERP) {
+			pr_err("Requires an ELF interpreter\n");
+			return -ENOEXEC;
+		}
+	}
+
+	return 0;
+}
+
+int elf_exec_load(struct mem_ehdr *ehdr, struct kexec_info *info)
+{
+	size_t i;
+
+	if (!ehdr->e_phdr) {
+		pr_err("No program header?\n");
+		return -ENOENT;
+	}
+
+	/* Read in the PT_LOAD segments */
+	for (i = 0; i < ehdr->e_phnum; i++) {
+		struct mem_phdr *phdr;
+		size_t size;
+
+		phdr = &ehdr->e_phdr[i];
+
+		if (phdr->p_type != PT_LOAD)
+			continue;
+
+		size = phdr->p_filesz;
+
+		if (size > phdr->p_memsz)
+			size = phdr->p_memsz;
+
+		add_segment(info,
+			phdr->p_data, size,
+			phdr->p_paddr, phdr->p_memsz);
+	}
+
+	return 0;
+}
diff --git a/lib/kexec/kexec-elf.c b/lib/kexec/kexec-elf.c
new file mode 100644
index 000000000..a66ac4c66
--- /dev/null
+++ b/lib/kexec/kexec-elf.c
@@ -0,0 +1,565 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+#include <asm/io.h>
+#include <common.h>
+#include <kexec.h>
+#include <memory.h>
+
+static u16 elf16_to_cpu(const struct mem_ehdr *ehdr, u16 val)
+{
+	return ehdr->ei_data == ELFDATA2LSB ? le16_to_cpu(val)
+		   : be16_to_cpu(val);
+}
+
+static u32 elf32_to_cpu(const struct mem_ehdr *ehdr, u32 val)
+{
+	return ehdr->ei_data == ELFDATA2LSB ? le32_to_cpu(val)
+		   : be32_to_cpu(val);
+}
+
+static u64 elf64_to_cpu(const struct mem_ehdr *ehdr, u64 val)
+{
+	return ehdr->ei_data == ELFDATA2LSB ? le64_to_cpu(val)
+		   : be64_to_cpu(val);
+}
+
+static int build_mem_elf32_ehdr(const void *buf, size_t len,
+				struct mem_ehdr *ehdr)
+{
+	const Elf32_Ehdr *lehdr = buf;
+
+	if (len < sizeof(Elf32_Ehdr)) {
+		pr_err("Buffer is too small to hold ELF header\n");
+		return -ENOEXEC;
+	}
+
+	if (elf16_to_cpu(ehdr, lehdr->e_ehsize) != sizeof(Elf32_Ehdr)) {
+		pr_err("Bad ELF header size\n");
+		return -ENOEXEC;
+	}
+
+	ehdr->e_type      = elf16_to_cpu(ehdr, lehdr->e_type);
+	ehdr->e_machine   = elf16_to_cpu(ehdr, lehdr->e_machine);
+	ehdr->e_version   = elf32_to_cpu(ehdr, lehdr->e_version);
+	ehdr->e_entry     = elf32_to_cpu(ehdr, lehdr->e_entry);
+	ehdr->e_phoff     = elf32_to_cpu(ehdr, lehdr->e_phoff);
+	ehdr->e_shoff     = elf32_to_cpu(ehdr, lehdr->e_shoff);
+	ehdr->e_flags     = elf32_to_cpu(ehdr, lehdr->e_flags);
+	ehdr->e_phnum     = elf16_to_cpu(ehdr, lehdr->e_phnum);
+	ehdr->e_shnum     = elf16_to_cpu(ehdr, lehdr->e_shnum);
+	ehdr->e_shstrndx  = elf16_to_cpu(ehdr, lehdr->e_shstrndx);
+
+	if ((ehdr->e_phnum > 0) &&
+		(elf16_to_cpu(ehdr, lehdr->e_phentsize) != sizeof(Elf32_Phdr))) {
+		pr_err("ELF bad program header size\n");
+		return -ENOEXEC;
+	}
+
+	if ((ehdr->e_shnum > 0) &&
+		(elf16_to_cpu(ehdr, lehdr->e_shentsize) != sizeof(Elf32_Shdr))) {
+		pr_err("ELF bad section header size\n");
+		return -ENOEXEC;
+	}
+
+	return 0;
+}
+
+static int build_mem_elf64_ehdr(const void *buf, size_t len,
+				struct mem_ehdr *ehdr)
+{
+	const Elf64_Ehdr *lehdr = buf;
+
+	if (len < sizeof(Elf64_Ehdr)) {
+		pr_err("Buffer is too small to hold ELF header\n");
+		return -ENOEXEC;
+	}
+
+	if (elf16_to_cpu(ehdr, lehdr->e_ehsize) != sizeof(Elf64_Ehdr)) {
+		pr_err("Bad ELF header size\n");
+		return -ENOEXEC;
+	}
+
+	ehdr->e_type      = elf16_to_cpu(ehdr, lehdr->e_type);
+	ehdr->e_machine   = elf16_to_cpu(ehdr, lehdr->e_machine);
+	ehdr->e_version   = elf32_to_cpu(ehdr, lehdr->e_version);
+	ehdr->e_entry     = elf64_to_cpu(ehdr, lehdr->e_entry);
+	ehdr->e_phoff     = elf64_to_cpu(ehdr, lehdr->e_phoff);
+	ehdr->e_shoff     = elf64_to_cpu(ehdr, lehdr->e_shoff);
+	ehdr->e_flags     = elf32_to_cpu(ehdr, lehdr->e_flags);
+	ehdr->e_phnum     = elf16_to_cpu(ehdr, lehdr->e_phnum);
+	ehdr->e_shnum     = elf16_to_cpu(ehdr, lehdr->e_shnum);
+	ehdr->e_shstrndx  = elf16_to_cpu(ehdr, lehdr->e_shstrndx);
+
+	if ((ehdr->e_phnum > 0) &&
+		(elf16_to_cpu(ehdr, lehdr->e_phentsize) != sizeof(Elf64_Phdr))) {
+		pr_err("ELF bad program header size\n");
+		return -ENOEXEC;
+	}
+
+	if ((ehdr->e_shnum > 0) &&
+		(elf16_to_cpu(ehdr, lehdr->e_shentsize) != sizeof(Elf64_Shdr))) {
+		pr_err("ELF bad section header size\n");
+		return -ENOEXEC;
+	}
+
+	return 0;
+}
+
+static int build_mem_ehdr(const void *buf, size_t len, struct mem_ehdr *ehdr)
+{
+	unsigned char e_ident[EI_NIDENT];
+	int ret;
+
+	memset(ehdr, 0, sizeof(*ehdr));
+
+	if (len < sizeof(e_ident)) {
+		pr_err("Buffer is too small to hold ELF e_ident\n");
+		return -ENOEXEC;
+	}
+
+	memcpy(e_ident, buf, sizeof(e_ident));
+
+	ehdr->ei_class   = e_ident[EI_CLASS];
+	ehdr->ei_data    = e_ident[EI_DATA];
+	if ((ehdr->ei_class != ELFCLASS32) &&
+		(ehdr->ei_class != ELFCLASS64)) {
+		pr_err("Not a supported ELF class\n");
+		return -ENOEXEC;
+	}
+
+	if ((ehdr->ei_data != ELFDATA2LSB) &&
+		(ehdr->ei_data != ELFDATA2MSB)) {
+		pr_err("Not a supported ELF data format\n");
+		return -ENOEXEC;
+	}
+
+	if (ehdr->ei_class == ELFCLASS32)
+		ret = build_mem_elf32_ehdr(buf, len, ehdr);
+	else
+		ret = build_mem_elf64_ehdr(buf, len, ehdr);
+
+	if (IS_ERR_VALUE(ret))
+		return ret;
+
+	if ((e_ident[EI_VERSION] != EV_CURRENT) ||
+		(ehdr->e_version != EV_CURRENT)) {
+		pr_err("Unknown ELF version\n");
+		return -ENOEXEC;
+	}
+
+	return 0;
+}
+
+static void build_mem_elf32_phdr(const char *buf, struct mem_ehdr *ehdr, int idx)
+{
+	struct mem_phdr *phdr;
+	const Elf32_Phdr *lphdr;
+
+	lphdr = (const Elf32_Phdr *)(buf + ehdr->e_phoff + (idx * sizeof(Elf32_Phdr)));
+	phdr = &ehdr->e_phdr[idx];
+
+	phdr->p_type   = elf32_to_cpu(ehdr, lphdr->p_type);
+	phdr->p_paddr  = elf32_to_cpu(ehdr, lphdr->p_paddr);
+	phdr->p_vaddr  = elf32_to_cpu(ehdr, lphdr->p_vaddr);
+	phdr->p_filesz = elf32_to_cpu(ehdr, lphdr->p_filesz);
+	phdr->p_memsz  = elf32_to_cpu(ehdr, lphdr->p_memsz);
+	phdr->p_offset = elf32_to_cpu(ehdr, lphdr->p_offset);
+	phdr->p_flags  = elf32_to_cpu(ehdr, lphdr->p_flags);
+	phdr->p_align  = elf32_to_cpu(ehdr, lphdr->p_align);
+}
+
+static void build_mem_elf64_phdr(const char *buf, struct mem_ehdr *ehdr, int idx)
+{
+	struct mem_phdr *phdr;
+	const Elf64_Phdr *lphdr;
+
+	lphdr = (const Elf64_Phdr *)(buf + ehdr->e_phoff + (idx * sizeof(Elf64_Phdr)));
+	phdr = &ehdr->e_phdr[idx];
+
+	phdr->p_type   = elf32_to_cpu(ehdr, lphdr->p_type);
+	phdr->p_paddr  = elf64_to_cpu(ehdr, lphdr->p_paddr);
+	phdr->p_vaddr  = elf64_to_cpu(ehdr, lphdr->p_vaddr);
+	phdr->p_filesz = elf64_to_cpu(ehdr, lphdr->p_filesz);
+	phdr->p_memsz  = elf64_to_cpu(ehdr, lphdr->p_memsz);
+	phdr->p_offset = elf64_to_cpu(ehdr, lphdr->p_offset);
+	phdr->p_flags  = elf32_to_cpu(ehdr, lphdr->p_flags);
+	phdr->p_align  = elf64_to_cpu(ehdr, lphdr->p_align);
+}
+
+static int build_mem_phdrs(const char *buf, struct mem_ehdr *ehdr)
+{
+	size_t mem_phdr_size, i;
+
+	/* e_phnum is at most 65535 so calculating
+	 * the size of the program header cannot overflow.
+	 */
+
+	/* Allocate the e_phdr array */
+	mem_phdr_size = sizeof(ehdr->e_phdr[0]) * ehdr->e_phnum;
+	ehdr->e_phdr = xmalloc(mem_phdr_size);
+
+	for (i = 0; i < ehdr->e_phnum; i++) {
+		struct mem_phdr *phdr;
+
+		if (ehdr->ei_class == ELFCLASS32)
+			build_mem_elf32_phdr(buf, ehdr, i);
+		else
+			build_mem_elf64_phdr(buf, ehdr, i);
+
+		/* Check the program headers to be certain
+		 * they are safe to use.
+		 */
+		phdr = &ehdr->e_phdr[i];
+		if ((phdr->p_paddr + phdr->p_memsz) < phdr->p_paddr) {
+			/* The memory address wraps */
+			pr_err("ELF address wrap around\n");
+			return -ENOEXEC;
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
+	int size_ok;
+	const Elf32_Shdr *lshdr;
+
+	lshdr = (const Elf32_Shdr *)(buf + ehdr->e_shoff + (idx * sizeof(Elf32_Shdr)));
+	shdr = &ehdr->e_shdr[idx];
+	shdr->sh_name      = elf32_to_cpu(ehdr, lshdr->sh_name);
+	shdr->sh_type      = elf32_to_cpu(ehdr, lshdr->sh_type);
+	shdr->sh_flags     = elf32_to_cpu(ehdr, lshdr->sh_flags);
+	shdr->sh_addr      = elf32_to_cpu(ehdr, lshdr->sh_addr);
+	shdr->sh_offset    = elf32_to_cpu(ehdr, lshdr->sh_offset);
+	shdr->sh_size      = elf32_to_cpu(ehdr, lshdr->sh_size);
+	shdr->sh_link      = elf32_to_cpu(ehdr, lshdr->sh_link);
+	shdr->sh_info      = elf32_to_cpu(ehdr, lshdr->sh_info);
+	shdr->sh_addralign = elf32_to_cpu(ehdr, lshdr->sh_addralign);
+	shdr->sh_entsize   = elf32_to_cpu(ehdr, lshdr->sh_entsize);
+
+	/* Now verify sh_entsize */
+	size_ok = 0;
+	switch (shdr->sh_type) {
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
+	if (size_ok)
+		return 0;
+
+	pr_err("Bad section header(%x) entsize: %lld\n",
+		shdr->sh_type, shdr->sh_entsize);
+	return -ENOEXEC;
+}
+
+static int build_mem_elf64_shdr(const char *buf, struct mem_ehdr *ehdr, int idx)
+{
+	struct mem_shdr *shdr;
+	int size_ok;
+	const Elf64_Shdr *lshdr;
+
+	lshdr = (const Elf64_Shdr *)(buf + ehdr->e_shoff + (idx * sizeof(Elf64_Shdr)));
+	shdr = &ehdr->e_shdr[idx];
+	shdr->sh_name      = elf32_to_cpu(ehdr, lshdr->sh_name);
+	shdr->sh_type      = elf32_to_cpu(ehdr, lshdr->sh_type);
+	shdr->sh_flags     = elf64_to_cpu(ehdr, lshdr->sh_flags);
+	shdr->sh_addr      = elf64_to_cpu(ehdr, lshdr->sh_addr);
+	shdr->sh_offset    = elf64_to_cpu(ehdr, lshdr->sh_offset);
+	shdr->sh_size      = elf64_to_cpu(ehdr, lshdr->sh_size);
+	shdr->sh_link      = elf32_to_cpu(ehdr, lshdr->sh_link);
+	shdr->sh_info      = elf32_to_cpu(ehdr, lshdr->sh_info);
+	shdr->sh_addralign = elf64_to_cpu(ehdr, lshdr->sh_addralign);
+	shdr->sh_entsize   = elf64_to_cpu(ehdr, lshdr->sh_entsize);
+
+	/* Now verify sh_entsize */
+	size_ok = 0;
+	switch (shdr->sh_type) {
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
+	if (size_ok)
+		return 0;
+
+	pr_err("Bad section header(%x) entsize: %lld\n",
+		shdr->sh_type, shdr->sh_entsize);
+	return -ENOEXEC;
+}
+
+static int build_mem_shdrs(const void *buf, struct mem_ehdr *ehdr)
+{
+	size_t mem_shdr_size, i;
+
+	/* Allocate the e_shdr array */
+	mem_shdr_size = sizeof(ehdr->e_shdr[0]) * ehdr->e_shnum;
+	ehdr->e_shdr = xmalloc(mem_shdr_size);
+
+	for (i = 0; i < ehdr->e_shnum; i++) {
+		struct mem_shdr *shdr;
+		int ret;
+
+		if (ehdr->ei_class == ELFCLASS32)
+			ret = build_mem_elf32_shdr(buf, ehdr, i);
+		else
+			ret = build_mem_elf64_shdr(buf, ehdr, i);
+
+		if (IS_ERR_VALUE(ret))
+			return ret;
+
+		/* Check the section headers to be certain
+		 * they are safe to use.
+		 */
+		shdr = &ehdr->e_shdr[i];
+		if ((shdr->sh_addr + shdr->sh_size) < shdr->sh_addr) {
+			pr_err("ELF address wrap around\n");
+			return -ENOEXEC;
+		}
+
+		/* Remember where the section lives in the buffer */
+		shdr->sh_data = (unsigned char *)(buf + shdr->sh_offset);
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
+int build_elf_info(const char *buf, size_t len, struct mem_ehdr *ehdr)
+{
+	int ret;
+
+	ret = build_mem_ehdr(buf, len, ehdr);
+	if (IS_ERR_VALUE(ret))
+		return ret;
+
+	if ((ehdr->e_phoff > 0) && (ehdr->e_phnum > 0)) {
+		ret = build_mem_phdrs(buf, ehdr);
+		if (IS_ERR_VALUE(ret)) {
+			free_elf_info(ehdr);
+			return ret;
+		}
+	}
+
+	if ((ehdr->e_shoff > 0) && (ehdr->e_shnum > 0)) {
+		ret = build_mem_shdrs(buf, ehdr);
+		if (IS_ERR_VALUE(ret)) {
+			free_elf_info(ehdr);
+			return ret;
+		}
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
+			unsigned long start, end;
+
+			res = bank->res;
+
+			start = virt_to_phys((const void *)res->start);
+			end = virt_to_phys((const void *)res->end);
+
+			if ((start <= r->start) && (end >= r->end)) {
+				got_bank = 1;
+				break;
+			}
+		}
+
+		if (!got_bank)
+			return -ENOSPC;
+	}
+
+	return 0;
+}
+
+/* sort by size */
+static int compare(struct list_head *a, struct list_head *b)
+{
+	struct resource *ra = (struct resource *)list_entry(a,
+					struct resource, sibling);
+	struct resource *rb = (struct resource *)list_entry(b,
+					struct resource, sibling);
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
+		struct resource *ra = (struct resource *)list_entry(pos,
+						struct resource, sibling);
+
+		if (resource_overlaps(ra, rb)) {
+			rb->start = min(ra->start, rb->start);
+			rb->end = max(ra->end, rb->end);
+			rb->name = "join";
+			list_del(pos);
+		}
+	}
+
+	list_for_each(pos, head) {
+		struct resource *ra = (struct resource *)list_entry(pos,
+						struct resource, sibling);
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
+			t = create_resource("tmp",
+				virt_to_phys((void *)r->start),
+				virt_to_phys((void *)r->end));
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
+		res = create_resource("tmp",
+				virt_to_phys((void *)res->start),
+				virt_to_phys((void *)res->end));
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
+				t = create_resource("ELF buffer", start,
+						    r->start - 1);
+				list_add_used_region(&t->sibling,
+						     &elf_relocate_banks);
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
+	r = list_first_entry(&elf_relocate_banks_size_sorted, struct resource,
+			     sibling);
+
+	return r->start;
+}
diff --git a/lib/kexec/kexec.c b/lib/kexec/kexec.c
new file mode 100644
index 000000000..585371c65
--- /dev/null
+++ b/lib/kexec/kexec.c
@@ -0,0 +1,255 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * kexec: Linux boots Linux
+ *
+ * Copyright (C) 2003-2005  Eric Biederman (ebiederm@xmission.com)
+ * Modified (2007-05-15) by Francesco Chiechi to rudely handle mips platform
+ *
+ */
+
+#include <asm/io.h>
+#include <boot.h>
+#include <common.h>
+#include <environment.h>
+#include <kexec.h>
+#include <libfile.h>
+
+static int sort_segments(struct kexec_info *info)
+{
+	int i, j;
+	void *end = NULL;
+
+	/* Do a stupid insertion sort... */
+	for (i = 0; i < info->nr_segments; i++) {
+		int tidx;
+		struct kexec_segment temp;
+		tidx = i;
+		for (j = i + 1; j < info->nr_segments; j++) {
+			if (info->segment[j].mem < info->segment[tidx].mem)
+				tidx = j;
+		}
+		if (tidx != i) {
+			temp = info->segment[tidx];
+			info->segment[tidx] = info->segment[i];
+			info->segment[i] = temp;
+		}
+	}
+
+	/* Now see if any of the segments overlap */
+	for (i = 0; i < info->nr_segments; i++) {
+		if (end > info->segment[i].mem) {
+			pr_err("Overlapping memory segments at %p\n",
+				end);
+			return -EBUSY;
+		}
+		end = ((char *)info->segment[i].mem) + info->segment[i].memsz;
+	}
+
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
+	if (bufsz > memsz)
+		bufsz = memsz;
+
+	/* Forget empty segments */
+	if (!memsz)
+		return;
+
+	/* Round memsz up to a multiple of pagesize */
+	pagesize = 4096;
+	memsz = (memsz + (pagesize - 1)) & ~(pagesize - 1);
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
+		pr_warn("Warning: kernel segment limit reached. "
+			"This will likely fail\n");
+	}
+}
+
+static int kexec_load_one_file(struct kexec_info *info, char *fname)
+{
+	char *buf;
+	size_t fsize;
+	int i = 0;
+
+	buf = read_file(fname, &fsize);
+
+	/* FIXME: check buf */
+
+	for (i = 0; i < kexec_file_types; i++) {
+		if (kexec_file_type[i].probe(buf, fsize) >= 0)
+			break;
+	}
+
+	if (i == kexec_file_types) {
+		pr_err("Cannot determine the file type "
+				"of %s\n", fname);
+		return -ENOEXEC;
+	}
+
+	return kexec_file_type[i].load(buf, fsize, info);
+}
+
+static int kexec_load_binary_file(struct kexec_info *info, char *fname,
+					size_t *fsize, unsigned long base)
+{
+	char *buf;
+
+	buf = read_file(fname, fsize);
+	if (!buf)
+		return -ENOENT;
+
+	add_segment(info, buf, *fsize, base, *fsize);
+
+	return 0;
+}
+
+static void print_segments(struct kexec_info *info)
+{
+	int i;
+
+	pr_info("print_segments\n");
+	for (i = 0; i < info->nr_segments; i++) {
+		struct kexec_segment *seg = &info->segment[i];
+
+		pr_info("  %d. buf=%#08p bufsz=%#lx mem=%#08p memsz=%#lx\n", i,
+			seg->buf, seg->bufsz, seg->mem, seg->memsz);
+	}
+}
+
+static unsigned long find_unused_base(struct kexec_info *info, int *padded)
+{
+	unsigned long base = 0;
+
+	if (info->nr_segments) {
+		int i = info->nr_segments - 1;
+		struct kexec_segment *seg = &info->segment[i];
+
+		base = (unsigned long)seg->mem + seg->memsz;
+	}
+
+	if (!*padded) {
+		/*
+		 * Pad it; the kernel scribbles over memory
+		 * beyond its load address.
+		 * see grub-core/loader/mips/linux.c
+		 */
+		base += 0x100000;
+		*padded = 1;
+	}
+
+	return base;
+}
+
+int kexec_load_bootm_data(struct image_data *data)
+{
+	int ret;
+	struct kexec_info info;
+	char *cmdline;
+	const char *t;
+	size_t tlen;
+	size_t fsize;
+	char initrd_cmdline[40];
+	int padded = 0;
+
+	memset(&info, 0, sizeof(info));
+
+	initrd_cmdline[0] = 0;
+
+	ret = kexec_load_one_file(&info, data->os_file);
+	if (IS_ERR_VALUE(ret)) {
+		pr_err("Cannot load %s\n", data->os_file);
+		return ret;
+	}
+
+	if (data->oftree_file) {
+		unsigned long base = find_unused_base(&info, &padded);
+
+		base = ALIGN(base, 8);
+
+		ret = kexec_load_binary_file(&info,
+				data->oftree_file, &fsize, base);
+		if (IS_ERR_VALUE(ret)) {
+			pr_err("Cannot load %s\n", data->oftree_file);
+			return ret;
+		}
+		data->oftree_address = base;
+	}
+
+	if (data->initrd_file) {
+		unsigned long base = find_unused_base(&info, &padded);
+
+		/*
+		 * initrd start must be page aligned,
+		 * max page size for mips is 64k.
+		 */
+		base = ALIGN(base, 0x10000);
+
+		ret = kexec_load_binary_file(&info,
+				data->initrd_file, &fsize, base);
+		if (IS_ERR_VALUE(ret)) {
+			pr_err("Cannot load %s\n", data->initrd_file);
+			return ret;
+		}
+		data->initrd_address = base;
+
+		if (bootm_verbose(data)) {
+			pr_info("initrd: rd_start=0x%08x rd_size=0x%08x\n",
+					data->initrd_address, fsize);
+		}
+		snprintf(initrd_cmdline, sizeof(initrd_cmdline),
+				" rd_start=0x%08x rd_size=0x%08x",
+					phys_to_virt(data->initrd_address),
+					fsize);
+	}
+
+	t = linux_bootargs_get();
+	if (t)
+		tlen = strlen(t);
+	else
+		tlen = 0;
+
+	cmdline = xzalloc(tlen + sizeof(initrd_cmdline));
+	if (tlen)
+		memcpy(cmdline, t, tlen);
+
+	memcpy(cmdline + tlen, initrd_cmdline, sizeof(initrd_cmdline));
+
+	if (cmdline) {
+		int cmdlinelen = strlen(cmdline) + 1;
+		unsigned long base = find_unused_base(&info, &padded);
+
+		base = ALIGN(base, 8);
+
+		add_segment(&info, cmdline, cmdlinelen, base, cmdlinelen);
+		data->cmdline_address = base;
+	}
+
+	if (bootm_verbose(data))
+		print_segments(&info);
+
+	/* Verify all of the segments load to a valid location in memory */
+
+	/* Sort the segments and verify we don't have overlaps */
+	ret = sort_segments(&info);
+	if (IS_ERR_VALUE(ret))
+		return ret;
+
+	return kexec_load(data, info.entry, info.nr_segments, info.segment);
+}
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
