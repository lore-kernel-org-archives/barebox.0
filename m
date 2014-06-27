Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-f48.google.com ([209.85.220.48])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X0c8Z-00068H-OM
 for barebox@lists.infradead.org; Fri, 27 Jun 2014 19:48:45 +0000
Received: by mail-pa0-f48.google.com with SMTP id et14so4961878pad.35
 for <barebox@lists.infradead.org>; Fri, 27 Jun 2014 12:48:21 -0700 (PDT)
From: Owen Kirby <osk@exegin.com>
Date: Fri, 27 Jun 2014 12:48:13 -0700
Message-Id: <1403898493-14064-1-git-send-email-osk@exegin.com>
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
Subject: [PATCH v2] Support for booting ELF images.
To: barebox@lists.infradead.org
Cc: Owen Kirby <osk@exegin.com>

This is a simplified version of the previous patch that adds
a binfmt handler for loading and executing ELF images.

Signed-off-by: Owen Kirby <osk@exegin.com>
---
 common/Kconfig     |    6 ++
 common/Makefile    |    1 +
 common/elf.c       |  218 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 common/filetype.c  |    3 +
 include/filetype.h |    1 +
 5 files changed, 229 insertions(+)
 create mode 100644 common/elf.c

diff --git a/common/Kconfig b/common/Kconfig
index 1afee93..9bbf58a 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -268,6 +268,12 @@ config RELOCATABLE
 	  allowing it to relocate to the end of the available RAM. This
 	  way you have the whole memory in a single piece.
 
+config ELF
+	bool "execute ELF images"
+	help
+	  This option enables support for loading and executing applications
+	  in the ELF file format.
+
 config PANIC_HANG
 	bool "hang the system in case of a fatal error"
 	help
diff --git a/common/Makefile b/common/Makefile
index 204241c..9decc96 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -21,6 +21,7 @@ obj-$(CONFIG_CONSOLE_FULL)	+= console.o
 obj-$(CONFIG_CONSOLE_SIMPLE)	+= console_simple.o
 obj-$(CONFIG_DIGEST)		+= digest.o
 obj-$(CONFIG_DDR_SPD)		+= ddr_spd.o
+obj-$(CONFIG_ELF)		+= elf.o
 obj-$(CONFIG_ENV_HANDLING)	+= environment.o
 obj-$(CONFIG_ENVIRONMENT_VARIABLES) += env.o
 obj-$(CONFIG_FILETYPE)		+= filetype.o
