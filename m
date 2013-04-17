Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1USQhk-0002KT-1b
 for barebox@lists.infradead.org; Wed, 17 Apr 2013 11:39:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Apr 2013 13:39:07 +0200
Message-Id: <1366198748-22717-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1366198748-22717-1-git-send-email-s.hauer@pengutronix.de>
References: <1366198748-22717-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/7] memory commands: separate into one file per command
To: barebox@lists.infradead.org

Normally in commands we have one file per command which is named like
the command itself. The memory commands are an exception to this. This
patch changes this by separating the memory commands. This also has the
effect that the memory commands can now be selected individually. Along
the way we add some Kconfig help text for the commmands.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig  |  42 +++++-
 commands/Makefile |   5 +
 commands/md.c     | 116 +++++++++++++++
 commands/mem.c    | 432 ------------------------------------------------------
 commands/memcmp.c | 148 +++++++++++++++++++
 commands/memcpy.c | 145 ++++++++++++++++++
 commands/memset.c | 101 +++++++++++++
 commands/mw.c     | 104 +++++++++++++
 8 files changed, 660 insertions(+), 433 deletions(-)
 create mode 100644 commands/md.c
 create mode 100644 commands/memcmp.c
 create mode 100644 commands/memcpy.c
 create mode 100644 commands/memset.c
 create mode 100644 commands/mw.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 0062758..fe171d8 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -303,7 +303,47 @@ config CMD_IOMEM
 config CMD_MEMORY
 	bool
 	default y
-	prompt "md and mw"
+
+config CMD_MD
+	tristate
+	default y
+	select CMD_MEMORY
+	prompt "md"
+	help
+	  the md command allows to display (hexdump) memory locations and files.
+
+config CMD_MW
+	tristate
+	default y
+	select CMD_MEMORY
+	prompt "mw"
+	help
+	  the mw command allows to write to memory locations and files.
+
+config CMD_MEMCMP
+	tristate
+	default y
+	select CMD_MEMORY
+	prompt "memcmp"
+	help
+	  the memcmp command allows to compare memory and file regions.
+
+config CMD_MEMCPY
+	tristate
+	default y
+	select CMD_MEMORY
+	prompt "memcpy"
+	help
+	  the memcpy command allows to copy memory and file regions.
+
+config CMD_MEMSET
+	tristate
+	default y
+	select CMD_MEMORY
+	prompt "memset"
+	help
+	  the memset command allows to set regions of memory and files to
+	  a specific value.
 
 config CMD_CRC
 	tristate
diff --git a/commands/Makefile b/commands/Makefile
index 0ae6b95..beec8e9 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -7,6 +7,11 @@ obj-$(CONFIG_CMD_LOADY)		+= loadxy.o
 obj-$(CONFIG_CMD_LOADS)		+= loads.o
 obj-$(CONFIG_CMD_ECHO)		+= echo.o
 obj-$(CONFIG_CMD_MEMORY)	+= mem.o
+obj-$(CONFIG_CMD_MD)		+= md.o
+obj-$(CONFIG_CMD_MW)		+= mw.o
+obj-$(CONFIG_CMD_MEMCMP)	+= memcmp.o
+obj-$(CONFIG_CMD_MEMCPY)	+= memcpy.o
+obj-$(CONFIG_CMD_MEMSET)	+= memset.o
 obj-$(CONFIG_CMD_MTEST)		+= memtest.o
 obj-$(CONFIG_CMD_EDIT)		+= edit.o
 obj-$(CONFIG_CMD_EXEC)		+= exec.o