diff --git a/common/elf.c b/common/elf.c
new file mode 100644
index 0000000..f7ec03f
--- /dev/null
+++ b/common/elf.c
@@ -0,0 +1,218 @@
+/*
+ * elf.c - ELF handling code
+ *
+ * Copyright (c) 2014 Owen Kirby <osk@exegin.com>, Exegin Technologies Limited
+ *
+ * partly based on U-Boot ELF code.
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
+ */
+#include <common.h>
+#include <malloc.h>
+#include <fcntl.h>
+#include <fs.h>
+#include <binfmt.h>
+#include <init.h>
+#include <elf.h>
+
+static void *elf_load_header(int fd)
+{
+	unsigned char id[EI_NIDENT];
+
+	if ((lseek(fd, 0, SEEK_SET) < 0) || (read(fd, id, sizeof(id)) < 0)) {
+		printf("could not read ident header: %s\n", errno_str());
+		return NULL;
+	}
+	/* Ensure we find the ELF magic number. */
+	if (strncmp(id, ELFMAG, SELFMAG)) {
+		printf("Bad Magic Number\n");
+		return NULL;
+	}
+
+	/* Read the ELF32 header. */
+	if (id[EI_CLASS] == ELFCLASS32) {
+		Elf32_Ehdr *hdr = xzalloc(sizeof(Elf32_Ehdr));
+		memcpy(hdr->e_ident, id, EI_NIDENT);
+		if (read(fd, &hdr->e_type, sizeof(*hdr) - EI_NIDENT) >= 0)
+			return hdr;
+		printf("could not read ELF header: %s\n", errno_str());
+		free(hdr);
+		return NULL;
+	}
+	if (id[EI_CLASS] == ELFCLASS64) {
+		Elf64_Ehdr *hdr = xzalloc(sizeof(Elf64_Ehdr));
+		memcpy(hdr->e_ident, id, EI_NIDENT);
+		if (read(fd, &hdr->e_type, sizeof(*hdr) - EI_NIDENT) >= 0)
+			return hdr;
+		printf("could not read ELF header: %s\n", errno_str());
+		free(hdr);
+		return NULL;
+	}
+	printf("Unknown ELF image class\n");
+	return NULL;
+} /* elf_load_header */
+
+static void *elf32_load_sections(int fd, Elf32_Ehdr *hdr)
+{
+	unsigned long off;
+	unsigned char *strtab = NULL;
+	size_t strtabsz = 0;
+	Elf32_Shdr shdr;
+	int i;
+
+	/* We can only load executable images. */
+	if (hdr->e_type != ET_EXEC) {
+		printf("ELF image is not executable\n");
+		return NULL;
+	}
+
+	/* Find the string table from among the section headers. */
+	off = hdr->e_shoff + (hdr->e_shstrndx * sizeof(shdr));
+	if ((lseek(fd, off, SEEK_SET) < 0) ||
+		(read(fd, &shdr, sizeof(shdr)) < 0)) {
+		printf("could not read string section header: %s\n",
+			errno_str());
+		return NULL;
+	}
+	if ((shdr.sh_type == SHT_STRTAB) && (shdr.sh_size)) {
+		strtabsz = shdr.sh_size;
+		strtab = xzalloc(shdr.sh_size + 1);
+		if (!strtab) {
+			printf("could not allocate memory for string table\n");
+			return NULL;
+		}
+		if ((lseek(fd, shdr.sh_offset, SEEK_SET) < 0) ||
+			(read(fd, strtab, shdr.sh_size) < 0)) {
+			printf("could not read string table section: %s\n",
+				errno_str());
+			free(strtab);
+			return NULL;
+		}
+		strtab[strtabsz] = '\0';
+	}
+
+	/* Load the program sections. */
+	for (i = 0; i < hdr->e_shnum; i++) {
+		const char *name = "unknown";
+
+		/* Read the next section header */
+		off = hdr->e_shoff + (i * sizeof(shdr));
+		if ((lseek(fd, off, SEEK_SET) < 0) ||
+			(read(fd, &shdr, sizeof(shdr)) < 0)) {
+			printf("could not read section header: %s\n",
+				errno_str());
+			free(strtab);
+			return NULL;
+		}
+		/* Ignore unallocated or empty sections. */
+		if (!(shdr.sh_flags & SHF_ALLOC))
+			continue;
+		if (!shdr.sh_addr || !shdr.sh_size)
+			continue;
+
+		/* Inform the user. */
+		if (strtab && shdr.sh_name < strtabsz)
+			name = &strtab[shdr.sh_name];
+		printf("%sing %s @ 0x%08lx (%ld bytes)\n",
+			(shdr.sh_type == SHT_NOBITS) ? "Clear" : "Load",
+			name,
+			(unsigned long) shdr.sh_addr,
+			(long) shdr.sh_size);
+
+		/* Program the section. */
+		if (shdr.sh_type == SHT_NOBITS) {
+			memset((void *)shdr.sh_addr, 0, shdr.sh_size);
+		} else if ((lseek(fd, shdr.sh_offset, SEEK_SET) < 0) ||
+			(read(fd, (void *)shdr.sh_addr, shdr.sh_size) < 0)) {
+			printf("could not read section data: %s\n",
+				errno_str());
+			free(strtab);
+			return NULL;
+		}
+	} /* for */
+
+	/* Success. */
+	free(strtab);
+	return (void *)hdr->e_entry;
+} /* elf32_load_sections */
+
+void *elf_load_sections(int fd)
+{
+	unsigned char *hdr;
+	void *entry;
+
+	/* Load the ELF header. */
+	hdr = elf_load_header(fd);
+	if (!hdr)
+		return NULL;
+	if (hdr[EI_CLASS] == ELFCLASS32) {
+		entry = elf32_load_sections(fd, (Elf32_Ehdr *)hdr);
+	} else {
+		printf("Unsupported ELF image class\n");
+		entry = NULL;
+	}
+	free(hdr);
+	return entry;
+} /* elf_load_sections */
+
+static int binfmt_elf_excute(struct binfmt_hook *b,
+		char *file, int argc, char **argv)
+{
+	void	*addr;
+	int	(*func)(int argc, char *argv[]);
+	int	fd;
+
+	fd = open(file, O_RDONLY);
+	if (fd < 0) {
+		printf("could not open: %s\n", errno_str());
+		return 1;
+	}
+
+	/* Load the ELF sections. */
+	addr = elf_load_sections(fd);
+	if (!addr) {
+		close(fd);
+		return 1;
+	}
+
+	/* Launch the application */
+	printf("## Starting application at 0x%p ...\n", addr);
+	console_flush();
+	func = addr;
+	shutdown_barebox();
+
+	if (do_execute)
+		do_execute(func, argc, argv);
+	else
+		func(argc, argv);
+
+	/*
+	 * The application returned. Since we have shutdown barebox and
+	 * we know nothing about the state of the cpu/memory we can't
+	 * do anything here.
+	 */
+	while (1)
+		;
+	return 0;
+}
+
+static struct binfmt_hook binfmt_elf_hook = {
+	.type = filetype_elf,
+	.hook = binfmt_elf_excute,
+};
+
+static int binfmt_elf_init(void)
+{
+	return binfmt_register(&binfmt_elf_hook);
+}
+late_initcall(binfmt_elf_init);
diff --git a/common/filetype.c b/common/filetype.c
index 508a2b5..912e36a 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -52,6 +52,7 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_ext] = { "EXT filesystem", "ext" },
 	[filetype_gpt] = { "GUID Partition Table", "gpt" },
 	[filetype_bpk] = { "Binary PacKage", "bpk" },
+	[filetype_elf] = { "executable and linkable file", "elf" },
 	[filetype_barebox_env] = { "barebox environment file", "bbenv" },
 };
 
@@ -227,6 +228,8 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 		return filetype_mips_barebox;
 	if (buf[0] == be32_to_cpu(0x534F4659))
 		return filetype_bpk;
+	if (strncmp(buf8, "\177ELF", 4) == 0)
+		return filetype_elf;
 
 	if (bufsize < 64)
 		return filetype_unknown;
diff --git a/include/filetype.h b/include/filetype.h
index c20a4f9..c4f776f 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -30,6 +30,7 @@ enum filetype {
 	filetype_ubifs,
 	filetype_bpk,
 	filetype_barebox_env,
+	filetype_elf,
 	filetype_max,
 };
 
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