diff --git a/commands/md.c b/commands/md.c
new file mode 100644
index 0000000..03c5905
--- /dev/null
+++ b/commands/md.c
@@ -0,0 +1,116 @@
+/*
+ * Copyright (c) 2011 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
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
+
+/*
+ * Memory Functions
+ *
+ * Copied from FADS ROM, Dan Malek (dmalek@jlc.net)
+ */
+
+#include <common.h>
+#include <command.h>
+#include <init.h>
+#include <driver.h>
+#include <malloc.h>
+#include <errno.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <getopt.h>
+#include <linux/stat.h>
+#include <xfuncs.h>
+
+extern char *mem_rw_buf;
+
+static int do_mem_md(int argc, char *argv[])
+{
+	loff_t	start = 0, size = 0x100;
+	int	r, now;
+	int	ret = 0;
+	int fd;
+	char *filename = "/dev/mem";
+	int mode = O_RWSIZE_4;
+	int swab = 0;
+
+	if (argc < 2)
+		return COMMAND_ERROR_USAGE;
+
+	if (mem_parse_options(argc, argv, "bwls:x", &mode, &filename, NULL,
+			&swab) < 0)
+		return 1;
+
+	if (optind < argc) {
+		if (parse_area_spec(argv[optind], &start, &size)) {
+			printf("could not parse: %s\n", argv[optind]);
+			return 1;
+		}
+		if (size == ~0)
+			size = 0x100;
+	}
+
+	fd = open_and_lseek(filename, mode | O_RDONLY, start);
+	if (fd < 0)
+		return 1;
+
+	do {
+		now = min(size, (loff_t)RW_BUF_SIZE);
+		r = read(fd, mem_rw_buf, now);
+		if (r < 0) {
+			perror("read");
+			goto out;
+		}
+		if (!r)
+			goto out;
+
+		if ((ret = memory_display(mem_rw_buf, start, r,
+				mode >> O_RWSIZE_SHIFT, swab)))
+			goto out;
+
+		start += r;
+		size  -= r;
+	} while (size);
+
+out:
+	close(fd);
+
+	return ret ? 1 : 0;
+}
+
+static const __maybe_unused char cmd_md_help[] =
+"Usage md [OPTIONS] <region>\n"
+"display (hexdump) a memory region.\n"
+"options:\n"
+"  -s <file>   display file (default /dev/mem)\n"
+"  -b          output in bytes\n"
+"  -w          output in halfwords (16bit)\n"
+"  -l          output in words (32bit)\n"
+"  -x          swap bytes at output\n"
+"\n"
+"Memory regions:\n"
+"Memory regions can be specified in two different forms: start+size\n"
+"or start-end, If <start> is omitted it defaults to 0. If end is omitted it\n"
+"defaults to the end of the device, except for interactive commands like md\n"
+"and mw for which it defaults to 0x100.\n"
+"Sizes can be specified as decimal, or if prefixed with 0x as hexadecimal.\n"
+"an optional suffix of k, M or G is for kibibytes, Megabytes or Gigabytes,\n"
+"respectively\n";
+
+
+BAREBOX_CMD_START(md)
+	.cmd		= do_mem_md,
+	.usage		= "memory display",
+	BAREBOX_CMD_HELP(cmd_md_help)
+BAREBOX_CMD_END
diff --git a/commands/mem.c b/commands/mem.c
index a531bd5..7eb60af 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -103,438 +103,6 @@ int mem_parse_options(int argc, char *argv[], char *optstr, int *mode,
 	return 0;
 }
 
-static int do_mem_md(int argc, char *argv[])
-{
-	loff_t	start = 0, size = 0x100;
-	int	r, now;
-	int	ret = 0;
-	int fd;
-	char *filename = DEVMEM;
-	int mode = O_RWSIZE_4;
-	int swab = 0;
-
-	if (argc < 2)
-		return COMMAND_ERROR_USAGE;
-
-	if (mem_parse_options(argc, argv, "bwls:x", &mode, &filename, NULL,
-			&swab) < 0)
-		return 1;
-
-	if (optind < argc) {
-		if (parse_area_spec(argv[optind], &start, &size)) {
-			printf("could not parse: %s\n", argv[optind]);
-			return 1;
-		}
-		if (size == ~0)
-			size = 0x100;
-	}
-
-	fd = open_and_lseek(filename, mode | O_RDONLY, start);
-	if (fd < 0)
-		return 1;
-
-	do {
-		now = min(size, (loff_t)RW_BUF_SIZE);
-		r = read(fd, mem_rw_buf, now);
-		if (r < 0) {
-			perror("read");
-			goto out;
-		}
-		if (!r)
-			goto out;
-
-		if ((ret = memory_display(mem_rw_buf, start, r,
-				mode >> O_RWSIZE_SHIFT, swab)))
-			goto out;
-
-		start += r;
-		size  -= r;
-	} while (size);
-
-out:
-	close(fd);
-
-	return ret ? 1 : 0;
-}
-
-static const __maybe_unused char cmd_md_help[] =
-"Usage md [OPTIONS] <region>\n"
-"display (hexdump) a memory region.\n"
-"options:\n"
-"  -s <file>   display file (default /dev/mem)\n"
-"  -b          output in bytes\n"
-"  -w          output in halfwords (16bit)\n"
-"  -l          output in words (32bit)\n"
-"  -x          swap bytes at output\n"
-"\n"
-"Memory regions:\n"
-"Memory regions can be specified in two different forms: start+size\n"
-"or start-end, If <start> is omitted it defaults to 0. If end is omitted it\n"
-"defaults to the end of the device, except for interactive commands like md\n"
-"and mw for which it defaults to 0x100.\n"
-"Sizes can be specified as decimal, or if prefixed with 0x as hexadecimal.\n"
-"an optional suffix of k, M or G is for kibibytes, Megabytes or Gigabytes,\n"
-"respectively\n";
-
-
-BAREBOX_CMD_START(md)
-	.cmd		= do_mem_md,
-	.usage		= "memory display",
-	BAREBOX_CMD_HELP(cmd_md_help)
-BAREBOX_CMD_END
-
-static int do_mem_mw(int argc, char *argv[])
-{
-	int ret = 0;
-	int fd;
-	char *filename = DEVMEM;
-	int mode = O_RWSIZE_4;
-	loff_t adr;
-	int swab = 0;
-
-	if (mem_parse_options(argc, argv, "bwld:x", &mode, NULL, &filename,
-			&swab) < 0)
-		return 1;
-
-	if (optind + 1 >= argc)
-		return COMMAND_ERROR_USAGE;
-
-	adr = strtoull_suffix(argv[optind++], NULL, 0);
-
-	fd = open_and_lseek(filename, mode | O_WRONLY, adr);
-	if (fd < 0)
-		return 1;
-
-	while (optind < argc) {
-		u8 val8;
-		u16 val16;
-		u32 val32;
-		switch (mode) {
-		case O_RWSIZE_1:
-			val8 = simple_strtoul(argv[optind], NULL, 0);
-			ret = write(fd, &val8, 1);
-			break;
-		case O_RWSIZE_2:
-			val16 = simple_strtoul(argv[optind], NULL, 0);
-			if (swab)
-				val16 = __swab16(val16);
-			ret = write(fd, &val16, 2);
-			break;
-		case O_RWSIZE_4:
-			val32 = simple_strtoul(argv[optind], NULL, 0);
-			if (swab)
-				val32 = __swab32(val32);
-			ret = write(fd, &val32, 4);
-			break;
-		}
-		if (ret < 0) {
-			perror("write");
-			break;
-		}
-		ret = 0;
-		optind++;
-	}
-
-	close(fd);
-
-	return ret ? 1 : 0;
-}
-
-static const __maybe_unused char cmd_mw_help[] =
-"Usage: mw [OPTIONS] <region> <value(s)>\n"
-"Write value(s) to the specifies region.\n"
-"options:\n"
-"  -b, -w, -l	use byte, halfword, or word accesses\n"
-"  -d <file>	write file (default /dev/mem)\n";
-
-BAREBOX_CMD_START(mw)
-	.cmd		= do_mem_mw,
-	.usage		= "memory write (fill)",
-	BAREBOX_CMD_HELP(cmd_mw_help)
-BAREBOX_CMD_END
-
-static int do_mem_cmp(int argc, char *argv[])
-{
-	loff_t	addr1, addr2, count = ~0;
-	int	mode  = O_RWSIZE_1;
-	char   *sourcefile = DEVMEM;
-	char   *destfile = DEVMEM;
-	int     sourcefd, destfd;
-	char   *rw_buf1;
-	int     ret = 1;
-	int     offset = 0;
-	struct  stat statbuf;
-
-	if (mem_parse_options(argc, argv, "bwls:d:", &mode, &sourcefile,
-			&destfile, NULL) < 0)
-		return 1;
-
-	if (optind + 2 > argc)
-		return COMMAND_ERROR_USAGE;
-
-	addr1 = strtoull_suffix(argv[optind], NULL, 0);
-	addr2 = strtoull_suffix(argv[optind + 1], NULL, 0);
-
-	if (optind + 2 == argc) {
-		if (sourcefile == DEVMEM) {
-			printf("source and count not given\n");
-			return 1;
-		}
-		if (stat(sourcefile, &statbuf)) {
-			perror("stat");
-			return 1;
-		}
-		count = statbuf.st_size - addr1;
-	} else {
-		count = strtoull_suffix(argv[optind + 2], NULL, 0);
-	}
-
-	sourcefd = open_and_lseek(sourcefile, mode | O_RDONLY, addr1);
-	if (sourcefd < 0)
-		return 1;
-
-	destfd = open_and_lseek(destfile, mode | O_RDONLY, addr2);
-	if (destfd < 0) {
-		close(sourcefd);
-		return 1;
-	}
-
-	rw_buf1 = xmalloc(RW_BUF_SIZE);
-
-	while (count > 0) {
-		int now, r1, r2, i;
-
-		now = min((loff_t)RW_BUF_SIZE, count);
-
-		r1 = read(sourcefd, mem_rw_buf,  now);
-		if (r1 < 0) {
-			perror("read");
-			goto out;
-		}
-
-		r2 = read(destfd, rw_buf1, now);
-		if (r2 < 0) {
-			perror("read");
-			goto out;
-		}
-
-		if (r1 != now || r2 != now) {
-			printf("regions differ in size\n");
-			goto out;
-		}
-
-		for (i = 0; i < now; i++) {
-			if (mem_rw_buf[i] != rw_buf1[i]) {
-				printf("files differ at offset %d\n", offset);
-				goto out;
-			}
-			offset++;
-		}
-
-		count -= now;
-	}
-
-	printf("OK\n");
-	ret = 0;
-out:
-	close(sourcefd);
-	close(destfd);
-	free(rw_buf1);
-
-	return ret;
-}
-
-static const __maybe_unused char cmd_memcmp_help[] =
-"Usage: memcmp [OPTIONS] <addr1> <addr2> <count>\n"
-"\n"
-"options:\n"
-"  -b, -w, -l	use byte, halfword, or word accesses\n"
-"  -s <file>    source file (default /dev/mem)\n"
-"  -d <file>    destination file (default /dev/mem)\n"
-"\n"
-"Compare memory regions specified with addr1 and addr2\n"
-"of size <count> bytes. If source is a file count can\n"
-"be left unspecified in which case the whole file is\n"
-"compared\n";
-
-BAREBOX_CMD_START(memcmp)
-	.cmd		= do_mem_cmp,
-	.usage		= "memory compare",
-	BAREBOX_CMD_HELP(cmd_memcmp_help)
-BAREBOX_CMD_END
-
-static int do_mem_cp(int argc, char *argv[])
-{
-	loff_t count, dest, src;
-	char *sourcefile = DEVMEM;
-	char *destfile = DEVMEM;
-	int sourcefd, destfd;
-	int mode = 0;
-	struct stat statbuf;
-	int ret = 0;
-
-	if (mem_parse_options(argc, argv, "bwls:d:", &mode, &sourcefile,
-			&destfile, NULL) < 0)
-		return 1;
-
-	if (optind + 2 > argc)
-		return COMMAND_ERROR_USAGE;
-
-	src = strtoull_suffix(argv[optind], NULL, 0);
-	dest = strtoull_suffix(argv[optind + 1], NULL, 0);
-
-	if (optind + 2 == argc) {
-		if (sourcefile == DEVMEM) {
-			printf("source and count not given\n");
-			return 1;
-		}
-		if (stat(sourcefile, &statbuf)) {
-			perror("stat");
-			return 1;
-		}
-		count = statbuf.st_size - src;
-	} else {
-		count = strtoull_suffix(argv[optind + 2], NULL, 0);
-	}
-
-	sourcefd = open_and_lseek(sourcefile, mode | O_RDONLY, src);
-	if (sourcefd < 0)
-		return 1;
-
-	destfd = open_and_lseek(destfile, O_WRONLY | O_CREAT | mode, dest);
-	if (destfd < 0) {
-		close(sourcefd);
-		return 1;
-	}
-
-	while (count > 0) {
-		int now, r, w, tmp;
-
-		now = min((loff_t)RW_BUF_SIZE, count);
-
-		r = read(sourcefd, mem_rw_buf, now);
-		if (r < 0) {
-			perror("read");
-			goto out;
-		}
-
-		if (!r)
-			break;
-
-		tmp = 0;
-		now = r;
-		while (now) {
-			w = write(destfd, mem_rw_buf + tmp, now);
-			if (w < 0) {
-				perror("write");
-				goto out;
-			}
-	                if (!w)
-			        break;
-
-			now -= w;
-			tmp += w;
-		}
-
-		count -= r;
-
-		if (ctrlc())
-			goto out;
-	}
-
-	if (count) {
-		printf("ran out of data\n");
-		ret = 1;
-	}
-
-out:
-	close(sourcefd);
-	close(destfd);
-
-	return ret;
-}
-
-static const __maybe_unused char cmd_memcpy_help[] =
-"Usage: memcpy [OPTIONS] <src> <dst> <count>\n"
-"\n"
-"options:\n"
-"  -b, -w, -l   use byte, halfword, or word accesses\n"
-"  -s <file>    source file (default /dev/mem)\n"
-"  -d <file>    destination file (default /dev/mem)\n"
-"\n"
-"Copy memory at <src> of <count> bytes to <dst>\n";
-
-BAREBOX_CMD_START(memcpy)
-	.cmd		= do_mem_cp,
-	.usage		= "memory copy",
-	BAREBOX_CMD_HELP(cmd_memcpy_help)
-BAREBOX_CMD_END
-
-static int do_memset(int argc, char *argv[])
-{
-	loff_t	s, c, n;
-	int     fd;
-	char   *buf;
-	int	mode  = O_RWSIZE_1;
-	int     ret = 1;
-	char	*file = DEVMEM;
-
-	if (mem_parse_options(argc, argv, "bwld:", &mode, NULL, &file,
-			NULL) < 0)
-		return 1;
-
-	if (optind + 3 > argc)
-		return COMMAND_ERROR_USAGE;
-
-	s = strtoull_suffix(argv[optind], NULL, 0);
-	c = strtoull_suffix(argv[optind + 1], NULL, 0);
-	n = strtoull_suffix(argv[optind + 2], NULL, 0);
-
-	fd = open_and_lseek(file, mode | O_WRONLY, s);
-	if (fd < 0)
-		return 1;
-
-	buf = xmalloc(RW_BUF_SIZE);
-	memset(buf, c, RW_BUF_SIZE);
-
-	while (n > 0) {
-		int now;
-
-		now = min((loff_t)RW_BUF_SIZE, n);
-
-		ret = write(fd, buf, now);
-		if (ret < 0) {
-			perror("write");
-			ret = 1;
-			goto out;
-		}
-
-		n -= now;
-	}
-
-	ret = 0;
-out:
-	close(fd);
-	free(buf);
-
-	return ret;
-}
-
-static const __maybe_unused char cmd_memset_help[] =
-"Usage: memset [OPTIONS] <addr> <c> <n>\n"
-"\n"
-"options:\n"
-"  -b, -w, -l   use byte, halfword, or word accesses\n"
-"  -d <file>    destination file (default /dev/mem)\n"
-"\n"
-"Fill the first <n> bytes at offset <addr> with byte <c>\n";
-
-BAREBOX_CMD_START(memset)
-	.cmd		= do_memset,
-	.usage		= "memory fill",
-	BAREBOX_CMD_HELP(cmd_memset_help)
-BAREBOX_CMD_END
-
 static struct file_operations memops = {
 	.read  = mem_read,
 	.write = mem_write,
diff --git a/commands/memcmp.c b/commands/memcmp.c
new file mode 100644
index 0000000..4a03862
--- /dev/null
+++ b/commands/memcmp.c
@@ -0,0 +1,148 @@
+/*
+ * Copyright (c) 2011 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
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
+
+/*
+ * Memory Functions
+ *
+ * Copied from FADS ROM, Dan Malek (dmalek@jlc.net)
+ */
+
+#include <common.h>
+#include <command.h>
+#include <init.h>
+#include <driver.h>
+#include <malloc.h>
+#include <errno.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <getopt.h>
+#include <linux/stat.h>
+#include <xfuncs.h>
+
+extern char *mem_rw_buf;
+
+static char *devmem = "/dev/mem";
+
+static int do_memcmp(int argc, char *argv[])
+{
+	loff_t	addr1, addr2, count = ~0;
+	int	mode  = O_RWSIZE_1;
+	char   *sourcefile = devmem;
+	char   *destfile = devmem;
+	int     sourcefd, destfd;
+	char   *rw_buf1;
+	int     ret = 1;
+	int     offset = 0;
+	struct  stat statbuf;
+
+	if (mem_parse_options(argc, argv, "bwls:d:", &mode, &sourcefile,
+			&destfile, NULL) < 0)
+		return 1;
+
+	if (optind + 2 > argc)
+		return COMMAND_ERROR_USAGE;
+
+	addr1 = strtoull_suffix(argv[optind], NULL, 0);
+	addr2 = strtoull_suffix(argv[optind + 1], NULL, 0);
+
+	if (optind + 2 == argc) {
+		if (sourcefile == devmem) {
+			printf("source and count not given\n");
+			return 1;
+		}
+		if (stat(sourcefile, &statbuf)) {
+			perror("stat");
+			return 1;
+		}
+		count = statbuf.st_size - addr1;
+	} else {
+		count = strtoull_suffix(argv[optind + 2], NULL, 0);
+	}
+
+	sourcefd = open_and_lseek(sourcefile, mode | O_RDONLY, addr1);
+	if (sourcefd < 0)
+		return 1;
+
+	destfd = open_and_lseek(destfile, mode | O_RDONLY, addr2);
+	if (destfd < 0) {
+		close(sourcefd);
+		return 1;
+	}
+
+	rw_buf1 = xmalloc(RW_BUF_SIZE);
+
+	while (count > 0) {
+		int now, r1, r2, i;
+
+		now = min((loff_t)RW_BUF_SIZE, count);
+
+		r1 = read(sourcefd, mem_rw_buf,  now);
+		if (r1 < 0) {
+			perror("read");
+			goto out;
+		}
+
+		r2 = read(destfd, rw_buf1, now);
+		if (r2 < 0) {
+			perror("read");
+			goto out;
+		}
+
+		if (r1 != now || r2 != now) {
+			printf("regions differ in size\n");
+			goto out;
+		}
+
+		for (i = 0; i < now; i++) {
+			if (mem_rw_buf[i] != rw_buf1[i]) {
+				printf("files differ at offset %d\n", offset);
+				goto out;
+			}
+			offset++;
+		}
+
+		count -= now;
+	}
+
+	printf("OK\n");
+	ret = 0;
+out:
+	close(sourcefd);
+	close(destfd);
+	free(rw_buf1);
+
+	return ret;
+}
+
+static const __maybe_unused char cmd_memcmp_help[] =
+"Usage: memcmp [OPTIONS] <addr1> <addr2> <count>\n"
+"\n"
+"options:\n"
+"  -b, -w, -l	use byte, halfword, or word accesses\n"
+"  -s <file>    source file (default /dev/mem)\n"
+"  -d <file>    destination file (default /dev/mem)\n"
+"\n"
+"Compare memory regions specified with addr1 and addr2\n"
+"of size <count> bytes. If source is a file count can\n"
+"be left unspecified in which case the whole file is\n"
+"compared\n";
+
+BAREBOX_CMD_START(memcmp)
+	.cmd		= do_memcmp,
+	.usage		= "memory compare",
+	BAREBOX_CMD_HELP(cmd_memcmp_help)
+BAREBOX_CMD_END
diff --git a/commands/memcpy.c b/commands/memcpy.c
new file mode 100644
index 0000000..98f099f
--- /dev/null
+++ b/commands/memcpy.c
@@ -0,0 +1,145 @@
+/*
+ * Copyright (c) 2011 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
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
+
+/*
+ * Memory Functions
+ *
+ * Copied from FADS ROM, Dan Malek (dmalek@jlc.net)
+ */
+
+#include <common.h>
+#include <command.h>
+#include <init.h>
+#include <driver.h>
+#include <malloc.h>
+#include <errno.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <getopt.h>
+#include <linux/stat.h>
+#include <xfuncs.h>
+
+extern char *mem_rw_buf;
+
+static char *devmem = "/dev/mem";
+
+static int do_memcpy(int argc, char *argv[])
+{
+	loff_t count, dest, src;
+	char *sourcefile = devmem;
+	char *destfile = devmem;
+	int sourcefd, destfd;
+	int mode = 0;
+	struct stat statbuf;
+	int ret = 0;
+
+	if (mem_parse_options(argc, argv, "bwls:d:", &mode, &sourcefile,
+			&destfile, NULL) < 0)
+		return 1;
+
+	if (optind + 2 > argc)
+		return COMMAND_ERROR_USAGE;
+
+	src = strtoull_suffix(argv[optind], NULL, 0);
+	dest = strtoull_suffix(argv[optind + 1], NULL, 0);
+
+	if (optind + 2 == argc) {
+		if (sourcefile == devmem) {
+			printf("source and count not given\n");
+			return 1;
+		}
+		if (stat(sourcefile, &statbuf)) {
+			perror("stat");
+			return 1;
+		}
+		count = statbuf.st_size - src;
+	} else {
+		count = strtoull_suffix(argv[optind + 2], NULL, 0);
+	}
+
+	sourcefd = open_and_lseek(sourcefile, mode | O_RDONLY, src);
+	if (sourcefd < 0)
+		return 1;
+
+	destfd = open_and_lseek(destfile, O_WRONLY | O_CREAT | mode, dest);
+	if (destfd < 0) {
+		close(sourcefd);
+		return 1;
+	}
+
+	while (count > 0) {
+		int now, r, w, tmp;
+
+		now = min((loff_t)RW_BUF_SIZE, count);
+
+		r = read(sourcefd, mem_rw_buf, now);
+		if (r < 0) {
+			perror("read");
+			goto out;
+		}
+
+		if (!r)
+			break;
+
+		tmp = 0;
+		now = r;
+		while (now) {
+			w = write(destfd, mem_rw_buf + tmp, now);
+			if (w < 0) {
+				perror("write");
+				goto out;
+			}
+	                if (!w)
+			        break;
+
+			now -= w;
+			tmp += w;
+		}
+
+		count -= r;
+
+		if (ctrlc())
+			goto out;
+	}
+
+	if (count) {
+		printf("ran out of data\n");
+		ret = 1;
+	}
+
+out:
+	close(sourcefd);
+	close(destfd);
+
+	return ret;
+}
+
+static const __maybe_unused char cmd_memcpy_help[] =
+"Usage: memcpy [OPTIONS] <src> <dst> <count>\n"
+"\n"
+"options:\n"
+"  -b, -w, -l   use byte, halfword, or word accesses\n"
+"  -s <file>    source file (default /dev/mem)\n"
+"  -d <file>    destination file (default /dev/mem)\n"
+"\n"
+"Copy memory at <src> of <count> bytes to <dst>\n";
+
+BAREBOX_CMD_START(memcpy)
+	.cmd		= do_memcpy,
+	.usage		= "memory copy",
+	BAREBOX_CMD_HELP(cmd_memcpy_help)
+BAREBOX_CMD_END
diff --git a/commands/memset.c b/commands/memset.c
new file mode 100644
index 0000000..48e55bc
--- /dev/null
+++ b/commands/memset.c
@@ -0,0 +1,101 @@
+/*
+ * Copyright (c) 2011 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
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
+
+/*
+ * Memory Functions
+ *
+ * Copied from FADS ROM, Dan Malek (dmalek@jlc.net)
+ */
+
+#include <common.h>
+#include <command.h>
+#include <init.h>
+#include <driver.h>
+#include <malloc.h>
+#include <errno.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <getopt.h>
+#include <linux/stat.h>
+#include <xfuncs.h>
+
+extern char *mem_rw_buf;
+
+static int do_memset(int argc, char *argv[])
+{
+	loff_t	s, c, n;
+	int     fd;
+	char   *buf;
+	int	mode  = O_RWSIZE_1;
+	int     ret = 1;
+	char	*file = "/dev/mem";
+
+	if (mem_parse_options(argc, argv, "bwld:", &mode, NULL, &file,
+			NULL) < 0)
+		return 1;
+
+	if (optind + 3 > argc)
+		return COMMAND_ERROR_USAGE;
+
+	s = strtoull_suffix(argv[optind], NULL, 0);
+	c = strtoull_suffix(argv[optind + 1], NULL, 0);
+	n = strtoull_suffix(argv[optind + 2], NULL, 0);
+
+	fd = open_and_lseek(file, mode | O_WRONLY, s);
+	if (fd < 0)
+		return 1;
+
+	buf = xmalloc(RW_BUF_SIZE);
+	memset(buf, c, RW_BUF_SIZE);
+
+	while (n > 0) {
+		int now;
+
+		now = min((loff_t)RW_BUF_SIZE, n);
+
+		ret = write(fd, buf, now);
+		if (ret < 0) {
+			perror("write");
+			ret = 1;
+			goto out;
+		}
+
+		n -= now;
+	}
+
+	ret = 0;
+out:
+	close(fd);
+	free(buf);
+
+	return ret;
+}
+
+static const __maybe_unused char cmd_memset_help[] =
+"Usage: memset [OPTIONS] <addr> <c> <n>\n"
+"\n"
+"options:\n"
+"  -b, -w, -l   use byte, halfword, or word accesses\n"
+"  -d <file>    destination file (default /dev/mem)\n"
+"\n"
+"Fill the first <n> bytes at offset <addr> with byte <c>\n";
+
+BAREBOX_CMD_START(memset)
+	.cmd		= do_memset,
+	.usage		= "memory fill",
+	BAREBOX_CMD_HELP(cmd_memset_help)
+BAREBOX_CMD_END
diff --git a/commands/mw.c b/commands/mw.c
new file mode 100644
index 0000000..d7d73a8
--- /dev/null
+++ b/commands/mw.c
@@ -0,0 +1,104 @@
+/*
+ * Copyright (c) 2011 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
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
+
+/*
+ * Memory Functions
+ *
+ * Copied from FADS ROM, Dan Malek (dmalek@jlc.net)
+ */
+
+#include <common.h>
+#include <command.h>
+#include <init.h>
+#include <driver.h>
+#include <malloc.h>
+#include <errno.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <getopt.h>
+#include <linux/stat.h>
+#include <xfuncs.h>
+
+static int do_mem_mw(int argc, char *argv[])
+{
+	int ret = 0;
+	int fd;
+	char *filename = "/dev/mem";
+	int mode = O_RWSIZE_4;
+	loff_t adr;
+	int swab = 0;
+
+	if (mem_parse_options(argc, argv, "bwld:x", &mode, NULL, &filename,
+			&swab) < 0)
+		return 1;
+
+	if (optind + 1 >= argc)
+		return COMMAND_ERROR_USAGE;
+
+	adr = strtoull_suffix(argv[optind++], NULL, 0);
+
+	fd = open_and_lseek(filename, mode | O_WRONLY, adr);
+	if (fd < 0)
+		return 1;
+
+	while (optind < argc) {
+		u8 val8;
+		u16 val16;
+		u32 val32;
+		switch (mode) {
+		case O_RWSIZE_1:
+			val8 = simple_strtoul(argv[optind], NULL, 0);
+			ret = write(fd, &val8, 1);
+			break;
+		case O_RWSIZE_2:
+			val16 = simple_strtoul(argv[optind], NULL, 0);
+			if (swab)
+				val16 = __swab16(val16);
+			ret = write(fd, &val16, 2);
+			break;
+		case O_RWSIZE_4:
+			val32 = simple_strtoul(argv[optind], NULL, 0);
+			if (swab)
+				val32 = __swab32(val32);
+			ret = write(fd, &val32, 4);
+			break;
+		}
+		if (ret < 0) {
+			perror("write");
+			break;
+		}
+		ret = 0;
+		optind++;
+	}
+
+	close(fd);
+
+	return ret ? 1 : 0;
+}
+
+static const __maybe_unused char cmd_mw_help[] =
+"Usage: mw [OPTIONS] <region> <value(s)>\n"
+"Write value(s) to the specifies region.\n"
+"options:\n"
+"  -b, -w, -l	use byte, halfword, or word accesses\n"
+"  -d <file>	write file (default /dev/mem)\n";
+
+BAREBOX_CMD_START(mw)
+	.cmd		= do_mem_mw,
+	.usage		= "memory write (fill)",
+	BAREBOX_CMD_HELP(cmd_mw_help)
+BAREBOX_CMD_END
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
